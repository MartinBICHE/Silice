#include "config.h"
#include "std.h"
#include "oled.h"
#include "display.h"
#include "printf.h"
#include "sdcard.h"
#include "fat_io_lib/src/fat_filelib.h"

#ifndef HWFBUFFER
// #error This firmware needs HWFBUFFER defined
#endif

// =========================================================
// Boutons et leurs fonctionnalités
// =========================================================
#define BTN1 (1<<1)   // Musique : PAUSE || Menu : ... 
#define BTN2 (1<<2)   // Musique : STOP (retour Menu) || Menu : SELECT
#define BTN3 (1<<3)   // Musique : ... || Menu : UP
#define BTN4 (1<<4)   // Musique : ... || Menu : DOWN
#define BTN_VOL_DOWN (1<<5) // Musique : DIMINUE VOLUME || Menu : ...
#define BTN_VOL_UP   (1<<6) // Musique : AUGMENTE VOLUME || Menu : ...

// =========================================================
// UI / limites
// =========================================================
#define VIEW_ITEMS 6
#define PATH_MAX   256 // Taille maximal d'un chemin de fichier vu que je renomme les images à afficher avec le même nom que la musique en ajoutant .raw ça peut vite être long. Mais 256 ça reste assez large.
// Par exemple :  The Girl Is Mine.raw <-- Musique 
//                The Girl Is Mine.raw.raw <-- Image
#define NAME_MAX   64

// =========================================================
// Icônes de pause
// =========================================================
#define PAUSE_W 128 // Largeur de l'icône
#define PAUSE_H 128 // Hauteur de l'icône 
static uint8 pause_buf[PAUSE_W * PAUSE_H]; 
static int   pause_loaded = 0;

// =========================================================
// Gestion du volume et des LEDS
// =========================================================
#define VOL_MIN   0 
#define VOL_MAX   256
#define VOL_STEP  32 // Ce qui permet de faire changer l'état des LED à chaque appuie sur BTN6 ou BTN5 car LED_COUNT*VOL_STEP = VOL_MAX 
#define LED_COUNT 8
#define VOL_LED_SHOW_BLOCKS 40 // Durée d'affichage LED volume (ajusté de sorte à ce que ça ne gâche pas trop l'animation des LED synchronisé à la musique)
static int vol_led_blocks_left = 0; // Compteur qui permet de switché entre l'affichage de l'animation volume et l'animation musique des LEDS
static int vu_level = 0; // Mémoriser et lisser le niveau audio


// ==================================================================================================================
// ==================================================================================================================


// =========================================================
// Mini string helpers (sans libc)
// =========================================================

// Compare deux chaînes. Retourne 1 si elles sont strictement identique (même contenu et même longueur) 0 sinon
static int streq(const char *a, const char *b) {
  while (*a && *b) {
    if (*a != *b) return 0;
    ++a; ++b;
  }
  return (*a == 0 && *b == 0);
}

// Calcule la longeur d'une chaîne
static int str_len_max(const char *s, int max) {
  int n = 0;
  while (s[n] && n < max) ++n;
  return n;
}

// Copie une chaîne (src) vers une destination (dst)
static void str_cpy_max(char *dst, const char *src, int max) {
  int i = 0;
  if (max <= 0) return;
  while (src[i] && i < max-1) { dst[i] = src[i]; ++i; }
  dst[i] = 0;
}

// Concatène src à la fin de dst 
static void str_cat_max(char *dst, const char *src, int max) {
  int i = 0;
  while (dst[i] && i < max) ++i;
  if (i >= max-1) return;
  int j = 0;
  while (src[j] && i < max-1) { dst[i++] = src[j++]; }
  dst[i] = 0;
}

// Retourne 1 si la chaîne s se terminent par suffix 0 sinon
static int ends_with(const char *s, const char *suffix) {
  int ls = str_len_max(s, 512);
  int lf = str_len_max(suffix, 64);
  if (lf > ls) return 0;
  int start = ls - lf;
  for (int i=0; i<lf; ++i) {
    if (s[start+i] != suffix[i]) return 0;
  }
  return 1;
}

// Construit un chemin
static void path_join(char out[PATH_MAX], const char *dir, const char *name) {
  if (dir[0] == '/' && dir[1] == 0) {
    out[0] = '/'; out[1] = 0;
    str_cat_max(out, name, PATH_MAX);
  } else {
    str_cpy_max(out, dir, PATH_MAX);
    str_cat_max(out, "/", PATH_MAX);
    str_cat_max(out, name, PATH_MAX);
  }
}

// Génère le chemin de l'image associé à un audio en ajoutant .raw
static void make_image_path(char out[PATH_MAX], const char *audio_path) {
  str_cpy_max(out, audio_path, PATH_MAX);
  str_cat_max(out, ".raw", PATH_MAX);
}

// Retourne dans le dossier parent
static void path_parent(char cwd[PATH_MAX]) {
  if (cwd[0] != '/') { cwd[0] = '/'; cwd[1] = 0; return; }
  if (cwd[1] == 0) return;

  int n = str_len_max(cwd, PATH_MAX);

  while (n > 1 && cwd[n-1] == '/') { cwd[n-1] = 0; --n; }
  while (n > 1 && cwd[n-1] != '/') { cwd[n-1] = 0; --n; }
  while (n > 1 && cwd[n-1] == '/') { cwd[n-1] = 0; --n; }

  if (cwd[0] == 0) { cwd[0] = '/'; cwd[1] = 0; }
}

// =========================================================
// Gestion du volume et des LEDS
// =========================================================

// Empêche v de sortir de l'intervalle [lo;hi], en prenant la valeur lo lorsqu'il devient inférieur et la valeur hi lorsqu'il devient supérieur
// Utilisé pour la gestion du volume sonore
static int clampi(int v, int lo, int hi) {
  if (v < lo) return lo;
  if (v > hi) return hi;
  return v;
}

// Construit un masque binaire qui en fonction de level allume plus ou moins de LED 
// Exemple : level = 3 --> 00000111 (LED0 allumée, LED1 allumée, LED2 allumée, toutes les autres éteintes)
static void leds_set_bargraph_level(int level) {
  if (level < 0) level = 0;
  if (level > LED_COUNT) level = LED_COUNT;

  uint32 mask = 0;
  for (int i=0; i<level; ++i) mask |= (1u << i);
  *LEDS = mask;
}

// Convertit une amplitude en level qui sera ensuite convertit masque binaire avec la fonction précédente
static void leds_set_volume_bargraph(int amplitude) {
  // amplitude in [0..256] -> level in [0..8]
  int level = (amplitude * LED_COUNT + (VOL_MAX/2)) / VOL_MAX; // arrondi
  leds_set_bargraph_level(level);
}

// Affichage volume prioritaire pendant ~3s
static void volume_led_show_now(int amplitude) {
  leds_set_volume_bargraph(amplitude);
  vol_led_blocks_left = VOL_LED_SHOW_BLOCKS;
}

// Tant que vol_led_blocks_left > 0 : on considère que les LEDs sont réservées à l'affichage du volume.
// Quand le compteur atteint 0, on éteint les LEDs : le bloc suivant pourra réactiver le VU-mètre.
static void volume_led_tick(void) {
  if (vol_led_blocks_left > 0) {
    vol_led_blocks_left--;
    if (vol_led_blocks_left == 0) {
      *LEDS = 0;
    }
  }
}

// Calcule un niveau de VU-mètre (0..LED_COUNT) à partir d'un bloc audio avec VU = Volume Unit
static int compute_vu_level_from_block_u8(const uint8 *blk512) {
  int acc = 0;

  // Somme des amplitudes des 512 échantillons du bloc sonore autour du silence à 128 d'amplitude
  for (int i=0; i<512; ++i) {
    int s = (int)blk512[i] - 128; // recentrage (silence -> 0)
    if (s < 0) s = -s;            // valeur absolue
    acc += s;
  }

  // Moyenne sur 512 échantillons décalage de 9 vers la droite revient à diviser acc par 512
  int energy = acc >> 9;

  // Convertit l'énergie en niveau LED.
  // La division par 15 règle la sensibilité. Elle a été choisi de sorte à ce que peu importe le volume, des variations raisonnable soit visible
  int level = (energy * LED_COUNT) / 15;

  // Clamp pour rester dans [0..LED_COUNT]
  if (level < 0) level = 0;
  if (level > LED_COUNT) level = LED_COUNT;
  return level;
}


// Met à jour le niveau VU (vu_level) à partir du bloc courant, puis l'affiche sur les LEDs.
// - attaque rapide : si le son augmente, on saute immédiatement au niveau cible
// - chute lente : si le son diminue, on baisse progressivement (1 par bloc)
static void vu_update_and_show(const uint8 *blk512) {
  int target = compute_vu_level_from_block_u8(blk512);

  if (target > vu_level) vu_level = target;   // attaque rapide
  else if (vu_level > 0) vu_level--;          // chute lente

  leds_set_bargraph_level(vu_level);
}

// =========================================================
// Lecture boutons : anti-rebond + polling rapide
// =========================================================

// Lecture boutons avec anti-rebond par vote
static int read_buttons_debounced(void) {
  int b0 = *BUTTONS;
  int b1 = *BUTTONS;
  int b2 = *BUTTONS;
  int b3 = *BUTTONS;
  int b4 = *BUTTONS;

  int v = 0;
  for (int bit = 0; bit < 7; ++bit) {
    int m = ((b0>>bit)&1) + ((b1>>bit)&1) + ((b2>>bit)&1) + ((b3>>bit)&1) + ((b4>>bit)&1);
    if (m >= 1) v |= (1<<bit); // Majorité obtenu à 1 vote
  }
  return v;
}
// Pas trop utile vu que la majorité est obtenu avec un vote, mais initialement utilisé. 
// J'ai remarqué que parfois les boutons ne sont pas pris en compte avec un appui très court, c'est pour cela que j'ai passé la majorité à 1.

// Petit délai qui permet de réduire la fréquence de lecture des boutons
static void tiny_delay(int n) {
  volatile int x = 0;
  for (int i=0; i<n; ++i) x += i;
  (void)x;
}

// =========================================================
// Pause icon drawing
// =========================================================

// Permet de ne charger l'icône pause qu'une seule fois 
static void load_pause_icon_once(void) {
  if (pause_loaded) return;
  FL_FILE *h = fl_fopen("/pause.raw", "rb");
  if (!h) return;
  fl_fread(pause_buf, 1, PAUSE_W * PAUSE_H, h);
  fl_fclose(h);
  pause_loaded = 1;
}

// Dessine l'icône pause 
// Les pixels claire sont ignorés, tandis que les pixels foncés sont dessinés ce qui permet d'avoir un bouton pause "transparent"
static void draw_pause_icon(int x0, int y0) {
  load_pause_icon_once();
  if (!pause_loaded) return;

  uint8 *fb = (uint8*)display_framebuffer();
  for (int y=0; y<PAUSE_H; ++y) {
    for (int x=0; x<PAUSE_W; ++x) {
      uint8 pix = pause_buf[y*PAUSE_W + x];
      if (pix < 100) {
        int fx = x0 + x;
        int fy = y0 + y;
        if ((unsigned)fx < 128 && (unsigned)fy < 128) {
          fb[fy*128 + fx] = pix;
        }
      }
    }
  }
  display_refresh();
}

// =========================================================
// Audio helpers 
// =========================================================

// Créer du silence lorsque la musique est mise en pause ou lorsqu'on sort du mode musique pour retourner dans le mode menu
static void clear_audio(void) {
  int *addr = (int*)(*AUDIO);
  while (addr == (int*)(*AUDIO)) { }
  for (int b=0; b<2; ++b) {
    addr = (int*)(*AUDIO);
    memset(addr, 128, 512);          // silence U8
    while (addr == (int*)(*AUDIO)) { }
  }
}

// Garantit que 512 octets soient toujours lu, et complète avec du silence à 128 si nécessaire
static int fread_fill512(FL_FILE *f, uint8 *buf) {
  int got = 0;
  while (got < 512) {
    int r = fl_fread(buf + got, 1, 512 - got, f);
    if (r <= 0) break;
    got += r;
  }
  if (got < 512) memset(buf + got, 128, 512 - got);
  return got;
}

// =========================================================
// Interface du menu
// =========================================================

// Structure Entry
typedef struct {
  char  name[NAME_MAX]; // Nom du fichier ou du dossier
  uint8 is_dir; // 1 si c'est un dossier et 0 si c'est un fichier
  uint32 size;
  uint8 is_up; // 1 si c'est l'entrée spéciale ".." qui permet de retourner dans le dossier parent
} Entry;

static Entry view[VIEW_ITEMS]; // Fenêtre visible 
static int   view_count = 0; // Combien d'item dans view
static int   total_count = 0; // Nombre total d'item 
static int   scroll = 0; // Index global du premier élément affiché
static int   selected = 0; // Index global de l'élément sélectionné

// Évite d'afficher certain fichier dans le navigateur en l'occurence les images
static int is_visible_file(const char *name) {
  if (streq(name, "pause.raw")) return 0;
  if (ends_with(name, ".raw.raw")) return 0; // images associées
  return 1;
}

// Coeur du navigateur
static void scan_dir_build_view(const char *cwd) {
  // Reset 
  view_count = 0;
  total_count = 0;

  // Décide s'il faut afficher ".."
  int has_up = !(cwd[0] == '/' && cwd[1] == 0);
  if (has_up) total_count = 1;

  // Compter tous les items visibles
  FL_DIR d;
  if (fl_opendir(cwd, &d)) {
    struct fs_dir_ent e;
    while (fl_readdir(&d, &e) == 0) {
      if (streq(e.filename, ".") || streq(e.filename, "..")) continue;
      if (!e.is_dir) {
        if (!is_visible_file(e.filename)) continue;
      }
      total_count++;
    }
    fl_closedir(&d);
  }

  // Corriger selected et scroll
  if (total_count <= 0) { selected = 0; scroll = 0; return; }

  if (selected < 0) selected = 0;
  if (selected >= total_count) selected = total_count - 1;

  if (selected < scroll) scroll = selected;
  if (selected >= scroll + VIEW_ITEMS) scroll = selected - (VIEW_ITEMS - 1);
  if (scroll < 0) scroll = 0;

  // Définir la fenêtre voulue
  int want_start = scroll;
  int want_end   = scroll + VIEW_ITEMS;

  // Insérer ".." si nécessaire
  if (has_up) {
    if (0 >= want_start && 0 < want_end) {
      Entry *en = &view[view_count++];
      str_cpy_max(en->name, "..", NAME_MAX);
      en->is_dir = 1;
      en->size   = 0;
      en->is_up  = 1;
    }
  }

  if (!fl_opendir(cwd, &d)) return;

  // Remplir view avec les bons éléments
  struct fs_dir_ent e2;
  int gi = has_up ? 1 : 0;
  while (fl_readdir(&d, &e2) == 0) {
    if (streq(e2.filename, ".") || streq(e2.filename, "..")) continue;
    if (!e2.is_dir) {
      if (!is_visible_file(e2.filename)) continue;
    }

    int this_gi = gi++;
    if (this_gi < want_start) continue;
    if (this_gi >= want_end) break;
    if (view_count >= VIEW_ITEMS) break;

    Entry *en = &view[view_count++];
    str_cpy_max(en->name, e2.filename, NAME_MAX);
    en->is_dir = e2.is_dir ? 1 : 0;
    en->size   = e2.size;
    en->is_up  = 0;
  }

  fl_closedir(&d);
}

// Affichage du Menu
static void draw_browser(const char *cwd, int pulse) {
  display_refresh();
  display_set_cursor(0,0);
  display_set_front_back_color((pulse+127)&255, pulse);
  printf("=== %s ===\n\n", cwd);

  for (int i=0; i<view_count; ++i) {
    int global_idx = scroll + i;
    if (global_idx == selected) display_set_front_back_color(0,255);
    else                        display_set_front_back_color(255,0);

    if (view[i].is_up) {
      printf("[UP ] ..\n");
    } else if (view[i].is_dir) {
      printf("[DIR] %s\n", view[i].name);
    } else {
      printf("      %s\n", view[i].name);
    }
  }

  if (total_count == 0) {
    display_set_front_back_color(255,0);
    printf("(vide)\n");
  }

  display_refresh();
}

// =========================================================
// Image / Player
// =========================================================

// Affiche l'image lié au son
static void show_image_for_audio(const char *audio_path) {
  char img_path[PATH_MAX];
  make_image_path(img_path, audio_path);

  FL_FILE *g = fl_fopen(img_path, "rb");
  if (!g) return;

  fl_fread((void*)display_framebuffer(), 1, 128*128, g);
  fl_fclose(g);
  display_refresh();
}

static void play_audio_with_ui(const char *audio_path) {
  int amplitude = 128; // Volume de départ 
  int paused = 0;

  amplitude = clampi(amplitude, VOL_MIN, VOL_MAX);

  *LEDS = 0; // Éteinds les LEDS
  vol_led_blocks_left = 0;
  vu_level = 0; // Réinitialise l'affichage des LEDS

  show_image_for_audio(audio_path); // Affiche l'image associée 
  // Si elle n'existe pas on affiche un message d'erreur sur l'écran
  FL_FILE *f = fl_fopen(audio_path, "rb");
  if (!f) {
    display_set_cursor(0,0);
    display_set_front_back_color(255,0);
    printf("Audio introuvable:\n%s\n", audio_path);
    display_refresh();
    return;
  }

  clear_audio(); // Permet de démarrer l'audio proprement

  int prev_buttons = 0; // Permet de détecter just_pressed
  int hold_cnt = 0; // Pour augmenter ou diminuer le volume plus rapidement mais pas opérationnel pour le moment
  int last_dir = 0; // Mémorise si on augmente ou diminue le volume utile pour augmenter ou diminuer le volume plus rapidement

  // Jouer du silence lorsque le musique est en pause 
  static uint8 silence[512];
  static int silence_init = 0;
  if (!silence_init) { memset(silence, 128, 512); silence_init = 1; }

  while (1) {
    // Évite que l'appuie long fasse n'importe quoi 
    int buttons = read_buttons_debounced();
    int just_pressed = buttons & (~prev_buttons);
    prev_buttons = buttons;

    // Affiche menu
    if (just_pressed & BTN2) {
      clear_audio();
      memset((void*)display_framebuffer(), 0x00, 128*128);
      display_refresh();
      break;
    }

    // Affichage pause
    if (just_pressed & BTN1) {
      paused = !paused;
      if (paused) {
        clear_audio();
        draw_pause_icon(0,0);
      } else {
        show_image_for_audio(audio_path);
      }
    }

    // Gestion du volume pour l'instant il n'y a que le début qui est utile
    // Comme dit la partie permettant d'accélerer le changement de volume n'est pas opérationel
    int dir = 0;
    if (buttons & BTN_VOL_DOWN) dir = -1;
    if (buttons & BTN_VOL_UP)   dir = +1;
    if ((buttons & BTN_VOL_DOWN) && (buttons & BTN_VOL_UP)) dir = 0;

    int vol_just_down = just_pressed & BTN_VOL_DOWN;
    int vol_just_up   = just_pressed & BTN_VOL_UP;

    int changed = 0;

    if (vol_just_down) { dir = -1; hold_cnt = 0; }
    if (vol_just_up)   { dir = +1; hold_cnt = 0; }

    if (vol_just_down || vol_just_up) {
      int old = amplitude;
      amplitude = clampi(amplitude + dir * VOL_STEP, VOL_MIN, VOL_MAX);
      changed = (amplitude != old);
      last_dir = dir;
    } else {
      if (dir != 0) {
        if (dir != last_dir) { hold_cnt = 0; last_dir = dir; }
        hold_cnt++;
        if (hold_cnt > 25 && (hold_cnt % 6) == 0) {
          int old = amplitude;
          amplitude = clampi(amplitude + dir * VOL_STEP, VOL_MIN, VOL_MAX);
          changed = (amplitude != old);
        }
      } else {
        hold_cnt = 0;
        last_dir = 0;
      }
    }

    // Affichage du volume sur les LEDS
    if (changed) volume_led_show_now(amplitude);

    // Gestion de l'audio en pause
    if (paused) {
      int *addr = (int*)(*AUDIO);
      memcpy(addr, silence, 512);
      while (addr == (int*)(*AUDIO)) { }

      volume_led_tick();
      if (vol_led_blocks_left == 0) *LEDS = 0;
      continue;
    }

    int *addr = (int*)(*AUDIO);
    uint8 tmp[512];
    int sz = fread_fill512(f, tmp);

    for (int i=0; i<512; ++i) {
      int s = (int)tmp[i] - 128;
      s = (s * amplitude) >> 8;
      s += 128;
      if (s < 0) s = 0;
      if (s > 255) s = 255;
      tmp[i] = (uint8)s;
    }

    memcpy(addr, tmp, 512);

    // Animation des LEDS en synchronisation avec la musique
    volume_led_tick();
    if (vol_led_blocks_left == 0) {
      vu_update_and_show(tmp);
    }

    if (sz < 512) {
      clear_audio();
      break;
    }

    while (addr == (int*)(*AUDIO)) { }
  }

  fl_fclose(f);
  *LEDS = 0;
}

// =========================================================
// MAIN : boucle réactive
// =========================================================

void main(void) {
  // Initialisation du système
  *LEDS = 0;
  f_putchar = display_putchar;

  // Initialisation écran et buffer
  oled_init();
  oled_fullscreen();

  memset((void*)display_framebuffer(), 0x00, 128*128);
  display_refresh();

  // Initialisation SD
  sdcard_init();
  fl_init();
  while (fl_attach_media(sdcard_readsector, sdcard_writesector) != FAT_INIT_OK) { }

  // État intial du menu
  char cwd[PATH_MAX];
  cwd[0] = '/'; cwd[1] = 0;

  int pulse = 0;
  int prev_buttons = 0;

  int dirty = 1;
  int pulse_tick = 0;

  // Menu interactif
  while (1) {
    if (dirty) {
      *LEDS = 0;
      scan_dir_build_view(cwd);
      draw_browser(cwd, pulse);
      dirty = 0;
    }

    for (int k=0; k<2500; ++k) {
      int buttons = read_buttons_debounced();
      int just_pressed = buttons & (~prev_buttons);
      prev_buttons = buttons;

      if (total_count > 0) {
        // Navigation UP/DOWN
        if (just_pressed & BTN4) { selected++; dirty = 1; break; }
        if (just_pressed & BTN3) { selected--; dirty = 1; break; }

        if (selected < 0) selected = 0;
        if (selected >= total_count) selected = total_count - 1;

        // Sélection
        if (just_pressed & BTN2) {
          display_refresh();
          int local = selected - scroll;
          memset((void*)display_framebuffer(), 0x00, 128*128);
          if (local >= 0 && local < view_count) {
            // Retourner dans le dossier parent 
            if (view[local].is_up) {
              path_parent(cwd);
              selected = 0;
              scroll = 0;
              dirty = 1;
              break;
            }

            char full[PATH_MAX];
            path_join(full, cwd, view[local].name);

            // Aller dans le dossier selectionné
            if (view[local].is_dir) {
              str_cpy_max(cwd, full, PATH_MAX);
              selected = 0;
              scroll = 0;
              dirty = 1;
              break;
            } else { // Lire l'audio correspondant au fichier selectionné
              play_audio_with_ui(full);
              dirty = 1;
              break;
            }
          }
        }
      }

      tiny_delay(40);
    }
    
    // Animation repris de step3 si je ne dis pas de bêtise qui fait clignoter le titre qui d'ailleurs n'est plus opérationnel à ce que je vois
    pulse_tick++;
    if (pulse_tick >= 40) {
      pulse += 7;
      pulse_tick = 0;
      dirty = 1;
    }
  }
}
