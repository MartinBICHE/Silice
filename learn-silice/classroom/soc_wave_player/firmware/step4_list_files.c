// @sylefeb 2022-01-10
// MIT license, see LICENSE_MIT in Silice repo root
// https://github.com/sylefeb/Silice/

#include "config.h"
#include "std.h"
#include "oled.h"
#include "display.h"
#include "printf.h"
#include "sdcard.h"

#define N_ITEMS 7

// include the fat32 library
#include "fat_io_lib/src/fat_filelib.h"

void main()
{
  // turn LEDs off
  *LEDS = 0;
  // install putchar handler for printf
  f_putchar = display_putchar;
  // init screen
  oled_init();
  oled_fullscreen();
  oled_clear(0);

  int selected = 0;
  int pulse = 0;

  // init sdcard
  sdcard_init();
  // initialise File IO Library
  fl_init();
  // attach media access functions to library
  while (fl_attach_media(sdcard_readsector, sdcard_writesector) != FAT_INIT_OK) {
    // keep trying, we need this
  }
  // header
  display_set_cursor(0,0);
  display_set_front_back_color(0,255);
  printf("    ===== files =====    \n\n");
  display_refresh();
  display_set_front_back_color(255,0);
  // list files (see fl_listdirectory if at_io_lib/src/fat_filelib.c)
  const char *path = "/";
  FL_DIR dirstat;

  while(1){
    // print file name
    display_set_cursor(0,0);
    // pulsing header
    display_set_front_back_color((pulse+127)&255,pulse);
    pulse += 7;
    printf("    ===== songs =====    \n\n");

    if (fl_opendir(path, &dirstat)) {
      struct fs_dir_ent dirent;
      int idx = 0;   // index de ligne

      while (fl_readdir(&dirstat, &dirent) == 0) {
        if (!dirent.is_dir) {

          if (idx == selected) { // highlight selected
            display_set_front_back_color(0,255);
          } else {
            display_set_front_back_color(255,0);
          }

          printf("%s [%d bytes]\n", dirent.filename, dirent.size);
          idx++;

          if (idx >= N_ITEMS) {
            break;  // on n'affiche que N_ITEMS lignes max
          }
        }
      }

      fl_closedir(&dirstat);

      // si selected dépasse le nb réel d’items, on le recale
      if (idx > 0 && selected >= idx) {
        selected = idx - 1;
      }
    }

    display_refresh();

    // gestion des boutons
    if (*BUTTONS & (1<<4)) {
      ++ selected;
    }
    if (*BUTTONS & (1<<3)) {
      -- selected;
    }
    // wrap around
    if (selected < 0) {
      selected = N_ITEMS - 1;
    }
    if (selected >= N_ITEMS) {
      selected = 0;
    }
  }
}
