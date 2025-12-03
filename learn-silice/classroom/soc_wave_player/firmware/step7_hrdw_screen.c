// @sylefeb 2022-01-10
// MIT license, see LICENSE_MIT in Silice repo root
// https://github.com/sylefeb/Silice/

#include "config.h"
#include "std.h"
#include "oled.h"
#include "display.h"
#include "printf.h"
#include "sdcard.h"

#include "fat_io_lib/src/fat_filelib.h"

#ifndef HWFBUFFER
#error This firmware needs HWFBUFFER defined
#endif

void clear_audio()
{
  // wait for a buffer swap (sync)
  int *addr = (int*)(*AUDIO);
  while (addr == (int*)(*AUDIO)) { }
  // go ahead
  for (int b=0 ; b<2 ; ++b) {
    // read directly in hardware buffer
    addr = (int*)(*AUDIO);
    // clear buffer
    memset(addr,0,512);
    // wait for buffer swap
    while (addr == (int*)(*AUDIO)) { }
  }
}

void main()
{
  int amplitude = 128;
  int paused = 0;
  int prev_buttons = 0;
  // install putchar handler for printf
  f_putchar = display_putchar;

  oled_init();
  oled_fullscreen();

  memset(display_framebuffer(),0x00,128*128);
  display_refresh();

  display_set_cursor(0,0);
  display_set_front_back_color(255,0);
  printf("init ... ");
  display_refresh();

  // init sdcard
  sdcard_init();
  // initialise File IO Library
  fl_init();
  // attach media access functions to library
  while (fl_attach_media(sdcard_readsector, sdcard_writesector) != FAT_INIT_OK) {
    // try again, we need this
  }
  printf("done.\n");
  display_refresh();

  FL_FILE *g = fl_fopen("/music.raw.raw","rb");
  if (g == NULL) {
    printf("img.raw not found.\n");
    display_refresh();
  } else {
    printf("image found.\n");
    display_refresh();
    // read pixels in framebuffer
    fl_fread(display_framebuffer(),1,128*128,g);
    // refresh display to show the image
    display_refresh();
    // close
    fl_fclose(g);
  }

  // playing the track
  // -> open the file
  FL_FILE *f = fl_fopen("/music.raw","rb");
  if (f == NULL) {
    // error, no file
    printf("file not found.\n");
    display_refresh();
  } else {
    display_set_front_back_color(0,255);
    // printf("music file found.\n");
    display_refresh();
    display_set_front_back_color(255,0);
    // printf("playing ... ");
    display_refresh();
    int leds = 1;
    int dir  = 0;
    // plays the entire file
    while (1) {
      int buttons = *BUTTONS;
      int just_pressed = buttons & (~prev_buttons);
      prev_buttons = buttons;

      if (buttons & (1<<5)) {
        amplitude = amplitude - 1;
      }
      if (buttons & (1<<6)) {
        amplitude = amplitude + 1;
      }
      if (just_pressed & (1<<1)) {
        paused = !paused;
      }

      if (paused) {
        int *addr = (int*)(*AUDIO);
        static uint8 zeros[512] = {0};
        memcpy(addr, zeros, 512);
        while (addr == (int*)(*AUDIO)) { }
        continue;
      }

      // lecture normale du son
      int *addr = (int*)(*AUDIO);
      uint8 tmp[512];
      int sz = fl_fread(tmp,1,512,f);
      for (int i=0; i<sz; ++i) {
        tmp[i] = (tmp[i] * amplitude) >> 8;
      }
      memcpy(addr, tmp, sz);
      if (sz < 512) break; // fin de fichier

      // attendre le swap de buffer
      while (addr == (int*)(*AUDIO)) { }
      // light show!
      if (leds == 128 || leds == 1) { dir = 1-dir; }
      if (dir) {
        leds = leds << 1;
      } else {
        leds = leds >> 1;
      }
      *LEDS = leds;
    }
    // close
    fl_fclose(f);
  }

}
