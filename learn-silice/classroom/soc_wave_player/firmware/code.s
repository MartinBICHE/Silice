
code.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
       0:	00010137          	lui	sp,0x10
       4:	00000097          	auipc	ra,0x0
       8:	3a4080e7          	jalr	932(ra) # 3a8 <main>
       c:	00000317          	auipc	t1,0x0
      10:	00830067          	jr	8(t1) # 14 <exit>

00000014 <exit>:
      14:	00000000          	.word	0x00000000
      18:	00008067          	ret

0000001c <streq>:
      1c:	00054703          	lbu	a4,0(a0)
      20:	02070263          	beqz	a4,44 <streq+0x28>
      24:	0005c783          	lbu	a5,0(a1)
      28:	00079663          	bnez	a5,34 <streq+0x18>
      2c:	00000513          	li	a0,0
      30:	00008067          	ret
      34:	fef71ce3          	bne	a4,a5,2c <streq+0x10>
      38:	00150513          	addi	a0,a0,1
      3c:	00158593          	addi	a1,a1,1
      40:	fddff06f          	j	1c <streq>
      44:	0005c503          	lbu	a0,0(a1)
      48:	00153513          	seqz	a0,a0
      4c:	00008067          	ret

00000050 <leds_set_bargraph_level>:
      50:	00800793          	li	a5,8
      54:	00a7c863          	blt	a5,a0,64 <leds_set_bargraph_level+0x14>
      58:	fff54793          	not	a5,a0
      5c:	41f7d793          	srai	a5,a5,0x1f
      60:	00f577b3          	and	a5,a0,a5
      64:	00000713          	li	a4,0
      68:	00000693          	li	a3,0
      6c:	00100613          	li	a2,1
      70:	00f71a63          	bne	a4,a5,84 <leds_set_bargraph_level+0x34>
      74:	000057b7          	lui	a5,0x5
      78:	fd87a783          	lw	a5,-40(a5) # 4fd8 <LEDS>
      7c:	00d7a023          	sw	a3,0(a5)
      80:	00008067          	ret
      84:	00e615b3          	sll	a1,a2,a4
      88:	00b6e6b3          	or	a3,a3,a1
      8c:	00170713          	addi	a4,a4,1
      90:	fe1ff06f          	j	70 <leds_set_bargraph_level+0x20>

00000094 <read_buttons_debounced>:
      94:	000057b7          	lui	a5,0x5
      98:	fc87a783          	lw	a5,-56(a5) # 4fc8 <BUTTONS>
      9c:	00000513          	li	a0,0
      a0:	00100e93          	li	t4,1
      a4:	0007a583          	lw	a1,0(a5)
      a8:	00700613          	li	a2,7
      ac:	0007a803          	lw	a6,0(a5)
      b0:	0007a883          	lw	a7,0(a5)
      b4:	0007a303          	lw	t1,0(a5)
      b8:	0007ae03          	lw	t3,0(a5)
      bc:	00000793          	li	a5,0
      c0:	40f5d733          	sra	a4,a1,a5
      c4:	40f856b3          	sra	a3,a6,a5
      c8:	0016f693          	andi	a3,a3,1
      cc:	00177713          	andi	a4,a4,1
      d0:	00d70733          	add	a4,a4,a3
      d4:	40f8d6b3          	sra	a3,a7,a5
      d8:	0016f693          	andi	a3,a3,1
      dc:	00d70733          	add	a4,a4,a3
      e0:	40f356b3          	sra	a3,t1,a5
      e4:	0016f693          	andi	a3,a3,1
      e8:	00d70733          	add	a4,a4,a3
      ec:	40fe56b3          	sra	a3,t3,a5
      f0:	01f69f13          	slli	t5,a3,0x1f
      f4:	41ff5693          	srai	a3,t5,0x1f
      f8:	00e68663          	beq	a3,a4,104 <read_buttons_debounced+0x70>
      fc:	00fe9733          	sll	a4,t4,a5
     100:	00e56533          	or	a0,a0,a4
     104:	00178793          	addi	a5,a5,1
     108:	fac79ce3          	bne	a5,a2,c0 <read_buttons_debounced+0x2c>
     10c:	00008067          	ret

00000110 <clear_audio>:
     110:	fe010113          	addi	sp,sp,-32 # ffe0 <_files+0x649c>
     114:	000057b7          	lui	a5,0x5
     118:	00812c23          	sw	s0,24(sp)
     11c:	fc07a403          	lw	s0,-64(a5) # 4fc0 <AUDIO>
     120:	00112e23          	sw	ra,28(sp)
     124:	00912a23          	sw	s1,20(sp)
     128:	00042703          	lw	a4,0(s0)
     12c:	01212823          	sw	s2,16(sp)
     130:	01312623          	sw	s3,12(sp)
     134:	00042783          	lw	a5,0(s0)
     138:	fef70ee3          	beq	a4,a5,134 <clear_audio+0x24>
     13c:	00200493          	li	s1,2
     140:	00100993          	li	s3,1
     144:	00042903          	lw	s2,0(s0)
     148:	20000613          	li	a2,512
     14c:	08000593          	li	a1,128
     150:	00090513          	mv	a0,s2
     154:	00001097          	auipc	ra,0x1
     158:	470080e7          	jalr	1136(ra) # 15c4 <memset>
     15c:	00042783          	lw	a5,0(s0)
     160:	fef90ee3          	beq	s2,a5,15c <clear_audio+0x4c>
     164:	03349063          	bne	s1,s3,184 <clear_audio+0x74>
     168:	01c12083          	lw	ra,28(sp)
     16c:	01812403          	lw	s0,24(sp)
     170:	01412483          	lw	s1,20(sp)
     174:	01012903          	lw	s2,16(sp)
     178:	00c12983          	lw	s3,12(sp)
     17c:	02010113          	addi	sp,sp,32
     180:	00008067          	ret
     184:	00100493          	li	s1,1
     188:	fbdff06f          	j	144 <clear_audio+0x34>

0000018c <str_cpy_max.part.0>:
     18c:	fc060793          	addi	a5,a2,-64
     190:	00f037b3          	snez	a5,a5
     194:	40f007b3          	neg	a5,a5
     198:	0c07f793          	andi	a5,a5,192
     19c:	03f78793          	addi	a5,a5,63
     1a0:	00000713          	li	a4,0
     1a4:	00e586b3          	add	a3,a1,a4
     1a8:	0006c603          	lbu	a2,0(a3)
     1ac:	00e506b3          	add	a3,a0,a4
     1b0:	00060463          	beqz	a2,1b8 <str_cpy_max.part.0+0x2c>
     1b4:	00f74663          	blt	a4,a5,1c0 <str_cpy_max.part.0+0x34>
     1b8:	00068023          	sb	zero,0(a3)
     1bc:	00008067          	ret
     1c0:	00c68023          	sb	a2,0(a3)
     1c4:	00170713          	addi	a4,a4,1
     1c8:	fddff06f          	j	1a4 <str_cpy_max.part.0+0x18>

000001cc <volume_led_tick>:
     1cc:	00005737          	lui	a4,0x5
     1d0:	2e072783          	lw	a5,736(a4) # 52e0 <vol_led_blocks_left>
     1d4:	00f05e63          	blez	a5,1f0 <volume_led_tick+0x24>
     1d8:	fff78793          	addi	a5,a5,-1
     1dc:	2ef72023          	sw	a5,736(a4)
     1e0:	00079863          	bnez	a5,1f0 <volume_led_tick+0x24>
     1e4:	000057b7          	lui	a5,0x5
     1e8:	fd87a783          	lw	a5,-40(a5) # 4fd8 <LEDS>
     1ec:	0007a023          	sw	zero,0(a5)
     1f0:	00008067          	ret

000001f4 <str_cat_max.constprop.0>:
     1f4:	00000793          	li	a5,0
     1f8:	10000713          	li	a4,256
     1fc:	00f506b3          	add	a3,a0,a5
     200:	0006c683          	lbu	a3,0(a3)
     204:	00068a63          	beqz	a3,218 <str_cat_max.constprop.0+0x24>
     208:	00e79463          	bne	a5,a4,210 <str_cat_max.constprop.0+0x1c>
     20c:	00008067          	ret
     210:	00178793          	addi	a5,a5,1
     214:	fe9ff06f          	j	1fc <str_cat_max.constprop.0+0x8>
     218:	0fe00713          	li	a4,254
     21c:	02f74463          	blt	a4,a5,244 <str_cat_max.constprop.0+0x50>
     220:	00078713          	mv	a4,a5
     224:	0ff00813          	li	a6,255
     228:	40f706b3          	sub	a3,a4,a5
     22c:	00d586b3          	add	a3,a1,a3
     230:	0006c603          	lbu	a2,0(a3)
     234:	00e506b3          	add	a3,a0,a4
     238:	00060463          	beqz	a2,240 <str_cat_max.constprop.0+0x4c>
     23c:	01071663          	bne	a4,a6,248 <str_cat_max.constprop.0+0x54>
     240:	00068023          	sb	zero,0(a3)
     244:	00008067          	ret
     248:	00c68023          	sb	a2,0(a3)
     24c:	00170713          	addi	a4,a4,1
     250:	fd9ff06f          	j	228 <str_cat_max.constprop.0+0x34>

00000254 <show_image_for_audio>:
     254:	ef010113          	addi	sp,sp,-272
     258:	00050593          	mv	a1,a0
     25c:	10000613          	li	a2,256
     260:	00010513          	mv	a0,sp
     264:	10112623          	sw	ra,268(sp)
     268:	10812423          	sw	s0,264(sp)
     26c:	00000097          	auipc	ra,0x0
     270:	f20080e7          	jalr	-224(ra) # 18c <str_cpy_max.part.0>
     274:	000055b7          	lui	a1,0x5
     278:	fdc58593          	addi	a1,a1,-36 # 4fdc <LEDS+0x4>
     27c:	00010513          	mv	a0,sp
     280:	00000097          	auipc	ra,0x0
     284:	f74080e7          	jalr	-140(ra) # 1f4 <str_cat_max.constprop.0>
     288:	000055b7          	lui	a1,0x5
     28c:	fe458593          	addi	a1,a1,-28 # 4fe4 <LEDS+0xc>
     290:	00010513          	mv	a0,sp
     294:	00005097          	auipc	ra,0x5
     298:	91c080e7          	jalr	-1764(ra) # 4bb0 <fl_fopen>
     29c:	02050c63          	beqz	a0,2d4 <show_image_for_audio+0x80>
     2a0:	00050413          	mv	s0,a0
     2a4:	00001097          	auipc	ra,0x1
     2a8:	5a4080e7          	jalr	1444(ra) # 1848 <display_framebuffer>
     2ac:	00040693          	mv	a3,s0
     2b0:	00004637          	lui	a2,0x4
     2b4:	00100593          	li	a1,1
     2b8:	00004097          	auipc	ra,0x4
     2bc:	2f4080e7          	jalr	756(ra) # 45ac <fl_fread>
     2c0:	00040513          	mv	a0,s0
     2c4:	00004097          	auipc	ra,0x4
     2c8:	20c080e7          	jalr	524(ra) # 44d0 <fl_fclose>
     2cc:	00001097          	auipc	ra,0x1
     2d0:	6c8080e7          	jalr	1736(ra) # 1994 <display_refresh>
     2d4:	10c12083          	lw	ra,268(sp)
     2d8:	10812403          	lw	s0,264(sp)
     2dc:	11010113          	addi	sp,sp,272
     2e0:	00008067          	ret

000002e4 <is_visible_file>:
     2e4:	000055b7          	lui	a1,0x5
     2e8:	ff010113          	addi	sp,sp,-16
     2ec:	fe858593          	addi	a1,a1,-24 # 4fe8 <LEDS+0x10>
     2f0:	00812423          	sw	s0,8(sp)
     2f4:	00112623          	sw	ra,12(sp)
     2f8:	00050413          	mv	s0,a0
     2fc:	00000097          	auipc	ra,0x0
     300:	d20080e7          	jalr	-736(ra) # 1c <streq>
     304:	08051e63          	bnez	a0,3a0 <is_visible_file+0xbc>
     308:	00050693          	mv	a3,a0
     30c:	00000793          	li	a5,0
     310:	20000713          	li	a4,512
     314:	00f40633          	add	a2,s0,a5
     318:	00064603          	lbu	a2,0(a2) # 4000 <fatfs_fat_set_cluster+0x40>
     31c:	04061863          	bnez	a2,36c <is_visible_file+0x88>
     320:	000055b7          	lui	a1,0x5
     324:	00000713          	li	a4,0
     328:	ff458593          	addi	a1,a1,-12 # 4ff4 <LEDS+0x1c>
     32c:	04000613          	li	a2,64
     330:	00b70533          	add	a0,a4,a1
     334:	00054503          	lbu	a0,0(a0)
     338:	00050463          	beqz	a0,340 <is_visible_file+0x5c>
     33c:	02c71e63          	bne	a4,a2,378 <is_visible_file+0x94>
     340:	00100513          	li	a0,1
     344:	00e7cc63          	blt	a5,a4,35c <is_visible_file+0x78>
     348:	40e787b3          	sub	a5,a5,a4
     34c:	00000613          	li	a2,0
     350:	02e61863          	bne	a2,a4,380 <is_visible_file+0x9c>
     354:	00100693          	li	a3,1
     358:	0016c513          	xori	a0,a3,1
     35c:	00c12083          	lw	ra,12(sp)
     360:	00812403          	lw	s0,8(sp)
     364:	01010113          	addi	sp,sp,16
     368:	00008067          	ret
     36c:	fae78ae3          	beq	a5,a4,320 <is_visible_file+0x3c>
     370:	00178793          	addi	a5,a5,1
     374:	fa1ff06f          	j	314 <is_visible_file+0x30>
     378:	00170713          	addi	a4,a4,1
     37c:	fb5ff06f          	j	330 <is_visible_file+0x4c>
     380:	00c78833          	add	a6,a5,a2
     384:	01040833          	add	a6,s0,a6
     388:	00c58533          	add	a0,a1,a2
     38c:	00084803          	lbu	a6,0(a6)
     390:	00054503          	lbu	a0,0(a0)
     394:	fca812e3          	bne	a6,a0,358 <is_visible_file+0x74>
     398:	00160613          	addi	a2,a2,1
     39c:	fb5ff06f          	j	350 <is_visible_file+0x6c>
     3a0:	00000513          	li	a0,0
     3a4:	fb9ff06f          	j	35c <is_visible_file+0x78>

000003a8 <main>:
     3a8:	000057b7          	lui	a5,0x5
     3ac:	fd87a783          	lw	a5,-40(a5) # 4fd8 <LEDS>
     3b0:	b9010113          	addi	sp,sp,-1136
     3b4:	46112623          	sw	ra,1132(sp)
     3b8:	46812423          	sw	s0,1128(sp)
     3bc:	46912223          	sw	s1,1124(sp)
     3c0:	47212023          	sw	s2,1120(sp)
     3c4:	45312e23          	sw	s3,1116(sp)
     3c8:	45412c23          	sw	s4,1112(sp)
     3cc:	45512a23          	sw	s5,1108(sp)
     3d0:	45612823          	sw	s6,1104(sp)
     3d4:	45712623          	sw	s7,1100(sp)
     3d8:	45812423          	sw	s8,1096(sp)
     3dc:	45912223          	sw	s9,1092(sp)
     3e0:	45a12023          	sw	s10,1088(sp)
     3e4:	43b12e23          	sw	s11,1084(sp)
     3e8:	0007a023          	sw	zero,0(a5)
     3ec:	00f12423          	sw	a5,8(sp)
     3f0:	000027b7          	lui	a5,0x2
     3f4:	00005737          	lui	a4,0x5
     3f8:	87c78793          	addi	a5,a5,-1924 # 187c <display_putchar>
     3fc:	2ef72c23          	sw	a5,760(a4) # 52f8 <f_putchar>
     400:	00001097          	auipc	ra,0x1
     404:	3a4080e7          	jalr	932(ra) # 17a4 <oled_init>
     408:	00001097          	auipc	ra,0x1
     40c:	3a8080e7          	jalr	936(ra) # 17b0 <oled_fullscreen>
     410:	00001097          	auipc	ra,0x1
     414:	438080e7          	jalr	1080(ra) # 1848 <display_framebuffer>
     418:	00004637          	lui	a2,0x4
     41c:	00000593          	li	a1,0
     420:	00001097          	auipc	ra,0x1
     424:	1a4080e7          	jalr	420(ra) # 15c4 <memset>
     428:	000014b7          	lui	s1,0x1
     42c:	00001437          	lui	s0,0x1
     430:	00001097          	auipc	ra,0x1
     434:	564080e7          	jalr	1380(ra) # 1994 <display_refresh>
     438:	50848493          	addi	s1,s1,1288 # 1508 <sdcard_writesector>
     43c:	00001097          	auipc	ra,0x1
     440:	f28080e7          	jalr	-216(ra) # 1364 <sdcard_init>
     444:	4b440413          	addi	s0,s0,1204 # 14b4 <sdcard_readsector>
     448:	00002097          	auipc	ra,0x2
     44c:	c88080e7          	jalr	-888(ra) # 20d0 <fl_init>
     450:	00048593          	mv	a1,s1
     454:	00040513          	mv	a0,s0
     458:	00003097          	auipc	ra,0x3
     45c:	ae0080e7          	jalr	-1312(ra) # 2f38 <fl_attach_media>
     460:	fe0518e3          	bnez	a0,450 <main+0xa8>
     464:	00005737          	lui	a4,0x5
     468:	51470c93          	addi	s9,a4,1300 # 5514 <view>
     46c:	00005737          	lui	a4,0x5
     470:	fc072703          	lw	a4,-64(a4) # 4fc0 <AUDIO>
     474:	02f00793          	li	a5,47
     478:	02f11823          	sh	a5,48(sp)
     47c:	00012623          	sw	zero,12(sp)
     480:	00012c23          	sw	zero,24(sp)
     484:	00012a23          	sw	zero,20(sp)
     488:	00100793          	li	a5,1
     48c:	00005a37          	lui	s4,0x5
     490:	00e12823          	sw	a4,16(sp)
     494:	000059b7          	lui	s3,0x5
     498:	12078663          	beqz	a5,5c4 <main+0x21c>
     49c:	00812783          	lw	a5,8(sp)
     4a0:	2c0a2c23          	sw	zero,728(s4) # 52d8 <view_count>
     4a4:	2c09aa23          	sw	zero,724(s3) # 52d4 <total_count>
     4a8:	0007a023          	sw	zero,0(a5)
     4ac:	03014703          	lbu	a4,48(sp)
     4b0:	02f00793          	li	a5,47
     4b4:	00f71863          	bne	a4,a5,4c4 <main+0x11c>
     4b8:	03114783          	lbu	a5,49(sp)
     4bc:	00000493          	li	s1,0
     4c0:	00078663          	beqz	a5,4cc <main+0x124>
     4c4:	00100493          	li	s1,1
     4c8:	2c99aa23          	sw	s1,724(s3)
     4cc:	13010593          	addi	a1,sp,304
     4d0:	03010513          	addi	a0,sp,48
     4d4:	00003097          	auipc	ra,0x3
     4d8:	07c080e7          	jalr	124(ra) # 3550 <fl_opendir>
     4dc:	02050a63          	beqz	a0,510 <main+0x168>
     4e0:	00005437          	lui	s0,0x5
     4e4:	00005937          	lui	s2,0x5
     4e8:	00040413          	mv	s0,s0
     4ec:	00490913          	addi	s2,s2,4 # 5004 <LEDS+0x2c>
     4f0:	23010593          	addi	a1,sp,560
     4f4:	13010513          	addi	a0,sp,304
     4f8:	00003097          	auipc	ra,0x3
     4fc:	724080e7          	jalr	1828(ra) # 3c1c <fl_readdir>
     500:	10050863          	beqz	a0,610 <main+0x268>
     504:	13010513          	addi	a0,sp,304
     508:	00002097          	auipc	ra,0x2
     50c:	c30080e7          	jalr	-976(ra) # 2138 <fl_closedir>
     510:	2d49a703          	lw	a4,724(s3)
     514:	00005ab7          	lui	s5,0x5
     518:	00005937          	lui	s2,0x5
     51c:	14e04263          	bgtz	a4,660 <main+0x2b8>
     520:	2c0aa623          	sw	zero,716(s5) # 52cc <selected>
     524:	2c092823          	sw	zero,720(s2) # 52d0 <scroll>
     528:	00001097          	auipc	ra,0x1
     52c:	46c080e7          	jalr	1132(ra) # 1994 <display_refresh>
     530:	00000593          	li	a1,0
     534:	00000513          	li	a0,0
     538:	00001097          	auipc	ra,0x1
     53c:	31c080e7          	jalr	796(ra) # 1854 <display_set_cursor>
     540:	01414583          	lbu	a1,20(sp)
     544:	00005b37          	lui	s6,0x5
     548:	00005bb7          	lui	s7,0x5
     54c:	07f58513          	addi	a0,a1,127
     550:	0ff57513          	zext.b	a0,a0
     554:	00001097          	auipc	ra,0x1
     558:	314080e7          	jalr	788(ra) # 1868 <display_set_front_back_color>
     55c:	00005537          	lui	a0,0x5
     560:	03010593          	addi	a1,sp,48
     564:	00850513          	addi	a0,a0,8 # 5008 <LEDS+0x30>
     568:	00001097          	auipc	ra,0x1
     56c:	598080e7          	jalr	1432(ra) # 1b00 <printf>
     570:	000057b7          	lui	a5,0x5
     574:	00005c37          	lui	s8,0x5
     578:	51478413          	addi	s0,a5,1300 # 5514 <view>
     57c:	00000493          	li	s1,0
     580:	030b0b13          	addi	s6,s6,48 # 5030 <LEDS+0x58>
     584:	024b8b93          	addi	s7,s7,36 # 5024 <LEDS+0x4c>
     588:	018c0c13          	addi	s8,s8,24 # 5018 <LEDS+0x40>
     58c:	2d8a2783          	lw	a5,728(s4)
     590:	26f4c863          	blt	s1,a5,800 <main+0x458>
     594:	2d49a783          	lw	a5,724(s3)
     598:	02079263          	bnez	a5,5bc <main+0x214>
     59c:	0ff00513          	li	a0,255
     5a0:	00000593          	li	a1,0
     5a4:	00001097          	auipc	ra,0x1
     5a8:	2c4080e7          	jalr	708(ra) # 1868 <display_set_front_back_color>
     5ac:	00005537          	lui	a0,0x5
     5b0:	03c50513          	addi	a0,a0,60 # 503c <LEDS+0x64>
     5b4:	00001097          	auipc	ra,0x1
     5b8:	54c080e7          	jalr	1356(ra) # 1b00 <printf>
     5bc:	00001097          	auipc	ra,0x1
     5c0:	3d8080e7          	jalr	984(ra) # 1994 <display_refresh>
     5c4:	000014b7          	lui	s1,0x1
     5c8:	9c448493          	addi	s1,s1,-1596 # 9c4 <main+0x61c>
     5cc:	00005937          	lui	s2,0x5
     5d0:	00005ab7          	lui	s5,0x5
     5d4:	01812403          	lw	s0,24(sp)
     5d8:	00000097          	auipc	ra,0x0
     5dc:	abc080e7          	jalr	-1348(ra) # 94 <read_buttons_debounced>
     5e0:	2d49a683          	lw	a3,724(s3)
     5e4:	fff44793          	not	a5,s0
     5e8:	00a12c23          	sw	a0,24(sp)
     5ec:	00a7f7b3          	and	a5,a5,a0
     5f0:	06d058e3          	blez	a3,e60 <main+0xab8>
     5f4:	0107f613          	andi	a2,a5,16
     5f8:	2cc92703          	lw	a4,716(s2) # 52cc <selected>
     5fc:	26060863          	beqz	a2,86c <main+0x4c4>
     600:	00170713          	addi	a4,a4,1
     604:	2ce92623          	sw	a4,716(s2)
     608:	00100793          	li	a5,1
     60c:	0610006f          	j	e6c <main+0xac4>
     610:	00040593          	mv	a1,s0
     614:	23010513          	addi	a0,sp,560
     618:	00000097          	auipc	ra,0x0
     61c:	a04080e7          	jalr	-1532(ra) # 1c <streq>
     620:	ec0518e3          	bnez	a0,4f0 <main+0x148>
     624:	00090593          	mv	a1,s2
     628:	23010513          	addi	a0,sp,560
     62c:	00000097          	auipc	ra,0x0
     630:	9f0080e7          	jalr	-1552(ra) # 1c <streq>
     634:	ea051ee3          	bnez	a0,4f0 <main+0x148>
     638:	33414783          	lbu	a5,820(sp)
     63c:	00079a63          	bnez	a5,650 <main+0x2a8>
     640:	23010513          	addi	a0,sp,560
     644:	00000097          	auipc	ra,0x0
     648:	ca0080e7          	jalr	-864(ra) # 2e4 <is_visible_file>
     64c:	ea0502e3          	beqz	a0,4f0 <main+0x148>
     650:	2d49a783          	lw	a5,724(s3)
     654:	00178793          	addi	a5,a5,1
     658:	2cf9aa23          	sw	a5,724(s3)
     65c:	e95ff06f          	j	4f0 <main+0x148>
     660:	2ccaa783          	lw	a5,716(s5) # 52cc <selected>
     664:	0c07d063          	bgez	a5,724 <main+0x37c>
     668:	2c0aa623          	sw	zero,716(s5)
     66c:	00000793          	li	a5,0
     670:	2d092403          	lw	s0,720(s2)
     674:	0c87d063          	bge	a5,s0,734 <main+0x38c>
     678:	2cf92823          	sw	a5,720(s2)
     67c:	00078413          	mv	s0,a5
     680:	04041c63          	bnez	s0,6d8 <main+0x330>
     684:	0014f793          	andi	a5,s1,1
     688:	04078863          	beqz	a5,6d8 <main+0x330>
     68c:	2d8a2783          	lw	a5,728(s4)
     690:	000055b7          	lui	a1,0x5
     694:	04000613          	li	a2,64
     698:	00279b13          	slli	s6,a5,0x2
     69c:	00fb0b33          	add	s6,s6,a5
     6a0:	002b1b13          	slli	s6,s6,0x2
     6a4:	40fb0b33          	sub	s6,s6,a5
     6a8:	002b1b13          	slli	s6,s6,0x2
     6ac:	019b0b33          	add	s6,s6,s9
     6b0:	00178713          	addi	a4,a5,1
     6b4:	00458593          	addi	a1,a1,4 # 5004 <LEDS+0x2c>
     6b8:	000b0513          	mv	a0,s6
     6bc:	2cea2c23          	sw	a4,728(s4)
     6c0:	00000097          	auipc	ra,0x0
     6c4:	acc080e7          	jalr	-1332(ra) # 18c <str_cpy_max.part.0>
     6c8:	00100793          	li	a5,1
     6cc:	04fb0023          	sb	a5,64(s6)
     6d0:	040b2223          	sw	zero,68(s6)
     6d4:	04fb0423          	sb	a5,72(s6)
     6d8:	13010593          	addi	a1,sp,304
     6dc:	03010513          	addi	a0,sp,48
     6e0:	00003097          	auipc	ra,0x3
     6e4:	e70080e7          	jalr	-400(ra) # 3550 <fl_opendir>
     6e8:	e40500e3          	beqz	a0,528 <main+0x180>
     6ec:	00005b37          	lui	s6,0x5
     6f0:	00005bb7          	lui	s7,0x5
     6f4:	00640c13          	addi	s8,s0,6 # 5006 <LEDS+0x2e>
     6f8:	000b0b13          	mv	s6,s6
     6fc:	004b8b93          	addi	s7,s7,4 # 5004 <LEDS+0x2c>
     700:	23010593          	addi	a1,sp,560
     704:	13010513          	addi	a0,sp,304
     708:	00003097          	auipc	ra,0x3
     70c:	514080e7          	jalr	1300(ra) # 3c1c <fl_readdir>
     710:	04050263          	beqz	a0,754 <main+0x3ac>
     714:	13010513          	addi	a0,sp,304
     718:	00002097          	auipc	ra,0x2
     71c:	a20080e7          	jalr	-1504(ra) # 2138 <fl_closedir>
     720:	e09ff06f          	j	528 <main+0x180>
     724:	f4e7c6e3          	blt	a5,a4,670 <main+0x2c8>
     728:	fff70793          	addi	a5,a4,-1
     72c:	2cfaa623          	sw	a5,716(s5)
     730:	f41ff06f          	j	670 <main+0x2c8>
     734:	00540713          	addi	a4,s0,5
     738:	00f75663          	bge	a4,a5,744 <main+0x39c>
     73c:	ffb78413          	addi	s0,a5,-5
     740:	2c892823          	sw	s0,720(s2)
     744:	f2045ee3          	bgez	s0,680 <main+0x2d8>
     748:	2c092823          	sw	zero,720(s2)
     74c:	00000413          	li	s0,0
     750:	f31ff06f          	j	680 <main+0x2d8>
     754:	000b0593          	mv	a1,s6
     758:	23010513          	addi	a0,sp,560
     75c:	00000097          	auipc	ra,0x0
     760:	8c0080e7          	jalr	-1856(ra) # 1c <streq>
     764:	f8051ee3          	bnez	a0,700 <main+0x358>
     768:	000b8593          	mv	a1,s7
     76c:	23010513          	addi	a0,sp,560
     770:	00000097          	auipc	ra,0x0
     774:	8ac080e7          	jalr	-1876(ra) # 1c <streq>
     778:	f80514e3          	bnez	a0,700 <main+0x358>
     77c:	33414783          	lbu	a5,820(sp)
     780:	00079a63          	bnez	a5,794 <main+0x3ec>
     784:	23010513          	addi	a0,sp,560
     788:	00000097          	auipc	ra,0x0
     78c:	b5c080e7          	jalr	-1188(ra) # 2e4 <is_visible_file>
     790:	f60508e3          	beqz	a0,700 <main+0x358>
     794:	0084d663          	bge	s1,s0,7a0 <main+0x3f8>
     798:	00148493          	addi	s1,s1,1
     79c:	f65ff06f          	j	700 <main+0x358>
     7a0:	f784dae3          	bge	s1,s8,714 <main+0x36c>
     7a4:	2d8a2783          	lw	a5,728(s4)
     7a8:	00500713          	li	a4,5
     7ac:	f6f744e3          	blt	a4,a5,714 <main+0x36c>
     7b0:	00279d13          	slli	s10,a5,0x2
     7b4:	00fd0d33          	add	s10,s10,a5
     7b8:	002d1d13          	slli	s10,s10,0x2
     7bc:	40fd0d33          	sub	s10,s10,a5
     7c0:	002d1d13          	slli	s10,s10,0x2
     7c4:	019d0d33          	add	s10,s10,s9
     7c8:	00178713          	addi	a4,a5,1
     7cc:	04000613          	li	a2,64
     7d0:	23010593          	addi	a1,sp,560
     7d4:	000d0513          	mv	a0,s10
     7d8:	2cea2c23          	sw	a4,728(s4)
     7dc:	00000097          	auipc	ra,0x0
     7e0:	9b0080e7          	jalr	-1616(ra) # 18c <str_cpy_max.part.0>
     7e4:	33414783          	lbu	a5,820(sp)
     7e8:	040d0423          	sb	zero,72(s10)
     7ec:	00f037b3          	snez	a5,a5
     7f0:	04fd0023          	sb	a5,64(s10)
     7f4:	33c12783          	lw	a5,828(sp)
     7f8:	04fd2223          	sw	a5,68(s10)
     7fc:	f9dff06f          	j	798 <main+0x3f0>
     800:	2d092783          	lw	a5,720(s2)
     804:	2ccaa703          	lw	a4,716(s5)
     808:	00f487b3          	add	a5,s1,a5
     80c:	02e79a63          	bne	a5,a4,840 <main+0x498>
     810:	0ff00593          	li	a1,255
     814:	00000513          	li	a0,0
     818:	00001097          	auipc	ra,0x1
     81c:	050080e7          	jalr	80(ra) # 1868 <display_set_front_back_color>
     820:	04844783          	lbu	a5,72(s0)
     824:	02078463          	beqz	a5,84c <main+0x4a4>
     828:	000c0513          	mv	a0,s8
     82c:	00001097          	auipc	ra,0x1
     830:	2d4080e7          	jalr	724(ra) # 1b00 <printf>
     834:	00148493          	addi	s1,s1,1
     838:	04c40413          	addi	s0,s0,76
     83c:	d51ff06f          	j	58c <main+0x1e4>
     840:	00000593          	li	a1,0
     844:	0ff00513          	li	a0,255
     848:	fd1ff06f          	j	818 <main+0x470>
     84c:	04044783          	lbu	a5,64(s0)
     850:	00040593          	mv	a1,s0
     854:	000b8513          	mv	a0,s7
     858:	00079463          	bnez	a5,860 <main+0x4b8>
     85c:	000b0513          	mv	a0,s6
     860:	00001097          	auipc	ra,0x1
     864:	2a0080e7          	jalr	672(ra) # 1b00 <printf>
     868:	fcdff06f          	j	834 <main+0x48c>
     86c:	0087f413          	andi	s0,a5,8
     870:	00040663          	beqz	s0,87c <main+0x4d4>
     874:	fff70713          	addi	a4,a4,-1
     878:	d8dff06f          	j	604 <main+0x25c>
     87c:	08075463          	bgez	a4,904 <main+0x55c>
     880:	2c092623          	sw	zero,716(s2)
     884:	0047f793          	andi	a5,a5,4
     888:	5c078c63          	beqz	a5,e60 <main+0xab8>
     88c:	00001097          	auipc	ra,0x1
     890:	108080e7          	jalr	264(ra) # 1994 <display_refresh>
     894:	2d0aa783          	lw	a5,720(s5)
     898:	2cc92b83          	lw	s7,716(s2)
     89c:	40fb8bb3          	sub	s7,s7,a5
     8a0:	00001097          	auipc	ra,0x1
     8a4:	fa8080e7          	jalr	-88(ra) # 1848 <display_framebuffer>
     8a8:	00004637          	lui	a2,0x4
     8ac:	00000593          	li	a1,0
     8b0:	00001097          	auipc	ra,0x1
     8b4:	d14080e7          	jalr	-748(ra) # 15c4 <memset>
     8b8:	5a0bc463          	bltz	s7,e60 <main+0xab8>
     8bc:	2d8a2783          	lw	a5,728(s4)
     8c0:	5afbd063          	bge	s7,a5,e60 <main+0xab8>
     8c4:	002b9493          	slli	s1,s7,0x2
     8c8:	01748b33          	add	s6,s1,s7
     8cc:	002b1b13          	slli	s6,s6,0x2
     8d0:	417b0b33          	sub	s6,s6,s7
     8d4:	002b1b13          	slli	s6,s6,0x2
     8d8:	016c8b33          	add	s6,s9,s6
     8dc:	048b4683          	lbu	a3,72(s6) # 5048 <LEDS+0x70>
     8e0:	03014783          	lbu	a5,48(sp)
     8e4:	02f00713          	li	a4,47
     8e8:	0c068c63          	beqz	a3,9c0 <main+0x618>
     8ec:	02e78463          	beq	a5,a4,914 <main+0x56c>
     8f0:	02f00793          	li	a5,47
     8f4:	02f11823          	sh	a5,48(sp)
     8f8:	2c092623          	sw	zero,716(s2)
     8fc:	2c0aa823          	sw	zero,720(s5)
     900:	d09ff06f          	j	608 <main+0x260>
     904:	f8d740e3          	blt	a4,a3,884 <main+0x4dc>
     908:	fff68693          	addi	a3,a3,-1
     90c:	2cd92623          	sw	a3,716(s2)
     910:	f75ff06f          	j	884 <main+0x4dc>
     914:	03114783          	lbu	a5,49(sp)
     918:	fe0780e3          	beqz	a5,8f8 <main+0x550>
     91c:	03010793          	addi	a5,sp,48
     920:	10000713          	li	a4,256
     924:	008786b3          	add	a3,a5,s0
     928:	0006c683          	lbu	a3,0(a3)
     92c:	04069663          	bnez	a3,978 <main+0x5d0>
     930:	00878733          	add	a4,a5,s0
     934:	00100593          	li	a1,1
     938:	02f00693          	li	a3,47
     93c:	0485c463          	blt	a1,s0,984 <main+0x5dc>
     940:	00878733          	add	a4,a5,s0
     944:	00100593          	li	a1,1
     948:	02f00693          	li	a3,47
     94c:	0485c863          	blt	a1,s0,99c <main+0x5f4>
     950:	008787b3          	add	a5,a5,s0
     954:	00100613          	li	a2,1
     958:	02f00713          	li	a4,47
     95c:	00865863          	bge	a2,s0,96c <main+0x5c4>
     960:	fff7c683          	lbu	a3,-1(a5)
     964:	fff78793          	addi	a5,a5,-1
     968:	04e68663          	beq	a3,a4,9b4 <main+0x60c>
     96c:	03014783          	lbu	a5,48(sp)
     970:	f80780e3          	beqz	a5,8f0 <main+0x548>
     974:	f85ff06f          	j	8f8 <main+0x550>
     978:	fae40ce3          	beq	s0,a4,930 <main+0x588>
     97c:	00140413          	addi	s0,s0,1
     980:	fa5ff06f          	j	924 <main+0x57c>
     984:	fff74603          	lbu	a2,-1(a4)
     988:	fff70713          	addi	a4,a4,-1
     98c:	fad61ae3          	bne	a2,a3,940 <main+0x598>
     990:	00070023          	sb	zero,0(a4)
     994:	fff40413          	addi	s0,s0,-1
     998:	fa5ff06f          	j	93c <main+0x594>
     99c:	fff74603          	lbu	a2,-1(a4)
     9a0:	fff70713          	addi	a4,a4,-1
     9a4:	fad606e3          	beq	a2,a3,950 <main+0x5a8>
     9a8:	00070023          	sb	zero,0(a4)
     9ac:	fff40413          	addi	s0,s0,-1
     9b0:	f9dff06f          	j	94c <main+0x5a4>
     9b4:	00078023          	sb	zero,0(a5)
     9b8:	fff40413          	addi	s0,s0,-1
     9bc:	fa1ff06f          	j	95c <main+0x5b4>
     9c0:	04e79a63          	bne	a5,a4,a14 <main+0x66c>
     9c4:	03114703          	lbu	a4,49(sp)
     9c8:	04071663          	bnez	a4,a14 <main+0x66c>
     9cc:	12f11823          	sh	a5,304(sp)
     9d0:	000b0593          	mv	a1,s6
     9d4:	13010513          	addi	a0,sp,304
     9d8:	00000097          	auipc	ra,0x0
     9dc:	81c080e7          	jalr	-2020(ra) # 1f4 <str_cat_max.constprop.0>
     9e0:	017487b3          	add	a5,s1,s7
     9e4:	00279793          	slli	a5,a5,0x2
     9e8:	417787b3          	sub	a5,a5,s7
     9ec:	00279793          	slli	a5,a5,0x2
     9f0:	00fc87b3          	add	a5,s9,a5
     9f4:	0407c783          	lbu	a5,64(a5)
     9f8:	04078463          	beqz	a5,a40 <main+0x698>
     9fc:	10000613          	li	a2,256
     a00:	13010593          	addi	a1,sp,304
     a04:	03010513          	addi	a0,sp,48
     a08:	fffff097          	auipc	ra,0xfffff
     a0c:	784080e7          	jalr	1924(ra) # 18c <str_cpy_max.part.0>
     a10:	ee9ff06f          	j	8f8 <main+0x550>
     a14:	03010593          	addi	a1,sp,48
     a18:	13010513          	addi	a0,sp,304
     a1c:	10000613          	li	a2,256
     a20:	fffff097          	auipc	ra,0xfffff
     a24:	76c080e7          	jalr	1900(ra) # 18c <str_cpy_max.part.0>
     a28:	000055b7          	lui	a1,0x5
     a2c:	04458593          	addi	a1,a1,68 # 5044 <LEDS+0x6c>
     a30:	13010513          	addi	a0,sp,304
     a34:	fffff097          	auipc	ra,0xfffff
     a38:	7c0080e7          	jalr	1984(ra) # 1f4 <str_cat_max.constprop.0>
     a3c:	f95ff06f          	j	9d0 <main+0x628>
     a40:	00812783          	lw	a5,8(sp)
     a44:	13010513          	addi	a0,sp,304
     a48:	00005c37          	lui	s8,0x5
     a4c:	0007a023          	sw	zero,0(a5)
     a50:	000057b7          	lui	a5,0x5
     a54:	2c07ae23          	sw	zero,732(a5) # 52dc <vu_level>
     a58:	2e0c2023          	sw	zero,736(s8) # 52e0 <vol_led_blocks_left>
     a5c:	fffff097          	auipc	ra,0xfffff
     a60:	7f8080e7          	jalr	2040(ra) # 254 <show_image_for_audio>
     a64:	000057b7          	lui	a5,0x5
     a68:	fe478593          	addi	a1,a5,-28 # 4fe4 <LEDS+0xc>
     a6c:	13010513          	addi	a0,sp,304
     a70:	00004097          	auipc	ra,0x4
     a74:	140080e7          	jalr	320(ra) # 4bb0 <fl_fopen>
     a78:	00a12e23          	sw	a0,28(sp)
     a7c:	04051063          	bnez	a0,abc <main+0x714>
     a80:	00000593          	li	a1,0
     a84:	00001097          	auipc	ra,0x1
     a88:	dd0080e7          	jalr	-560(ra) # 1854 <display_set_cursor>
     a8c:	00000593          	li	a1,0
     a90:	0ff00513          	li	a0,255
     a94:	00001097          	auipc	ra,0x1
     a98:	dd4080e7          	jalr	-556(ra) # 1868 <display_set_front_back_color>
     a9c:	00005537          	lui	a0,0x5
     aa0:	13010593          	addi	a1,sp,304
     aa4:	04850513          	addi	a0,a0,72 # 5048 <LEDS+0x70>
     aa8:	00001097          	auipc	ra,0x1
     aac:	058080e7          	jalr	88(ra) # 1b00 <printf>
     ab0:	00001097          	auipc	ra,0x1
     ab4:	ee4080e7          	jalr	-284(ra) # 1994 <display_refresh>
     ab8:	b51ff06f          	j	608 <main+0x260>
     abc:	fffff097          	auipc	ra,0xfffff
     ac0:	654080e7          	jalr	1620(ra) # 110 <clear_audio>
     ac4:	000054b7          	lui	s1,0x5
     ac8:	2c84a783          	lw	a5,712(s1) # 52c8 <silence_init.1>
     acc:	02079263          	bnez	a5,af0 <main+0x748>
     ad0:	00005537          	lui	a0,0x5
     ad4:	20000613          	li	a2,512
     ad8:	08000593          	li	a1,128
     adc:	31450513          	addi	a0,a0,788 # 5314 <silence.0>
     ae0:	00001097          	auipc	ra,0x1
     ae4:	ae4080e7          	jalr	-1308(ra) # 15c4 <memset>
     ae8:	00100793          	li	a5,1
     aec:	2cf4a423          	sw	a5,712(s1)
     af0:	000057b7          	lui	a5,0x5
     af4:	6dc78793          	addi	a5,a5,1756 # 56dc <pause_buf>
     af8:	02f12223          	sw	a5,36(sp)
     afc:	000057b7          	lui	a5,0x5
     b00:	06078793          	addi	a5,a5,96 # 5060 <LEDS+0x88>
     b04:	00000d13          	li	s10,0
     b08:	00000d93          	li	s11,0
     b0c:	00000b13          	li	s6,0
     b10:	08000913          	li	s2,128
     b14:	02f12423          	sw	a5,40(sp)
     b18:	fffff097          	auipc	ra,0xfffff
     b1c:	57c080e7          	jalr	1404(ra) # 94 <read_buttons_debounced>
     b20:	fff44413          	not	s0,s0
     b24:	00a47433          	and	s0,s0,a0
     b28:	00447a93          	andi	s5,s0,4
     b2c:	00050b93          	mv	s7,a0
     b30:	040a8263          	beqz	s5,b74 <main+0x7cc>
     b34:	fffff097          	auipc	ra,0xfffff
     b38:	5dc080e7          	jalr	1500(ra) # 110 <clear_audio>
     b3c:	00001097          	auipc	ra,0x1
     b40:	d0c080e7          	jalr	-756(ra) # 1848 <display_framebuffer>
     b44:	00004637          	lui	a2,0x4
     b48:	00000593          	li	a1,0
     b4c:	00001097          	auipc	ra,0x1
     b50:	a78080e7          	jalr	-1416(ra) # 15c4 <memset>
     b54:	00001097          	auipc	ra,0x1
     b58:	e40080e7          	jalr	-448(ra) # 1994 <display_refresh>
     b5c:	01c12503          	lw	a0,28(sp)
     b60:	00004097          	auipc	ra,0x4
     b64:	970080e7          	jalr	-1680(ra) # 44d0 <fl_fclose>
     b68:	00812783          	lw	a5,8(sp)
     b6c:	0007a023          	sw	zero,0(a5)
     b70:	a99ff06f          	j	608 <main+0x260>
     b74:	00247793          	andi	a5,s0,2
     b78:	08078863          	beqz	a5,c08 <main+0x860>
     b7c:	00100793          	li	a5,1
     b80:	12fb0a63          	beq	s6,a5,cb4 <main+0x90c>
     b84:	fffff097          	auipc	ra,0xfffff
     b88:	58c080e7          	jalr	1420(ra) # 110 <clear_audio>
     b8c:	000054b7          	lui	s1,0x5
     b90:	2e44a783          	lw	a5,740(s1) # 52e4 <pause_loaded>
     b94:	04079663          	bnez	a5,be0 <main+0x838>
     b98:	02812503          	lw	a0,40(sp)
     b9c:	00005737          	lui	a4,0x5
     ba0:	fe470593          	addi	a1,a4,-28 # 4fe4 <LEDS+0xc>
     ba4:	00004097          	auipc	ra,0x4
     ba8:	00c080e7          	jalr	12(ra) # 4bb0 <fl_fopen>
     bac:	00050693          	mv	a3,a0
     bb0:	04050663          	beqz	a0,bfc <main+0x854>
     bb4:	02a12023          	sw	a0,32(sp)
     bb8:	02412503          	lw	a0,36(sp)
     bbc:	00004637          	lui	a2,0x4
     bc0:	00100593          	li	a1,1
     bc4:	00004097          	auipc	ra,0x4
     bc8:	9e8080e7          	jalr	-1560(ra) # 45ac <fl_fread>
     bcc:	02012503          	lw	a0,32(sp)
     bd0:	00004097          	auipc	ra,0x4
     bd4:	900080e7          	jalr	-1792(ra) # 44d0 <fl_fclose>
     bd8:	00100793          	li	a5,1
     bdc:	2ef4a223          	sw	a5,740(s1)
     be0:	00001097          	auipc	ra,0x1
     be4:	c68080e7          	jalr	-920(ra) # 1848 <display_framebuffer>
     be8:	00000793          	li	a5,0
     bec:	06300813          	li	a6,99
     bf0:	08000593          	li	a1,128
     bf4:	00004637          	lui	a2,0x4
     bf8:	09c0006f          	j	c94 <main+0x8ec>
     bfc:	2e44a783          	lw	a5,740(s1)
     c00:	fe0790e3          	bnez	a5,be0 <main+0x838>
     c04:	00100b13          	li	s6,1
     c08:	040bf793          	andi	a5,s7,64
     c0c:	0a079e63          	bnez	a5,cc8 <main+0x920>
     c10:	01ab9793          	slli	a5,s7,0x1a
     c14:	41f7d493          	srai	s1,a5,0x1f
     c18:	04047793          	andi	a5,s0,64
     c1c:	02047413          	andi	s0,s0,32
     c20:	28040663          	beqz	s0,eac <main+0xb04>
     c24:	00f037b3          	snez	a5,a5
     c28:	00179493          	slli	s1,a5,0x1
     c2c:	fff48493          	addi	s1,s1,-1
     c30:	00549793          	slli	a5,s1,0x5
     c34:	012787b3          	add	a5,a5,s2
     c38:	10000713          	li	a4,256
     c3c:	0af75263          	bge	a4,a5,ce0 <main+0x938>
     c40:	00070793          	mv	a5,a4
     c44:	40f90733          	sub	a4,s2,a5
     c48:	00e03733          	snez	a4,a4
     c4c:	00078913          	mv	s2,a5
     c50:	28070863          	beqz	a4,ee0 <main+0xb38>
     c54:	01090513          	addi	a0,s2,16
     c58:	40555513          	srai	a0,a0,0x5
     c5c:	fffff097          	auipc	ra,0xfffff
     c60:	3f4080e7          	jalr	1012(ra) # 50 <leds_set_bargraph_level>
     c64:	02800793          	li	a5,40
     c68:	2efc2023          	sw	a5,736(s8)
     c6c:	2740006f          	j	ee0 <main+0xb38>
     c70:	00e306b3          	add	a3,t1,a4
     c74:	0006c683          	lbu	a3,0(a3)
     c78:	00d86663          	bltu	a6,a3,c84 <main+0x8dc>
     c7c:	00e88e33          	add	t3,a7,a4
     c80:	00de0023          	sb	a3,0(t3)
     c84:	00170713          	addi	a4,a4,1
     c88:	feb714e3          	bne	a4,a1,c70 <main+0x8c8>
     c8c:	08078793          	addi	a5,a5,128
     c90:	00c78c63          	beq	a5,a2,ca8 <main+0x900>
     c94:	02412683          	lw	a3,36(sp)
     c98:	000b0713          	mv	a4,s6
     c9c:	00f508b3          	add	a7,a0,a5
     ca0:	00d78333          	add	t1,a5,a3
     ca4:	fcdff06f          	j	c70 <main+0x8c8>
     ca8:	00001097          	auipc	ra,0x1
     cac:	cec080e7          	jalr	-788(ra) # 1994 <display_refresh>
     cb0:	f55ff06f          	j	c04 <main+0x85c>
     cb4:	13010513          	addi	a0,sp,304
     cb8:	fffff097          	auipc	ra,0xfffff
     cbc:	59c080e7          	jalr	1436(ra) # 254 <show_image_for_audio>
     cc0:	00000b13          	li	s6,0
     cc4:	f45ff06f          	j	c08 <main+0x860>
     cc8:	060bf493          	andi	s1,s7,96
     ccc:	fa048493          	addi	s1,s1,-96
     cd0:	009034b3          	snez	s1,s1
     cd4:	f45ff06f          	j	c18 <main+0x870>
     cd8:	00100493          	li	s1,1
     cdc:	f55ff06f          	j	c30 <main+0x888>
     ce0:	fff7c713          	not	a4,a5
     ce4:	41f75713          	srai	a4,a4,0x1f
     ce8:	00e7f7b3          	and	a5,a5,a4
     cec:	f59ff06f          	j	c44 <main+0x89c>
     cf0:	0007a783          	lw	a5,0(a5)
     cf4:	00000413          	li	s0,0
     cf8:	20000713          	li	a4,512
     cfc:	02f12023          	sw	a5,32(sp)
     d00:	23010d13          	addi	s10,sp,560
     d04:	1ff00d93          	li	s11,511
     d08:	01c12683          	lw	a3,28(sp)
     d0c:	008d07b3          	add	a5,s10,s0
     d10:	40870633          	sub	a2,a4,s0
     d14:	00100593          	li	a1,1
     d18:	00078513          	mv	a0,a5
     d1c:	02c12623          	sw	a2,44(sp)
     d20:	00004097          	auipc	ra,0x4
     d24:	88c080e7          	jalr	-1908(ra) # 45ac <fl_fread>
     d28:	02c12603          	lw	a2,44(sp)
     d2c:	16a05663          	blez	a0,e98 <main+0xaf0>
     d30:	00a40433          	add	s0,s0,a0
     d34:	20000713          	li	a4,512
     d38:	fc8dd8e3          	bge	s11,s0,d08 <main+0x960>
     d3c:	000d0d93          	mv	s11,s10
     d40:	000dc503          	lbu	a0,0(s11)
     d44:	00090593          	mv	a1,s2
     d48:	f8050513          	addi	a0,a0,-128
     d4c:	00001097          	auipc	ra,0x1
     d50:	ef0080e7          	jalr	-272(ra) # 1c3c <__mulsi3>
     d54:	40855513          	srai	a0,a0,0x8
     d58:	08050513          	addi	a0,a0,128
     d5c:	0ff00713          	li	a4,255
     d60:	0ca75463          	bge	a4,a0,e28 <main+0xa80>
     d64:	00070513          	mv	a0,a4
     d68:	00ad8023          	sb	a0,0(s11)
     d6c:	43010793          	addi	a5,sp,1072
     d70:	001d8d93          	addi	s11,s11,1
     d74:	fdb796e3          	bne	a5,s11,d40 <main+0x998>
     d78:	02012503          	lw	a0,32(sp)
     d7c:	20000613          	li	a2,512
     d80:	000d0593          	mv	a1,s10
     d84:	00001097          	auipc	ra,0x1
     d88:	85c080e7          	jalr	-1956(ra) # 15e0 <memcpy>
     d8c:	fffff097          	auipc	ra,0xfffff
     d90:	440080e7          	jalr	1088(ra) # 1cc <volume_led_tick>
     d94:	2e0c2703          	lw	a4,736(s8)
     d98:	06071e63          	bnez	a4,e14 <main+0xa6c>
     d9c:	00000793          	li	a5,0
     da0:	00000693          	li	a3,0
     da4:	08000813          	li	a6,128
     da8:	20000513          	li	a0,512
     dac:	00dd0633          	add	a2,s10,a3
     db0:	00064583          	lbu	a1,0(a2) # 4000 <fatfs_fat_set_cluster+0x40>
     db4:	f8058613          	addi	a2,a1,-128
     db8:	00065463          	bgez	a2,dc0 <main+0xa18>
     dbc:	40b80633          	sub	a2,a6,a1
     dc0:	00168693          	addi	a3,a3,1
     dc4:	00c787b3          	add	a5,a5,a2
     dc8:	fea692e3          	bne	a3,a0,dac <main+0xa04>
     dcc:	4097d793          	srai	a5,a5,0x9
     dd0:	00379513          	slli	a0,a5,0x3
     dd4:	ff200793          	li	a5,-14
     dd8:	02f54063          	blt	a0,a5,df8 <main+0xa50>
     ddc:	08600793          	li	a5,134
     de0:	00800713          	li	a4,8
     de4:	00a7ca63          	blt	a5,a0,df8 <main+0xa50>
     de8:	00f00593          	li	a1,15
     dec:	00000097          	auipc	ra,0x0
     df0:	724080e7          	jalr	1828(ra) # 1510 <__divsi3>
     df4:	00050713          	mv	a4,a0
     df8:	000057b7          	lui	a5,0x5
     dfc:	2dc7a503          	lw	a0,732(a5) # 52dc <vu_level>
     e00:	02e55c63          	bge	a0,a4,e38 <main+0xa90>
     e04:	2ce7ae23          	sw	a4,732(a5)
     e08:	00070513          	mv	a0,a4
     e0c:	fffff097          	auipc	ra,0xfffff
     e10:	244080e7          	jalr	580(ra) # 50 <leds_set_bargraph_level>
     e14:	1ff00793          	li	a5,511
     e18:	0287ca63          	blt	a5,s0,e4c <main+0xaa4>
     e1c:	fffff097          	auipc	ra,0xfffff
     e20:	2f4080e7          	jalr	756(ra) # 110 <clear_audio>
     e24:	d39ff06f          	j	b5c <main+0x7b4>
     e28:	fff54793          	not	a5,a0
     e2c:	41f7d793          	srai	a5,a5,0x1f
     e30:	00f57533          	and	a0,a0,a5
     e34:	f35ff06f          	j	d68 <main+0x9c0>
     e38:	fc050ae3          	beqz	a0,e0c <main+0xa64>
     e3c:	fff50513          	addi	a0,a0,-1
     e40:	000057b7          	lui	a5,0x5
     e44:	2ca7ae23          	sw	a0,732(a5) # 52dc <vu_level>
     e48:	fc5ff06f          	j	e0c <main+0xa64>
     e4c:	01012783          	lw	a5,16(sp)
     e50:	02012703          	lw	a4,32(sp)
     e54:	0007a783          	lw	a5,0(a5)
     e58:	fef70ae3          	beq	a4,a5,e4c <main+0xaa4>
     e5c:	0cc0006f          	j	f28 <main+0xb80>
     e60:	fff48493          	addi	s1,s1,-1
     e64:	f6049863          	bnez	s1,5d4 <main+0x22c>
     e68:	00000793          	li	a5,0
     e6c:	00c12703          	lw	a4,12(sp)
     e70:	00170713          	addi	a4,a4,1
     e74:	00e12623          	sw	a4,12(sp)
     e78:	00c12683          	lw	a3,12(sp)
     e7c:	02800713          	li	a4,40
     e80:	e0e69a63          	bne	a3,a4,494 <main+0xec>
     e84:	01412783          	lw	a5,20(sp)
     e88:	00012623          	sw	zero,12(sp)
     e8c:	00778793          	addi	a5,a5,7
     e90:	00f12a23          	sw	a5,20(sp)
     e94:	e08ff06f          	j	49c <main+0xf4>
     e98:	08000593          	li	a1,128
     e9c:	008d0533          	add	a0,s10,s0
     ea0:	00000097          	auipc	ra,0x0
     ea4:	724080e7          	jalr	1828(ra) # 15c4 <memset>
     ea8:	e95ff06f          	j	d3c <main+0x994>
     eac:	e20796e3          	bnez	a5,cd8 <main+0x930>
     eb0:	00000a93          	li	s5,0
     eb4:	02048663          	beqz	s1,ee0 <main+0xb38>
     eb8:	00100a93          	li	s5,1
     ebc:	029d1263          	bne	s10,s1,ee0 <main+0xb38>
     ec0:	015d8ab3          	add	s5,s11,s5
     ec4:	01900793          	li	a5,25
     ec8:	0157dc63          	bge	a5,s5,ee0 <main+0xb38>
     ecc:	00600593          	li	a1,6
     ed0:	000a8513          	mv	a0,s5
     ed4:	00000097          	auipc	ra,0x0
     ed8:	6c0080e7          	jalr	1728(ra) # 1594 <__modsi3>
     edc:	d4050ae3          	beqz	a0,c30 <main+0x888>
     ee0:	01012783          	lw	a5,16(sp)
     ee4:	e00b06e3          	beqz	s6,cf0 <main+0x948>
     ee8:	0007a403          	lw	s0,0(a5)
     eec:	000055b7          	lui	a1,0x5
     ef0:	20000613          	li	a2,512
     ef4:	31458593          	addi	a1,a1,788 # 5314 <silence.0>
     ef8:	00040513          	mv	a0,s0
     efc:	00000097          	auipc	ra,0x0
     f00:	6e4080e7          	jalr	1764(ra) # 15e0 <memcpy>
     f04:	01012783          	lw	a5,16(sp)
     f08:	0007a783          	lw	a5,0(a5)
     f0c:	fef40ce3          	beq	s0,a5,f04 <main+0xb5c>
     f10:	fffff097          	auipc	ra,0xfffff
     f14:	2bc080e7          	jalr	700(ra) # 1cc <volume_led_tick>
     f18:	2e0c2783          	lw	a5,736(s8)
     f1c:	00079663          	bnez	a5,f28 <main+0xb80>
     f20:	00812783          	lw	a5,8(sp)
     f24:	0007a023          	sw	zero,0(a5)
     f28:	00048d13          	mv	s10,s1
     f2c:	000a8d93          	mv	s11,s5
     f30:	000b8413          	mv	s0,s7
     f34:	be5ff06f          	j	b18 <main+0x770>

00000f38 <pause>:
     f38:	c0002773          	rdcycle	a4
     f3c:	c00027f3          	rdcycle	a5
     f40:	40e787b3          	sub	a5,a5,a4
     f44:	fea7ece3          	bltu	a5,a0,f3c <pause+0x4>
     f48:	00008067          	ret

00000f4c <sdcard_idle>:
     f4c:	00008067          	ret

00000f50 <sdcard_select>:
     f50:	000057b7          	lui	a5,0x5
     f54:	fcc7a783          	lw	a5,-52(a5) # 4fcc <SDCARD>
     f58:	00200713          	li	a4,2
     f5c:	00e7a023          	sw	a4,0(a5)
     f60:	00008067          	ret

00000f64 <sdcard_ponder>:
     f64:	000056b7          	lui	a3,0x5
     f68:	fcc6a683          	lw	a3,-52(a3) # 4fcc <SDCARD>
     f6c:	01000793          	li	a5,16
     f70:	00000713          	li	a4,0
     f74:	00676613          	ori	a2,a4,6
     f78:	00c6a023          	sw	a2,0(a3)
     f7c:	00174713          	xori	a4,a4,1
     f80:	00000013          	nop
     f84:	fff78793          	addi	a5,a5,-1
     f88:	fe0796e3          	bnez	a5,f74 <sdcard_ponder+0x10>
     f8c:	00008067          	ret

00000f90 <sdcard_unselect>:
     f90:	000057b7          	lui	a5,0x5
     f94:	fcc7a783          	lw	a5,-52(a5) # 4fcc <SDCARD>
     f98:	00600713          	li	a4,6
     f9c:	00e7a023          	sw	a4,0(a5)
     fa0:	00008067          	ret

00000fa4 <sdcard_send>:
     fa4:	000057b7          	lui	a5,0x5
     fa8:	fcc7a783          	lw	a5,-52(a5) # 4fcc <SDCARD>
     fac:	00655713          	srli	a4,a0,0x6
     fb0:	00277713          	andi	a4,a4,2
     fb4:	00e7a023          	sw	a4,0(a5)
     fb8:	00176713          	ori	a4,a4,1
     fbc:	00e7a023          	sw	a4,0(a5)
     fc0:	00555713          	srli	a4,a0,0x5
     fc4:	00277713          	andi	a4,a4,2
     fc8:	00e7a023          	sw	a4,0(a5)
     fcc:	00176713          	ori	a4,a4,1
     fd0:	00e7a023          	sw	a4,0(a5)
     fd4:	00455713          	srli	a4,a0,0x4
     fd8:	00277713          	andi	a4,a4,2
     fdc:	00e7a023          	sw	a4,0(a5)
     fe0:	00176713          	ori	a4,a4,1
     fe4:	00e7a023          	sw	a4,0(a5)
     fe8:	00355713          	srli	a4,a0,0x3
     fec:	00277713          	andi	a4,a4,2
     ff0:	00e7a023          	sw	a4,0(a5)
     ff4:	00176713          	ori	a4,a4,1
     ff8:	00e7a023          	sw	a4,0(a5)
     ffc:	00255713          	srli	a4,a0,0x2
    1000:	00277713          	andi	a4,a4,2
    1004:	00e7a023          	sw	a4,0(a5)
    1008:	00176713          	ori	a4,a4,1
    100c:	00e7a023          	sw	a4,0(a5)
    1010:	00155713          	srli	a4,a0,0x1
    1014:	00277713          	andi	a4,a4,2
    1018:	00e7a023          	sw	a4,0(a5)
    101c:	00176713          	ori	a4,a4,1
    1020:	00e7a023          	sw	a4,0(a5)
    1024:	00257713          	andi	a4,a0,2
    1028:	00e7a023          	sw	a4,0(a5)
    102c:	00151513          	slli	a0,a0,0x1
    1030:	00176713          	ori	a4,a4,1
    1034:	00e7a023          	sw	a4,0(a5)
    1038:	00257513          	andi	a0,a0,2
    103c:	00a7a023          	sw	a0,0(a5)
    1040:	00156513          	ori	a0,a0,1
    1044:	00a7a023          	sw	a0,0(a5)
    1048:	00200713          	li	a4,2
    104c:	00e7a023          	sw	a4,0(a5)
    1050:	000057b7          	lui	a5,0x5
    1054:	2e87a783          	lw	a5,744(a5) # 52e8 <sdcard_while_loading_callback>
    1058:	00078067          	jr	a5

0000105c <sdcard_read>:
    105c:	fd010113          	addi	sp,sp,-48
    1060:	fff50793          	addi	a5,a0,-1
    1064:	03212023          	sw	s2,32(sp)
    1068:	00100913          	li	s2,1
    106c:	00f91933          	sll	s2,s2,a5
    1070:	000057b7          	lui	a5,0x5
    1074:	01312e23          	sw	s3,28(sp)
    1078:	fcc7a983          	lw	s3,-52(a5) # 4fcc <SDCARD>
    107c:	02812423          	sw	s0,40(sp)
    1080:	02912223          	sw	s1,36(sp)
    1084:	01412c23          	sw	s4,24(sp)
    1088:	01512a23          	sw	s5,20(sp)
    108c:	01612823          	sw	s6,16(sp)
    1090:	02112623          	sw	ra,44(sp)
    1094:	0ff00413          	li	s0,255
    1098:	00000493          	li	s1,0
    109c:	00300a13          	li	s4,3
    10a0:	00200a93          	li	s5,2
    10a4:	00005b37          	lui	s6,0x5
    10a8:	02058c63          	beqz	a1,10e0 <sdcard_read+0x84>
    10ac:	012477b3          	and	a5,s0,s2
    10b0:	02079a63          	bnez	a5,10e4 <sdcard_read+0x88>
    10b4:	02c12083          	lw	ra,44(sp)
    10b8:	0ff47513          	zext.b	a0,s0
    10bc:	02812403          	lw	s0,40(sp)
    10c0:	02412483          	lw	s1,36(sp)
    10c4:	02012903          	lw	s2,32(sp)
    10c8:	01c12983          	lw	s3,28(sp)
    10cc:	01812a03          	lw	s4,24(sp)
    10d0:	01412a83          	lw	s5,20(sp)
    10d4:	01012b03          	lw	s6,16(sp)
    10d8:	03010113          	addi	sp,sp,48
    10dc:	00008067          	ret
    10e0:	fca4dae3          	bge	s1,a0,10b4 <sdcard_read+0x58>
    10e4:	0149a023          	sw	s4,0(s3)
    10e8:	0159a023          	sw	s5,0(s3)
    10ec:	0009a783          	lw	a5,0(s3)
    10f0:	00141413          	slli	s0,s0,0x1
    10f4:	00b12623          	sw	a1,12(sp)
    10f8:	00f46433          	or	s0,s0,a5
    10fc:	2e8b2783          	lw	a5,744(s6) # 52e8 <sdcard_while_loading_callback>
    1100:	00a12423          	sw	a0,8(sp)
    1104:	00148493          	addi	s1,s1,1
    1108:	000780e7          	jalr	a5
    110c:	00c12583          	lw	a1,12(sp)
    1110:	00812503          	lw	a0,8(sp)
    1114:	f95ff06f          	j	10a8 <sdcard_read+0x4c>

00001118 <sdcard_get>:
    1118:	fe010113          	addi	sp,sp,-32
    111c:	00112e23          	sw	ra,28(sp)
    1120:	00812c23          	sw	s0,24(sp)
    1124:	00912a23          	sw	s1,20(sp)
    1128:	00050413          	mv	s0,a0
    112c:	00b12623          	sw	a1,12(sp)
    1130:	00000097          	auipc	ra,0x0
    1134:	e20080e7          	jalr	-480(ra) # f50 <sdcard_select>
    1138:	00c12583          	lw	a1,12(sp)
    113c:	00040513          	mv	a0,s0
    1140:	00100493          	li	s1,1
    1144:	00000097          	auipc	ra,0x0
    1148:	f18080e7          	jalr	-232(ra) # 105c <sdcard_read>
    114c:	00345413          	srli	s0,s0,0x3
    1150:	0284c463          	blt	s1,s0,1178 <sdcard_get+0x60>
    1154:	00a12623          	sw	a0,12(sp)
    1158:	00000097          	auipc	ra,0x0
    115c:	e38080e7          	jalr	-456(ra) # f90 <sdcard_unselect>
    1160:	01c12083          	lw	ra,28(sp)
    1164:	01812403          	lw	s0,24(sp)
    1168:	00c12503          	lw	a0,12(sp)
    116c:	01412483          	lw	s1,20(sp)
    1170:	02010113          	addi	sp,sp,32
    1174:	00008067          	ret
    1178:	00000593          	li	a1,0
    117c:	00800513          	li	a0,8
    1180:	00000097          	auipc	ra,0x0
    1184:	edc080e7          	jalr	-292(ra) # 105c <sdcard_read>
    1188:	00148493          	addi	s1,s1,1
    118c:	fc5ff06f          	j	1150 <sdcard_get+0x38>

00001190 <sdcard_cmd>:
    1190:	ff010113          	addi	sp,sp,-16
    1194:	00812423          	sw	s0,8(sp)
    1198:	00912223          	sw	s1,4(sp)
    119c:	01212023          	sw	s2,0(sp)
    11a0:	00112623          	sw	ra,12(sp)
    11a4:	00050913          	mv	s2,a0
    11a8:	00000413          	li	s0,0
    11ac:	00000097          	auipc	ra,0x0
    11b0:	da4080e7          	jalr	-604(ra) # f50 <sdcard_select>
    11b4:	00600493          	li	s1,6
    11b8:	008907b3          	add	a5,s2,s0
    11bc:	0007c503          	lbu	a0,0(a5)
    11c0:	00140413          	addi	s0,s0,1
    11c4:	00000097          	auipc	ra,0x0
    11c8:	de0080e7          	jalr	-544(ra) # fa4 <sdcard_send>
    11cc:	fe9416e3          	bne	s0,s1,11b8 <sdcard_cmd+0x28>
    11d0:	00812403          	lw	s0,8(sp)
    11d4:	00c12083          	lw	ra,12(sp)
    11d8:	00412483          	lw	s1,4(sp)
    11dc:	00012903          	lw	s2,0(sp)
    11e0:	01010113          	addi	sp,sp,16
    11e4:	00000317          	auipc	t1,0x0
    11e8:	dac30067          	jr	-596(t1) # f90 <sdcard_unselect>

000011ec <sdcard_start_sector>:
    11ec:	ff010113          	addi	sp,sp,-16
    11f0:	00112623          	sw	ra,12(sp)
    11f4:	00812423          	sw	s0,8(sp)
    11f8:	00050413          	mv	s0,a0
    11fc:	00000097          	auipc	ra,0x0
    1200:	d54080e7          	jalr	-684(ra) # f50 <sdcard_select>
    1204:	05100513          	li	a0,81
    1208:	00000097          	auipc	ra,0x0
    120c:	d9c080e7          	jalr	-612(ra) # fa4 <sdcard_send>
    1210:	01845513          	srli	a0,s0,0x18
    1214:	00000097          	auipc	ra,0x0
    1218:	d90080e7          	jalr	-624(ra) # fa4 <sdcard_send>
    121c:	41045513          	srai	a0,s0,0x10
    1220:	0ff57513          	zext.b	a0,a0
    1224:	00000097          	auipc	ra,0x0
    1228:	d80080e7          	jalr	-640(ra) # fa4 <sdcard_send>
    122c:	40845513          	srai	a0,s0,0x8
    1230:	0ff57513          	zext.b	a0,a0
    1234:	00000097          	auipc	ra,0x0
    1238:	d70080e7          	jalr	-656(ra) # fa4 <sdcard_send>
    123c:	0ff47513          	zext.b	a0,s0
    1240:	00000097          	auipc	ra,0x0
    1244:	d64080e7          	jalr	-668(ra) # fa4 <sdcard_send>
    1248:	05500513          	li	a0,85
    124c:	00000097          	auipc	ra,0x0
    1250:	d58080e7          	jalr	-680(ra) # fa4 <sdcard_send>
    1254:	00000097          	auipc	ra,0x0
    1258:	d3c080e7          	jalr	-708(ra) # f90 <sdcard_unselect>
    125c:	00812403          	lw	s0,8(sp)
    1260:	00c12083          	lw	ra,12(sp)
    1264:	00100593          	li	a1,1
    1268:	00800513          	li	a0,8
    126c:	01010113          	addi	sp,sp,16
    1270:	00000317          	auipc	t1,0x0
    1274:	ea830067          	jr	-344(t1) # 1118 <sdcard_get>

00001278 <sdcard_read_sector>:
    1278:	ff010113          	addi	sp,sp,-16
    127c:	00812423          	sw	s0,8(sp)
    1280:	00112623          	sw	ra,12(sp)
    1284:	00912223          	sw	s1,4(sp)
    1288:	01212023          	sw	s2,0(sp)
    128c:	00058413          	mv	s0,a1
    1290:	00000097          	auipc	ra,0x0
    1294:	f5c080e7          	jalr	-164(ra) # 11ec <sdcard_start_sector>
    1298:	04051863          	bnez	a0,12e8 <sdcard_read_sector+0x70>
    129c:	00100593          	li	a1,1
    12a0:	00058513          	mv	a0,a1
    12a4:	00000097          	auipc	ra,0x0
    12a8:	e74080e7          	jalr	-396(ra) # 1118 <sdcard_get>
    12ac:	00000493          	li	s1,0
    12b0:	20000913          	li	s2,512
    12b4:	00000593          	li	a1,0
    12b8:	00800513          	li	a0,8
    12bc:	00000097          	auipc	ra,0x0
    12c0:	e5c080e7          	jalr	-420(ra) # 1118 <sdcard_get>
    12c4:	009407b3          	add	a5,s0,s1
    12c8:	00a78023          	sb	a0,0(a5)
    12cc:	00148493          	addi	s1,s1,1
    12d0:	ff2492e3          	bne	s1,s2,12b4 <sdcard_read_sector+0x3c>
    12d4:	00100593          	li	a1,1
    12d8:	01000513          	li	a0,16
    12dc:	20040413          	addi	s0,s0,512
    12e0:	00000097          	auipc	ra,0x0
    12e4:	e38080e7          	jalr	-456(ra) # 1118 <sdcard_get>
    12e8:	00c12083          	lw	ra,12(sp)
    12ec:	00040513          	mv	a0,s0
    12f0:	00812403          	lw	s0,8(sp)
    12f4:	00412483          	lw	s1,4(sp)
    12f8:	00012903          	lw	s2,0(sp)
    12fc:	01010113          	addi	sp,sp,16
    1300:	00008067          	ret

00001304 <sdcard_preinit>:
    1304:	ff010113          	addi	sp,sp,-16
    1308:	000057b7          	lui	a5,0x5
    130c:	00812423          	sw	s0,8(sp)
    1310:	fcc7a403          	lw	s0,-52(a5) # 4fcc <SDCARD>
    1314:	00112623          	sw	ra,12(sp)
    1318:	00600793          	li	a5,6
    131c:	01313537          	lui	a0,0x1313
    1320:	00f42023          	sw	a5,0(s0)
    1324:	d0050513          	addi	a0,a0,-768 # 1312d00 <__stacktop+0x1302d00>
    1328:	00000097          	auipc	ra,0x0
    132c:	c10080e7          	jalr	-1008(ra) # f38 <pause>
    1330:	0a000793          	li	a5,160
    1334:	00000713          	li	a4,0
    1338:	00676693          	ori	a3,a4,6
    133c:	00d42023          	sw	a3,0(s0)
    1340:	fff78793          	addi	a5,a5,-1
    1344:	00174713          	xori	a4,a4,1
    1348:	fe0798e3          	bnez	a5,1338 <sdcard_preinit+0x34>
    134c:	00600793          	li	a5,6
    1350:	00c12083          	lw	ra,12(sp)
    1354:	00f42023          	sw	a5,0(s0)
    1358:	00812403          	lw	s0,8(sp)
    135c:	01010113          	addi	sp,sp,16
    1360:	00008067          	ret

00001364 <sdcard_init>:
    1364:	000017b7          	lui	a5,0x1
    1368:	f4c78793          	addi	a5,a5,-180 # f4c <sdcard_idle>
    136c:	00005737          	lui	a4,0x5
    1370:	fe010113          	addi	sp,sp,-32
    1374:	2ef72423          	sw	a5,744(a4) # 52e8 <sdcard_while_loading_callback>
    1378:	000057b7          	lui	a5,0x5
    137c:	00812c23          	sw	s0,24(sp)
    1380:	00912a23          	sw	s1,20(sp)
    1384:	00112e23          	sw	ra,28(sp)
    1388:	fb878493          	addi	s1,a5,-72 # 4fb8 <cmd0>
    138c:	0ff00413          	li	s0,255
    1390:	00000097          	auipc	ra,0x0
    1394:	f74080e7          	jalr	-140(ra) # 1304 <sdcard_preinit>
    1398:	00048513          	mv	a0,s1
    139c:	00000097          	auipc	ra,0x0
    13a0:	df4080e7          	jalr	-524(ra) # 1190 <sdcard_cmd>
    13a4:	00100593          	li	a1,1
    13a8:	00800513          	li	a0,8
    13ac:	00000097          	auipc	ra,0x0
    13b0:	d6c080e7          	jalr	-660(ra) # 1118 <sdcard_get>
    13b4:	00a12623          	sw	a0,12(sp)
    13b8:	00000097          	auipc	ra,0x0
    13bc:	bac080e7          	jalr	-1108(ra) # f64 <sdcard_ponder>
    13c0:	00c12503          	lw	a0,12(sp)
    13c4:	00851c63          	bne	a0,s0,13dc <sdcard_init+0x78>
    13c8:	01313537          	lui	a0,0x1313
    13cc:	d0050513          	addi	a0,a0,-768 # 1312d00 <__stacktop+0x1302d00>
    13d0:	00000097          	auipc	ra,0x0
    13d4:	b68080e7          	jalr	-1176(ra) # f38 <pause>
    13d8:	fb9ff06f          	j	1390 <sdcard_init+0x2c>
    13dc:	00005537          	lui	a0,0x5
    13e0:	fb050513          	addi	a0,a0,-80 # 4fb0 <cmd8>
    13e4:	00000097          	auipc	ra,0x0
    13e8:	dac080e7          	jalr	-596(ra) # 1190 <sdcard_cmd>
    13ec:	00100593          	li	a1,1
    13f0:	02800513          	li	a0,40
    13f4:	00000097          	auipc	ra,0x0
    13f8:	d24080e7          	jalr	-732(ra) # 1118 <sdcard_get>
    13fc:	00000097          	auipc	ra,0x0
    1400:	b68080e7          	jalr	-1176(ra) # f64 <sdcard_ponder>
    1404:	000057b7          	lui	a5,0x5
    1408:	fa878413          	addi	s0,a5,-88 # 4fa8 <cmd55>
    140c:	000057b7          	lui	a5,0x5
    1410:	fa078493          	addi	s1,a5,-96 # 4fa0 <acmd41>
    1414:	00040513          	mv	a0,s0
    1418:	00000097          	auipc	ra,0x0
    141c:	d78080e7          	jalr	-648(ra) # 1190 <sdcard_cmd>
    1420:	00100593          	li	a1,1
    1424:	00800513          	li	a0,8
    1428:	00000097          	auipc	ra,0x0
    142c:	cf0080e7          	jalr	-784(ra) # 1118 <sdcard_get>
    1430:	00000097          	auipc	ra,0x0
    1434:	b34080e7          	jalr	-1228(ra) # f64 <sdcard_ponder>
    1438:	00048513          	mv	a0,s1
    143c:	00000097          	auipc	ra,0x0
    1440:	d54080e7          	jalr	-684(ra) # 1190 <sdcard_cmd>
    1444:	00100593          	li	a1,1
    1448:	00800513          	li	a0,8
    144c:	00000097          	auipc	ra,0x0
    1450:	ccc080e7          	jalr	-820(ra) # 1118 <sdcard_get>
    1454:	00a12623          	sw	a0,12(sp)
    1458:	00000097          	auipc	ra,0x0
    145c:	b0c080e7          	jalr	-1268(ra) # f64 <sdcard_ponder>
    1460:	00c12503          	lw	a0,12(sp)
    1464:	00050c63          	beqz	a0,147c <sdcard_init+0x118>
    1468:	001e8537          	lui	a0,0x1e8
    146c:	48050513          	addi	a0,a0,1152 # 1e8480 <__stacktop+0x1d8480>
    1470:	00000097          	auipc	ra,0x0
    1474:	ac8080e7          	jalr	-1336(ra) # f38 <pause>
    1478:	f9dff06f          	j	1414 <sdcard_init+0xb0>
    147c:	00005537          	lui	a0,0x5
    1480:	f9850513          	addi	a0,a0,-104 # 4f98 <cmd16>
    1484:	00000097          	auipc	ra,0x0
    1488:	d0c080e7          	jalr	-756(ra) # 1190 <sdcard_cmd>
    148c:	00100593          	li	a1,1
    1490:	00800513          	li	a0,8
    1494:	00000097          	auipc	ra,0x0
    1498:	c84080e7          	jalr	-892(ra) # 1118 <sdcard_get>
    149c:	01812403          	lw	s0,24(sp)
    14a0:	01c12083          	lw	ra,28(sp)
    14a4:	01412483          	lw	s1,20(sp)
    14a8:	02010113          	addi	sp,sp,32
    14ac:	00000317          	auipc	t1,0x0
    14b0:	ab830067          	jr	-1352(t1) # f64 <sdcard_ponder>

000014b4 <sdcard_readsector>:
    14b4:	04060663          	beqz	a2,1500 <sdcard_readsector+0x4c>
    14b8:	ff010113          	addi	sp,sp,-16
    14bc:	00812423          	sw	s0,8(sp)
    14c0:	00912223          	sw	s1,4(sp)
    14c4:	00112623          	sw	ra,12(sp)
    14c8:	00050413          	mv	s0,a0
    14cc:	00a604b3          	add	s1,a2,a0
    14d0:	00040513          	mv	a0,s0
    14d4:	00000097          	auipc	ra,0x0
    14d8:	da4080e7          	jalr	-604(ra) # 1278 <sdcard_read_sector>
    14dc:	00140413          	addi	s0,s0,1
    14e0:	00050593          	mv	a1,a0
    14e4:	fe9416e3          	bne	s0,s1,14d0 <sdcard_readsector+0x1c>
    14e8:	00c12083          	lw	ra,12(sp)
    14ec:	00812403          	lw	s0,8(sp)
    14f0:	00412483          	lw	s1,4(sp)
    14f4:	00100513          	li	a0,1
    14f8:	01010113          	addi	sp,sp,16
    14fc:	00008067          	ret
    1500:	00000513          	li	a0,0
    1504:	00008067          	ret

00001508 <sdcard_writesector>:
    1508:	00000513          	li	a0,0
    150c:	00008067          	ret

00001510 <__divsi3>:
    1510:	06054063          	bltz	a0,1570 <__umodsi3+0x10>
    1514:	0605c663          	bltz	a1,1580 <__umodsi3+0x20>

00001518 <__udivsi3>:
    1518:	00058613          	mv	a2,a1
    151c:	00050593          	mv	a1,a0
    1520:	fff00513          	li	a0,-1
    1524:	02060c63          	beqz	a2,155c <__udivsi3+0x44>
    1528:	00100693          	li	a3,1
    152c:	00b67a63          	bgeu	a2,a1,1540 <__udivsi3+0x28>
    1530:	00c05863          	blez	a2,1540 <__udivsi3+0x28>
    1534:	00161613          	slli	a2,a2,0x1
    1538:	00169693          	slli	a3,a3,0x1
    153c:	feb66ae3          	bltu	a2,a1,1530 <__udivsi3+0x18>
    1540:	00000513          	li	a0,0
    1544:	00c5e663          	bltu	a1,a2,1550 <__udivsi3+0x38>
    1548:	40c585b3          	sub	a1,a1,a2
    154c:	00d56533          	or	a0,a0,a3
    1550:	0016d693          	srli	a3,a3,0x1
    1554:	00165613          	srli	a2,a2,0x1
    1558:	fe0696e3          	bnez	a3,1544 <__udivsi3+0x2c>
    155c:	00008067          	ret

00001560 <__umodsi3>:
    1560:	00008293          	mv	t0,ra
    1564:	fb5ff0ef          	jal	1518 <__udivsi3>
    1568:	00058513          	mv	a0,a1
    156c:	00028067          	jr	t0
    1570:	40a00533          	neg	a0,a0
    1574:	0005d863          	bgez	a1,1584 <__umodsi3+0x24>
    1578:	40b005b3          	neg	a1,a1
    157c:	f95ff06f          	j	1510 <__divsi3>
    1580:	40b005b3          	neg	a1,a1
    1584:	00008293          	mv	t0,ra
    1588:	f89ff0ef          	jal	1510 <__divsi3>
    158c:	40a00533          	neg	a0,a0
    1590:	00028067          	jr	t0

00001594 <__modsi3>:
    1594:	00008293          	mv	t0,ra
    1598:	0005ca63          	bltz	a1,15ac <__modsi3+0x18>
    159c:	00054c63          	bltz	a0,15b4 <__modsi3+0x20>
    15a0:	f79ff0ef          	jal	1518 <__udivsi3>
    15a4:	00058513          	mv	a0,a1
    15a8:	00028067          	jr	t0
    15ac:	40b005b3          	neg	a1,a1
    15b0:	fe0558e3          	bgez	a0,15a0 <__modsi3+0xc>
    15b4:	40a00533          	neg	a0,a0
    15b8:	f61ff0ef          	jal	1518 <__udivsi3>
    15bc:	40b00533          	neg	a0,a1
    15c0:	00028067          	jr	t0

000015c4 <memset>:
    15c4:	00c50633          	add	a2,a0,a2
    15c8:	00050793          	mv	a5,a0
    15cc:	00c79463          	bne	a5,a2,15d4 <memset+0x10>
    15d0:	00008067          	ret
    15d4:	00178793          	addi	a5,a5,1
    15d8:	feb78fa3          	sb	a1,-1(a5)
    15dc:	ff1ff06f          	j	15cc <memset+0x8>

000015e0 <memcpy>:
    15e0:	00000793          	li	a5,0
    15e4:	00c79463          	bne	a5,a2,15ec <memcpy+0xc>
    15e8:	00008067          	ret
    15ec:	00f58733          	add	a4,a1,a5
    15f0:	00074683          	lbu	a3,0(a4)
    15f4:	00f50733          	add	a4,a0,a5
    15f8:	00178793          	addi	a5,a5,1
    15fc:	00d70023          	sb	a3,0(a4)
    1600:	fe5ff06f          	j	15e4 <memcpy+0x4>

00001604 <strlen>:
    1604:	00000793          	li	a5,0
    1608:	00f50733          	add	a4,a0,a5
    160c:	00074703          	lbu	a4,0(a4)
    1610:	00071663          	bnez	a4,161c <strlen+0x18>
    1614:	00078513          	mv	a0,a5
    1618:	00008067          	ret
    161c:	00178793          	addi	a5,a5,1
    1620:	fe9ff06f          	j	1608 <strlen+0x4>

00001624 <strncmp>:
    1624:	00000793          	li	a5,0
    1628:	00c79663          	bne	a5,a2,1634 <strncmp+0x10>
    162c:	00000513          	li	a0,0
    1630:	00008067          	ret
    1634:	00f50733          	add	a4,a0,a5
    1638:	00074683          	lbu	a3,0(a4)
    163c:	00f58733          	add	a4,a1,a5
    1640:	00074703          	lbu	a4,0(a4)
    1644:	00e6e863          	bltu	a3,a4,1654 <strncmp+0x30>
    1648:	00d76a63          	bltu	a4,a3,165c <strncmp+0x38>
    164c:	00178793          	addi	a5,a5,1
    1650:	fd9ff06f          	j	1628 <strncmp+0x4>
    1654:	fff00513          	li	a0,-1
    1658:	00008067          	ret
    165c:	00100513          	li	a0,1
    1660:	00008067          	ret

00001664 <strncpy>:
    1664:	00000793          	li	a5,0
    1668:	00c79463          	bne	a5,a2,1670 <strncpy+0xc>
    166c:	00008067          	ret
    1670:	00f58733          	add	a4,a1,a5
    1674:	00074683          	lbu	a3,0(a4)
    1678:	00f50733          	add	a4,a0,a5
    167c:	00178793          	addi	a5,a5,1
    1680:	00d70023          	sb	a3,0(a4)
    1684:	fe5ff06f          	j	1668 <strncpy+0x4>

00001688 <oled_wait>:
    1688:	00000013          	nop
    168c:	00000013          	nop
    1690:	00000013          	nop
    1694:	00000013          	nop
    1698:	00000013          	nop
    169c:	00000013          	nop
    16a0:	00000013          	nop
    16a4:	00008067          	ret

000016a8 <oled_init_mode>:
    16a8:	000057b7          	lui	a5,0x5
    16ac:	fd07a703          	lw	a4,-48(a5) # 4fd0 <OLED_RST>
    16b0:	fe010113          	addi	sp,sp,-32
    16b4:	00112e23          	sw	ra,28(sp)
    16b8:	00812c23          	sw	s0,24(sp)
    16bc:	00072023          	sw	zero,0(a4)
    16c0:	00040737          	lui	a4,0x40
    16c4:	00000013          	nop
    16c8:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
    16cc:	fe071ce3          	bnez	a4,16c4 <oled_init_mode+0x1c>
    16d0:	fd07a703          	lw	a4,-48(a5)
    16d4:	00100693          	li	a3,1
    16d8:	00d72023          	sw	a3,0(a4)
    16dc:	00040737          	lui	a4,0x40
    16e0:	00000013          	nop
    16e4:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
    16e8:	fe071ce3          	bnez	a4,16e0 <oled_init_mode+0x38>
    16ec:	fd07a783          	lw	a5,-48(a5)
    16f0:	0007a023          	sw	zero,0(a5)
    16f4:	000407b7          	lui	a5,0x40
    16f8:	00000013          	nop
    16fc:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
    1700:	fe079ce3          	bnez	a5,16f8 <oled_init_mode+0x50>
    1704:	00005737          	lui	a4,0x5
    1708:	fd472783          	lw	a5,-44(a4) # 4fd4 <OLED>
    170c:	2af00693          	li	a3,687
    1710:	00d7a023          	sw	a3,0(a5)
    1714:	000407b7          	lui	a5,0x40
    1718:	00000013          	nop
    171c:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
    1720:	fe079ce3          	bnez	a5,1718 <oled_init_mode+0x70>
    1724:	fd472403          	lw	s0,-44(a4)
    1728:	2a000793          	li	a5,672
    172c:	00a12623          	sw	a0,12(sp)
    1730:	00f42023          	sw	a5,0(s0)
    1734:	00000097          	auipc	ra,0x0
    1738:	f54080e7          	jalr	-172(ra) # 1688 <oled_wait>
    173c:	00c12503          	lw	a0,12(sp)
    1740:	4a000793          	li	a5,1184
    1744:	00050463          	beqz	a0,174c <oled_init_mode+0xa4>
    1748:	42000793          	li	a5,1056
    174c:	00f42023          	sw	a5,0(s0)
    1750:	00000097          	auipc	ra,0x0
    1754:	f38080e7          	jalr	-200(ra) # 1688 <oled_wait>
    1758:	2fd00793          	li	a5,765
    175c:	00f42023          	sw	a5,0(s0)
    1760:	00000097          	auipc	ra,0x0
    1764:	f28080e7          	jalr	-216(ra) # 1688 <oled_wait>
    1768:	4b100793          	li	a5,1201
    176c:	00f42023          	sw	a5,0(s0)
    1770:	00000097          	auipc	ra,0x0
    1774:	f18080e7          	jalr	-232(ra) # 1688 <oled_wait>
    1778:	2a200793          	li	a5,674
    177c:	00f42023          	sw	a5,0(s0)
    1780:	00000097          	auipc	ra,0x0
    1784:	f08080e7          	jalr	-248(ra) # 1688 <oled_wait>
    1788:	40000793          	li	a5,1024
    178c:	00f42023          	sw	a5,0(s0)
    1790:	01812403          	lw	s0,24(sp)
    1794:	01c12083          	lw	ra,28(sp)
    1798:	02010113          	addi	sp,sp,32
    179c:	00000317          	auipc	t1,0x0
    17a0:	eec30067          	jr	-276(t1) # 1688 <oled_wait>

000017a4 <oled_init>:
    17a4:	00000513          	li	a0,0
    17a8:	00000317          	auipc	t1,0x0
    17ac:	f0030067          	jr	-256(t1) # 16a8 <oled_init_mode>

000017b0 <oled_fullscreen>:
    17b0:	ff010113          	addi	sp,sp,-16
    17b4:	000057b7          	lui	a5,0x5
    17b8:	00812423          	sw	s0,8(sp)
    17bc:	fd47a403          	lw	s0,-44(a5) # 4fd4 <OLED>
    17c0:	00112623          	sw	ra,12(sp)
    17c4:	00912223          	sw	s1,4(sp)
    17c8:	01212023          	sw	s2,0(sp)
    17cc:	21500793          	li	a5,533
    17d0:	00f42023          	sw	a5,0(s0)
    17d4:	40000913          	li	s2,1024
    17d8:	00000097          	auipc	ra,0x0
    17dc:	eb0080e7          	jalr	-336(ra) # 1688 <oled_wait>
    17e0:	47f00493          	li	s1,1151
    17e4:	01242023          	sw	s2,0(s0)
    17e8:	00000097          	auipc	ra,0x0
    17ec:	ea0080e7          	jalr	-352(ra) # 1688 <oled_wait>
    17f0:	00942023          	sw	s1,0(s0)
    17f4:	00000097          	auipc	ra,0x0
    17f8:	e94080e7          	jalr	-364(ra) # 1688 <oled_wait>
    17fc:	27500793          	li	a5,629
    1800:	00f42023          	sw	a5,0(s0)
    1804:	00000097          	auipc	ra,0x0
    1808:	e84080e7          	jalr	-380(ra) # 1688 <oled_wait>
    180c:	01242023          	sw	s2,0(s0)
    1810:	00000097          	auipc	ra,0x0
    1814:	e78080e7          	jalr	-392(ra) # 1688 <oled_wait>
    1818:	00942023          	sw	s1,0(s0)
    181c:	00000097          	auipc	ra,0x0
    1820:	e6c080e7          	jalr	-404(ra) # 1688 <oled_wait>
    1824:	25c00793          	li	a5,604
    1828:	00f42023          	sw	a5,0(s0)
    182c:	00812403          	lw	s0,8(sp)
    1830:	00c12083          	lw	ra,12(sp)
    1834:	00412483          	lw	s1,4(sp)
    1838:	00012903          	lw	s2,0(sp)
    183c:	01010113          	addi	sp,sp,16
    1840:	00000317          	auipc	t1,0x0
    1844:	e4830067          	jr	-440(t1) # 1688 <oled_wait>

00001848 <display_framebuffer>:
    1848:	000057b7          	lui	a5,0x5
    184c:	fc47a503          	lw	a0,-60(a5) # 4fc4 <DISPLAY>
    1850:	00008067          	ret

00001854 <display_set_cursor>:
    1854:	000057b7          	lui	a5,0x5
    1858:	2ea7aa23          	sw	a0,756(a5) # 52f4 <cursor_x>
    185c:	000057b7          	lui	a5,0x5
    1860:	2eb7a823          	sw	a1,752(a5) # 52f0 <cursor_y>
    1864:	00008067          	ret

00001868 <display_set_front_back_color>:
    1868:	000057b7          	lui	a5,0x5
    186c:	2ea786a3          	sb	a0,749(a5) # 52ed <front_color>
    1870:	000057b7          	lui	a5,0x5
    1874:	2eb78623          	sb	a1,748(a5) # 52ec <back_color>
    1878:	00008067          	ret

0000187c <display_putchar>:
    187c:	00a00793          	li	a5,10
    1880:	00005737          	lui	a4,0x5
    1884:	02f51663          	bne	a0,a5,18b0 <display_putchar+0x34>
    1888:	2e072a23          	sw	zero,756(a4) # 52f4 <cursor_x>
    188c:	00005737          	lui	a4,0x5
    1890:	2f072783          	lw	a5,752(a4) # 52f0 <cursor_y>
    1894:	00878793          	addi	a5,a5,8
    1898:	2ef72823          	sw	a5,752(a4)
    189c:	07f00713          	li	a4,127
    18a0:	00f75663          	bge	a4,a5,18ac <display_putchar+0x30>
    18a4:	000057b7          	lui	a5,0x5
    18a8:	2e07a823          	sw	zero,752(a5) # 52f0 <cursor_y>
    18ac:	00008067          	ret
    18b0:	ff010113          	addi	sp,sp,-16
    18b4:	00812623          	sw	s0,12(sp)
    18b8:	01f00793          	li	a5,31
    18bc:	08a7d663          	bge	a5,a0,1948 <display_putchar+0xcc>
    18c0:	000057b7          	lui	a5,0x5
    18c4:	fc47ae83          	lw	t4,-60(a5) # 4fc4 <DISPLAY>
    18c8:	000056b7          	lui	a3,0x5
    18cc:	00251793          	slli	a5,a0,0x2
    18d0:	0b468693          	addi	a3,a3,180 # 50b4 <font>
    18d4:	00a787b3          	add	a5,a5,a0
    18d8:	00d78533          	add	a0,a5,a3
    18dc:	00100e13          	li	t3,1
    18e0:	00000693          	li	a3,0
    18e4:	000053b7          	lui	t2,0x5
    18e8:	00005437          	lui	s0,0x5
    18ec:	00005f37          	lui	t5,0x5
    18f0:	00500f93          	li	t6,5
    18f4:	00800293          	li	t0,8
    18f8:	00de1333          	sll	t1,t3,a3
    18fc:	00050593          	mv	a1,a0
    1900:	00000613          	li	a2,0
    1904:	f605c783          	lbu	a5,-160(a1)
    1908:	0067f7b3          	and	a5,a5,t1
    190c:	04078a63          	beqz	a5,1960 <display_putchar+0xe4>
    1910:	2ed44883          	lbu	a7,749(s0) # 52ed <front_color>
    1914:	2f472783          	lw	a5,756(a4)
    1918:	2f0f2803          	lw	a6,752(t5) # 52f0 <cursor_y>
    191c:	00158593          	addi	a1,a1,1
    1920:	00f607b3          	add	a5,a2,a5
    1924:	00779793          	slli	a5,a5,0x7
    1928:	01068833          	add	a6,a3,a6
    192c:	010787b3          	add	a5,a5,a6
    1930:	00fe87b3          	add	a5,t4,a5
    1934:	01178023          	sb	a7,0(a5)
    1938:	00160613          	addi	a2,a2,1
    193c:	fdf614e3          	bne	a2,t6,1904 <display_putchar+0x88>
    1940:	00168693          	addi	a3,a3,1
    1944:	fa569ae3          	bne	a3,t0,18f8 <display_putchar+0x7c>
    1948:	2f472783          	lw	a5,756(a4)
    194c:	07f00693          	li	a3,127
    1950:	00578793          	addi	a5,a5,5
    1954:	00f6ca63          	blt	a3,a5,1968 <display_putchar+0xec>
    1958:	2ef72a23          	sw	a5,756(a4)
    195c:	02c0006f          	j	1988 <display_putchar+0x10c>
    1960:	2ec3c883          	lbu	a7,748(t2) # 52ec <back_color>
    1964:	fb1ff06f          	j	1914 <display_putchar+0x98>
    1968:	2e072a23          	sw	zero,756(a4)
    196c:	00005737          	lui	a4,0x5
    1970:	2f072783          	lw	a5,752(a4) # 52f0 <cursor_y>
    1974:	00878793          	addi	a5,a5,8
    1978:	2ef72823          	sw	a5,752(a4)
    197c:	00f6d663          	bge	a3,a5,1988 <display_putchar+0x10c>
    1980:	000057b7          	lui	a5,0x5
    1984:	2e07a823          	sw	zero,752(a5) # 52f0 <cursor_y>
    1988:	00c12403          	lw	s0,12(sp)
    198c:	01010113          	addi	sp,sp,16
    1990:	00008067          	ret

00001994 <display_refresh>:
    1994:	00008067          	ret

00001998 <print_string>:
    1998:	ff010113          	addi	sp,sp,-16
    199c:	00812423          	sw	s0,8(sp)
    19a0:	00912223          	sw	s1,4(sp)
    19a4:	00112623          	sw	ra,12(sp)
    19a8:	00050413          	mv	s0,a0
    19ac:	000054b7          	lui	s1,0x5
    19b0:	00044503          	lbu	a0,0(s0)
    19b4:	00051c63          	bnez	a0,19cc <print_string+0x34>
    19b8:	00c12083          	lw	ra,12(sp)
    19bc:	00812403          	lw	s0,8(sp)
    19c0:	00412483          	lw	s1,4(sp)
    19c4:	01010113          	addi	sp,sp,16
    19c8:	00008067          	ret
    19cc:	2f84a783          	lw	a5,760(s1) # 52f8 <f_putchar>
    19d0:	00140413          	addi	s0,s0,1
    19d4:	000780e7          	jalr	a5
    19d8:	fd9ff06f          	j	19b0 <print_string+0x18>

000019dc <print_dec>:
    19dc:	ef010113          	addi	sp,sp,-272
    19e0:	10812423          	sw	s0,264(sp)
    19e4:	10912223          	sw	s1,260(sp)
    19e8:	10112623          	sw	ra,268(sp)
    19ec:	11212023          	sw	s2,256(sp)
    19f0:	00050413          	mv	s0,a0
    19f4:	000054b7          	lui	s1,0x5
    19f8:	08045063          	bgez	s0,1a78 <print_dec+0x9c>
    19fc:	2f84a783          	lw	a5,760(s1) # 52f8 <f_putchar>
    1a00:	02d00513          	li	a0,45
    1a04:	40800433          	neg	s0,s0
    1a08:	000780e7          	jalr	a5
    1a0c:	fedff06f          	j	19f8 <print_dec+0x1c>
    1a10:	00040513          	mv	a0,s0
    1a14:	00a00593          	li	a1,10
    1a18:	00000097          	auipc	ra,0x0
    1a1c:	af8080e7          	jalr	-1288(ra) # 1510 <__divsi3>
    1a20:	00251793          	slli	a5,a0,0x2
    1a24:	00f507b3          	add	a5,a0,a5
    1a28:	00179793          	slli	a5,a5,0x1
    1a2c:	40f40433          	sub	s0,s0,a5
    1a30:	00148493          	addi	s1,s1,1
    1a34:	fe848fa3          	sb	s0,-1(s1)
    1a38:	00050413          	mv	s0,a0
    1a3c:	fc041ae3          	bnez	s0,1a10 <print_dec+0x34>
    1a40:	fd2488e3          	beq	s1,s2,1a10 <print_dec+0x34>
    1a44:	00005437          	lui	s0,0x5
    1a48:	fff4c503          	lbu	a0,-1(s1)
    1a4c:	2f842783          	lw	a5,760(s0) # 52f8 <f_putchar>
    1a50:	fff48493          	addi	s1,s1,-1
    1a54:	03050513          	addi	a0,a0,48
    1a58:	000780e7          	jalr	a5
    1a5c:	ff2496e3          	bne	s1,s2,1a48 <print_dec+0x6c>
    1a60:	10c12083          	lw	ra,268(sp)
    1a64:	10812403          	lw	s0,264(sp)
    1a68:	10412483          	lw	s1,260(sp)
    1a6c:	10012903          	lw	s2,256(sp)
    1a70:	11010113          	addi	sp,sp,272
    1a74:	00008067          	ret
    1a78:	00010493          	mv	s1,sp
    1a7c:	00010913          	mv	s2,sp
    1a80:	fbdff06f          	j	1a3c <print_dec+0x60>

00001a84 <print_hex_digits>:
    1a84:	fe010113          	addi	sp,sp,-32
    1a88:	00812c23          	sw	s0,24(sp)
    1a8c:	00912a23          	sw	s1,20(sp)
    1a90:	fff58413          	addi	s0,a1,-1
    1a94:	000054b7          	lui	s1,0x5
    1a98:	01212823          	sw	s2,16(sp)
    1a9c:	01312623          	sw	s3,12(sp)
    1aa0:	00112e23          	sw	ra,28(sp)
    1aa4:	00050993          	mv	s3,a0
    1aa8:	00241413          	slli	s0,s0,0x2
    1aac:	06c48493          	addi	s1,s1,108 # 506c <LEDS+0x94>
    1ab0:	00005937          	lui	s2,0x5
    1ab4:	02045063          	bgez	s0,1ad4 <print_hex_digits+0x50>
    1ab8:	01c12083          	lw	ra,28(sp)
    1abc:	01812403          	lw	s0,24(sp)
    1ac0:	01412483          	lw	s1,20(sp)
    1ac4:	01012903          	lw	s2,16(sp)
    1ac8:	00c12983          	lw	s3,12(sp)
    1acc:	02010113          	addi	sp,sp,32
    1ad0:	00008067          	ret
    1ad4:	0089d7b3          	srl	a5,s3,s0
    1ad8:	00f7f793          	andi	a5,a5,15
    1adc:	00f487b3          	add	a5,s1,a5
    1ae0:	2f892703          	lw	a4,760(s2) # 52f8 <f_putchar>
    1ae4:	0007c503          	lbu	a0,0(a5)
    1ae8:	ffc40413          	addi	s0,s0,-4
    1aec:	000700e7          	jalr	a4
    1af0:	fc5ff06f          	j	1ab4 <print_hex_digits+0x30>

00001af4 <print_hex>:
    1af4:	00800593          	li	a1,8
    1af8:	00000317          	auipc	t1,0x0
    1afc:	f8c30067          	jr	-116(t1) # 1a84 <print_hex_digits>

00001b00 <printf>:
    1b00:	fa010113          	addi	sp,sp,-96
    1b04:	04f12a23          	sw	a5,84(sp)
    1b08:	04410793          	addi	a5,sp,68
    1b0c:	02812c23          	sw	s0,56(sp)
    1b10:	02912a23          	sw	s1,52(sp)
    1b14:	03212823          	sw	s2,48(sp)
    1b18:	03312623          	sw	s3,44(sp)
    1b1c:	03412423          	sw	s4,40(sp)
    1b20:	03512223          	sw	s5,36(sp)
    1b24:	03612023          	sw	s6,32(sp)
    1b28:	02112e23          	sw	ra,60(sp)
    1b2c:	01712e23          	sw	s7,28(sp)
    1b30:	00050413          	mv	s0,a0
    1b34:	04b12223          	sw	a1,68(sp)
    1b38:	04c12423          	sw	a2,72(sp)
    1b3c:	04d12623          	sw	a3,76(sp)
    1b40:	04e12823          	sw	a4,80(sp)
    1b44:	05012c23          	sw	a6,88(sp)
    1b48:	05112e23          	sw	a7,92(sp)
    1b4c:	00f12623          	sw	a5,12(sp)
    1b50:	02500913          	li	s2,37
    1b54:	000054b7          	lui	s1,0x5
    1b58:	07300993          	li	s3,115
    1b5c:	07800a13          	li	s4,120
    1b60:	06400a93          	li	s5,100
    1b64:	06300b13          	li	s6,99
    1b68:	00044503          	lbu	a0,0(s0)
    1b6c:	02051863          	bnez	a0,1b9c <printf+0x9c>
    1b70:	03c12083          	lw	ra,60(sp)
    1b74:	03812403          	lw	s0,56(sp)
    1b78:	03412483          	lw	s1,52(sp)
    1b7c:	03012903          	lw	s2,48(sp)
    1b80:	02c12983          	lw	s3,44(sp)
    1b84:	02812a03          	lw	s4,40(sp)
    1b88:	02412a83          	lw	s5,36(sp)
    1b8c:	02012b03          	lw	s6,32(sp)
    1b90:	01c12b83          	lw	s7,28(sp)
    1b94:	06010113          	addi	sp,sp,96
    1b98:	00008067          	ret
    1b9c:	09251a63          	bne	a0,s2,1c30 <printf+0x130>
    1ba0:	00144503          	lbu	a0,1(s0)
    1ba4:	00140b93          	addi	s7,s0,1
    1ba8:	03351463          	bne	a0,s3,1bd0 <printf+0xd0>
    1bac:	00c12783          	lw	a5,12(sp)
    1bb0:	0007a503          	lw	a0,0(a5)
    1bb4:	00478713          	addi	a4,a5,4
    1bb8:	00e12623          	sw	a4,12(sp)
    1bbc:	00000097          	auipc	ra,0x0
    1bc0:	ddc080e7          	jalr	-548(ra) # 1998 <print_string>
    1bc4:	000b8413          	mv	s0,s7
    1bc8:	00140413          	addi	s0,s0,1
    1bcc:	f9dff06f          	j	1b68 <printf+0x68>
    1bd0:	03451063          	bne	a0,s4,1bf0 <printf+0xf0>
    1bd4:	00c12783          	lw	a5,12(sp)
    1bd8:	0007a503          	lw	a0,0(a5)
    1bdc:	00478713          	addi	a4,a5,4
    1be0:	00e12623          	sw	a4,12(sp)
    1be4:	00000097          	auipc	ra,0x0
    1be8:	f10080e7          	jalr	-240(ra) # 1af4 <print_hex>
    1bec:	fd9ff06f          	j	1bc4 <printf+0xc4>
    1bf0:	03551063          	bne	a0,s5,1c10 <printf+0x110>
    1bf4:	00c12783          	lw	a5,12(sp)
    1bf8:	0007a503          	lw	a0,0(a5)
    1bfc:	00478713          	addi	a4,a5,4
    1c00:	00e12623          	sw	a4,12(sp)
    1c04:	00000097          	auipc	ra,0x0
    1c08:	dd8080e7          	jalr	-552(ra) # 19dc <print_dec>
    1c0c:	fb9ff06f          	j	1bc4 <printf+0xc4>
    1c10:	2f84a783          	lw	a5,760(s1) # 52f8 <f_putchar>
    1c14:	01651a63          	bne	a0,s6,1c28 <printf+0x128>
    1c18:	00c12703          	lw	a4,12(sp)
    1c1c:	00072503          	lw	a0,0(a4)
    1c20:	00470693          	addi	a3,a4,4
    1c24:	00d12623          	sw	a3,12(sp)
    1c28:	000780e7          	jalr	a5
    1c2c:	f99ff06f          	j	1bc4 <printf+0xc4>
    1c30:	2f84a783          	lw	a5,760(s1)
    1c34:	000780e7          	jalr	a5
    1c38:	f91ff06f          	j	1bc8 <printf+0xc8>

00001c3c <__mulsi3>:
    1c3c:	00050793          	mv	a5,a0
    1c40:	00000513          	li	a0,0
    1c44:	00079463          	bnez	a5,1c4c <__mulsi3+0x10>
    1c48:	00008067          	ret
    1c4c:	01f79693          	slli	a3,a5,0x1f
    1c50:	41f6d713          	srai	a4,a3,0x1f
    1c54:	00b77733          	and	a4,a4,a1
    1c58:	00e50533          	add	a0,a0,a4
    1c5c:	0017d793          	srli	a5,a5,0x1
    1c60:	00159593          	slli	a1,a1,0x1
    1c64:	fe1ff06f          	j	1c44 <__mulsi3+0x8>

00001c68 <fat_list_insert_last>:
    1c68:	00452783          	lw	a5,4(a0)
    1c6c:	04079263          	bnez	a5,1cb0 <fat_list_insert_last+0x48>
    1c70:	00052783          	lw	a5,0(a0)
    1c74:	00079c63          	bnez	a5,1c8c <fat_list_insert_last+0x24>
    1c78:	00b52023          	sw	a1,0(a0)
    1c7c:	00b52223          	sw	a1,4(a0)
    1c80:	0005a023          	sw	zero,0(a1)
    1c84:	0005a223          	sw	zero,4(a1)
    1c88:	00008067          	ret
    1c8c:	0007a703          	lw	a4,0(a5)
    1c90:	00f5a223          	sw	a5,4(a1)
    1c94:	00e5a023          	sw	a4,0(a1)
    1c98:	00071863          	bnez	a4,1ca8 <fat_list_insert_last+0x40>
    1c9c:	00b52023          	sw	a1,0(a0)
    1ca0:	00b7a023          	sw	a1,0(a5)
    1ca4:	00008067          	ret
    1ca8:	00b72223          	sw	a1,4(a4)
    1cac:	ff5ff06f          	j	1ca0 <fat_list_insert_last+0x38>
    1cb0:	0047a703          	lw	a4,4(a5)
    1cb4:	00f5a023          	sw	a5,0(a1)
    1cb8:	00e5a223          	sw	a4,4(a1)
    1cbc:	00071863          	bnez	a4,1ccc <fat_list_insert_last+0x64>
    1cc0:	00b52223          	sw	a1,4(a0)
    1cc4:	00b7a223          	sw	a1,4(a5)
    1cc8:	00008067          	ret
    1ccc:	00b72023          	sw	a1,0(a4)
    1cd0:	ff5ff06f          	j	1cc4 <fat_list_insert_last+0x5c>

00001cd4 <FileString_StrCmpNoCase>:
    1cd4:	00050e93          	mv	t4,a0
    1cd8:	00000793          	li	a5,0
    1cdc:	01900e13          	li	t3,25
    1ce0:	00c79663          	bne	a5,a2,1cec <FileString_StrCmpNoCase+0x18>
    1ce4:	00000513          	li	a0,0
    1ce8:	00008067          	ret
    1cec:	00fe8733          	add	a4,t4,a5
    1cf0:	00074803          	lbu	a6,0(a4)
    1cf4:	00f58733          	add	a4,a1,a5
    1cf8:	00074883          	lbu	a7,0(a4)
    1cfc:	fbf80713          	addi	a4,a6,-65
    1d00:	0ff77713          	zext.b	a4,a4
    1d04:	00080693          	mv	a3,a6
    1d08:	00ee6663          	bltu	t3,a4,1d14 <FileString_StrCmpNoCase+0x40>
    1d0c:	02080693          	addi	a3,a6,32
    1d10:	0ff6f693          	zext.b	a3,a3
    1d14:	fbf88313          	addi	t1,a7,-65
    1d18:	0ff37313          	zext.b	t1,t1
    1d1c:	00088713          	mv	a4,a7
    1d20:	006e6663          	bltu	t3,t1,1d2c <FileString_StrCmpNoCase+0x58>
    1d24:	02088713          	addi	a4,a7,32
    1d28:	0ff77713          	zext.b	a4,a4
    1d2c:	40e68533          	sub	a0,a3,a4
    1d30:	00e69863          	bne	a3,a4,1d40 <FileString_StrCmpNoCase+0x6c>
    1d34:	00178793          	addi	a5,a5,1
    1d38:	00088463          	beqz	a7,1d40 <FileString_StrCmpNoCase+0x6c>
    1d3c:	fa0812e3          	bnez	a6,1ce0 <FileString_StrCmpNoCase+0xc>
    1d40:	00008067          	ret

00001d44 <FileString_GetExtension>:
    1d44:	00050793          	mv	a5,a0
    1d48:	fff00713          	li	a4,-1
    1d4c:	02e00613          	li	a2,46
    1d50:	0007c683          	lbu	a3,0(a5)
    1d54:	00069663          	bnez	a3,1d60 <FileString_GetExtension+0x1c>
    1d58:	00070513          	mv	a0,a4
    1d5c:	00008067          	ret
    1d60:	00c69463          	bne	a3,a2,1d68 <FileString_GetExtension+0x24>
    1d64:	40a78733          	sub	a4,a5,a0
    1d68:	00178793          	addi	a5,a5,1
    1d6c:	fe5ff06f          	j	1d50 <FileString_GetExtension+0xc>

00001d70 <fatfs_fat_writeback>:
    1d70:	00059e63          	bnez	a1,1d8c <fatfs_fat_writeback+0x1c>
    1d74:	00000513          	li	a0,0
    1d78:	00008067          	ret
    1d7c:	00000513          	li	a0,0
    1d80:	01c12083          	lw	ra,28(sp)
    1d84:	02010113          	addi	sp,sp,32
    1d88:	00008067          	ret
    1d8c:	2045a783          	lw	a5,516(a1)
    1d90:	04078e63          	beqz	a5,1dec <fatfs_fat_writeback+0x7c>
    1d94:	03852683          	lw	a3,56(a0)
    1d98:	00050793          	mv	a5,a0
    1d9c:	04068663          	beqz	a3,1de8 <fatfs_fat_writeback+0x78>
    1da0:	0147a703          	lw	a4,20(a5)
    1da4:	2005a503          	lw	a0,512(a1)
    1da8:	0207a803          	lw	a6,32(a5)
    1dac:	00100613          	li	a2,1
    1db0:	fe010113          	addi	sp,sp,-32
    1db4:	40e607b3          	sub	a5,a2,a4
    1db8:	00112e23          	sw	ra,28(sp)
    1dbc:	00a787b3          	add	a5,a5,a0
    1dc0:	00f87663          	bgeu	a6,a5,1dcc <fatfs_fat_writeback+0x5c>
    1dc4:	01070733          	add	a4,a4,a6
    1dc8:	40a70633          	sub	a2,a4,a0
    1dcc:	00b12623          	sw	a1,12(sp)
    1dd0:	000680e7          	jalr	a3
    1dd4:	fa0504e3          	beqz	a0,1d7c <fatfs_fat_writeback+0xc>
    1dd8:	00c12583          	lw	a1,12(sp)
    1ddc:	00100513          	li	a0,1
    1de0:	2005a223          	sw	zero,516(a1)
    1de4:	f9dff06f          	j	1d80 <fatfs_fat_writeback+0x10>
    1de8:	2005a223          	sw	zero,516(a1)
    1dec:	00100513          	li	a0,1
    1df0:	00008067          	ret

00001df4 <fatfs_fat_read_sector>:
    1df4:	fe010113          	addi	sp,sp,-32
    1df8:	01212823          	sw	s2,16(sp)
    1dfc:	25452903          	lw	s2,596(a0)
    1e00:	00812c23          	sw	s0,24(sp)
    1e04:	00112e23          	sw	ra,28(sp)
    1e08:	00912a23          	sw	s1,20(sp)
    1e0c:	01312623          	sw	s3,12(sp)
    1e10:	00000413          	li	s0,0
    1e14:	04091463          	bnez	s2,1e5c <fatfs_fat_read_sector+0x68>
    1e18:	25452783          	lw	a5,596(a0)
    1e1c:	00058493          	mv	s1,a1
    1e20:	00050993          	mv	s3,a0
    1e24:	20f42623          	sw	a5,524(s0)
    1e28:	20442783          	lw	a5,516(s0)
    1e2c:	24852a23          	sw	s0,596(a0)
    1e30:	08079863          	bnez	a5,1ec0 <fatfs_fat_read_sector+0xcc>
    1e34:	0349a783          	lw	a5,52(s3)
    1e38:	20942023          	sw	s1,512(s0)
    1e3c:	00100613          	li	a2,1
    1e40:	00040593          	mv	a1,s0
    1e44:	00048513          	mv	a0,s1
    1e48:	000780e7          	jalr	a5
    1e4c:	08051463          	bnez	a0,1ed4 <fatfs_fat_read_sector+0xe0>
    1e50:	fff00793          	li	a5,-1
    1e54:	20f42023          	sw	a5,512(s0)
    1e58:	0480006f          	j	1ea0 <fatfs_fat_read_sector+0xac>
    1e5c:	20092783          	lw	a5,512(s2)
    1e60:	00f5e663          	bltu	a1,a5,1e6c <fatfs_fat_read_sector+0x78>
    1e64:	00178713          	addi	a4,a5,1
    1e68:	02e5e463          	bltu	a1,a4,1e90 <fatfs_fat_read_sector+0x9c>
    1e6c:	20c92783          	lw	a5,524(s2)
    1e70:	00079663          	bnez	a5,1e7c <fatfs_fat_read_sector+0x88>
    1e74:	00040a63          	beqz	s0,1e88 <fatfs_fat_read_sector+0x94>
    1e78:	20042623          	sw	zero,524(s0)
    1e7c:	00090413          	mv	s0,s2
    1e80:	20c92903          	lw	s2,524(s2)
    1e84:	f91ff06f          	j	1e14 <fatfs_fat_read_sector+0x20>
    1e88:	24052a23          	sw	zero,596(a0)
    1e8c:	ff1ff06f          	j	1e7c <fatfs_fat_read_sector+0x88>
    1e90:	40f585b3          	sub	a1,a1,a5
    1e94:	00959593          	slli	a1,a1,0x9
    1e98:	00b905b3          	add	a1,s2,a1
    1e9c:	20b92423          	sw	a1,520(s2)
    1ea0:	01c12083          	lw	ra,28(sp)
    1ea4:	01812403          	lw	s0,24(sp)
    1ea8:	01412483          	lw	s1,20(sp)
    1eac:	00c12983          	lw	s3,12(sp)
    1eb0:	00090513          	mv	a0,s2
    1eb4:	01012903          	lw	s2,16(sp)
    1eb8:	02010113          	addi	sp,sp,32
    1ebc:	00008067          	ret
    1ec0:	00040593          	mv	a1,s0
    1ec4:	00000097          	auipc	ra,0x0
    1ec8:	eac080e7          	jalr	-340(ra) # 1d70 <fatfs_fat_writeback>
    1ecc:	f60514e3          	bnez	a0,1e34 <fatfs_fat_read_sector+0x40>
    1ed0:	fd1ff06f          	j	1ea0 <fatfs_fat_read_sector+0xac>
    1ed4:	20842423          	sw	s0,520(s0)
    1ed8:	00040913          	mv	s2,s0
    1edc:	fc5ff06f          	j	1ea0 <fatfs_fat_read_sector+0xac>

00001ee0 <_allocate_file>:
    1ee0:	000057b7          	lui	a5,0x5
    1ee4:	2fc78793          	addi	a5,a5,764 # 52fc <_free_file_list>
    1ee8:	0007a583          	lw	a1,0(a5)
    1eec:	06058263          	beqz	a1,1f50 <_allocate_file+0x70>
    1ef0:	0005a703          	lw	a4,0(a1)
    1ef4:	fe010113          	addi	sp,sp,-32
    1ef8:	00112e23          	sw	ra,28(sp)
    1efc:	0045a683          	lw	a3,4(a1)
    1f00:	04071063          	bnez	a4,1f40 <_allocate_file+0x60>
    1f04:	00d7a023          	sw	a3,0(a5)
    1f08:	0045a683          	lw	a3,4(a1)
    1f0c:	02069e63          	bnez	a3,1f48 <_allocate_file+0x68>
    1f10:	00e7a223          	sw	a4,4(a5)
    1f14:	00005537          	lui	a0,0x5
    1f18:	30450513          	addi	a0,a0,772 # 5304 <_open_file_list>
    1f1c:	00b12623          	sw	a1,12(sp)
    1f20:	00000097          	auipc	ra,0x0
    1f24:	d48080e7          	jalr	-696(ra) # 1c68 <fat_list_insert_last>
    1f28:	00c12583          	lw	a1,12(sp)
    1f2c:	01c12083          	lw	ra,28(sp)
    1f30:	bc458593          	addi	a1,a1,-1084
    1f34:	00058513          	mv	a0,a1
    1f38:	02010113          	addi	sp,sp,32
    1f3c:	00008067          	ret
    1f40:	00d72223          	sw	a3,4(a4)
    1f44:	fc5ff06f          	j	1f08 <_allocate_file+0x28>
    1f48:	00e6a023          	sw	a4,0(a3)
    1f4c:	fc9ff06f          	j	1f14 <_allocate_file+0x34>
    1f50:	00058513          	mv	a0,a1
    1f54:	00008067          	ret

00001f58 <_free_file>:
    1f58:	43c52783          	lw	a5,1084(a0)
    1f5c:	44052703          	lw	a4,1088(a0)
    1f60:	43c50593          	addi	a1,a0,1084
    1f64:	02079663          	bnez	a5,1f90 <_free_file+0x38>
    1f68:	000056b7          	lui	a3,0x5
    1f6c:	30e6a223          	sw	a4,772(a3) # 5304 <_open_file_list>
    1f70:	44052703          	lw	a4,1088(a0)
    1f74:	02071263          	bnez	a4,1f98 <_free_file+0x40>
    1f78:	00005737          	lui	a4,0x5
    1f7c:	30f72423          	sw	a5,776(a4) # 5308 <_open_file_list+0x4>
    1f80:	00005537          	lui	a0,0x5
    1f84:	2fc50513          	addi	a0,a0,764 # 52fc <_free_file_list>
    1f88:	00000317          	auipc	t1,0x0
    1f8c:	ce030067          	jr	-800(t1) # 1c68 <fat_list_insert_last>
    1f90:	00e7a223          	sw	a4,4(a5)
    1f94:	fddff06f          	j	1f70 <_free_file+0x18>
    1f98:	00f72023          	sw	a5,0(a4)
    1f9c:	fe5ff06f          	j	1f80 <_free_file+0x28>

00001fa0 <fatfs_lba_of_cluster>:
    1fa0:	ff010113          	addi	sp,sp,-16
    1fa4:	00812423          	sw	s0,8(sp)
    1fa8:	00112623          	sw	ra,12(sp)
    1fac:	00050413          	mv	s0,a0
    1fb0:	ffe58513          	addi	a0,a1,-2
    1fb4:	00044583          	lbu	a1,0(s0)
    1fb8:	00000097          	auipc	ra,0x0
    1fbc:	c84080e7          	jalr	-892(ra) # 1c3c <__mulsi3>
    1fc0:	00442783          	lw	a5,4(s0)
    1fc4:	00f50533          	add	a0,a0,a5
    1fc8:	03042783          	lw	a5,48(s0)
    1fcc:	00079863          	bnez	a5,1fdc <fatfs_lba_of_cluster+0x3c>
    1fd0:	02845783          	lhu	a5,40(s0)
    1fd4:	4047d793          	srai	a5,a5,0x4
    1fd8:	00f50533          	add	a0,a0,a5
    1fdc:	00c12083          	lw	ra,12(sp)
    1fe0:	00812403          	lw	s0,8(sp)
    1fe4:	01010113          	addi	sp,sp,16
    1fe8:	00008067          	ret

00001fec <fatfs_sector_read>:
    1fec:	03452783          	lw	a5,52(a0)
    1ff0:	00058713          	mv	a4,a1
    1ff4:	00070513          	mv	a0,a4
    1ff8:	00060593          	mv	a1,a2
    1ffc:	00068613          	mv	a2,a3
    2000:	00078067          	jr	a5

00002004 <fatfs_sector_write>:
    2004:	03852783          	lw	a5,56(a0)
    2008:	00058713          	mv	a4,a1
    200c:	00070513          	mv	a0,a4
    2010:	00060593          	mv	a1,a2
    2014:	00068613          	mv	a2,a3
    2018:	00078067          	jr	a5

0000201c <fatfs_write_sector>:
    201c:	03852703          	lw	a4,56(a0)
    2020:	0a070463          	beqz	a4,20c8 <fatfs_write_sector+0xac>
    2024:	03052883          	lw	a7,48(a0)
    2028:	00050793          	mv	a5,a0
    202c:	0115e833          	or	a6,a1,a7
    2030:	02081e63          	bnez	a6,206c <fatfs_write_sector+0x50>
    2034:	01052583          	lw	a1,16(a0)
    2038:	08b67863          	bgeu	a2,a1,20c8 <fatfs_write_sector+0xac>
    203c:	01c52503          	lw	a0,28(a0)
    2040:	00c7a583          	lw	a1,12(a5)
    2044:	00b50533          	add	a0,a0,a1
    2048:	00c50533          	add	a0,a0,a2
    204c:	00068863          	beqz	a3,205c <fatfs_write_sector+0x40>
    2050:	00100613          	li	a2,1
    2054:	00068593          	mv	a1,a3
    2058:	00070067          	jr	a4
    205c:	24a7a223          	sw	a0,580(a5)
    2060:	00100613          	li	a2,1
    2064:	04478593          	addi	a1,a5,68
    2068:	ff1ff06f          	j	2058 <fatfs_write_sector+0x3c>
    206c:	fe010113          	addi	sp,sp,-32
    2070:	00e12623          	sw	a4,12(sp)
    2074:	00d12423          	sw	a3,8(sp)
    2078:	00c12223          	sw	a2,4(sp)
    207c:	00112e23          	sw	ra,28(sp)
    2080:	00a12023          	sw	a0,0(sp)
    2084:	00000097          	auipc	ra,0x0
    2088:	f1c080e7          	jalr	-228(ra) # 1fa0 <fatfs_lba_of_cluster>
    208c:	00412603          	lw	a2,4(sp)
    2090:	00812683          	lw	a3,8(sp)
    2094:	00012783          	lw	a5,0(sp)
    2098:	00c12703          	lw	a4,12(sp)
    209c:	00a60533          	add	a0,a2,a0
    20a0:	00068c63          	beqz	a3,20b8 <fatfs_write_sector+0x9c>
    20a4:	00100613          	li	a2,1
    20a8:	00068593          	mv	a1,a3
    20ac:	01c12083          	lw	ra,28(sp)
    20b0:	02010113          	addi	sp,sp,32
    20b4:	fa5ff06f          	j	2058 <fatfs_write_sector+0x3c>
    20b8:	24a7a223          	sw	a0,580(a5)
    20bc:	00100613          	li	a2,1
    20c0:	04478593          	addi	a1,a5,68
    20c4:	fe9ff06f          	j	20ac <fatfs_write_sector+0x90>
    20c8:	00000513          	li	a0,0
    20cc:	00008067          	ret

000020d0 <fl_init>:
    20d0:	ff010113          	addi	sp,sp,-16
    20d4:	00005537          	lui	a0,0x5
    20d8:	000057b7          	lui	a5,0x5
    20dc:	0000a5b7          	lui	a1,0xa
    20e0:	00112623          	sw	ra,12(sp)
    20e4:	2fc50513          	addi	a0,a0,764 # 52fc <_free_file_list>
    20e8:	30478793          	addi	a5,a5,772 # 5304 <_open_file_list>
    20ec:	f8058593          	addi	a1,a1,-128 # 9f80 <_files+0x43c>
    20f0:	00052223          	sw	zero,4(a0)
    20f4:	00052023          	sw	zero,0(a0)
    20f8:	0007a223          	sw	zero,4(a5)
    20fc:	0007a023          	sw	zero,0(a5)
    2100:	00000097          	auipc	ra,0x0
    2104:	b68080e7          	jalr	-1176(ra) # 1c68 <fat_list_insert_last>
    2108:	000057b7          	lui	a5,0x5
    210c:	0000a5b7          	lui	a1,0xa
    2110:	2fc78513          	addi	a0,a5,764 # 52fc <_free_file_list>
    2114:	3c458593          	addi	a1,a1,964 # a3c4 <_files+0x880>
    2118:	00000097          	auipc	ra,0x0
    211c:	b50080e7          	jalr	-1200(ra) # 1c68 <fat_list_insert_last>
    2120:	00c12083          	lw	ra,12(sp)
    2124:	000057b7          	lui	a5,0x5
    2128:	00100713          	li	a4,1
    212c:	30e7a823          	sw	a4,784(a5) # 5310 <_filelib_init>
    2130:	01010113          	addi	sp,sp,16
    2134:	00008067          	ret

00002138 <fl_closedir>:
    2138:	00000513          	li	a0,0
    213c:	00008067          	ret

00002140 <fatfs_lfn_cache_entry>:
    2140:	0005c783          	lbu	a5,0(a1)
    2144:	01300693          	li	a3,19
    2148:	01f7f793          	andi	a5,a5,31
    214c:	fff78713          	addi	a4,a5,-1
    2150:	0ff77613          	zext.b	a2,a4
    2154:	0ac6ea63          	bltu	a3,a2,2208 <fatfs_lfn_cache_entry+0xc8>
    2158:	10554683          	lbu	a3,261(a0)
    215c:	00069463          	bnez	a3,2164 <fatfs_lfn_cache_entry+0x24>
    2160:	10f502a3          	sb	a5,261(a0)
    2164:	00171793          	slli	a5,a4,0x1
    2168:	00e787b3          	add	a5,a5,a4
    216c:	0015c683          	lbu	a3,1(a1)
    2170:	00279793          	slli	a5,a5,0x2
    2174:	00e787b3          	add	a5,a5,a4
    2178:	00f50533          	add	a0,a0,a5
    217c:	00d50023          	sb	a3,0(a0)
    2180:	0035c783          	lbu	a5,3(a1)
    2184:	0ff00713          	li	a4,255
    2188:	02000693          	li	a3,32
    218c:	00f500a3          	sb	a5,1(a0)
    2190:	0055c783          	lbu	a5,5(a1)
    2194:	00f50123          	sb	a5,2(a0)
    2198:	0075c783          	lbu	a5,7(a1)
    219c:	00f501a3          	sb	a5,3(a0)
    21a0:	0095c783          	lbu	a5,9(a1)
    21a4:	00f50223          	sb	a5,4(a0)
    21a8:	00e5c783          	lbu	a5,14(a1)
    21ac:	00f502a3          	sb	a5,5(a0)
    21b0:	0105c783          	lbu	a5,16(a1)
    21b4:	00f50323          	sb	a5,6(a0)
    21b8:	0125c783          	lbu	a5,18(a1)
    21bc:	00f503a3          	sb	a5,7(a0)
    21c0:	0145c783          	lbu	a5,20(a1)
    21c4:	00f50423          	sb	a5,8(a0)
    21c8:	0165c783          	lbu	a5,22(a1)
    21cc:	00f504a3          	sb	a5,9(a0)
    21d0:	0185c783          	lbu	a5,24(a1)
    21d4:	00f50523          	sb	a5,10(a0)
    21d8:	01c5c783          	lbu	a5,28(a1)
    21dc:	00f505a3          	sb	a5,11(a0)
    21e0:	01e5c783          	lbu	a5,30(a1)
    21e4:	00f50623          	sb	a5,12(a0)
    21e8:	00d00793          	li	a5,13
    21ec:	00054603          	lbu	a2,0(a0)
    21f0:	00e61463          	bne	a2,a4,21f8 <fatfs_lfn_cache_entry+0xb8>
    21f4:	00d50023          	sb	a3,0(a0)
    21f8:	fff78793          	addi	a5,a5,-1
    21fc:	0ff7f793          	zext.b	a5,a5
    2200:	00150513          	addi	a0,a0,1
    2204:	fe0794e3          	bnez	a5,21ec <fatfs_lfn_cache_entry+0xac>
    2208:	00008067          	ret

0000220c <fatfs_lfn_cache_get>:
    220c:	10554703          	lbu	a4,261(a0)
    2210:	01400793          	li	a5,20
    2214:	00f71663          	bne	a4,a5,2220 <fatfs_lfn_cache_get+0x14>
    2218:	10050223          	sb	zero,260(a0)
    221c:	00008067          	ret
    2220:	02070063          	beqz	a4,2240 <fatfs_lfn_cache_get+0x34>
    2224:	00171793          	slli	a5,a4,0x1
    2228:	00e787b3          	add	a5,a5,a4
    222c:	00279793          	slli	a5,a5,0x2
    2230:	00e787b3          	add	a5,a5,a4
    2234:	00f507b3          	add	a5,a0,a5
    2238:	00078023          	sb	zero,0(a5)
    223c:	00008067          	ret
    2240:	00050023          	sb	zero,0(a0)
    2244:	00008067          	ret

00002248 <fatfs_entry_lfn_text>:
    2248:	00b54503          	lbu	a0,11(a0)
    224c:	00f57513          	andi	a0,a0,15
    2250:	ff150513          	addi	a0,a0,-15
    2254:	00153513          	seqz	a0,a0
    2258:	00008067          	ret

0000225c <fatfs_entry_lfn_invalid>:
    225c:	00054783          	lbu	a5,0(a0)
    2260:	f1b78713          	addi	a4,a5,-229
    2264:	02070263          	beqz	a4,2288 <fatfs_entry_lfn_invalid+0x2c>
    2268:	02078063          	beqz	a5,2288 <fatfs_entry_lfn_invalid+0x2c>
    226c:	00b54783          	lbu	a5,11(a0)
    2270:	00800713          	li	a4,8
    2274:	00100513          	li	a0,1
    2278:	00e78a63          	beq	a5,a4,228c <fatfs_entry_lfn_invalid+0x30>
    227c:	0067f793          	andi	a5,a5,6
    2280:	00f03533          	snez	a0,a5
    2284:	00008067          	ret
    2288:	00100513          	li	a0,1
    228c:	00008067          	ret

00002290 <fatfs_entry_lfn_exists>:
    2290:	00b5c783          	lbu	a5,11(a1)
    2294:	00f00713          	li	a4,15
    2298:	04e78063          	beq	a5,a4,22d8 <fatfs_entry_lfn_exists+0x48>
    229c:	0005c683          	lbu	a3,0(a1)
    22a0:	f1b68713          	addi	a4,a3,-229
    22a4:	00e03733          	snez	a4,a4
    22a8:	00d036b3          	snez	a3,a3
    22ac:	00d77733          	and	a4,a4,a3
    22b0:	02070463          	beqz	a4,22d8 <fatfs_entry_lfn_exists+0x48>
    22b4:	ff878713          	addi	a4,a5,-8
    22b8:	02070063          	beqz	a4,22d8 <fatfs_entry_lfn_exists+0x48>
    22bc:	0067f713          	andi	a4,a5,6
    22c0:	00000793          	li	a5,0
    22c4:	00071663          	bnez	a4,22d0 <fatfs_entry_lfn_exists+0x40>
    22c8:	10554783          	lbu	a5,261(a0)
    22cc:	00f037b3          	snez	a5,a5
    22d0:	00078513          	mv	a0,a5
    22d4:	00008067          	ret
    22d8:	00000793          	li	a5,0
    22dc:	ff5ff06f          	j	22d0 <fatfs_entry_lfn_exists+0x40>

000022e0 <fatfs_entry_sfn_only>:
    22e0:	00b54783          	lbu	a5,11(a0)
    22e4:	00f00713          	li	a4,15
    22e8:	02e78863          	beq	a5,a4,2318 <fatfs_entry_sfn_only+0x38>
    22ec:	00054683          	lbu	a3,0(a0)
    22f0:	f1b68713          	addi	a4,a3,-229
    22f4:	00e03733          	snez	a4,a4
    22f8:	00d036b3          	snez	a3,a3
    22fc:	00d77733          	and	a4,a4,a3
    2300:	00070c63          	beqz	a4,2318 <fatfs_entry_sfn_only+0x38>
    2304:	ff878713          	addi	a4,a5,-8
    2308:	00070863          	beqz	a4,2318 <fatfs_entry_sfn_only+0x38>
    230c:	0067f513          	andi	a0,a5,6
    2310:	00153513          	seqz	a0,a0
    2314:	00008067          	ret
    2318:	00000513          	li	a0,0
    231c:	00008067          	ret

00002320 <fatfs_entry_is_dir>:
    2320:	00b54503          	lbu	a0,11(a0)
    2324:	00455513          	srli	a0,a0,0x4
    2328:	00157513          	andi	a0,a0,1
    232c:	00008067          	ret

00002330 <fatfs_lfn_entries_required>:
    2330:	ff010113          	addi	sp,sp,-16
    2334:	00112623          	sw	ra,12(sp)
    2338:	fffff097          	auipc	ra,0xfffff
    233c:	2cc080e7          	jalr	716(ra) # 1604 <strlen>
    2340:	00050a63          	beqz	a0,2354 <fatfs_lfn_entries_required+0x24>
    2344:	00d00593          	li	a1,13
    2348:	00c50513          	addi	a0,a0,12
    234c:	fffff097          	auipc	ra,0xfffff
    2350:	1c4080e7          	jalr	452(ra) # 1510 <__divsi3>
    2354:	00c12083          	lw	ra,12(sp)
    2358:	01010113          	addi	sp,sp,16
    235c:	00008067          	ret

00002360 <fatfs_filename_to_lfn>:
    2360:	f9010113          	addi	sp,sp,-112
    2364:	06812423          	sw	s0,104(sp)
    2368:	00058413          	mv	s0,a1
    236c:	000055b7          	lui	a1,0x5
    2370:	29458593          	addi	a1,a1,660 # 5294 <font+0x1e0>
    2374:	06912223          	sw	s1,100(sp)
    2378:	05312e23          	sw	s3,92(sp)
    237c:	00060493          	mv	s1,a2
    2380:	00050993          	mv	s3,a0
    2384:	03400613          	li	a2,52
    2388:	01c10513          	addi	a0,sp,28
    238c:	00d12623          	sw	a3,12(sp)
    2390:	06112623          	sw	ra,108(sp)
    2394:	07212023          	sw	s2,96(sp)
    2398:	05412c23          	sw	s4,88(sp)
    239c:	fffff097          	auipc	ra,0xfffff
    23a0:	244080e7          	jalr	580(ra) # 15e0 <memcpy>
    23a4:	00098513          	mv	a0,s3
    23a8:	fffff097          	auipc	ra,0xfffff
    23ac:	25c080e7          	jalr	604(ra) # 1604 <strlen>
    23b0:	00050913          	mv	s2,a0
    23b4:	00098513          	mv	a0,s3
    23b8:	00000097          	auipc	ra,0x0
    23bc:	f78080e7          	jalr	-136(ra) # 2330 <fatfs_lfn_entries_required>
    23c0:	00050a13          	mv	s4,a0
    23c4:	02000613          	li	a2,32
    23c8:	00000593          	li	a1,0
    23cc:	00040513          	mv	a0,s0
    23d0:	fffff097          	auipc	ra,0xfffff
    23d4:	1f4080e7          	jalr	500(ra) # 15c4 <memset>
    23d8:	fffa0713          	addi	a4,s4,-1
    23dc:	00c12683          	lw	a3,12(sp)
    23e0:	00148793          	addi	a5,s1,1
    23e4:	00971463          	bne	a4,s1,23ec <fatfs_filename_to_lfn+0x8c>
    23e8:	0407e793          	ori	a5,a5,64
    23ec:	00149613          	slli	a2,s1,0x1
    23f0:	00960633          	add	a2,a2,s1
    23f4:	00f40023          	sb	a5,0(s0)
    23f8:	00261613          	slli	a2,a2,0x2
    23fc:	00f00793          	li	a5,15
    2400:	00f405a3          	sb	a5,11(s0)
    2404:	00d406a3          	sb	a3,13(s0)
    2408:	01c10793          	addi	a5,sp,28
    240c:	00960633          	add	a2,a2,s1
    2410:	fff00693          	li	a3,-1
    2414:	0007a703          	lw	a4,0(a5)
    2418:	00e40733          	add	a4,s0,a4
    241c:	05265063          	bge	a2,s2,245c <fatfs_filename_to_lfn+0xfc>
    2420:	00c985b3          	add	a1,s3,a2
    2424:	0005c583          	lbu	a1,0(a1)
    2428:	00b70023          	sb	a1,0(a4)
    242c:	00478793          	addi	a5,a5,4
    2430:	05010713          	addi	a4,sp,80
    2434:	00160613          	addi	a2,a2,1
    2438:	fce79ee3          	bne	a5,a4,2414 <fatfs_filename_to_lfn+0xb4>
    243c:	06c12083          	lw	ra,108(sp)
    2440:	06812403          	lw	s0,104(sp)
    2444:	06412483          	lw	s1,100(sp)
    2448:	06012903          	lw	s2,96(sp)
    244c:	05c12983          	lw	s3,92(sp)
    2450:	05812a03          	lw	s4,88(sp)
    2454:	07010113          	addi	sp,sp,112
    2458:	00008067          	ret
    245c:	01261663          	bne	a2,s2,2468 <fatfs_filename_to_lfn+0x108>
    2460:	00070023          	sb	zero,0(a4)
    2464:	fc9ff06f          	j	242c <fatfs_filename_to_lfn+0xcc>
    2468:	00d70023          	sb	a3,0(a4)
    246c:	00d700a3          	sb	a3,1(a4)
    2470:	fbdff06f          	j	242c <fatfs_filename_to_lfn+0xcc>

00002474 <fatfs_sfn_create_entry>:
    2474:	00000793          	li	a5,0
    2478:	00b00813          	li	a6,11
    247c:	00f508b3          	add	a7,a0,a5
    2480:	0008c303          	lbu	t1,0(a7)
    2484:	00f688b3          	add	a7,a3,a5
    2488:	00178793          	addi	a5,a5,1
    248c:	00688023          	sb	t1,0(a7)
    2490:	ff0796e3          	bne	a5,a6,247c <fatfs_sfn_create_entry+0x8>
    2494:	00e03733          	snez	a4,a4
    2498:	40e00733          	neg	a4,a4
    249c:	02000793          	li	a5,32
    24a0:	ff077713          	andi	a4,a4,-16
    24a4:	00f70733          	add	a4,a4,a5
    24a8:	00f68823          	sb	a5,16(a3)
    24ac:	00f68923          	sb	a5,18(a3)
    24b0:	00f68c23          	sb	a5,24(a3)
    24b4:	01065793          	srli	a5,a2,0x10
    24b8:	00f68a23          	sb	a5,20(a3)
    24bc:	01865793          	srli	a5,a2,0x18
    24c0:	00f68aa3          	sb	a5,21(a3)
    24c4:	0085d793          	srli	a5,a1,0x8
    24c8:	00c68d23          	sb	a2,26(a3)
    24cc:	00b68e23          	sb	a1,28(a3)
    24d0:	00865613          	srli	a2,a2,0x8
    24d4:	00f68ea3          	sb	a5,29(a3)
    24d8:	0105d793          	srli	a5,a1,0x10
    24dc:	0185d593          	srli	a1,a1,0x18
    24e0:	000686a3          	sb	zero,13(a3)
    24e4:	00068723          	sb	zero,14(a3)
    24e8:	000687a3          	sb	zero,15(a3)
    24ec:	000688a3          	sb	zero,17(a3)
    24f0:	000689a3          	sb	zero,19(a3)
    24f4:	00068b23          	sb	zero,22(a3)
    24f8:	00068ba3          	sb	zero,23(a3)
    24fc:	00068ca3          	sb	zero,25(a3)
    2500:	00e685a3          	sb	a4,11(a3)
    2504:	00068623          	sb	zero,12(a3)
    2508:	00c68da3          	sb	a2,27(a3)
    250c:	00f68f23          	sb	a5,30(a3)
    2510:	00b68fa3          	sb	a1,31(a3)
    2514:	00008067          	ret

00002518 <fatfs_lfn_create_sfn>:
    2518:	fd010113          	addi	sp,sp,-48
    251c:	02912223          	sw	s1,36(sp)
    2520:	00050493          	mv	s1,a0
    2524:	00058513          	mv	a0,a1
    2528:	02812423          	sw	s0,40(sp)
    252c:	01312e23          	sw	s3,28(sp)
    2530:	00058413          	mv	s0,a1
    2534:	02112623          	sw	ra,44(sp)
    2538:	03212023          	sw	s2,32(sp)
    253c:	fffff097          	auipc	ra,0xfffff
    2540:	0c8080e7          	jalr	200(ra) # 1604 <strlen>
    2544:	00044783          	lbu	a5,0(s0)
    2548:	02e00993          	li	s3,46
    254c:	15378063          	beq	a5,s3,268c <fatfs_lfn_create_sfn+0x174>
    2550:	00b00613          	li	a2,11
    2554:	02000593          	li	a1,32
    2558:	00050913          	mv	s2,a0
    255c:	00048513          	mv	a0,s1
    2560:	fffff097          	auipc	ra,0xfffff
    2564:	064080e7          	jalr	100(ra) # 15c4 <memset>
    2568:	00300613          	li	a2,3
    256c:	02000593          	li	a1,32
    2570:	00c10513          	addi	a0,sp,12
    2574:	fffff097          	auipc	ra,0xfffff
    2578:	050080e7          	jalr	80(ra) # 15c4 <memset>
    257c:	fff00793          	li	a5,-1
    2580:	00000713          	li	a4,0
    2584:	0d274263          	blt	a4,s2,2648 <fatfs_lfn_create_sfn+0x130>
    2588:	fff00713          	li	a4,-1
    258c:	0ee78863          	beq	a5,a4,267c <fatfs_lfn_create_sfn+0x164>
    2590:	00178713          	addi	a4,a5,1
    2594:	00c10693          	addi	a3,sp,12
    2598:	00478613          	addi	a2,a5,4
    259c:	0ce61263          	bne	a2,a4,2660 <fatfs_lfn_create_sfn+0x148>
    25a0:	00000613          	li	a2,0
    25a4:	00000693          	li	a3,0
    25a8:	01900813          	li	a6,25
    25ac:	00800893          	li	a7,8
    25b0:	02f6de63          	bge	a3,a5,25ec <fatfs_lfn_create_sfn+0xd4>
    25b4:	00d40733          	add	a4,s0,a3
    25b8:	00074703          	lbu	a4,0(a4)
    25bc:	fe070513          	addi	a0,a4,-32
    25c0:	0c050263          	beqz	a0,2684 <fatfs_lfn_create_sfn+0x16c>
    25c4:	fd270593          	addi	a1,a4,-46
    25c8:	0a058e63          	beqz	a1,2684 <fatfs_lfn_create_sfn+0x16c>
    25cc:	f9f70593          	addi	a1,a4,-97
    25d0:	0ff5f593          	zext.b	a1,a1
    25d4:	00c48333          	add	t1,s1,a2
    25d8:	00160613          	addi	a2,a2,1
    25dc:	00b86463          	bltu	a6,a1,25e4 <fatfs_lfn_create_sfn+0xcc>
    25e0:	0ff57713          	zext.b	a4,a0
    25e4:	00e30023          	sb	a4,0(t1)
    25e8:	09161e63          	bne	a2,a7,2684 <fatfs_lfn_create_sfn+0x16c>
    25ec:	00c10793          	addi	a5,sp,12
    25f0:	00800693          	li	a3,8
    25f4:	01900513          	li	a0,25
    25f8:	00b00593          	li	a1,11
    25fc:	0007c703          	lbu	a4,0(a5)
    2600:	f9f70613          	addi	a2,a4,-97
    2604:	0ff67613          	zext.b	a2,a2
    2608:	00c56663          	bltu	a0,a2,2614 <fatfs_lfn_create_sfn+0xfc>
    260c:	fe070713          	addi	a4,a4,-32
    2610:	0ff77713          	zext.b	a4,a4
    2614:	00d48633          	add	a2,s1,a3
    2618:	00e60023          	sb	a4,0(a2)
    261c:	00168693          	addi	a3,a3,1
    2620:	00178793          	addi	a5,a5,1
    2624:	fcb69ce3          	bne	a3,a1,25fc <fatfs_lfn_create_sfn+0xe4>
    2628:	00100513          	li	a0,1
    262c:	02c12083          	lw	ra,44(sp)
    2630:	02812403          	lw	s0,40(sp)
    2634:	02412483          	lw	s1,36(sp)
    2638:	02012903          	lw	s2,32(sp)
    263c:	01c12983          	lw	s3,28(sp)
    2640:	03010113          	addi	sp,sp,48
    2644:	00008067          	ret
    2648:	00e406b3          	add	a3,s0,a4
    264c:	0006c683          	lbu	a3,0(a3)
    2650:	01369463          	bne	a3,s3,2658 <fatfs_lfn_create_sfn+0x140>
    2654:	00070793          	mv	a5,a4
    2658:	00170713          	addi	a4,a4,1
    265c:	f29ff06f          	j	2584 <fatfs_lfn_create_sfn+0x6c>
    2660:	01275863          	bge	a4,s2,2670 <fatfs_lfn_create_sfn+0x158>
    2664:	00e405b3          	add	a1,s0,a4
    2668:	0005c583          	lbu	a1,0(a1)
    266c:	00b68023          	sb	a1,0(a3)
    2670:	00170713          	addi	a4,a4,1
    2674:	00168693          	addi	a3,a3,1
    2678:	f25ff06f          	j	259c <fatfs_lfn_create_sfn+0x84>
    267c:	00090793          	mv	a5,s2
    2680:	f21ff06f          	j	25a0 <fatfs_lfn_create_sfn+0x88>
    2684:	00168693          	addi	a3,a3,1
    2688:	f29ff06f          	j	25b0 <fatfs_lfn_create_sfn+0x98>
    268c:	00000513          	li	a0,0
    2690:	f9dff06f          	j	262c <fatfs_lfn_create_sfn+0x114>

00002694 <fatfs_lfn_generate_tail>:
    2694:	000187b7          	lui	a5,0x18
    2698:	69f78793          	addi	a5,a5,1695 # 1869f <__stacktop+0x869f>
    269c:	16c7e463          	bltu	a5,a2,2804 <fatfs_lfn_generate_tail+0x170>
    26a0:	fa010113          	addi	sp,sp,-96
    26a4:	04812c23          	sw	s0,88(sp)
    26a8:	04912a23          	sw	s1,84(sp)
    26ac:	03712e23          	sw	s7,60(sp)
    26b0:	00060413          	mv	s0,a2
    26b4:	00058b93          	mv	s7,a1
    26b8:	00c00613          	li	a2,12
    26bc:	00000593          	li	a1,0
    26c0:	00050493          	mv	s1,a0
    26c4:	00410513          	addi	a0,sp,4
    26c8:	04112e23          	sw	ra,92(sp)
    26cc:	05312623          	sw	s3,76(sp)
    26d0:	05412423          	sw	s4,72(sp)
    26d4:	05612023          	sw	s6,64(sp)
    26d8:	05212823          	sw	s2,80(sp)
    26dc:	05512223          	sw	s5,68(sp)
    26e0:	fffff097          	auipc	ra,0xfffff
    26e4:	ee4080e7          	jalr	-284(ra) # 15c4 <memset>
    26e8:	000055b7          	lui	a1,0x5
    26ec:	07e00793          	li	a5,126
    26f0:	01100613          	li	a2,17
    26f4:	06c58593          	addi	a1,a1,108 # 506c <LEDS+0x94>
    26f8:	01c10513          	addi	a0,sp,28
    26fc:	01010993          	addi	s3,sp,16
    2700:	00f10223          	sb	a5,4(sp)
    2704:	00098a13          	mv	s4,s3
    2708:	fffff097          	auipc	ra,0xfffff
    270c:	ed8080e7          	jalr	-296(ra) # 15e0 <memcpy>
    2710:	00900b13          	li	s6,9
    2714:	00a00593          	li	a1,10
    2718:	00040513          	mv	a0,s0
    271c:	fffff097          	auipc	ra,0xfffff
    2720:	e44080e7          	jalr	-444(ra) # 1560 <__umodsi3>
    2724:	03050793          	addi	a5,a0,48
    2728:	00278533          	add	a0,a5,sp
    272c:	fec54783          	lbu	a5,-20(a0)
    2730:	00098913          	mv	s2,s3
    2734:	00040513          	mv	a0,s0
    2738:	00a00593          	li	a1,10
    273c:	00f98023          	sb	a5,0(s3)
    2740:	00040a93          	mv	s5,s0
    2744:	fffff097          	auipc	ra,0xfffff
    2748:	dd4080e7          	jalr	-556(ra) # 1518 <__udivsi3>
    274c:	00198993          	addi	s3,s3,1
    2750:	00050413          	mv	s0,a0
    2754:	fd5b60e3          	bltu	s6,s5,2714 <fatfs_lfn_generate_tail+0x80>
    2758:	00098023          	sb	zero,0(s3)
    275c:	00410713          	addi	a4,sp,4
    2760:	00090793          	mv	a5,s2
    2764:	0947f663          	bgeu	a5,s4,27f0 <fatfs_lfn_generate_tail+0x15c>
    2768:	00f10713          	addi	a4,sp,15
    276c:	00000793          	li	a5,0
    2770:	00e96663          	bltu	s2,a4,277c <fatfs_lfn_generate_tail+0xe8>
    2774:	41490933          	sub	s2,s2,s4
    2778:	00190793          	addi	a5,s2,1
    277c:	03078793          	addi	a5,a5,48
    2780:	002787b3          	add	a5,a5,sp
    2784:	000b8593          	mv	a1,s7
    2788:	fc078aa3          	sb	zero,-43(a5)
    278c:	00b00613          	li	a2,11
    2790:	00048513          	mv	a0,s1
    2794:	fffff097          	auipc	ra,0xfffff
    2798:	e4c080e7          	jalr	-436(ra) # 15e0 <memcpy>
    279c:	00410513          	addi	a0,sp,4
    27a0:	fffff097          	auipc	ra,0xfffff
    27a4:	e64080e7          	jalr	-412(ra) # 1604 <strlen>
    27a8:	40a484b3          	sub	s1,s1,a0
    27ac:	00050613          	mv	a2,a0
    27b0:	00410593          	addi	a1,sp,4
    27b4:	00848513          	addi	a0,s1,8
    27b8:	fffff097          	auipc	ra,0xfffff
    27bc:	e28080e7          	jalr	-472(ra) # 15e0 <memcpy>
    27c0:	05c12083          	lw	ra,92(sp)
    27c4:	05812403          	lw	s0,88(sp)
    27c8:	05412483          	lw	s1,84(sp)
    27cc:	05012903          	lw	s2,80(sp)
    27d0:	04c12983          	lw	s3,76(sp)
    27d4:	04812a03          	lw	s4,72(sp)
    27d8:	04412a83          	lw	s5,68(sp)
    27dc:	04012b03          	lw	s6,64(sp)
    27e0:	03c12b83          	lw	s7,60(sp)
    27e4:	00100513          	li	a0,1
    27e8:	06010113          	addi	sp,sp,96
    27ec:	00008067          	ret
    27f0:	0007c683          	lbu	a3,0(a5)
    27f4:	00170713          	addi	a4,a4,1
    27f8:	fff78793          	addi	a5,a5,-1
    27fc:	00d70023          	sb	a3,0(a4)
    2800:	f65ff06f          	j	2764 <fatfs_lfn_generate_tail+0xd0>
    2804:	00000513          	li	a0,0
    2808:	00008067          	ret

0000280c <fatfs_total_path_levels>:
    280c:	fff00793          	li	a5,-1
    2810:	06050263          	beqz	a0,2874 <fatfs_total_path_levels+0x68>
    2814:	00054703          	lbu	a4,0(a0)
    2818:	02f00793          	li	a5,47
    281c:	00f71863          	bne	a4,a5,282c <fatfs_total_path_levels+0x20>
    2820:	00150513          	addi	a0,a0,1
    2824:	00000793          	li	a5,0
    2828:	0400006f          	j	2868 <fatfs_total_path_levels+0x5c>
    282c:	00154703          	lbu	a4,1(a0)
    2830:	03a00793          	li	a5,58
    2834:	00f70a63          	beq	a4,a5,2848 <fatfs_total_path_levels+0x3c>
    2838:	00254683          	lbu	a3,2(a0)
    283c:	05c00713          	li	a4,92
    2840:	fff00793          	li	a5,-1
    2844:	02e69863          	bne	a3,a4,2874 <fatfs_total_path_levels+0x68>
    2848:	00350513          	addi	a0,a0,3
    284c:	05c00713          	li	a4,92
    2850:	fd5ff06f          	j	2824 <fatfs_total_path_levels+0x18>
    2854:	00150513          	addi	a0,a0,1
    2858:	00e68663          	beq	a3,a4,2864 <fatfs_total_path_levels+0x58>
    285c:	00054683          	lbu	a3,0(a0)
    2860:	fe069ae3          	bnez	a3,2854 <fatfs_total_path_levels+0x48>
    2864:	00178793          	addi	a5,a5,1
    2868:	00054683          	lbu	a3,0(a0)
    286c:	fe0698e3          	bnez	a3,285c <fatfs_total_path_levels+0x50>
    2870:	fff78793          	addi	a5,a5,-1
    2874:	00078513          	mv	a0,a5
    2878:	00008067          	ret

0000287c <fatfs_get_substring>:
    287c:	0cd05e63          	blez	a3,2958 <fatfs_get_substring+0xdc>
    2880:	0c050c63          	beqz	a0,2958 <fatfs_get_substring+0xdc>
    2884:	fe010113          	addi	sp,sp,-32
    2888:	00812c23          	sw	s0,24(sp)
    288c:	00112e23          	sw	ra,28(sp)
    2890:	00912a23          	sw	s1,20(sp)
    2894:	00054483          	lbu	s1,0(a0)
    2898:	02f00793          	li	a5,47
    289c:	00150413          	addi	s0,a0,1
    28a0:	02f48463          	beq	s1,a5,28c8 <fatfs_get_substring+0x4c>
    28a4:	00154703          	lbu	a4,1(a0)
    28a8:	03a00793          	li	a5,58
    28ac:	00f70a63          	beq	a4,a5,28c0 <fatfs_get_substring+0x44>
    28b0:	00254803          	lbu	a6,2(a0)
    28b4:	05c00713          	li	a4,92
    28b8:	fff00793          	li	a5,-1
    28bc:	04e81c63          	bne	a6,a4,2914 <fatfs_get_substring+0x98>
    28c0:	00350413          	addi	s0,a0,3
    28c4:	05c00493          	li	s1,92
    28c8:	00040513          	mv	a0,s0
    28cc:	00d12623          	sw	a3,12(sp)
    28d0:	00c12423          	sw	a2,8(sp)
    28d4:	00b12223          	sw	a1,4(sp)
    28d8:	fffff097          	auipc	ra,0xfffff
    28dc:	d2c080e7          	jalr	-724(ra) # 1604 <strlen>
    28e0:	00c12683          	lw	a3,12(sp)
    28e4:	00412583          	lw	a1,4(sp)
    28e8:	00812603          	lw	a2,8(sp)
    28ec:	00000713          	li	a4,0
    28f0:	00000813          	li	a6,0
    28f4:	00000793          	li	a5,0
    28f8:	fff68693          	addi	a3,a3,-1
    28fc:	00e608b3          	add	a7,a2,a4
    2900:	02a7c663          	blt	a5,a0,292c <fatfs_get_substring+0xb0>
    2904:	00088023          	sb	zero,0(a7)
    2908:	00064783          	lbu	a5,0(a2)
    290c:	0017b793          	seqz	a5,a5
    2910:	40f007b3          	neg	a5,a5
    2914:	01c12083          	lw	ra,28(sp)
    2918:	01812403          	lw	s0,24(sp)
    291c:	01412483          	lw	s1,20(sp)
    2920:	00078513          	mv	a0,a5
    2924:	02010113          	addi	sp,sp,32
    2928:	00008067          	ret
    292c:	00f40333          	add	t1,s0,a5
    2930:	00034303          	lbu	t1,0(t1)
    2934:	00931863          	bne	t1,s1,2944 <fatfs_get_substring+0xc8>
    2938:	00180813          	addi	a6,a6,1
    293c:	00178793          	addi	a5,a5,1
    2940:	fbdff06f          	j	28fc <fatfs_get_substring+0x80>
    2944:	feb81ce3          	bne	a6,a1,293c <fatfs_get_substring+0xc0>
    2948:	fed75ae3          	bge	a4,a3,293c <fatfs_get_substring+0xc0>
    294c:	00170713          	addi	a4,a4,1
    2950:	00688023          	sb	t1,0(a7)
    2954:	fe9ff06f          	j	293c <fatfs_get_substring+0xc0>
    2958:	fff00793          	li	a5,-1
    295c:	00078513          	mv	a0,a5
    2960:	00008067          	ret

00002964 <fatfs_split_path>:
    2964:	fd010113          	addi	sp,sp,-48
    2968:	02912223          	sw	s1,36(sp)
    296c:	03212023          	sw	s2,32(sp)
    2970:	01312e23          	sw	s3,28(sp)
    2974:	01412c23          	sw	s4,24(sp)
    2978:	02112623          	sw	ra,44(sp)
    297c:	02812423          	sw	s0,40(sp)
    2980:	01512a23          	sw	s5,20(sp)
    2984:	00050993          	mv	s3,a0
    2988:	00058493          	mv	s1,a1
    298c:	00060913          	mv	s2,a2
    2990:	00068a13          	mv	s4,a3
    2994:	00e12623          	sw	a4,12(sp)
    2998:	00000097          	auipc	ra,0x0
    299c:	e74080e7          	jalr	-396(ra) # 280c <fatfs_total_path_levels>
    29a0:	fff00793          	li	a5,-1
    29a4:	02f51863          	bne	a0,a5,29d4 <fatfs_split_path+0x70>
    29a8:	fff00413          	li	s0,-1
    29ac:	02c12083          	lw	ra,44(sp)
    29b0:	00040513          	mv	a0,s0
    29b4:	02812403          	lw	s0,40(sp)
    29b8:	02412483          	lw	s1,36(sp)
    29bc:	02012903          	lw	s2,32(sp)
    29c0:	01c12983          	lw	s3,28(sp)
    29c4:	01812a03          	lw	s4,24(sp)
    29c8:	01412a83          	lw	s5,20(sp)
    29cc:	03010113          	addi	sp,sp,48
    29d0:	00008067          	ret
    29d4:	00c12683          	lw	a3,12(sp)
    29d8:	00050593          	mv	a1,a0
    29dc:	00a12623          	sw	a0,12(sp)
    29e0:	000a0613          	mv	a2,s4
    29e4:	00098513          	mv	a0,s3
    29e8:	00000097          	auipc	ra,0x0
    29ec:	e94080e7          	jalr	-364(ra) # 287c <fatfs_get_substring>
    29f0:	00050413          	mv	s0,a0
    29f4:	fa051ae3          	bnez	a0,29a8 <fatfs_split_path+0x44>
    29f8:	00c12583          	lw	a1,12(sp)
    29fc:	00059663          	bnez	a1,2a08 <fatfs_split_path+0xa4>
    2a00:	00048023          	sb	zero,0(s1)
    2a04:	fa9ff06f          	j	29ac <fatfs_split_path+0x48>
    2a08:	00098513          	mv	a0,s3
    2a0c:	fffff097          	auipc	ra,0xfffff
    2a10:	bf8080e7          	jalr	-1032(ra) # 1604 <strlen>
    2a14:	00050a93          	mv	s5,a0
    2a18:	000a0513          	mv	a0,s4
    2a1c:	fffff097          	auipc	ra,0xfffff
    2a20:	be8080e7          	jalr	-1048(ra) # 1604 <strlen>
    2a24:	40aa8633          	sub	a2,s5,a0
    2a28:	00c95463          	bge	s2,a2,2a30 <fatfs_split_path+0xcc>
    2a2c:	00090613          	mv	a2,s2
    2a30:	00048513          	mv	a0,s1
    2a34:	00098593          	mv	a1,s3
    2a38:	00c12623          	sw	a2,12(sp)
    2a3c:	fffff097          	auipc	ra,0xfffff
    2a40:	ba4080e7          	jalr	-1116(ra) # 15e0 <memcpy>
    2a44:	00c12603          	lw	a2,12(sp)
    2a48:	00c484b3          	add	s1,s1,a2
    2a4c:	fe048fa3          	sb	zero,-1(s1)
    2a50:	f5dff06f          	j	29ac <fatfs_split_path+0x48>

00002a54 <fatfs_compare_names>:
    2a54:	fd010113          	addi	sp,sp,-48
    2a58:	02112623          	sw	ra,44(sp)
    2a5c:	03212023          	sw	s2,32(sp)
    2a60:	01312e23          	sw	s3,28(sp)
    2a64:	01412c23          	sw	s4,24(sp)
    2a68:	01512a23          	sw	s5,20(sp)
    2a6c:	00058a13          	mv	s4,a1
    2a70:	02812423          	sw	s0,40(sp)
    2a74:	02912223          	sw	s1,36(sp)
    2a78:	01612823          	sw	s6,16(sp)
    2a7c:	01712623          	sw	s7,12(sp)
    2a80:	01812423          	sw	s8,8(sp)
    2a84:	00050a93          	mv	s5,a0
    2a88:	fffff097          	auipc	ra,0xfffff
    2a8c:	2bc080e7          	jalr	700(ra) # 1d44 <FileString_GetExtension>
    2a90:	00050993          	mv	s3,a0
    2a94:	000a0513          	mv	a0,s4
    2a98:	fffff097          	auipc	ra,0xfffff
    2a9c:	2ac080e7          	jalr	684(ra) # 1d44 <FileString_GetExtension>
    2aa0:	fff00793          	li	a5,-1
    2aa4:	00050913          	mv	s2,a0
    2aa8:	02f99e63          	bne	s3,a5,2ae4 <fatfs_compare_names+0x90>
    2aac:	0f350063          	beq	a0,s3,2b8c <fatfs_compare_names+0x138>
    2ab0:	00000513          	li	a0,0
    2ab4:	02c12083          	lw	ra,44(sp)
    2ab8:	02812403          	lw	s0,40(sp)
    2abc:	02412483          	lw	s1,36(sp)
    2ac0:	02012903          	lw	s2,32(sp)
    2ac4:	01c12983          	lw	s3,28(sp)
    2ac8:	01812a03          	lw	s4,24(sp)
    2acc:	01412a83          	lw	s5,20(sp)
    2ad0:	01012b03          	lw	s6,16(sp)
    2ad4:	00c12b83          	lw	s7,12(sp)
    2ad8:	00812c03          	lw	s8,8(sp)
    2adc:	03010113          	addi	sp,sp,48
    2ae0:	00008067          	ret
    2ae4:	fcf506e3          	beq	a0,a5,2ab0 <fatfs_compare_names+0x5c>
    2ae8:	00198793          	addi	a5,s3,1
    2aec:	00fa8b33          	add	s6,s5,a5
    2af0:	00050413          	mv	s0,a0
    2af4:	00150793          	addi	a5,a0,1
    2af8:	000b0513          	mv	a0,s6
    2afc:	00fa0bb3          	add	s7,s4,a5
    2b00:	fffff097          	auipc	ra,0xfffff
    2b04:	b04080e7          	jalr	-1276(ra) # 1604 <strlen>
    2b08:	00050c13          	mv	s8,a0
    2b0c:	000b8513          	mv	a0,s7
    2b10:	00098493          	mv	s1,s3
    2b14:	fffff097          	auipc	ra,0xfffff
    2b18:	af0080e7          	jalr	-1296(ra) # 1604 <strlen>
    2b1c:	f8ac1ae3          	bne	s8,a0,2ab0 <fatfs_compare_names+0x5c>
    2b20:	000b0513          	mv	a0,s6
    2b24:	fffff097          	auipc	ra,0xfffff
    2b28:	ae0080e7          	jalr	-1312(ra) # 1604 <strlen>
    2b2c:	00050613          	mv	a2,a0
    2b30:	000b8593          	mv	a1,s7
    2b34:	000b0513          	mv	a0,s6
    2b38:	fffff097          	auipc	ra,0xfffff
    2b3c:	19c080e7          	jalr	412(ra) # 1cd4 <FileString_StrCmpNoCase>
    2b40:	f60518e3          	bnez	a0,2ab0 <fatfs_compare_names+0x5c>
    2b44:	fff48793          	addi	a5,s1,-1
    2b48:	00fa87b3          	add	a5,s5,a5
    2b4c:	41378733          	sub	a4,a5,s3
    2b50:	02000693          	li	a3,32
    2b54:	06e79263          	bne	a5,a4,2bb8 <fatfs_compare_names+0x164>
    2b58:	fff40793          	addi	a5,s0,-1
    2b5c:	00fa07b3          	add	a5,s4,a5
    2b60:	41278733          	sub	a4,a5,s2
    2b64:	02000693          	li	a3,32
    2b68:	06e79263          	bne	a5,a4,2bcc <fatfs_compare_names+0x178>
    2b6c:	f53912e3          	bne	s2,s3,2ab0 <fatfs_compare_names+0x5c>
    2b70:	00090613          	mv	a2,s2
    2b74:	000a0593          	mv	a1,s4
    2b78:	000a8513          	mv	a0,s5
    2b7c:	fffff097          	auipc	ra,0xfffff
    2b80:	158080e7          	jalr	344(ra) # 1cd4 <FileString_StrCmpNoCase>
    2b84:	00153513          	seqz	a0,a0
    2b88:	f2dff06f          	j	2ab4 <fatfs_compare_names+0x60>
    2b8c:	000a8513          	mv	a0,s5
    2b90:	fffff097          	auipc	ra,0xfffff
    2b94:	a74080e7          	jalr	-1420(ra) # 1604 <strlen>
    2b98:	00050493          	mv	s1,a0
    2b9c:	00050993          	mv	s3,a0
    2ba0:	000a0513          	mv	a0,s4
    2ba4:	fffff097          	auipc	ra,0xfffff
    2ba8:	a60080e7          	jalr	-1440(ra) # 1604 <strlen>
    2bac:	00050413          	mv	s0,a0
    2bb0:	00050913          	mv	s2,a0
    2bb4:	f91ff06f          	j	2b44 <fatfs_compare_names+0xf0>
    2bb8:	0007c603          	lbu	a2,0(a5)
    2bbc:	f8d61ee3          	bne	a2,a3,2b58 <fatfs_compare_names+0x104>
    2bc0:	415789b3          	sub	s3,a5,s5
    2bc4:	fff78793          	addi	a5,a5,-1
    2bc8:	f8dff06f          	j	2b54 <fatfs_compare_names+0x100>
    2bcc:	0007c603          	lbu	a2,0(a5)
    2bd0:	f8d61ee3          	bne	a2,a3,2b6c <fatfs_compare_names+0x118>
    2bd4:	41478933          	sub	s2,a5,s4
    2bd8:	fff78793          	addi	a5,a5,-1
    2bdc:	f8dff06f          	j	2b68 <fatfs_compare_names+0x114>

00002be0 <_check_file_open>:
    2be0:	fe010113          	addi	sp,sp,-32
    2be4:	000057b7          	lui	a5,0x5
    2be8:	00812c23          	sw	s0,24(sp)
    2bec:	3047a403          	lw	s0,772(a5) # 5304 <_open_file_list>
    2bf0:	00912a23          	sw	s1,20(sp)
    2bf4:	00112e23          	sw	ra,28(sp)
    2bf8:	01212823          	sw	s2,16(sp)
    2bfc:	01312623          	sw	s3,12(sp)
    2c00:	00050493          	mv	s1,a0
    2c04:	00041663          	bnez	s0,2c10 <_check_file_open+0x30>
    2c08:	00000513          	li	a0,0
    2c0c:	03c0006f          	j	2c48 <_check_file_open+0x68>
    2c10:	bc440793          	addi	a5,s0,-1084
    2c14:	00f49663          	bne	s1,a5,2c20 <_check_file_open+0x40>
    2c18:	00442403          	lw	s0,4(s0)
    2c1c:	fe9ff06f          	j	2c04 <_check_file_open+0x24>
    2c20:	01448593          	addi	a1,s1,20
    2c24:	bd840513          	addi	a0,s0,-1064
    2c28:	00000097          	auipc	ra,0x0
    2c2c:	e2c080e7          	jalr	-468(ra) # 2a54 <fatfs_compare_names>
    2c30:	fe0504e3          	beqz	a0,2c18 <_check_file_open+0x38>
    2c34:	11848593          	addi	a1,s1,280
    2c38:	cdc40513          	addi	a0,s0,-804
    2c3c:	00000097          	auipc	ra,0x0
    2c40:	e18080e7          	jalr	-488(ra) # 2a54 <fatfs_compare_names>
    2c44:	fc050ae3          	beqz	a0,2c18 <_check_file_open+0x38>
    2c48:	01c12083          	lw	ra,28(sp)
    2c4c:	01812403          	lw	s0,24(sp)
    2c50:	01412483          	lw	s1,20(sp)
    2c54:	01012903          	lw	s2,16(sp)
    2c58:	00c12983          	lw	s3,12(sp)
    2c5c:	02010113          	addi	sp,sp,32
    2c60:	00008067          	ret

00002c64 <fatfs_get_sfn_display_name>:
    2c64:	00000713          	li	a4,0
    2c68:	02000613          	li	a2,32
    2c6c:	01900813          	li	a6,25
    2c70:	0005c783          	lbu	a5,0(a1)
    2c74:	00078663          	beqz	a5,2c80 <fatfs_get_sfn_display_name+0x1c>
    2c78:	ff470693          	addi	a3,a4,-12
    2c7c:	00069863          	bnez	a3,2c8c <fatfs_get_sfn_display_name+0x28>
    2c80:	00050023          	sb	zero,0(a0)
    2c84:	00100513          	li	a0,1
    2c88:	00008067          	ret
    2c8c:	00158593          	addi	a1,a1,1
    2c90:	fec780e3          	beq	a5,a2,2c70 <fatfs_get_sfn_display_name+0xc>
    2c94:	fbf78693          	addi	a3,a5,-65
    2c98:	0ff6f693          	zext.b	a3,a3
    2c9c:	00d86663          	bltu	a6,a3,2ca8 <fatfs_get_sfn_display_name+0x44>
    2ca0:	02078793          	addi	a5,a5,32
    2ca4:	0ff7f793          	zext.b	a5,a5
    2ca8:	00f50023          	sb	a5,0(a0)
    2cac:	00170713          	addi	a4,a4,1
    2cb0:	00150513          	addi	a0,a0,1
    2cb4:	fbdff06f          	j	2c70 <fatfs_get_sfn_display_name+0xc>

00002cb8 <fatfs_fat_init>:
    2cb8:	ff010113          	addi	sp,sp,-16
    2cbc:	00812423          	sw	s0,8(sp)
    2cc0:	00912223          	sw	s1,4(sp)
    2cc4:	00112623          	sw	ra,12(sp)
    2cc8:	fff00793          	li	a5,-1
    2ccc:	25850493          	addi	s1,a0,600
    2cd0:	00050413          	mv	s0,a0
    2cd4:	44f52c23          	sw	a5,1112(a0)
    2cd8:	24052a23          	sw	zero,596(a0)
    2cdc:	44052e23          	sw	zero,1116(a0)
    2ce0:	20000613          	li	a2,512
    2ce4:	00048513          	mv	a0,s1
    2ce8:	00000593          	li	a1,0
    2cec:	fffff097          	auipc	ra,0xfffff
    2cf0:	8d8080e7          	jalr	-1832(ra) # 15c4 <memset>
    2cf4:	25442783          	lw	a5,596(s0)
    2cf8:	00c12083          	lw	ra,12(sp)
    2cfc:	24942a23          	sw	s1,596(s0)
    2d00:	46042023          	sw	zero,1120(s0)
    2d04:	46f42223          	sw	a5,1124(s0)
    2d08:	00812403          	lw	s0,8(sp)
    2d0c:	00412483          	lw	s1,4(sp)
    2d10:	01010113          	addi	sp,sp,16
    2d14:	00008067          	ret

00002d18 <fatfs_init>:
    2d18:	fd010113          	addi	sp,sp,-48
    2d1c:	02812423          	sw	s0,40(sp)
    2d20:	02112623          	sw	ra,44(sp)
    2d24:	02912223          	sw	s1,36(sp)
    2d28:	03212023          	sw	s2,32(sp)
    2d2c:	01312e23          	sw	s3,28(sp)
    2d30:	fff00793          	li	a5,-1
    2d34:	24f52223          	sw	a5,580(a0)
    2d38:	24052423          	sw	zero,584(a0)
    2d3c:	02052223          	sw	zero,36(a0)
    2d40:	00050413          	mv	s0,a0
    2d44:	00000097          	auipc	ra,0x0
    2d48:	f74080e7          	jalr	-140(ra) # 2cb8 <fatfs_fat_init>
    2d4c:	03442783          	lw	a5,52(s0)
    2d50:	02079463          	bnez	a5,2d78 <fatfs_init+0x60>
    2d54:	fff00713          	li	a4,-1
    2d58:	02c12083          	lw	ra,44(sp)
    2d5c:	02812403          	lw	s0,40(sp)
    2d60:	02412483          	lw	s1,36(sp)
    2d64:	02012903          	lw	s2,32(sp)
    2d68:	01c12983          	lw	s3,28(sp)
    2d6c:	00070513          	mv	a0,a4
    2d70:	03010113          	addi	sp,sp,48
    2d74:	00008067          	ret
    2d78:	04440593          	addi	a1,s0,68
    2d7c:	00100613          	li	a2,1
    2d80:	00000513          	li	a0,0
    2d84:	00b12623          	sw	a1,12(sp)
    2d88:	000780e7          	jalr	a5
    2d8c:	fc0504e3          	beqz	a0,2d54 <fatfs_init+0x3c>
    2d90:	24244703          	lbu	a4,578(s0)
    2d94:	05500793          	li	a5,85
    2d98:	00c12583          	lw	a1,12(sp)
    2d9c:	00f70663          	beq	a4,a5,2da8 <fatfs_init+0x90>
    2da0:	ffd00713          	li	a4,-3
    2da4:	fb5ff06f          	j	2d58 <fatfs_init+0x40>
    2da8:	24344703          	lbu	a4,579(s0)
    2dac:	0aa00793          	li	a5,170
    2db0:	fef718e3          	bne	a4,a5,2da0 <fatfs_init+0x88>
    2db4:	20644783          	lbu	a5,518(s0)
    2db8:	00600713          	li	a4,6
    2dbc:	02f76463          	bltu	a4,a5,2de4 <fatfs_init+0xcc>
    2dc0:	00400713          	li	a4,4
    2dc4:	00f76663          	bltu	a4,a5,2dd0 <fatfs_init+0xb8>
    2dc8:	00000513          	li	a0,0
    2dcc:	02078663          	beqz	a5,2df8 <fatfs_init+0xe0>
    2dd0:	20c45503          	lhu	a0,524(s0)
    2dd4:	20a45783          	lhu	a5,522(s0)
    2dd8:	01051513          	slli	a0,a0,0x10
    2ddc:	00f56533          	or	a0,a0,a5
    2de0:	0180006f          	j	2df8 <fatfs_init+0xe0>
    2de4:	00c00713          	li	a4,12
    2de8:	12f76663          	bltu	a4,a5,2f14 <fatfs_init+0x1fc>
    2dec:	00a00713          	li	a4,10
    2df0:	00000513          	li	a0,0
    2df4:	fcf76ee3          	bltu	a4,a5,2dd0 <fatfs_init+0xb8>
    2df8:	03442783          	lw	a5,52(s0)
    2dfc:	00a42e23          	sw	a0,28(s0)
    2e00:	00100613          	li	a2,1
    2e04:	000780e7          	jalr	a5
    2e08:	f40506e3          	beqz	a0,2d54 <fatfs_init+0x3c>
    2e0c:	05044783          	lbu	a5,80(s0)
    2e10:	04f44703          	lbu	a4,79(s0)
    2e14:	20000693          	li	a3,512
    2e18:	00879793          	slli	a5,a5,0x8
    2e1c:	00e7e7b3          	or	a5,a5,a4
    2e20:	ffe00713          	li	a4,-2
    2e24:	f2d79ae3          	bne	a5,a3,2d58 <fatfs_init+0x40>
    2e28:	05644483          	lbu	s1,86(s0)
    2e2c:	05544783          	lbu	a5,85(s0)
    2e30:	05144983          	lbu	s3,81(s0)
    2e34:	00849493          	slli	s1,s1,0x8
    2e38:	05a45583          	lhu	a1,90(s0)
    2e3c:	00f4e4b3          	or	s1,s1,a5
    2e40:	01340023          	sb	s3,0(s0)
    2e44:	02941423          	sh	s1,40(s0)
    2e48:	05245903          	lhu	s2,82(s0)
    2e4c:	05444503          	lbu	a0,84(s0)
    2e50:	00059463          	bnez	a1,2e58 <fatfs_init+0x140>
    2e54:	06842583          	lw	a1,104(s0)
    2e58:	07042783          	lw	a5,112(s0)
    2e5c:	02b42023          	sw	a1,32(s0)
    2e60:	00549493          	slli	s1,s1,0x5
    2e64:	00f42423          	sw	a5,8(s0)
    2e68:	07445783          	lhu	a5,116(s0)
    2e6c:	1ff48493          	addi	s1,s1,511
    2e70:	4094d493          	srai	s1,s1,0x9
    2e74:	00f41c23          	sh	a5,24(s0)
    2e78:	fffff097          	auipc	ra,0xfffff
    2e7c:	dc4080e7          	jalr	-572(ra) # 1c3c <__mulsi3>
    2e80:	00a907b3          	add	a5,s2,a0
    2e84:	00f42623          	sw	a5,12(s0)
    2e88:	01c42783          	lw	a5,28(s0)
    2e8c:	24245703          	lhu	a4,578(s0)
    2e90:	00942823          	sw	s1,16(s0)
    2e94:	00f907b3          	add	a5,s2,a5
    2e98:	00f42a23          	sw	a5,20(s0)
    2e9c:	00f507b3          	add	a5,a0,a5
    2ea0:	00f42223          	sw	a5,4(s0)
    2ea4:	0000b7b7          	lui	a5,0xb
    2ea8:	a5578793          	addi	a5,a5,-1451 # aa55 <_files+0xf11>
    2eac:	eef71ae3          	bne	a4,a5,2da0 <fatfs_init+0x88>
    2eb0:	05844783          	lbu	a5,88(s0)
    2eb4:	05744703          	lbu	a4,87(s0)
    2eb8:	00879793          	slli	a5,a5,0x8
    2ebc:	00e7e7b3          	or	a5,a5,a4
    2ec0:	00079463          	bnez	a5,2ec8 <fatfs_init+0x1b0>
    2ec4:	06442783          	lw	a5,100(s0)
    2ec8:	ffb00713          	li	a4,-5
    2ecc:	e80986e3          	beqz	s3,2d58 <fatfs_init+0x40>
    2ed0:	00990933          	add	s2,s2,s1
    2ed4:	00a90533          	add	a0,s2,a0
    2ed8:	40a78533          	sub	a0,a5,a0
    2edc:	00098593          	mv	a1,s3
    2ee0:	ffffe097          	auipc	ra,0xffffe
    2ee4:	638080e7          	jalr	1592(ra) # 1518 <__udivsi3>
    2ee8:	000017b7          	lui	a5,0x1
    2eec:	ff478793          	addi	a5,a5,-12 # ff4 <sdcard_send+0x50>
    2ef0:	ffb00713          	li	a4,-5
    2ef4:	e6a7f2e3          	bgeu	a5,a0,2d58 <fatfs_init+0x40>
    2ef8:	000107b7          	lui	a5,0x10
    2efc:	ff478793          	addi	a5,a5,-12 # fff4 <_files+0x64b0>
    2f00:	02a7e663          	bltu	a5,a0,2f2c <fatfs_init+0x214>
    2f04:	00042423          	sw	zero,8(s0)
    2f08:	02042823          	sw	zero,48(s0)
    2f0c:	00000713          	li	a4,0
    2f10:	e49ff06f          	j	2d58 <fatfs_init+0x40>
    2f14:	ff278793          	addi	a5,a5,-14
    2f18:	0ff7f793          	zext.b	a5,a5
    2f1c:	00100713          	li	a4,1
    2f20:	00000513          	li	a0,0
    2f24:	eaf776e3          	bgeu	a4,a5,2dd0 <fatfs_init+0xb8>
    2f28:	ed1ff06f          	j	2df8 <fatfs_init+0xe0>
    2f2c:	00100793          	li	a5,1
    2f30:	02f42823          	sw	a5,48(s0)
    2f34:	fd9ff06f          	j	2f0c <fatfs_init+0x1f4>

00002f38 <fl_attach_media>:
    2f38:	000057b7          	lui	a5,0x5
    2f3c:	3107a783          	lw	a5,784(a5) # 5310 <_filelib_init>
    2f40:	fe010113          	addi	sp,sp,-32
    2f44:	00812c23          	sw	s0,24(sp)
    2f48:	00112e23          	sw	ra,28(sp)
    2f4c:	00050413          	mv	s0,a0
    2f50:	00079a63          	bnez	a5,2f64 <fl_attach_media+0x2c>
    2f54:	00b12623          	sw	a1,12(sp)
    2f58:	fffff097          	auipc	ra,0xfffff
    2f5c:	178080e7          	jalr	376(ra) # 20d0 <fl_init>
    2f60:	00c12583          	lw	a1,12(sp)
    2f64:	000097b7          	lui	a5,0x9
    2f68:	6dc78513          	addi	a0,a5,1756 # 96dc <_fs>
    2f6c:	02b52c23          	sw	a1,56(a0)
    2f70:	02852a23          	sw	s0,52(a0)
    2f74:	00000097          	auipc	ra,0x0
    2f78:	da4080e7          	jalr	-604(ra) # 2d18 <fatfs_init>
    2f7c:	00050593          	mv	a1,a0
    2f80:	02050863          	beqz	a0,2fb0 <fl_attach_media+0x78>
    2f84:	00a12623          	sw	a0,12(sp)
    2f88:	00005537          	lui	a0,0x5
    2f8c:	08050513          	addi	a0,a0,128 # 5080 <LEDS+0xa8>
    2f90:	fffff097          	auipc	ra,0xfffff
    2f94:	b70080e7          	jalr	-1168(ra) # 1b00 <printf>
    2f98:	00c12583          	lw	a1,12(sp)
    2f9c:	01c12083          	lw	ra,28(sp)
    2fa0:	01812403          	lw	s0,24(sp)
    2fa4:	00058513          	mv	a0,a1
    2fa8:	02010113          	addi	sp,sp,32
    2fac:	00008067          	ret
    2fb0:	000057b7          	lui	a5,0x5
    2fb4:	00100713          	li	a4,1
    2fb8:	30e7a623          	sw	a4,780(a5) # 530c <_filelib_valid>
    2fbc:	fe1ff06f          	j	2f9c <fl_attach_media+0x64>

00002fc0 <fatfs_fat_purge>:
    2fc0:	25452583          	lw	a1,596(a0)
    2fc4:	fe010113          	addi	sp,sp,-32
    2fc8:	00812c23          	sw	s0,24(sp)
    2fcc:	00112e23          	sw	ra,28(sp)
    2fd0:	00050413          	mv	s0,a0
    2fd4:	00059663          	bnez	a1,2fe0 <fatfs_fat_purge+0x20>
    2fd8:	00100513          	li	a0,1
    2fdc:	02c0006f          	j	3008 <fatfs_fat_purge+0x48>
    2fe0:	2045a783          	lw	a5,516(a1)
    2fe4:	00079663          	bnez	a5,2ff0 <fatfs_fat_purge+0x30>
    2fe8:	20c5a583          	lw	a1,524(a1)
    2fec:	fe9ff06f          	j	2fd4 <fatfs_fat_purge+0x14>
    2ff0:	00040513          	mv	a0,s0
    2ff4:	00b12623          	sw	a1,12(sp)
    2ff8:	fffff097          	auipc	ra,0xfffff
    2ffc:	d78080e7          	jalr	-648(ra) # 1d70 <fatfs_fat_writeback>
    3000:	00c12583          	lw	a1,12(sp)
    3004:	fe0512e3          	bnez	a0,2fe8 <fatfs_fat_purge+0x28>
    3008:	01c12083          	lw	ra,28(sp)
    300c:	01812403          	lw	s0,24(sp)
    3010:	02010113          	addi	sp,sp,32
    3014:	00008067          	ret

00003018 <fatfs_find_next_cluster>:
    3018:	ff010113          	addi	sp,sp,-16
    301c:	00812423          	sw	s0,8(sp)
    3020:	01212023          	sw	s2,0(sp)
    3024:	00112623          	sw	ra,12(sp)
    3028:	00912223          	sw	s1,4(sp)
    302c:	00050913          	mv	s2,a0
    3030:	00200413          	li	s0,2
    3034:	00058463          	beqz	a1,303c <fatfs_find_next_cluster+0x24>
    3038:	00058413          	mv	s0,a1
    303c:	03092783          	lw	a5,48(s2)
    3040:	00745493          	srli	s1,s0,0x7
    3044:	00079463          	bnez	a5,304c <fatfs_find_next_cluster+0x34>
    3048:	00845493          	srli	s1,s0,0x8
    304c:	01492583          	lw	a1,20(s2)
    3050:	00090513          	mv	a0,s2
    3054:	00b485b3          	add	a1,s1,a1
    3058:	fffff097          	auipc	ra,0xfffff
    305c:	d9c080e7          	jalr	-612(ra) # 1df4 <fatfs_fat_read_sector>
    3060:	00050793          	mv	a5,a0
    3064:	fff00513          	li	a0,-1
    3068:	04078863          	beqz	a5,30b8 <fatfs_find_next_cluster+0xa0>
    306c:	03092703          	lw	a4,48(s2)
    3070:	2087a783          	lw	a5,520(a5)
    3074:	04071e63          	bnez	a4,30d0 <fatfs_find_next_cluster+0xb8>
    3078:	00849493          	slli	s1,s1,0x8
    307c:	40940433          	sub	s0,s0,s1
    3080:	00141413          	slli	s0,s0,0x1
    3084:	01041413          	slli	s0,s0,0x10
    3088:	01045413          	srli	s0,s0,0x10
    308c:	008787b3          	add	a5,a5,s0
    3090:	0017c503          	lbu	a0,1(a5)
    3094:	0007c783          	lbu	a5,0(a5)
    3098:	00851513          	slli	a0,a0,0x8
    309c:	00f50533          	add	a0,a0,a5
    30a0:	ffff07b7          	lui	a5,0xffff0
    30a4:	00878793          	addi	a5,a5,8 # ffff0008 <__stacktop+0xfffe0008>
    30a8:	00f507b3          	add	a5,a0,a5
    30ac:	00700713          	li	a4,7
    30b0:	00f76463          	bltu	a4,a5,30b8 <fatfs_find_next_cluster+0xa0>
    30b4:	fff00513          	li	a0,-1
    30b8:	00c12083          	lw	ra,12(sp)
    30bc:	00812403          	lw	s0,8(sp)
    30c0:	00412483          	lw	s1,4(sp)
    30c4:	00012903          	lw	s2,0(sp)
    30c8:	01010113          	addi	sp,sp,16
    30cc:	00008067          	ret
    30d0:	00749493          	slli	s1,s1,0x7
    30d4:	40940433          	sub	s0,s0,s1
    30d8:	00241413          	slli	s0,s0,0x2
    30dc:	01041413          	slli	s0,s0,0x10
    30e0:	01045413          	srli	s0,s0,0x10
    30e4:	008787b3          	add	a5,a5,s0
    30e8:	0037c503          	lbu	a0,3(a5)
    30ec:	0027c703          	lbu	a4,2(a5)
    30f0:	01851513          	slli	a0,a0,0x18
    30f4:	01071713          	slli	a4,a4,0x10
    30f8:	00e50533          	add	a0,a0,a4
    30fc:	0007c703          	lbu	a4,0(a5)
    3100:	0017c783          	lbu	a5,1(a5)
    3104:	00e50533          	add	a0,a0,a4
    3108:	00879793          	slli	a5,a5,0x8
    310c:	00f50533          	add	a0,a0,a5
    3110:	00451513          	slli	a0,a0,0x4
    3114:	00455513          	srli	a0,a0,0x4
    3118:	f00007b7          	lui	a5,0xf0000
    311c:	f89ff06f          	j	30a4 <fatfs_find_next_cluster+0x8c>

00003120 <fatfs_sector_reader>:
    3120:	03052783          	lw	a5,48(a0)
    3124:	fe010113          	addi	sp,sp,-32
    3128:	00812c23          	sw	s0,24(sp)
    312c:	01212823          	sw	s2,16(sp)
    3130:	01512223          	sw	s5,4(sp)
    3134:	00112e23          	sw	ra,28(sp)
    3138:	00912a23          	sw	s1,20(sp)
    313c:	01312623          	sw	s3,12(sp)
    3140:	01412423          	sw	s4,8(sp)
    3144:	01612023          	sw	s6,0(sp)
    3148:	00f5e7b3          	or	a5,a1,a5
    314c:	00050413          	mv	s0,a0
    3150:	00060913          	mv	s2,a2
    3154:	00068a93          	mv	s5,a3
    3158:	08079063          	bnez	a5,31d8 <fatfs_sector_reader+0xb8>
    315c:	01052783          	lw	a5,16(a0)
    3160:	02f66863          	bltu	a2,a5,3190 <fatfs_sector_reader+0x70>
    3164:	00000513          	li	a0,0
    3168:	01c12083          	lw	ra,28(sp)
    316c:	01812403          	lw	s0,24(sp)
    3170:	01412483          	lw	s1,20(sp)
    3174:	01012903          	lw	s2,16(sp)
    3178:	00c12983          	lw	s3,12(sp)
    317c:	00812a03          	lw	s4,8(sp)
    3180:	00412a83          	lw	s5,4(sp)
    3184:	00012b03          	lw	s6,0(sp)
    3188:	02010113          	addi	sp,sp,32
    318c:	00008067          	ret
    3190:	01c52503          	lw	a0,28(a0)
    3194:	00c42783          	lw	a5,12(s0)
    3198:	00f50533          	add	a0,a0,a5
    319c:	01250533          	add	a0,a0,s2
    31a0:	0a0a8663          	beqz	s5,324c <fatfs_sector_reader+0x12c>
    31a4:	03442783          	lw	a5,52(s0)
    31a8:	00100613          	li	a2,1
    31ac:	000a8593          	mv	a1,s5
    31b0:	01812403          	lw	s0,24(sp)
    31b4:	01c12083          	lw	ra,28(sp)
    31b8:	01412483          	lw	s1,20(sp)
    31bc:	01012903          	lw	s2,16(sp)
    31c0:	00c12983          	lw	s3,12(sp)
    31c4:	00812a03          	lw	s4,8(sp)
    31c8:	00412a83          	lw	s5,4(sp)
    31cc:	00012b03          	lw	s6,0(sp)
    31d0:	02010113          	addi	sp,sp,32
    31d4:	00078067          	jr	a5 # f0000000 <__stacktop+0xefff0000>
    31d8:	00054783          	lbu	a5,0(a0)
    31dc:	00058493          	mv	s1,a1
    31e0:	00060513          	mv	a0,a2
    31e4:	00078593          	mv	a1,a5
    31e8:	00078a13          	mv	s4,a5
    31ec:	ffffe097          	auipc	ra,0xffffe
    31f0:	32c080e7          	jalr	812(ra) # 1518 <__udivsi3>
    31f4:	00050b13          	mv	s6,a0
    31f8:	00000993          	li	s3,0
    31fc:	03699a63          	bne	s3,s6,3230 <fatfs_sector_reader+0x110>
    3200:	fff00793          	li	a5,-1
    3204:	f6f480e3          	beq	s1,a5,3164 <fatfs_sector_reader+0x44>
    3208:	000a0593          	mv	a1,s4
    320c:	00090513          	mv	a0,s2
    3210:	ffffe097          	auipc	ra,0xffffe
    3214:	350080e7          	jalr	848(ra) # 1560 <__umodsi3>
    3218:	00050913          	mv	s2,a0
    321c:	00048593          	mv	a1,s1
    3220:	00040513          	mv	a0,s0
    3224:	fffff097          	auipc	ra,0xfffff
    3228:	d7c080e7          	jalr	-644(ra) # 1fa0 <fatfs_lba_of_cluster>
    322c:	f71ff06f          	j	319c <fatfs_sector_reader+0x7c>
    3230:	00048593          	mv	a1,s1
    3234:	00040513          	mv	a0,s0
    3238:	00000097          	auipc	ra,0x0
    323c:	de0080e7          	jalr	-544(ra) # 3018 <fatfs_find_next_cluster>
    3240:	00050493          	mv	s1,a0
    3244:	00198993          	addi	s3,s3,1
    3248:	fb5ff06f          	j	31fc <fatfs_sector_reader+0xdc>
    324c:	24442783          	lw	a5,580(s0)
    3250:	00a78c63          	beq	a5,a0,3268 <fatfs_sector_reader+0x148>
    3254:	03442783          	lw	a5,52(s0)
    3258:	24a42223          	sw	a0,580(s0)
    325c:	00100613          	li	a2,1
    3260:	04440593          	addi	a1,s0,68
    3264:	f4dff06f          	j	31b0 <fatfs_sector_reader+0x90>
    3268:	00100513          	li	a0,1
    326c:	efdff06f          	j	3168 <fatfs_sector_reader+0x48>

00003270 <fatfs_get_file_entry>:
    3270:	eb010113          	addi	sp,sp,-336
    3274:	14812423          	sw	s0,328(sp)
    3278:	14912223          	sw	s1,324(sp)
    327c:	13312e23          	sw	s3,316(sp)
    3280:	13712623          	sw	s7,300(sp)
    3284:	13812423          	sw	s8,296(sp)
    3288:	13912223          	sw	s9,292(sp)
    328c:	14112623          	sw	ra,332(sp)
    3290:	15212023          	sw	s2,320(sp)
    3294:	13412c23          	sw	s4,312(sp)
    3298:	13512a23          	sw	s5,308(sp)
    329c:	13612823          	sw	s6,304(sp)
    32a0:	00050993          	mv	s3,a0
    32a4:	00058c93          	mv	s9,a1
    32a8:	00060b93          	mv	s7,a2
    32ac:	00068c13          	mv	s8,a3
    32b0:	10010ea3          	sb	zero,285(sp)
    32b4:	01810413          	addi	s0,sp,24
    32b8:	11c10493          	addi	s1,sp,284
    32bc:	00040513          	mv	a0,s0
    32c0:	00d00613          	li	a2,13
    32c4:	00000593          	li	a1,0
    32c8:	00d40413          	addi	s0,s0,13
    32cc:	ffffe097          	auipc	ra,0xffffe
    32d0:	2f8080e7          	jalr	760(ra) # 15c4 <memset>
    32d4:	fe9414e3          	bne	s0,s1,32bc <fatfs_get_file_entry+0x4c>
    32d8:	00000493          	li	s1,0
    32dc:	24498a13          	addi	s4,s3,580
    32e0:	00810913          	addi	s2,sp,8
    32e4:	00800a93          	li	s5,8
    32e8:	02e00b13          	li	s6,46
    32ec:	00000693          	li	a3,0
    32f0:	00048613          	mv	a2,s1
    32f4:	000c8593          	mv	a1,s9
    32f8:	00098513          	mv	a0,s3
    32fc:	00000097          	auipc	ra,0x0
    3300:	e24080e7          	jalr	-476(ra) # 3120 <fatfs_sector_reader>
    3304:	08050c63          	beqz	a0,339c <fatfs_get_file_entry+0x12c>
    3308:	00148493          	addi	s1,s1,1
    330c:	04498413          	addi	s0,s3,68
    3310:	00040513          	mv	a0,s0
    3314:	fffff097          	auipc	ra,0xfffff
    3318:	f34080e7          	jalr	-204(ra) # 2248 <fatfs_entry_lfn_text>
    331c:	02050063          	beqz	a0,333c <fatfs_get_file_entry+0xcc>
    3320:	00040593          	mv	a1,s0
    3324:	01810513          	addi	a0,sp,24
    3328:	fffff097          	auipc	ra,0xfffff
    332c:	e18080e7          	jalr	-488(ra) # 2140 <fatfs_lfn_cache_entry>
    3330:	02040413          	addi	s0,s0,32
    3334:	fd441ee3          	bne	s0,s4,3310 <fatfs_get_file_entry+0xa0>
    3338:	fb5ff06f          	j	32ec <fatfs_get_file_entry+0x7c>
    333c:	00040513          	mv	a0,s0
    3340:	fffff097          	auipc	ra,0xfffff
    3344:	f1c080e7          	jalr	-228(ra) # 225c <fatfs_entry_lfn_invalid>
    3348:	00050663          	beqz	a0,3354 <fatfs_get_file_entry+0xe4>
    334c:	10010ea3          	sb	zero,285(sp)
    3350:	fe1ff06f          	j	3330 <fatfs_get_file_entry+0xc0>
    3354:	00040593          	mv	a1,s0
    3358:	01810513          	addi	a0,sp,24
    335c:	fffff097          	auipc	ra,0xfffff
    3360:	f34080e7          	jalr	-204(ra) # 2290 <fatfs_entry_lfn_exists>
    3364:	06050663          	beqz	a0,33d0 <fatfs_get_file_entry+0x160>
    3368:	01810513          	addi	a0,sp,24
    336c:	fffff097          	auipc	ra,0xfffff
    3370:	ea0080e7          	jalr	-352(ra) # 220c <fatfs_lfn_cache_get>
    3374:	000b8593          	mv	a1,s7
    3378:	fffff097          	auipc	ra,0xfffff
    337c:	6dc080e7          	jalr	1756(ra) # 2a54 <fatfs_compare_names>
    3380:	fc0506e3          	beqz	a0,334c <fatfs_get_file_entry+0xdc>
    3384:	02000613          	li	a2,32
    3388:	00040593          	mv	a1,s0
    338c:	000c0513          	mv	a0,s8
    3390:	ffffe097          	auipc	ra,0xffffe
    3394:	250080e7          	jalr	592(ra) # 15e0 <memcpy>
    3398:	00100513          	li	a0,1
    339c:	14c12083          	lw	ra,332(sp)
    33a0:	14812403          	lw	s0,328(sp)
    33a4:	14412483          	lw	s1,324(sp)
    33a8:	14012903          	lw	s2,320(sp)
    33ac:	13c12983          	lw	s3,316(sp)
    33b0:	13812a03          	lw	s4,312(sp)
    33b4:	13412a83          	lw	s5,308(sp)
    33b8:	13012b03          	lw	s6,304(sp)
    33bc:	12c12b83          	lw	s7,300(sp)
    33c0:	12812c03          	lw	s8,296(sp)
    33c4:	12412c83          	lw	s9,292(sp)
    33c8:	15010113          	addi	sp,sp,336
    33cc:	00008067          	ret
    33d0:	00040513          	mv	a0,s0
    33d4:	fffff097          	auipc	ra,0xfffff
    33d8:	f0c080e7          	jalr	-244(ra) # 22e0 <fatfs_entry_sfn_only>
    33dc:	f4050ae3          	beqz	a0,3330 <fatfs_get_file_entry+0xc0>
    33e0:	00d00613          	li	a2,13
    33e4:	00000593          	li	a1,0
    33e8:	00090513          	mv	a0,s2
    33ec:	ffffe097          	auipc	ra,0xffffe
    33f0:	1d8080e7          	jalr	472(ra) # 15c4 <memset>
    33f4:	00000793          	li	a5,0
    33f8:	00f406b3          	add	a3,s0,a5
    33fc:	0006c683          	lbu	a3,0(a3)
    3400:	00f90733          	add	a4,s2,a5
    3404:	00178793          	addi	a5,a5,1
    3408:	00d70023          	sb	a3,0(a4)
    340c:	ff5796e3          	bne	a5,s5,33f8 <fatfs_get_file_entry+0x188>
    3410:	00844703          	lbu	a4,8(s0)
    3414:	00944783          	lbu	a5,9(s0)
    3418:	00a44683          	lbu	a3,10(s0)
    341c:	00e108a3          	sb	a4,17(sp)
    3420:	00f10923          	sb	a5,18(sp)
    3424:	fe070713          	addi	a4,a4,-32
    3428:	fe078793          	addi	a5,a5,-32
    342c:	00f037b3          	snez	a5,a5
    3430:	00e03733          	snez	a4,a4
    3434:	00d109a3          	sb	a3,19(sp)
    3438:	00e7e7b3          	or	a5,a5,a4
    343c:	00079863          	bnez	a5,344c <fatfs_get_file_entry+0x1dc>
    3440:	fe068693          	addi	a3,a3,-32
    3444:	02000793          	li	a5,32
    3448:	00068a63          	beqz	a3,345c <fatfs_get_file_entry+0x1ec>
    344c:	00814703          	lbu	a4,8(sp)
    3450:	02e00793          	li	a5,46
    3454:	01671463          	bne	a4,s6,345c <fatfs_get_file_entry+0x1ec>
    3458:	02000793          	li	a5,32
    345c:	00f10823          	sb	a5,16(sp)
    3460:	000b8593          	mv	a1,s7
    3464:	00090513          	mv	a0,s2
    3468:	f11ff06f          	j	3378 <fatfs_get_file_entry+0x108>

0000346c <_open_directory>:
    346c:	eb010113          	addi	sp,sp,-336
    3470:	15212023          	sw	s2,320(sp)
    3474:	00009937          	lui	s2,0x9
    3478:	6dc90913          	addi	s2,s2,1756 # 96dc <_fs>
    347c:	14812423          	sw	s0,328(sp)
    3480:	00892403          	lw	s0,8(s2)
    3484:	14912223          	sw	s1,324(sp)
    3488:	13312e23          	sw	s3,316(sp)
    348c:	13412c23          	sw	s4,312(sp)
    3490:	13512a23          	sw	s5,308(sp)
    3494:	13612823          	sw	s6,304(sp)
    3498:	14112623          	sw	ra,332(sp)
    349c:	00050a13          	mv	s4,a0
    34a0:	00058a93          	mv	s5,a1
    34a4:	fffff097          	auipc	ra,0xfffff
    34a8:	368080e7          	jalr	872(ra) # 280c <fatfs_total_path_levels>
    34ac:	00050b13          	mv	s6,a0
    34b0:	00000493          	li	s1,0
    34b4:	fff00993          	li	s3,-1
    34b8:	009b5863          	bge	s6,s1,34c8 <_open_directory+0x5c>
    34bc:	008aa023          	sw	s0,0(s5)
    34c0:	00100513          	li	a0,1
    34c4:	0240006f          	j	34e8 <_open_directory+0x7c>
    34c8:	10400693          	li	a3,260
    34cc:	02c10613          	addi	a2,sp,44
    34d0:	00048593          	mv	a1,s1
    34d4:	000a0513          	mv	a0,s4
    34d8:	fffff097          	auipc	ra,0xfffff
    34dc:	3a4080e7          	jalr	932(ra) # 287c <fatfs_get_substring>
    34e0:	03351863          	bne	a0,s3,3510 <_open_directory+0xa4>
    34e4:	00000513          	li	a0,0
    34e8:	14c12083          	lw	ra,332(sp)
    34ec:	14812403          	lw	s0,328(sp)
    34f0:	14412483          	lw	s1,324(sp)
    34f4:	14012903          	lw	s2,320(sp)
    34f8:	13c12983          	lw	s3,316(sp)
    34fc:	13812a03          	lw	s4,312(sp)
    3500:	13412a83          	lw	s5,308(sp)
    3504:	13012b03          	lw	s6,304(sp)
    3508:	15010113          	addi	sp,sp,336
    350c:	00008067          	ret
    3510:	00c10693          	addi	a3,sp,12
    3514:	02c10613          	addi	a2,sp,44
    3518:	00040593          	mv	a1,s0
    351c:	00090513          	mv	a0,s2
    3520:	00000097          	auipc	ra,0x0
    3524:	d50080e7          	jalr	-688(ra) # 3270 <fatfs_get_file_entry>
    3528:	fa050ee3          	beqz	a0,34e4 <_open_directory+0x78>
    352c:	01714783          	lbu	a5,23(sp)
    3530:	0107f793          	andi	a5,a5,16
    3534:	fa0788e3          	beqz	a5,34e4 <_open_directory+0x78>
    3538:	02015403          	lhu	s0,32(sp)
    353c:	02615783          	lhu	a5,38(sp)
    3540:	00148493          	addi	s1,s1,1
    3544:	01041413          	slli	s0,s0,0x10
    3548:	00f40433          	add	s0,s0,a5
    354c:	f6dff06f          	j	34b8 <_open_directory+0x4c>

00003550 <fl_opendir>:
    3550:	fe010113          	addi	sp,sp,-32
    3554:	fff00793          	li	a5,-1
    3558:	00f12623          	sw	a5,12(sp)
    355c:	000057b7          	lui	a5,0x5
    3560:	3107a783          	lw	a5,784(a5) # 5310 <_filelib_init>
    3564:	00812c23          	sw	s0,24(sp)
    3568:	01212823          	sw	s2,16(sp)
    356c:	00112e23          	sw	ra,28(sp)
    3570:	00912a23          	sw	s1,20(sp)
    3574:	00050913          	mv	s2,a0
    3578:	00058413          	mv	s0,a1
    357c:	00079663          	bnez	a5,3588 <fl_opendir+0x38>
    3580:	fffff097          	auipc	ra,0xfffff
    3584:	b50080e7          	jalr	-1200(ra) # 20d0 <fl_init>
    3588:	000094b7          	lui	s1,0x9
    358c:	6dc48493          	addi	s1,s1,1756 # 96dc <_fs>
    3590:	03c4a783          	lw	a5,60(s1)
    3594:	00078463          	beqz	a5,359c <fl_opendir+0x4c>
    3598:	000780e7          	jalr	a5
    359c:	00090513          	mv	a0,s2
    35a0:	fffff097          	auipc	ra,0xfffff
    35a4:	26c080e7          	jalr	620(ra) # 280c <fatfs_total_path_levels>
    35a8:	fff00793          	li	a5,-1
    35ac:	02f51063          	bne	a0,a5,35cc <fl_opendir+0x7c>
    35b0:	0084a783          	lw	a5,8(s1)
    35b4:	00f12623          	sw	a5,12(sp)
    35b8:	00c12783          	lw	a5,12(sp)
    35bc:	00042023          	sw	zero,0(s0)
    35c0:	00040423          	sb	zero,8(s0)
    35c4:	00f42223          	sw	a5,4(s0)
    35c8:	0180006f          	j	35e0 <fl_opendir+0x90>
    35cc:	00c10593          	addi	a1,sp,12
    35d0:	00090513          	mv	a0,s2
    35d4:	00000097          	auipc	ra,0x0
    35d8:	e98080e7          	jalr	-360(ra) # 346c <_open_directory>
    35dc:	fc051ee3          	bnez	a0,35b8 <fl_opendir+0x68>
    35e0:	0404a783          	lw	a5,64(s1)
    35e4:	00078463          	beqz	a5,35ec <fl_opendir+0x9c>
    35e8:	000780e7          	jalr	a5
    35ec:	00c12703          	lw	a4,12(sp)
    35f0:	fff00793          	li	a5,-1
    35f4:	00f71463          	bne	a4,a5,35fc <fl_opendir+0xac>
    35f8:	00000413          	li	s0,0
    35fc:	01c12083          	lw	ra,28(sp)
    3600:	00040513          	mv	a0,s0
    3604:	01812403          	lw	s0,24(sp)
    3608:	01412483          	lw	s1,20(sp)
    360c:	01012903          	lw	s2,16(sp)
    3610:	02010113          	addi	sp,sp,32
    3614:	00008067          	ret

00003618 <_open_file>:
    3618:	fc010113          	addi	sp,sp,-64
    361c:	03312623          	sw	s3,44(sp)
    3620:	02112e23          	sw	ra,60(sp)
    3624:	02812c23          	sw	s0,56(sp)
    3628:	02912a23          	sw	s1,52(sp)
    362c:	03212823          	sw	s2,48(sp)
    3630:	00050993          	mv	s3,a0
    3634:	fffff097          	auipc	ra,0xfffff
    3638:	8ac080e7          	jalr	-1876(ra) # 1ee0 <_allocate_file>
    363c:	06050463          	beqz	a0,36a4 <_open_file+0x8c>
    3640:	01450913          	addi	s2,a0,20
    3644:	00050413          	mv	s0,a0
    3648:	10400613          	li	a2,260
    364c:	00000593          	li	a1,0
    3650:	00090513          	mv	a0,s2
    3654:	ffffe097          	auipc	ra,0xffffe
    3658:	f70080e7          	jalr	-144(ra) # 15c4 <memset>
    365c:	11840493          	addi	s1,s0,280
    3660:	10400613          	li	a2,260
    3664:	00000593          	li	a1,0
    3668:	00048513          	mv	a0,s1
    366c:	ffffe097          	auipc	ra,0xffffe
    3670:	f58080e7          	jalr	-168(ra) # 15c4 <memset>
    3674:	10400713          	li	a4,260
    3678:	00048693          	mv	a3,s1
    367c:	00070613          	mv	a2,a4
    3680:	00090593          	mv	a1,s2
    3684:	00098513          	mv	a0,s3
    3688:	fffff097          	auipc	ra,0xfffff
    368c:	2dc080e7          	jalr	732(ra) # 2964 <fatfs_split_path>
    3690:	fff00793          	li	a5,-1
    3694:	02f51a63          	bne	a0,a5,36c8 <_open_file+0xb0>
    3698:	00040513          	mv	a0,s0
    369c:	fffff097          	auipc	ra,0xfffff
    36a0:	8bc080e7          	jalr	-1860(ra) # 1f58 <_free_file>
    36a4:	00000413          	li	s0,0
    36a8:	03c12083          	lw	ra,60(sp)
    36ac:	00040513          	mv	a0,s0
    36b0:	03812403          	lw	s0,56(sp)
    36b4:	03412483          	lw	s1,52(sp)
    36b8:	03012903          	lw	s2,48(sp)
    36bc:	02c12983          	lw	s3,44(sp)
    36c0:	04010113          	addi	sp,sp,64
    36c4:	00008067          	ret
    36c8:	00040513          	mv	a0,s0
    36cc:	fffff097          	auipc	ra,0xfffff
    36d0:	514080e7          	jalr	1300(ra) # 2be0 <_check_file_open>
    36d4:	fc0512e3          	bnez	a0,3698 <_open_file+0x80>
    36d8:	01444783          	lbu	a5,20(s0)
    36dc:	08079c63          	bnez	a5,3774 <_open_file+0x15c>
    36e0:	000097b7          	lui	a5,0x9
    36e4:	6e47a783          	lw	a5,1764(a5) # 96e4 <_fs+0x8>
    36e8:	00f42023          	sw	a5,0(s0)
    36ec:	00042583          	lw	a1,0(s0)
    36f0:	00048613          	mv	a2,s1
    36f4:	000094b7          	lui	s1,0x9
    36f8:	00010693          	mv	a3,sp
    36fc:	6dc48513          	addi	a0,s1,1756 # 96dc <_fs>
    3700:	00000097          	auipc	ra,0x0
    3704:	b70080e7          	jalr	-1168(ra) # 3270 <fatfs_get_file_entry>
    3708:	f80508e3          	beqz	a0,3698 <_open_file+0x80>
    370c:	00b14783          	lbu	a5,11(sp)
    3710:	0207f793          	andi	a5,a5,32
    3714:	f80782e3          	beqz	a5,3698 <_open_file+0x80>
    3718:	00b00613          	li	a2,11
    371c:	00010593          	mv	a1,sp
    3720:	21c40513          	addi	a0,s0,540
    3724:	ffffe097          	auipc	ra,0xffffe
    3728:	ebc080e7          	jalr	-324(ra) # 15e0 <memcpy>
    372c:	01c12783          	lw	a5,28(sp)
    3730:	01a15703          	lhu	a4,26(sp)
    3734:	00042423          	sw	zero,8(s0)
    3738:	00f42623          	sw	a5,12(s0)
    373c:	01415783          	lhu	a5,20(sp)
    3740:	42042a23          	sw	zero,1076(s0)
    3744:	00042823          	sw	zero,16(s0)
    3748:	01079793          	slli	a5,a5,0x10
    374c:	00e787b3          	add	a5,a5,a4
    3750:	00f42223          	sw	a5,4(s0)
    3754:	fff00793          	li	a5,-1
    3758:	42f42823          	sw	a5,1072(s0)
    375c:	22f42423          	sw	a5,552(s0)
    3760:	22f42623          	sw	a5,556(s0)
    3764:	6dc48513          	addi	a0,s1,1756
    3768:	00000097          	auipc	ra,0x0
    376c:	858080e7          	jalr	-1960(ra) # 2fc0 <fatfs_fat_purge>
    3770:	f39ff06f          	j	36a8 <_open_file+0x90>
    3774:	00040593          	mv	a1,s0
    3778:	00090513          	mv	a0,s2
    377c:	00000097          	auipc	ra,0x0
    3780:	cf0080e7          	jalr	-784(ra) # 346c <_open_directory>
    3784:	f60514e3          	bnez	a0,36ec <_open_file+0xd4>
    3788:	f11ff06f          	j	3698 <_open_file+0x80>

0000378c <fatfs_sfn_exists>:
    378c:	fe010113          	addi	sp,sp,-32
    3790:	01212823          	sw	s2,16(sp)
    3794:	01312623          	sw	s3,12(sp)
    3798:	01412423          	sw	s4,8(sp)
    379c:	01512223          	sw	s5,4(sp)
    37a0:	01612023          	sw	s6,0(sp)
    37a4:	00112e23          	sw	ra,28(sp)
    37a8:	00812c23          	sw	s0,24(sp)
    37ac:	00912a23          	sw	s1,20(sp)
    37b0:	00050993          	mv	s3,a0
    37b4:	00058a93          	mv	s5,a1
    37b8:	00060b13          	mv	s6,a2
    37bc:	00000913          	li	s2,0
    37c0:	24450a13          	addi	s4,a0,580
    37c4:	00000693          	li	a3,0
    37c8:	00090613          	mv	a2,s2
    37cc:	000a8593          	mv	a1,s5
    37d0:	00098513          	mv	a0,s3
    37d4:	00000097          	auipc	ra,0x0
    37d8:	94c080e7          	jalr	-1716(ra) # 3120 <fatfs_sector_reader>
    37dc:	00050413          	mv	s0,a0
    37e0:	06050263          	beqz	a0,3844 <fatfs_sfn_exists+0xb8>
    37e4:	00190913          	addi	s2,s2,1
    37e8:	04498493          	addi	s1,s3,68
    37ec:	00048513          	mv	a0,s1
    37f0:	fffff097          	auipc	ra,0xfffff
    37f4:	a58080e7          	jalr	-1448(ra) # 2248 <fatfs_entry_lfn_text>
    37f8:	00050863          	beqz	a0,3808 <fatfs_sfn_exists+0x7c>
    37fc:	02048493          	addi	s1,s1,32
    3800:	ff4496e3          	bne	s1,s4,37ec <fatfs_sfn_exists+0x60>
    3804:	fc1ff06f          	j	37c4 <fatfs_sfn_exists+0x38>
    3808:	00048513          	mv	a0,s1
    380c:	fffff097          	auipc	ra,0xfffff
    3810:	a50080e7          	jalr	-1456(ra) # 225c <fatfs_entry_lfn_invalid>
    3814:	fe0514e3          	bnez	a0,37fc <fatfs_sfn_exists+0x70>
    3818:	00048513          	mv	a0,s1
    381c:	fffff097          	auipc	ra,0xfffff
    3820:	ac4080e7          	jalr	-1340(ra) # 22e0 <fatfs_entry_sfn_only>
    3824:	00050413          	mv	s0,a0
    3828:	fc050ae3          	beqz	a0,37fc <fatfs_sfn_exists+0x70>
    382c:	00b00613          	li	a2,11
    3830:	000b0593          	mv	a1,s6
    3834:	00048513          	mv	a0,s1
    3838:	ffffe097          	auipc	ra,0xffffe
    383c:	dec080e7          	jalr	-532(ra) # 1624 <strncmp>
    3840:	fa051ee3          	bnez	a0,37fc <fatfs_sfn_exists+0x70>
    3844:	01c12083          	lw	ra,28(sp)
    3848:	00040513          	mv	a0,s0
    384c:	01812403          	lw	s0,24(sp)
    3850:	01412483          	lw	s1,20(sp)
    3854:	01012903          	lw	s2,16(sp)
    3858:	00c12983          	lw	s3,12(sp)
    385c:	00812a03          	lw	s4,8(sp)
    3860:	00412a83          	lw	s5,4(sp)
    3864:	00012b03          	lw	s6,0(sp)
    3868:	02010113          	addi	sp,sp,32
    386c:	00008067          	ret

00003870 <fatfs_update_file_length>:
    3870:	03852783          	lw	a5,56(a0)
    3874:	14078e63          	beqz	a5,39d0 <fatfs_update_file_length+0x160>
    3878:	fd010113          	addi	sp,sp,-48
    387c:	02912223          	sw	s1,36(sp)
    3880:	03212023          	sw	s2,32(sp)
    3884:	01312e23          	sw	s3,28(sp)
    3888:	01412c23          	sw	s4,24(sp)
    388c:	01612823          	sw	s6,16(sp)
    3890:	01712623          	sw	s7,12(sp)
    3894:	02112623          	sw	ra,44(sp)
    3898:	02812423          	sw	s0,40(sp)
    389c:	01512a23          	sw	s5,20(sp)
    38a0:	00068913          	mv	s2,a3
    38a4:	00060b93          	mv	s7,a2
    38a8:	00058b13          	mv	s6,a1
    38ac:	00050493          	mv	s1,a0
    38b0:	00000993          	li	s3,0
    38b4:	24450a13          	addi	s4,a0,580
    38b8:	00000693          	li	a3,0
    38bc:	00098613          	mv	a2,s3
    38c0:	000b0593          	mv	a1,s6
    38c4:	00048513          	mv	a0,s1
    38c8:	00000097          	auipc	ra,0x0
    38cc:	858080e7          	jalr	-1960(ra) # 3120 <fatfs_sector_reader>
    38d0:	0c050863          	beqz	a0,39a0 <fatfs_update_file_length+0x130>
    38d4:	04448413          	addi	s0,s1,68
    38d8:	00198993          	addi	s3,s3,1
    38dc:	00040a93          	mv	s5,s0
    38e0:	00040513          	mv	a0,s0
    38e4:	fffff097          	auipc	ra,0xfffff
    38e8:	964080e7          	jalr	-1692(ra) # 2248 <fatfs_entry_lfn_text>
    38ec:	0a051463          	bnez	a0,3994 <fatfs_update_file_length+0x124>
    38f0:	00040513          	mv	a0,s0
    38f4:	fffff097          	auipc	ra,0xfffff
    38f8:	968080e7          	jalr	-1688(ra) # 225c <fatfs_entry_lfn_invalid>
    38fc:	08051c63          	bnez	a0,3994 <fatfs_update_file_length+0x124>
    3900:	00040513          	mv	a0,s0
    3904:	fffff097          	auipc	ra,0xfffff
    3908:	9dc080e7          	jalr	-1572(ra) # 22e0 <fatfs_entry_sfn_only>
    390c:	08050463          	beqz	a0,3994 <fatfs_update_file_length+0x124>
    3910:	00b00613          	li	a2,11
    3914:	000b8593          	mv	a1,s7
    3918:	00040513          	mv	a0,s0
    391c:	ffffe097          	auipc	ra,0xffffe
    3920:	d08080e7          	jalr	-760(ra) # 1624 <strncmp>
    3924:	06051863          	bnez	a0,3994 <fatfs_update_file_length+0x124>
    3928:	00895793          	srli	a5,s2,0x8
    392c:	01240e23          	sb	s2,28(s0)
    3930:	00f40ea3          	sb	a5,29(s0)
    3934:	01095793          	srli	a5,s2,0x10
    3938:	01895913          	srli	s2,s2,0x18
    393c:	00f40f23          	sb	a5,30(s0)
    3940:	01240fa3          	sb	s2,31(s0)
    3944:	00040593          	mv	a1,s0
    3948:	02000613          	li	a2,32
    394c:	00040513          	mv	a0,s0
    3950:	ffffe097          	auipc	ra,0xffffe
    3954:	c90080e7          	jalr	-880(ra) # 15e0 <memcpy>
    3958:	02812403          	lw	s0,40(sp)
    395c:	0384a783          	lw	a5,56(s1)
    3960:	2444a503          	lw	a0,580(s1)
    3964:	02c12083          	lw	ra,44(sp)
    3968:	02412483          	lw	s1,36(sp)
    396c:	02012903          	lw	s2,32(sp)
    3970:	01c12983          	lw	s3,28(sp)
    3974:	01812a03          	lw	s4,24(sp)
    3978:	01012b03          	lw	s6,16(sp)
    397c:	00c12b83          	lw	s7,12(sp)
    3980:	000a8593          	mv	a1,s5
    3984:	01412a83          	lw	s5,20(sp)
    3988:	00100613          	li	a2,1
    398c:	03010113          	addi	sp,sp,48
    3990:	00078067          	jr	a5
    3994:	02040413          	addi	s0,s0,32
    3998:	f54414e3          	bne	s0,s4,38e0 <fatfs_update_file_length+0x70>
    399c:	f1dff06f          	j	38b8 <fatfs_update_file_length+0x48>
    39a0:	02c12083          	lw	ra,44(sp)
    39a4:	02812403          	lw	s0,40(sp)
    39a8:	02412483          	lw	s1,36(sp)
    39ac:	02012903          	lw	s2,32(sp)
    39b0:	01c12983          	lw	s3,28(sp)
    39b4:	01812a03          	lw	s4,24(sp)
    39b8:	01412a83          	lw	s5,20(sp)
    39bc:	01012b03          	lw	s6,16(sp)
    39c0:	00c12b83          	lw	s7,12(sp)
    39c4:	00000513          	li	a0,0
    39c8:	03010113          	addi	sp,sp,48
    39cc:	00008067          	ret
    39d0:	00000513          	li	a0,0
    39d4:	00008067          	ret

000039d8 <fatfs_list_directory_next>:
    39d8:	ec010113          	addi	sp,sp,-320
    39dc:	13212823          	sw	s2,304(sp)
    39e0:	13312623          	sw	s3,300(sp)
    39e4:	13412423          	sw	s4,296(sp)
    39e8:	13512223          	sw	s5,292(sp)
    39ec:	13612023          	sw	s6,288(sp)
    39f0:	12112e23          	sw	ra,316(sp)
    39f4:	12812c23          	sw	s0,312(sp)
    39f8:	12912a23          	sw	s1,308(sp)
    39fc:	00050a13          	mv	s4,a0
    3a00:	00058913          	mv	s2,a1
    3a04:	00060993          	mv	s3,a2
    3a08:	10010ea3          	sb	zero,285(sp)
    3a0c:	04450a93          	addi	s5,a0,68
    3a10:	00f00b13          	li	s6,15
    3a14:	00092603          	lw	a2,0(s2)
    3a18:	00492583          	lw	a1,4(s2)
    3a1c:	00000693          	li	a3,0
    3a20:	000a0513          	mv	a0,s4
    3a24:	fffff097          	auipc	ra,0xfffff
    3a28:	6fc080e7          	jalr	1788(ra) # 3120 <fatfs_sector_reader>
    3a2c:	10050c63          	beqz	a0,3b44 <fatfs_list_directory_next+0x16c>
    3a30:	00894483          	lbu	s1,8(s2)
    3a34:	00549413          	slli	s0,s1,0x5
    3a38:	008a8433          	add	s0,s5,s0
    3a3c:	009b7c63          	bgeu	s6,s1,3a54 <fatfs_list_directory_next+0x7c>
    3a40:	00092783          	lw	a5,0(s2)
    3a44:	00090423          	sb	zero,8(s2)
    3a48:	00178793          	addi	a5,a5,1
    3a4c:	00f92023          	sw	a5,0(s2)
    3a50:	fc5ff06f          	j	3a14 <fatfs_list_directory_next+0x3c>
    3a54:	00040513          	mv	a0,s0
    3a58:	ffffe097          	auipc	ra,0xffffe
    3a5c:	7f0080e7          	jalr	2032(ra) # 2248 <fatfs_entry_lfn_text>
    3a60:	02050263          	beqz	a0,3a84 <fatfs_list_directory_next+0xac>
    3a64:	00040593          	mv	a1,s0
    3a68:	01810513          	addi	a0,sp,24
    3a6c:	ffffe097          	auipc	ra,0xffffe
    3a70:	6d4080e7          	jalr	1748(ra) # 2140 <fatfs_lfn_cache_entry>
    3a74:	00148493          	addi	s1,s1,1
    3a78:	0ff4f493          	zext.b	s1,s1
    3a7c:	02040413          	addi	s0,s0,32
    3a80:	fbdff06f          	j	3a3c <fatfs_list_directory_next+0x64>
    3a84:	00040513          	mv	a0,s0
    3a88:	ffffe097          	auipc	ra,0xffffe
    3a8c:	7d4080e7          	jalr	2004(ra) # 225c <fatfs_entry_lfn_invalid>
    3a90:	00050663          	beqz	a0,3a9c <fatfs_list_directory_next+0xc4>
    3a94:	10010ea3          	sb	zero,285(sp)
    3a98:	fddff06f          	j	3a74 <fatfs_list_directory_next+0x9c>
    3a9c:	00040593          	mv	a1,s0
    3aa0:	01810513          	addi	a0,sp,24
    3aa4:	ffffe097          	auipc	ra,0xffffe
    3aa8:	7ec080e7          	jalr	2028(ra) # 2290 <fatfs_entry_lfn_exists>
    3aac:	0c050063          	beqz	a0,3b6c <fatfs_list_directory_next+0x194>
    3ab0:	01810513          	addi	a0,sp,24
    3ab4:	ffffe097          	auipc	ra,0xffffe
    3ab8:	758080e7          	jalr	1880(ra) # 220c <fatfs_lfn_cache_get>
    3abc:	00050593          	mv	a1,a0
    3ac0:	10300613          	li	a2,259
    3ac4:	00098513          	mv	a0,s3
    3ac8:	ffffe097          	auipc	ra,0xffffe
    3acc:	b9c080e7          	jalr	-1124(ra) # 1664 <strncpy>
    3ad0:	00040513          	mv	a0,s0
    3ad4:	fffff097          	auipc	ra,0xfffff
    3ad8:	84c080e7          	jalr	-1972(ra) # 2320 <fatfs_entry_is_dir>
    3adc:	10a98223          	sb	a0,260(s3)
    3ae0:	01d44783          	lbu	a5,29(s0)
    3ae4:	01c44703          	lbu	a4,28(s0)
    3ae8:	00148493          	addi	s1,s1,1
    3aec:	00879793          	slli	a5,a5,0x8
    3af0:	00e7e7b3          	or	a5,a5,a4
    3af4:	01e44703          	lbu	a4,30(s0)
    3af8:	00100513          	li	a0,1
    3afc:	01071713          	slli	a4,a4,0x10
    3b00:	00f76733          	or	a4,a4,a5
    3b04:	01f44783          	lbu	a5,31(s0)
    3b08:	01879793          	slli	a5,a5,0x18
    3b0c:	00e7e7b3          	or	a5,a5,a4
    3b10:	10f9a623          	sw	a5,268(s3)
    3b14:	01544783          	lbu	a5,21(s0)
    3b18:	01444703          	lbu	a4,20(s0)
    3b1c:	01a44683          	lbu	a3,26(s0)
    3b20:	00879793          	slli	a5,a5,0x8
    3b24:	00e7e7b3          	or	a5,a5,a4
    3b28:	01b44703          	lbu	a4,27(s0)
    3b2c:	01079793          	slli	a5,a5,0x10
    3b30:	00871713          	slli	a4,a4,0x8
    3b34:	00d76733          	or	a4,a4,a3
    3b38:	00e7e7b3          	or	a5,a5,a4
    3b3c:	10f9a423          	sw	a5,264(s3)
    3b40:	00990423          	sb	s1,8(s2)
    3b44:	13c12083          	lw	ra,316(sp)
    3b48:	13812403          	lw	s0,312(sp)
    3b4c:	13412483          	lw	s1,308(sp)
    3b50:	13012903          	lw	s2,304(sp)
    3b54:	12c12983          	lw	s3,300(sp)
    3b58:	12812a03          	lw	s4,296(sp)
    3b5c:	12412a83          	lw	s5,292(sp)
    3b60:	12012b03          	lw	s6,288(sp)
    3b64:	14010113          	addi	sp,sp,320
    3b68:	00008067          	ret
    3b6c:	00040513          	mv	a0,s0
    3b70:	ffffe097          	auipc	ra,0xffffe
    3b74:	770080e7          	jalr	1904(ra) # 22e0 <fatfs_entry_sfn_only>
    3b78:	ee050ee3          	beqz	a0,3a74 <fatfs_list_directory_next+0x9c>
    3b7c:	00810a13          	addi	s4,sp,8
    3b80:	00d00613          	li	a2,13
    3b84:	00000593          	li	a1,0
    3b88:	000a0513          	mv	a0,s4
    3b8c:	10010ea3          	sb	zero,285(sp)
    3b90:	ffffe097          	auipc	ra,0xffffe
    3b94:	a34080e7          	jalr	-1484(ra) # 15c4 <memset>
    3b98:	00000793          	li	a5,0
    3b9c:	00800713          	li	a4,8
    3ba0:	00f40633          	add	a2,s0,a5
    3ba4:	00064603          	lbu	a2,0(a2)
    3ba8:	00fa06b3          	add	a3,s4,a5
    3bac:	00178793          	addi	a5,a5,1
    3bb0:	00c68023          	sb	a2,0(a3)
    3bb4:	fee796e3          	bne	a5,a4,3ba0 <fatfs_list_directory_next+0x1c8>
    3bb8:	00844783          	lbu	a5,8(s0)
    3bbc:	00944703          	lbu	a4,9(s0)
    3bc0:	00a44683          	lbu	a3,10(s0)
    3bc4:	00f108a3          	sb	a5,17(sp)
    3bc8:	00e10923          	sb	a4,18(sp)
    3bcc:	fe078793          	addi	a5,a5,-32
    3bd0:	fe070713          	addi	a4,a4,-32
    3bd4:	00f037b3          	snez	a5,a5
    3bd8:	00e03733          	snez	a4,a4
    3bdc:	00d109a3          	sb	a3,19(sp)
    3be0:	00e7e7b3          	or	a5,a5,a4
    3be4:	00079863          	bnez	a5,3bf4 <fatfs_list_directory_next+0x21c>
    3be8:	fe068693          	addi	a3,a3,-32
    3bec:	02000793          	li	a5,32
    3bf0:	00068a63          	beqz	a3,3c04 <fatfs_list_directory_next+0x22c>
    3bf4:	00814703          	lbu	a4,8(sp)
    3bf8:	02e00793          	li	a5,46
    3bfc:	00f71463          	bne	a4,a5,3c04 <fatfs_list_directory_next+0x22c>
    3c00:	02000793          	li	a5,32
    3c04:	000a0593          	mv	a1,s4
    3c08:	00098513          	mv	a0,s3
    3c0c:	00f10823          	sb	a5,16(sp)
    3c10:	fffff097          	auipc	ra,0xfffff
    3c14:	054080e7          	jalr	84(ra) # 2c64 <fatfs_get_sfn_display_name>
    3c18:	eb9ff06f          	j	3ad0 <fatfs_list_directory_next+0xf8>

00003c1c <fl_readdir>:
    3c1c:	000057b7          	lui	a5,0x5
    3c20:	3107a783          	lw	a5,784(a5) # 5310 <_filelib_init>
    3c24:	fd010113          	addi	sp,sp,-48
    3c28:	03212023          	sw	s2,32(sp)
    3c2c:	01312e23          	sw	s3,28(sp)
    3c30:	02112623          	sw	ra,44(sp)
    3c34:	02812423          	sw	s0,40(sp)
    3c38:	02912223          	sw	s1,36(sp)
    3c3c:	00050913          	mv	s2,a0
    3c40:	00058993          	mv	s3,a1
    3c44:	00079663          	bnez	a5,3c50 <fl_readdir+0x34>
    3c48:	ffffe097          	auipc	ra,0xffffe
    3c4c:	488080e7          	jalr	1160(ra) # 20d0 <fl_init>
    3c50:	000094b7          	lui	s1,0x9
    3c54:	6dc48413          	addi	s0,s1,1756 # 96dc <_fs>
    3c58:	03c42783          	lw	a5,60(s0)
    3c5c:	00078463          	beqz	a5,3c64 <fl_readdir+0x48>
    3c60:	000780e7          	jalr	a5
    3c64:	00098613          	mv	a2,s3
    3c68:	00090593          	mv	a1,s2
    3c6c:	6dc48513          	addi	a0,s1,1756
    3c70:	00000097          	auipc	ra,0x0
    3c74:	d68080e7          	jalr	-664(ra) # 39d8 <fatfs_list_directory_next>
    3c78:	04042783          	lw	a5,64(s0)
    3c7c:	00078863          	beqz	a5,3c8c <fl_readdir+0x70>
    3c80:	00a12623          	sw	a0,12(sp)
    3c84:	000780e7          	jalr	a5
    3c88:	00c12503          	lw	a0,12(sp)
    3c8c:	02c12083          	lw	ra,44(sp)
    3c90:	02812403          	lw	s0,40(sp)
    3c94:	00154513          	xori	a0,a0,1
    3c98:	02412483          	lw	s1,36(sp)
    3c9c:	02012903          	lw	s2,32(sp)
    3ca0:	01c12983          	lw	s3,28(sp)
    3ca4:	40a00533          	neg	a0,a0
    3ca8:	03010113          	addi	sp,sp,48
    3cac:	00008067          	ret

00003cb0 <_read_sectors>:
    3cb0:	fd010113          	addi	sp,sp,-48
    3cb4:	01512a23          	sw	s5,20(sp)
    3cb8:	00009ab7          	lui	s5,0x9
    3cbc:	01312e23          	sw	s3,28(sp)
    3cc0:	6dcac983          	lbu	s3,1756(s5) # 96dc <_fs>
    3cc4:	01612823          	sw	s6,16(sp)
    3cc8:	00058b13          	mv	s6,a1
    3ccc:	02912223          	sw	s1,36(sp)
    3cd0:	00098593          	mv	a1,s3
    3cd4:	00050493          	mv	s1,a0
    3cd8:	000b0513          	mv	a0,s6
    3cdc:	02112623          	sw	ra,44(sp)
    3ce0:	02812423          	sw	s0,40(sp)
    3ce4:	01412c23          	sw	s4,24(sp)
    3ce8:	00068413          	mv	s0,a3
    3cec:	01712623          	sw	s7,12(sp)
    3cf0:	01812423          	sw	s8,8(sp)
    3cf4:	03212023          	sw	s2,32(sp)
    3cf8:	00060c13          	mv	s8,a2
    3cfc:	ffffe097          	auipc	ra,0xffffe
    3d00:	81c080e7          	jalr	-2020(ra) # 1518 <__udivsi3>
    3d04:	00050a13          	mv	s4,a0
    3d08:	00098593          	mv	a1,s3
    3d0c:	000b0513          	mv	a0,s6
    3d10:	ffffe097          	auipc	ra,0xffffe
    3d14:	850080e7          	jalr	-1968(ra) # 1560 <__umodsi3>
    3d18:	00a407b3          	add	a5,s0,a0
    3d1c:	00050b93          	mv	s7,a0
    3d20:	00f9fe63          	bgeu	s3,a5,3d3c <_read_sectors+0x8c>
    3d24:	000a0593          	mv	a1,s4
    3d28:	00098513          	mv	a0,s3
    3d2c:	ffffe097          	auipc	ra,0xffffe
    3d30:	f10080e7          	jalr	-240(ra) # 1c3c <__mulsi3>
    3d34:	416987b3          	sub	a5,s3,s6
    3d38:	00f50433          	add	s0,a0,a5
    3d3c:	2284a903          	lw	s2,552(s1)
    3d40:	07491863          	bne	s2,s4,3db0 <_read_sectors+0x100>
    3d44:	22c4a583          	lw	a1,556(s1)
    3d48:	fff00793          	li	a5,-1
    3d4c:	02f58663          	beq	a1,a5,3d78 <_read_sectors+0xc8>
    3d50:	6dca8513          	addi	a0,s5,1756
    3d54:	ffffe097          	auipc	ra,0xffffe
    3d58:	24c080e7          	jalr	588(ra) # 1fa0 <fatfs_lba_of_cluster>
    3d5c:	017505b3          	add	a1,a0,s7
    3d60:	00040693          	mv	a3,s0
    3d64:	000c0613          	mv	a2,s8
    3d68:	6dca8513          	addi	a0,s5,1756
    3d6c:	ffffe097          	auipc	ra,0xffffe
    3d70:	280080e7          	jalr	640(ra) # 1fec <fatfs_sector_read>
    3d74:	00051463          	bnez	a0,3d7c <_read_sectors+0xcc>
    3d78:	00000413          	li	s0,0
    3d7c:	02c12083          	lw	ra,44(sp)
    3d80:	00040513          	mv	a0,s0
    3d84:	02812403          	lw	s0,40(sp)
    3d88:	02412483          	lw	s1,36(sp)
    3d8c:	02012903          	lw	s2,32(sp)
    3d90:	01c12983          	lw	s3,28(sp)
    3d94:	01812a03          	lw	s4,24(sp)
    3d98:	01412a83          	lw	s5,20(sp)
    3d9c:	01012b03          	lw	s6,16(sp)
    3da0:	00c12b83          	lw	s7,12(sp)
    3da4:	00812c03          	lw	s8,8(sp)
    3da8:	03010113          	addi	sp,sp,48
    3dac:	00008067          	ret
    3db0:	033b6463          	bltu	s6,s3,3dd8 <_read_sectors+0x128>
    3db4:	00190793          	addi	a5,s2,1
    3db8:	03479063          	bne	a5,s4,3dd8 <_read_sectors+0x128>
    3dbc:	22c4a583          	lw	a1,556(s1)
    3dc0:	03496263          	bltu	s2,s4,3de4 <_read_sectors+0x134>
    3dc4:	fff00793          	li	a5,-1
    3dc8:	faf588e3          	beq	a1,a5,3d78 <_read_sectors+0xc8>
    3dcc:	22b4a623          	sw	a1,556(s1)
    3dd0:	2344a423          	sw	s4,552(s1)
    3dd4:	f7dff06f          	j	3d50 <_read_sectors+0xa0>
    3dd8:	0044a583          	lw	a1,4(s1)
    3ddc:	00000913          	li	s2,0
    3de0:	fe1ff06f          	j	3dc0 <_read_sectors+0x110>
    3de4:	6dca8513          	addi	a0,s5,1756
    3de8:	fffff097          	auipc	ra,0xfffff
    3dec:	230080e7          	jalr	560(ra) # 3018 <fatfs_find_next_cluster>
    3df0:	00050593          	mv	a1,a0
    3df4:	00190913          	addi	s2,s2,1
    3df8:	fc9ff06f          	j	3dc0 <_read_sectors+0x110>

00003dfc <fatfs_set_fs_info_next_free_cluster>:
    3dfc:	03052783          	lw	a5,48(a0)
    3e00:	0a078463          	beqz	a5,3ea8 <fatfs_set_fs_info_next_free_cluster+0xac>
    3e04:	fe010113          	addi	sp,sp,-32
    3e08:	01c52783          	lw	a5,28(a0)
    3e0c:	00912a23          	sw	s1,20(sp)
    3e10:	00058493          	mv	s1,a1
    3e14:	01855583          	lhu	a1,24(a0)
    3e18:	00812c23          	sw	s0,24(sp)
    3e1c:	00112e23          	sw	ra,28(sp)
    3e20:	00f585b3          	add	a1,a1,a5
    3e24:	00050413          	mv	s0,a0
    3e28:	ffffe097          	auipc	ra,0xffffe
    3e2c:	fcc080e7          	jalr	-52(ra) # 1df4 <fatfs_fat_read_sector>
    3e30:	00050593          	mv	a1,a0
    3e34:	06050063          	beqz	a0,3e94 <fatfs_set_fs_info_next_free_cluster+0x98>
    3e38:	20852783          	lw	a5,520(a0)
    3e3c:	0084d713          	srli	a4,s1,0x8
    3e40:	00100613          	li	a2,1
    3e44:	1e978623          	sb	s1,492(a5)
    3e48:	20852783          	lw	a5,520(a0)
    3e4c:	1ee786a3          	sb	a4,493(a5)
    3e50:	20852783          	lw	a5,520(a0)
    3e54:	0104d713          	srli	a4,s1,0x10
    3e58:	1ee78723          	sb	a4,494(a5)
    3e5c:	20852783          	lw	a5,520(a0)
    3e60:	0184d713          	srli	a4,s1,0x18
    3e64:	1ee787a3          	sb	a4,495(a5)
    3e68:	03842783          	lw	a5,56(s0)
    3e6c:	20c52223          	sw	a2,516(a0)
    3e70:	02942223          	sw	s1,36(s0)
    3e74:	00078a63          	beqz	a5,3e88 <fatfs_set_fs_info_next_free_cluster+0x8c>
    3e78:	20052503          	lw	a0,512(a0)
    3e7c:	00b12623          	sw	a1,12(sp)
    3e80:	000780e7          	jalr	a5
    3e84:	00c12583          	lw	a1,12(sp)
    3e88:	fff00793          	li	a5,-1
    3e8c:	20f5a023          	sw	a5,512(a1)
    3e90:	2005a223          	sw	zero,516(a1)
    3e94:	01c12083          	lw	ra,28(sp)
    3e98:	01812403          	lw	s0,24(sp)
    3e9c:	01412483          	lw	s1,20(sp)
    3ea0:	02010113          	addi	sp,sp,32
    3ea4:	00008067          	ret
    3ea8:	00008067          	ret

00003eac <fatfs_find_blank_cluster>:
    3eac:	fd010113          	addi	sp,sp,-48
    3eb0:	01312e23          	sw	s3,28(sp)
    3eb4:	100009b7          	lui	s3,0x10000
    3eb8:	02912223          	sw	s1,36(sp)
    3ebc:	03212023          	sw	s2,32(sp)
    3ec0:	02112623          	sw	ra,44(sp)
    3ec4:	02812423          	sw	s0,40(sp)
    3ec8:	00050913          	mv	s2,a0
    3ecc:	00058493          	mv	s1,a1
    3ed0:	fff98993          	addi	s3,s3,-1 # fffffff <__stacktop+0xffeffff>
    3ed4:	03092783          	lw	a5,48(s2)
    3ed8:	0074d413          	srli	s0,s1,0x7
    3edc:	00079463          	bnez	a5,3ee4 <fatfs_find_blank_cluster+0x38>
    3ee0:	0084d413          	srli	s0,s1,0x8
    3ee4:	02092783          	lw	a5,32(s2)
    3ee8:	0cf47863          	bgeu	s0,a5,3fb8 <fatfs_find_blank_cluster+0x10c>
    3eec:	01492583          	lw	a1,20(s2)
    3ef0:	00090513          	mv	a0,s2
    3ef4:	00c12623          	sw	a2,12(sp)
    3ef8:	00b405b3          	add	a1,s0,a1
    3efc:	ffffe097          	auipc	ra,0xffffe
    3f00:	ef8080e7          	jalr	-264(ra) # 1df4 <fatfs_fat_read_sector>
    3f04:	0a050a63          	beqz	a0,3fb8 <fatfs_find_blank_cluster+0x10c>
    3f08:	03092783          	lw	a5,48(s2)
    3f0c:	20852703          	lw	a4,520(a0)
    3f10:	00c12603          	lw	a2,12(sp)
    3f14:	04079a63          	bnez	a5,3f68 <fatfs_find_blank_cluster+0xbc>
    3f18:	00841413          	slli	s0,s0,0x8
    3f1c:	40848433          	sub	s0,s1,s0
    3f20:	00141413          	slli	s0,s0,0x1
    3f24:	01041413          	slli	s0,s0,0x10
    3f28:	01045413          	srli	s0,s0,0x10
    3f2c:	00870733          	add	a4,a4,s0
    3f30:	00174783          	lbu	a5,1(a4)
    3f34:	00074703          	lbu	a4,0(a4)
    3f38:	00879793          	slli	a5,a5,0x8
    3f3c:	00e787b3          	add	a5,a5,a4
    3f40:	06079863          	bnez	a5,3fb0 <fatfs_find_blank_cluster+0x104>
    3f44:	00962023          	sw	s1,0(a2)
    3f48:	00100513          	li	a0,1
    3f4c:	02c12083          	lw	ra,44(sp)
    3f50:	02812403          	lw	s0,40(sp)
    3f54:	02412483          	lw	s1,36(sp)
    3f58:	02012903          	lw	s2,32(sp)
    3f5c:	01c12983          	lw	s3,28(sp)
    3f60:	03010113          	addi	sp,sp,48
    3f64:	00008067          	ret
    3f68:	00741413          	slli	s0,s0,0x7
    3f6c:	40848433          	sub	s0,s1,s0
    3f70:	00241413          	slli	s0,s0,0x2
    3f74:	01041413          	slli	s0,s0,0x10
    3f78:	01045413          	srli	s0,s0,0x10
    3f7c:	00870733          	add	a4,a4,s0
    3f80:	00374783          	lbu	a5,3(a4)
    3f84:	00274683          	lbu	a3,2(a4)
    3f88:	01879793          	slli	a5,a5,0x18
    3f8c:	01069693          	slli	a3,a3,0x10
    3f90:	00d787b3          	add	a5,a5,a3
    3f94:	00074683          	lbu	a3,0(a4)
    3f98:	00174703          	lbu	a4,1(a4)
    3f9c:	00d787b3          	add	a5,a5,a3
    3fa0:	00871713          	slli	a4,a4,0x8
    3fa4:	00e787b3          	add	a5,a5,a4
    3fa8:	0137f7b3          	and	a5,a5,s3
    3fac:	f95ff06f          	j	3f40 <fatfs_find_blank_cluster+0x94>
    3fb0:	00148493          	addi	s1,s1,1
    3fb4:	f21ff06f          	j	3ed4 <fatfs_find_blank_cluster+0x28>
    3fb8:	00000513          	li	a0,0
    3fbc:	f91ff06f          	j	3f4c <fatfs_find_blank_cluster+0xa0>

00003fc0 <fatfs_fat_set_cluster>:
    3fc0:	03052783          	lw	a5,48(a0)
    3fc4:	fe010113          	addi	sp,sp,-32
    3fc8:	00812c23          	sw	s0,24(sp)
    3fcc:	00912a23          	sw	s1,20(sp)
    3fd0:	01212823          	sw	s2,16(sp)
    3fd4:	00112e23          	sw	ra,28(sp)
    3fd8:	00050913          	mv	s2,a0
    3fdc:	00058413          	mv	s0,a1
    3fe0:	0085d493          	srli	s1,a1,0x8
    3fe4:	00078463          	beqz	a5,3fec <fatfs_fat_set_cluster+0x2c>
    3fe8:	0075d493          	srli	s1,a1,0x7
    3fec:	01492583          	lw	a1,20(s2)
    3ff0:	00090513          	mv	a0,s2
    3ff4:	00c12623          	sw	a2,12(sp)
    3ff8:	00b485b3          	add	a1,s1,a1
    3ffc:	ffffe097          	auipc	ra,0xffffe
    4000:	df8080e7          	jalr	-520(ra) # 1df4 <fatfs_fat_read_sector>
    4004:	00050793          	mv	a5,a0
    4008:	00000513          	li	a0,0
    400c:	04078663          	beqz	a5,4058 <fatfs_fat_set_cluster+0x98>
    4010:	03092683          	lw	a3,48(s2)
    4014:	2087a703          	lw	a4,520(a5)
    4018:	00c12603          	lw	a2,12(sp)
    401c:	04069a63          	bnez	a3,4070 <fatfs_fat_set_cluster+0xb0>
    4020:	00849493          	slli	s1,s1,0x8
    4024:	40940433          	sub	s0,s0,s1
    4028:	00141413          	slli	s0,s0,0x1
    402c:	01041413          	slli	s0,s0,0x10
    4030:	01045413          	srli	s0,s0,0x10
    4034:	00870733          	add	a4,a4,s0
    4038:	00c70023          	sb	a2,0(a4)
    403c:	2087a703          	lw	a4,520(a5)
    4040:	00865613          	srli	a2,a2,0x8
    4044:	00870733          	add	a4,a4,s0
    4048:	00c700a3          	sb	a2,1(a4)
    404c:	00100713          	li	a4,1
    4050:	20e7a223          	sw	a4,516(a5)
    4054:	00100513          	li	a0,1
    4058:	01c12083          	lw	ra,28(sp)
    405c:	01812403          	lw	s0,24(sp)
    4060:	01412483          	lw	s1,20(sp)
    4064:	01012903          	lw	s2,16(sp)
    4068:	02010113          	addi	sp,sp,32
    406c:	00008067          	ret
    4070:	00749493          	slli	s1,s1,0x7
    4074:	40940433          	sub	s0,s0,s1
    4078:	00241413          	slli	s0,s0,0x2
    407c:	01041413          	slli	s0,s0,0x10
    4080:	01045413          	srli	s0,s0,0x10
    4084:	00870733          	add	a4,a4,s0
    4088:	00c70023          	sb	a2,0(a4)
    408c:	2087a703          	lw	a4,520(a5)
    4090:	00865693          	srli	a3,a2,0x8
    4094:	00870733          	add	a4,a4,s0
    4098:	00d700a3          	sb	a3,1(a4)
    409c:	2087a703          	lw	a4,520(a5)
    40a0:	01065693          	srli	a3,a2,0x10
    40a4:	01865613          	srli	a2,a2,0x18
    40a8:	00870733          	add	a4,a4,s0
    40ac:	00d70123          	sb	a3,2(a4)
    40b0:	2087a703          	lw	a4,520(a5)
    40b4:	00870733          	add	a4,a4,s0
    40b8:	00c701a3          	sb	a2,3(a4)
    40bc:	f91ff06f          	j	404c <fatfs_fat_set_cluster+0x8c>

000040c0 <fatfs_free_cluster_chain>:
    40c0:	fe010113          	addi	sp,sp,-32
    40c4:	00812c23          	sw	s0,24(sp)
    40c8:	00912a23          	sw	s1,20(sp)
    40cc:	00112e23          	sw	ra,28(sp)
    40d0:	01212823          	sw	s2,16(sp)
    40d4:	00050493          	mv	s1,a0
    40d8:	ffd00413          	li	s0,-3
    40dc:	fff58793          	addi	a5,a1,-1
    40e0:	02f47063          	bgeu	s0,a5,4100 <fatfs_free_cluster_chain+0x40>
    40e4:	01c12083          	lw	ra,28(sp)
    40e8:	01812403          	lw	s0,24(sp)
    40ec:	01412483          	lw	s1,20(sp)
    40f0:	01012903          	lw	s2,16(sp)
    40f4:	00100513          	li	a0,1
    40f8:	02010113          	addi	sp,sp,32
    40fc:	00008067          	ret
    4100:	00048513          	mv	a0,s1
    4104:	00b12623          	sw	a1,12(sp)
    4108:	fffff097          	auipc	ra,0xfffff
    410c:	f10080e7          	jalr	-240(ra) # 3018 <fatfs_find_next_cluster>
    4110:	00c12583          	lw	a1,12(sp)
    4114:	00050913          	mv	s2,a0
    4118:	00000613          	li	a2,0
    411c:	00048513          	mv	a0,s1
    4120:	00000097          	auipc	ra,0x0
    4124:	ea0080e7          	jalr	-352(ra) # 3fc0 <fatfs_fat_set_cluster>
    4128:	00090593          	mv	a1,s2
    412c:	fb1ff06f          	j	40dc <fatfs_free_cluster_chain+0x1c>

00004130 <fatfs_fat_add_cluster_to_chain>:
    4130:	fd010113          	addi	sp,sp,-48
    4134:	02912223          	sw	s1,36(sp)
    4138:	02112623          	sw	ra,44(sp)
    413c:	02812423          	sw	s0,40(sp)
    4140:	03212023          	sw	s2,32(sp)
    4144:	01312e23          	sw	s3,28(sp)
    4148:	fff00493          	li	s1,-1
    414c:	02959263          	bne	a1,s1,4170 <fatfs_fat_add_cluster_to_chain+0x40>
    4150:	00000513          	li	a0,0
    4154:	02c12083          	lw	ra,44(sp)
    4158:	02812403          	lw	s0,40(sp)
    415c:	02412483          	lw	s1,36(sp)
    4160:	02012903          	lw	s2,32(sp)
    4164:	01c12983          	lw	s3,28(sp)
    4168:	03010113          	addi	sp,sp,48
    416c:	00008067          	ret
    4170:	00050913          	mv	s2,a0
    4174:	00058413          	mv	s0,a1
    4178:	00060993          	mv	s3,a2
    417c:	00040593          	mv	a1,s0
    4180:	00090513          	mv	a0,s2
    4184:	00812623          	sw	s0,12(sp)
    4188:	fffff097          	auipc	ra,0xfffff
    418c:	e90080e7          	jalr	-368(ra) # 3018 <fatfs_find_next_cluster>
    4190:	00050413          	mv	s0,a0
    4194:	fa050ee3          	beqz	a0,4150 <fatfs_fat_add_cluster_to_chain+0x20>
    4198:	00c12583          	lw	a1,12(sp)
    419c:	fe9510e3          	bne	a0,s1,417c <fatfs_fat_add_cluster_to_chain+0x4c>
    41a0:	00098613          	mv	a2,s3
    41a4:	00090513          	mv	a0,s2
    41a8:	00000097          	auipc	ra,0x0
    41ac:	e18080e7          	jalr	-488(ra) # 3fc0 <fatfs_fat_set_cluster>
    41b0:	00040613          	mv	a2,s0
    41b4:	00098593          	mv	a1,s3
    41b8:	00090513          	mv	a0,s2
    41bc:	00000097          	auipc	ra,0x0
    41c0:	e04080e7          	jalr	-508(ra) # 3fc0 <fatfs_fat_set_cluster>
    41c4:	00100513          	li	a0,1
    41c8:	f8dff06f          	j	4154 <fatfs_fat_add_cluster_to_chain+0x24>

000041cc <fatfs_add_free_space>:
    41cc:	02452783          	lw	a5,36(a0)
    41d0:	fd010113          	addi	sp,sp,-48
    41d4:	02812423          	sw	s0,40(sp)
    41d8:	01312e23          	sw	s3,28(sp)
    41dc:	01412c23          	sw	s4,24(sp)
    41e0:	0005a983          	lw	s3,0(a1)
    41e4:	01512a23          	sw	s5,20(sp)
    41e8:	00058a13          	mv	s4,a1
    41ec:	02112623          	sw	ra,44(sp)
    41f0:	02912223          	sw	s1,36(sp)
    41f4:	03212023          	sw	s2,32(sp)
    41f8:	fff00593          	li	a1,-1
    41fc:	00050413          	mv	s0,a0
    4200:	00060a93          	mv	s5,a2
    4204:	00b78663          	beq	a5,a1,4210 <fatfs_add_free_space+0x44>
    4208:	00000097          	auipc	ra,0x0
    420c:	bf4080e7          	jalr	-1036(ra) # 3dfc <fatfs_set_fs_info_next_free_cluster>
    4210:	00000493          	li	s1,0
    4214:	03549663          	bne	s1,s5,4240 <fatfs_add_free_space+0x74>
    4218:	00100513          	li	a0,1
    421c:	02c12083          	lw	ra,44(sp)
    4220:	02812403          	lw	s0,40(sp)
    4224:	02412483          	lw	s1,36(sp)
    4228:	02012903          	lw	s2,32(sp)
    422c:	01c12983          	lw	s3,28(sp)
    4230:	01812a03          	lw	s4,24(sp)
    4234:	01412a83          	lw	s5,20(sp)
    4238:	03010113          	addi	sp,sp,48
    423c:	00008067          	ret
    4240:	00842583          	lw	a1,8(s0)
    4244:	00c10613          	addi	a2,sp,12
    4248:	00040513          	mv	a0,s0
    424c:	00000097          	auipc	ra,0x0
    4250:	c60080e7          	jalr	-928(ra) # 3eac <fatfs_find_blank_cluster>
    4254:	fc0504e3          	beqz	a0,421c <fatfs_add_free_space+0x50>
    4258:	00c12903          	lw	s2,12(sp)
    425c:	00098593          	mv	a1,s3
    4260:	00040513          	mv	a0,s0
    4264:	00090613          	mv	a2,s2
    4268:	00000097          	auipc	ra,0x0
    426c:	d58080e7          	jalr	-680(ra) # 3fc0 <fatfs_fat_set_cluster>
    4270:	fff00613          	li	a2,-1
    4274:	00090593          	mv	a1,s2
    4278:	00040513          	mv	a0,s0
    427c:	00000097          	auipc	ra,0x0
    4280:	d44080e7          	jalr	-700(ra) # 3fc0 <fatfs_fat_set_cluster>
    4284:	00049463          	bnez	s1,428c <fatfs_add_free_space+0xc0>
    4288:	012a2023          	sw	s2,0(s4)
    428c:	00148493          	addi	s1,s1,1
    4290:	00090993          	mv	s3,s2
    4294:	f81ff06f          	j	4214 <fatfs_add_free_space+0x48>

00004298 <_write_sectors>:
    4298:	fb010113          	addi	sp,sp,-80
    429c:	03512a23          	sw	s5,52(sp)
    42a0:	00009ab7          	lui	s5,0x9
    42a4:	04112623          	sw	ra,76(sp)
    42a8:	04812423          	sw	s0,72(sp)
    42ac:	04912223          	sw	s1,68(sp)
    42b0:	03412c23          	sw	s4,56(sp)
    42b4:	03612823          	sw	s6,48(sp)
    42b8:	03712623          	sw	s7,44(sp)
    42bc:	03812423          	sw	s8,40(sp)
    42c0:	03912223          	sw	s9,36(sp)
    42c4:	03a12023          	sw	s10,32(sp)
    42c8:	05212023          	sw	s2,64(sp)
    42cc:	03312e23          	sw	s3,60(sp)
    42d0:	6dca8b93          	addi	s7,s5,1756 # 96dc <_fs>
    42d4:	000bc983          	lbu	s3,0(s7)
    42d8:	00058b13          	mv	s6,a1
    42dc:	fff00793          	li	a5,-1
    42e0:	00098593          	mv	a1,s3
    42e4:	00050493          	mv	s1,a0
    42e8:	000b0513          	mv	a0,s6
    42ec:	00068c13          	mv	s8,a3
    42f0:	00f12e23          	sw	a5,28(sp)
    42f4:	00060d13          	mv	s10,a2
    42f8:	ffffd097          	auipc	ra,0xffffd
    42fc:	220080e7          	jalr	544(ra) # 1518 <__udivsi3>
    4300:	00050a13          	mv	s4,a0
    4304:	00098593          	mv	a1,s3
    4308:	000b0513          	mv	a0,s6
    430c:	ffffd097          	auipc	ra,0xffffd
    4310:	254080e7          	jalr	596(ra) # 1560 <__umodsi3>
    4314:	00ac07b3          	add	a5,s8,a0
    4318:	00050c93          	mv	s9,a0
    431c:	000c0413          	mv	s0,s8
    4320:	00f9fe63          	bgeu	s3,a5,433c <_write_sectors+0xa4>
    4324:	000a0593          	mv	a1,s4
    4328:	00098513          	mv	a0,s3
    432c:	ffffe097          	auipc	ra,0xffffe
    4330:	910080e7          	jalr	-1776(ra) # 1c3c <__mulsi3>
    4334:	416987b3          	sub	a5,s3,s6
    4338:	00f50433          	add	s0,a0,a5
    433c:	2284a903          	lw	s2,552(s1)
    4340:	03491a63          	bne	s2,s4,4374 <_write_sectors+0xdc>
    4344:	22c4a583          	lw	a1,556(s1)
    4348:	6dca8513          	addi	a0,s5,1756
    434c:	ffffe097          	auipc	ra,0xffffe
    4350:	c54080e7          	jalr	-940(ra) # 1fa0 <fatfs_lba_of_cluster>
    4354:	019505b3          	add	a1,a0,s9
    4358:	00040693          	mv	a3,s0
    435c:	000d0613          	mv	a2,s10
    4360:	6dca8513          	addi	a0,s5,1756
    4364:	ffffe097          	auipc	ra,0xffffe
    4368:	ca0080e7          	jalr	-864(ra) # 2004 <fatfs_sector_write>
    436c:	04050a63          	beqz	a0,43c0 <_write_sectors+0x128>
    4370:	0540006f          	j	43c4 <_write_sectors+0x12c>
    4374:	093b6663          	bltu	s6,s3,4400 <_write_sectors+0x168>
    4378:	00190793          	addi	a5,s2,1
    437c:	09479263          	bne	a5,s4,4400 <_write_sectors+0x168>
    4380:	22c4a583          	lw	a1,556(s1)
    4384:	fff00b13          	li	s6,-1
    4388:	09496263          	bltu	s2,s4,440c <_write_sectors+0x174>
    438c:	fff00793          	li	a5,-1
    4390:	0af59463          	bne	a1,a5,4438 <_write_sectors+0x1a0>
    4394:	000bc583          	lbu	a1,0(s7)
    4398:	fff58513          	addi	a0,a1,-1
    439c:	01850533          	add	a0,a0,s8
    43a0:	ffffd097          	auipc	ra,0xffffd
    43a4:	178080e7          	jalr	376(ra) # 1518 <__udivsi3>
    43a8:	00050613          	mv	a2,a0
    43ac:	01c10593          	addi	a1,sp,28
    43b0:	000b8513          	mv	a0,s7
    43b4:	00000097          	auipc	ra,0x0
    43b8:	e18080e7          	jalr	-488(ra) # 41cc <fatfs_add_free_space>
    43bc:	06051c63          	bnez	a0,4434 <_write_sectors+0x19c>
    43c0:	00000413          	li	s0,0
    43c4:	04c12083          	lw	ra,76(sp)
    43c8:	00040513          	mv	a0,s0
    43cc:	04812403          	lw	s0,72(sp)
    43d0:	04412483          	lw	s1,68(sp)
    43d4:	04012903          	lw	s2,64(sp)
    43d8:	03c12983          	lw	s3,60(sp)
    43dc:	03812a03          	lw	s4,56(sp)
    43e0:	03412a83          	lw	s5,52(sp)
    43e4:	03012b03          	lw	s6,48(sp)
    43e8:	02c12b83          	lw	s7,44(sp)
    43ec:	02812c03          	lw	s8,40(sp)
    43f0:	02412c83          	lw	s9,36(sp)
    43f4:	02012d03          	lw	s10,32(sp)
    43f8:	05010113          	addi	sp,sp,80
    43fc:	00008067          	ret
    4400:	0044a583          	lw	a1,4(s1)
    4404:	00000913          	li	s2,0
    4408:	f7dff06f          	j	4384 <_write_sectors+0xec>
    440c:	6dca8513          	addi	a0,s5,1756
    4410:	00b12623          	sw	a1,12(sp)
    4414:	fffff097          	auipc	ra,0xfffff
    4418:	c04080e7          	jalr	-1020(ra) # 3018 <fatfs_find_next_cluster>
    441c:	00c12583          	lw	a1,12(sp)
    4420:	00b12e23          	sw	a1,28(sp)
    4424:	f76508e3          	beq	a0,s6,4394 <_write_sectors+0xfc>
    4428:	00190913          	addi	s2,s2,1
    442c:	00050593          	mv	a1,a0
    4430:	f59ff06f          	j	4388 <_write_sectors+0xf0>
    4434:	01c12583          	lw	a1,28(sp)
    4438:	22b4a623          	sw	a1,556(s1)
    443c:	2344a423          	sw	s4,552(s1)
    4440:	f09ff06f          	j	4348 <_write_sectors+0xb0>

00004444 <fl_fflush>:
    4444:	000057b7          	lui	a5,0x5
    4448:	3107a783          	lw	a5,784(a5) # 5310 <_filelib_init>
    444c:	ff010113          	addi	sp,sp,-16
    4450:	00812423          	sw	s0,8(sp)
    4454:	00112623          	sw	ra,12(sp)
    4458:	00912223          	sw	s1,4(sp)
    445c:	00050413          	mv	s0,a0
    4460:	00079663          	bnez	a5,446c <fl_fflush+0x28>
    4464:	ffffe097          	auipc	ra,0xffffe
    4468:	c6c080e7          	jalr	-916(ra) # 20d0 <fl_init>
    446c:	04040663          	beqz	s0,44b8 <fl_fflush+0x74>
    4470:	000094b7          	lui	s1,0x9
    4474:	6dc48493          	addi	s1,s1,1756 # 96dc <_fs>
    4478:	03c4a783          	lw	a5,60(s1)
    447c:	00078463          	beqz	a5,4484 <fl_fflush+0x40>
    4480:	000780e7          	jalr	a5
    4484:	43442783          	lw	a5,1076(s0)
    4488:	02078263          	beqz	a5,44ac <fl_fflush+0x68>
    448c:	43042583          	lw	a1,1072(s0)
    4490:	00100693          	li	a3,1
    4494:	23040613          	addi	a2,s0,560
    4498:	00040513          	mv	a0,s0
    449c:	00000097          	auipc	ra,0x0
    44a0:	dfc080e7          	jalr	-516(ra) # 4298 <_write_sectors>
    44a4:	00050463          	beqz	a0,44ac <fl_fflush+0x68>
    44a8:	42042a23          	sw	zero,1076(s0)
    44ac:	0404a783          	lw	a5,64(s1)
    44b0:	00078463          	beqz	a5,44b8 <fl_fflush+0x74>
    44b4:	000780e7          	jalr	a5
    44b8:	00c12083          	lw	ra,12(sp)
    44bc:	00812403          	lw	s0,8(sp)
    44c0:	00412483          	lw	s1,4(sp)
    44c4:	00000513          	li	a0,0
    44c8:	01010113          	addi	sp,sp,16
    44cc:	00008067          	ret

000044d0 <fl_fclose>:
    44d0:	000057b7          	lui	a5,0x5
    44d4:	3107a783          	lw	a5,784(a5) # 5310 <_filelib_init>
    44d8:	ff010113          	addi	sp,sp,-16
    44dc:	00812423          	sw	s0,8(sp)
    44e0:	00112623          	sw	ra,12(sp)
    44e4:	00912223          	sw	s1,4(sp)
    44e8:	01212023          	sw	s2,0(sp)
    44ec:	00050413          	mv	s0,a0
    44f0:	00079663          	bnez	a5,44fc <fl_fclose+0x2c>
    44f4:	ffffe097          	auipc	ra,0xffffe
    44f8:	bdc080e7          	jalr	-1060(ra) # 20d0 <fl_init>
    44fc:	08040c63          	beqz	s0,4594 <fl_fclose+0xc4>
    4500:	000094b7          	lui	s1,0x9
    4504:	6dc48913          	addi	s2,s1,1756 # 96dc <_fs>
    4508:	03c92783          	lw	a5,60(s2)
    450c:	00078463          	beqz	a5,4514 <fl_fclose+0x44>
    4510:	000780e7          	jalr	a5
    4514:	00040513          	mv	a0,s0
    4518:	00000097          	auipc	ra,0x0
    451c:	f2c080e7          	jalr	-212(ra) # 4444 <fl_fflush>
    4520:	01042783          	lw	a5,16(s0)
    4524:	00078e63          	beqz	a5,4540 <fl_fclose+0x70>
    4528:	00c42683          	lw	a3,12(s0)
    452c:	00042583          	lw	a1,0(s0)
    4530:	21c40613          	addi	a2,s0,540
    4534:	6dc48513          	addi	a0,s1,1756
    4538:	fffff097          	auipc	ra,0xfffff
    453c:	338080e7          	jalr	824(ra) # 3870 <fatfs_update_file_length>
    4540:	fff00793          	li	a5,-1
    4544:	42f42823          	sw	a5,1072(s0)
    4548:	00040513          	mv	a0,s0
    454c:	00042423          	sw	zero,8(s0)
    4550:	00042623          	sw	zero,12(s0)
    4554:	00042223          	sw	zero,4(s0)
    4558:	42042a23          	sw	zero,1076(s0)
    455c:	00042823          	sw	zero,16(s0)
    4560:	ffffe097          	auipc	ra,0xffffe
    4564:	9f8080e7          	jalr	-1544(ra) # 1f58 <_free_file>
    4568:	6dc48513          	addi	a0,s1,1756
    456c:	fffff097          	auipc	ra,0xfffff
    4570:	a54080e7          	jalr	-1452(ra) # 2fc0 <fatfs_fat_purge>
    4574:	04092783          	lw	a5,64(s2)
    4578:	00078e63          	beqz	a5,4594 <fl_fclose+0xc4>
    457c:	00812403          	lw	s0,8(sp)
    4580:	00c12083          	lw	ra,12(sp)
    4584:	00412483          	lw	s1,4(sp)
    4588:	00012903          	lw	s2,0(sp)
    458c:	01010113          	addi	sp,sp,16
    4590:	00078067          	jr	a5
    4594:	00c12083          	lw	ra,12(sp)
    4598:	00812403          	lw	s0,8(sp)
    459c:	00412483          	lw	s1,4(sp)
    45a0:	00012903          	lw	s2,0(sp)
    45a4:	01010113          	addi	sp,sp,16
    45a8:	00008067          	ret

000045ac <fl_fread>:
    45ac:	000057b7          	lui	a5,0x5
    45b0:	3107a783          	lw	a5,784(a5) # 5310 <_filelib_init>
    45b4:	fc010113          	addi	sp,sp,-64
    45b8:	02812c23          	sw	s0,56(sp)
    45bc:	03512223          	sw	s5,36(sp)
    45c0:	02112e23          	sw	ra,60(sp)
    45c4:	02912a23          	sw	s1,52(sp)
    45c8:	03212823          	sw	s2,48(sp)
    45cc:	03312623          	sw	s3,44(sp)
    45d0:	03412423          	sw	s4,40(sp)
    45d4:	03612023          	sw	s6,32(sp)
    45d8:	01712e23          	sw	s7,28(sp)
    45dc:	01812c23          	sw	s8,24(sp)
    45e0:	01912a23          	sw	s9,20(sp)
    45e4:	00050a93          	mv	s5,a0
    45e8:	00068413          	mv	s0,a3
    45ec:	00058513          	mv	a0,a1
    45f0:	00079e63          	bnez	a5,460c <fl_fread+0x60>
    45f4:	00c12623          	sw	a2,12(sp)
    45f8:	00b12423          	sw	a1,8(sp)
    45fc:	ffffe097          	auipc	ra,0xffffe
    4600:	ad4080e7          	jalr	-1324(ra) # 20d0 <fl_init>
    4604:	00c12603          	lw	a2,12(sp)
    4608:	00812503          	lw	a0,8(sp)
    460c:	14040e63          	beqz	s0,4768 <fl_fread+0x1bc>
    4610:	140a8c63          	beqz	s5,4768 <fl_fread+0x1bc>
    4614:	43844783          	lbu	a5,1080(s0)
    4618:	fff00493          	li	s1,-1
    461c:	0017f793          	andi	a5,a5,1
    4620:	04078863          	beqz	a5,4670 <fl_fread+0xc4>
    4624:	00060593          	mv	a1,a2
    4628:	ffffd097          	auipc	ra,0xffffd
    462c:	614080e7          	jalr	1556(ra) # 1c3c <__mulsi3>
    4630:	00050493          	mv	s1,a0
    4634:	02050e63          	beqz	a0,4670 <fl_fread+0xc4>
    4638:	00842583          	lw	a1,8(s0)
    463c:	00c42783          	lw	a5,12(s0)
    4640:	12f5f463          	bgeu	a1,a5,4768 <fl_fread+0x1bc>
    4644:	00b50733          	add	a4,a0,a1
    4648:	00e7f463          	bgeu	a5,a4,4650 <fl_fread+0xa4>
    464c:	40b784b3          	sub	s1,a5,a1
    4650:	0095da13          	srli	s4,a1,0x9
    4654:	1ff5f913          	andi	s2,a1,511
    4658:	00000993          	li	s3,0
    465c:	23040b13          	addi	s6,s0,560
    4660:	20000b93          	li	s7,512
    4664:	1ff00c13          	li	s8,511
    4668:	0499c063          	blt	s3,s1,46a8 <fl_fread+0xfc>
    466c:	00098493          	mv	s1,s3
    4670:	03c12083          	lw	ra,60(sp)
    4674:	03812403          	lw	s0,56(sp)
    4678:	03012903          	lw	s2,48(sp)
    467c:	02c12983          	lw	s3,44(sp)
    4680:	02812a03          	lw	s4,40(sp)
    4684:	02412a83          	lw	s5,36(sp)
    4688:	02012b03          	lw	s6,32(sp)
    468c:	01c12b83          	lw	s7,28(sp)
    4690:	01812c03          	lw	s8,24(sp)
    4694:	01412c83          	lw	s9,20(sp)
    4698:	00048513          	mv	a0,s1
    469c:	03412483          	lw	s1,52(sp)
    46a0:	04010113          	addi	sp,sp,64
    46a4:	00008067          	ret
    46a8:	04091663          	bnez	s2,46f4 <fl_fread+0x148>
    46ac:	413486b3          	sub	a3,s1,s3
    46b0:	04dc5263          	bge	s8,a3,46f4 <fl_fread+0x148>
    46b4:	4096d693          	srai	a3,a3,0x9
    46b8:	013a8633          	add	a2,s5,s3
    46bc:	000a0593          	mv	a1,s4
    46c0:	00040513          	mv	a0,s0
    46c4:	fffff097          	auipc	ra,0xfffff
    46c8:	5ec080e7          	jalr	1516(ra) # 3cb0 <_read_sectors>
    46cc:	fa0500e3          	beqz	a0,466c <fl_fread+0xc0>
    46d0:	00951c93          	slli	s9,a0,0x9
    46d4:	000c8613          	mv	a2,s9
    46d8:	00aa0a33          	add	s4,s4,a0
    46dc:	00842783          	lw	a5,8(s0)
    46e0:	00c989b3          	add	s3,s3,a2
    46e4:	00000913          	li	s2,0
    46e8:	019787b3          	add	a5,a5,s9
    46ec:	00f42423          	sw	a5,8(s0)
    46f0:	f79ff06f          	j	4668 <fl_fread+0xbc>
    46f4:	43042783          	lw	a5,1072(s0)
    46f8:	03478e63          	beq	a5,s4,4734 <fl_fread+0x188>
    46fc:	43442783          	lw	a5,1076(s0)
    4700:	00078863          	beqz	a5,4710 <fl_fread+0x164>
    4704:	00040513          	mv	a0,s0
    4708:	00000097          	auipc	ra,0x0
    470c:	d3c080e7          	jalr	-708(ra) # 4444 <fl_fflush>
    4710:	00100693          	li	a3,1
    4714:	000b0613          	mv	a2,s6
    4718:	000a0593          	mv	a1,s4
    471c:	00040513          	mv	a0,s0
    4720:	fffff097          	auipc	ra,0xfffff
    4724:	590080e7          	jalr	1424(ra) # 3cb0 <_read_sectors>
    4728:	f40502e3          	beqz	a0,466c <fl_fread+0xc0>
    472c:	43442823          	sw	s4,1072(s0)
    4730:	42042a23          	sw	zero,1076(s0)
    4734:	412b87b3          	sub	a5,s7,s2
    4738:	41348633          	sub	a2,s1,s3
    473c:	00c7d463          	bge	a5,a2,4744 <fl_fread+0x198>
    4740:	00078613          	mv	a2,a5
    4744:	012b05b3          	add	a1,s6,s2
    4748:	013a8533          	add	a0,s5,s3
    474c:	00060c93          	mv	s9,a2
    4750:	00c12423          	sw	a2,8(sp)
    4754:	ffffd097          	auipc	ra,0xffffd
    4758:	e8c080e7          	jalr	-372(ra) # 15e0 <memcpy>
    475c:	00812603          	lw	a2,8(sp)
    4760:	001a0a13          	addi	s4,s4,1
    4764:	f79ff06f          	j	46dc <fl_fread+0x130>
    4768:	fff00493          	li	s1,-1
    476c:	f05ff06f          	j	4670 <fl_fread+0xc4>

00004770 <fatfs_allocate_free_space>:
    4770:	fd010113          	addi	sp,sp,-48
    4774:	02112623          	sw	ra,44(sp)
    4778:	02812423          	sw	s0,40(sp)
    477c:	02912223          	sw	s1,36(sp)
    4780:	03212023          	sw	s2,32(sp)
    4784:	01312e23          	sw	s3,28(sp)
    4788:	01412c23          	sw	s4,24(sp)
    478c:	01512a23          	sw	s5,20(sp)
    4790:	02069863          	bnez	a3,47c0 <fatfs_allocate_free_space+0x50>
    4794:	00000413          	li	s0,0
    4798:	02c12083          	lw	ra,44(sp)
    479c:	00040513          	mv	a0,s0
    47a0:	02812403          	lw	s0,40(sp)
    47a4:	02412483          	lw	s1,36(sp)
    47a8:	02012903          	lw	s2,32(sp)
    47ac:	01c12983          	lw	s3,28(sp)
    47b0:	01812a03          	lw	s4,24(sp)
    47b4:	01412a83          	lw	s5,20(sp)
    47b8:	03010113          	addi	sp,sp,48
    47bc:	00008067          	ret
    47c0:	02452783          	lw	a5,36(a0)
    47c4:	00058a13          	mv	s4,a1
    47c8:	fff00593          	li	a1,-1
    47cc:	00050493          	mv	s1,a0
    47d0:	00068913          	mv	s2,a3
    47d4:	00060993          	mv	s3,a2
    47d8:	00b78663          	beq	a5,a1,47e4 <fatfs_allocate_free_space+0x74>
    47dc:	fffff097          	auipc	ra,0xfffff
    47e0:	620080e7          	jalr	1568(ra) # 3dfc <fatfs_set_fs_info_next_free_cluster>
    47e4:	0004c783          	lbu	a5,0(s1)
    47e8:	00090513          	mv	a0,s2
    47ec:	00979a93          	slli	s5,a5,0x9
    47f0:	000a8593          	mv	a1,s5
    47f4:	ffffd097          	auipc	ra,0xffffd
    47f8:	d24080e7          	jalr	-732(ra) # 1518 <__udivsi3>
    47fc:	00050413          	mv	s0,a0
    4800:	00050593          	mv	a1,a0
    4804:	000a8513          	mv	a0,s5
    4808:	ffffd097          	auipc	ra,0xffffd
    480c:	434080e7          	jalr	1076(ra) # 1c3c <__mulsi3>
    4810:	41250533          	sub	a0,a0,s2
    4814:	00a03533          	snez	a0,a0
    4818:	00a40933          	add	s2,s0,a0
    481c:	040a0463          	beqz	s4,4864 <fatfs_allocate_free_space+0xf4>
    4820:	0084a583          	lw	a1,8(s1)
    4824:	00c10613          	addi	a2,sp,12
    4828:	00048513          	mv	a0,s1
    482c:	fffff097          	auipc	ra,0xfffff
    4830:	680080e7          	jalr	1664(ra) # 3eac <fatfs_find_blank_cluster>
    4834:	00050413          	mv	s0,a0
    4838:	f4050ee3          	beqz	a0,4794 <fatfs_allocate_free_space+0x24>
    483c:	00100793          	li	a5,1
    4840:	02f91663          	bne	s2,a5,486c <fatfs_allocate_free_space+0xfc>
    4844:	00c12903          	lw	s2,12(sp)
    4848:	fff00613          	li	a2,-1
    484c:	00048513          	mv	a0,s1
    4850:	00090593          	mv	a1,s2
    4854:	fffff097          	auipc	ra,0xfffff
    4858:	76c080e7          	jalr	1900(ra) # 3fc0 <fatfs_fat_set_cluster>
    485c:	0129a023          	sw	s2,0(s3)
    4860:	f39ff06f          	j	4798 <fatfs_allocate_free_space+0x28>
    4864:	0009a783          	lw	a5,0(s3)
    4868:	00f12623          	sw	a5,12(sp)
    486c:	00090613          	mv	a2,s2
    4870:	00c10593          	addi	a1,sp,12
    4874:	00048513          	mv	a0,s1
    4878:	00000097          	auipc	ra,0x0
    487c:	954080e7          	jalr	-1708(ra) # 41cc <fatfs_add_free_space>
    4880:	00050413          	mv	s0,a0
    4884:	f15ff06f          	j	4798 <fatfs_allocate_free_space+0x28>

00004888 <fatfs_add_file_entry>:
    4888:	03852883          	lw	a7,56(a0)
    488c:	30088e63          	beqz	a7,4ba8 <fatfs_add_file_entry+0x320>
    4890:	f8010113          	addi	sp,sp,-128
    4894:	06812c23          	sw	s0,120(sp)
    4898:	00050413          	mv	s0,a0
    489c:	00060513          	mv	a0,a2
    48a0:	06912a23          	sw	s1,116(sp)
    48a4:	07512223          	sw	s5,100(sp)
    48a8:	00f12c23          	sw	a5,24(sp)
    48ac:	00e12a23          	sw	a4,20(sp)
    48b0:	06112e23          	sw	ra,124(sp)
    48b4:	07212823          	sw	s2,112(sp)
    48b8:	07312623          	sw	s3,108(sp)
    48bc:	07412423          	sw	s4,104(sp)
    48c0:	07612023          	sw	s6,96(sp)
    48c4:	05712e23          	sw	s7,92(sp)
    48c8:	05812c23          	sw	s8,88(sp)
    48cc:	05912a23          	sw	s9,84(sp)
    48d0:	05a12823          	sw	s10,80(sp)
    48d4:	05b12623          	sw	s11,76(sp)
    48d8:	01012e23          	sw	a6,28(sp)
    48dc:	00068a93          	mv	s5,a3
    48e0:	00c12823          	sw	a2,16(sp)
    48e4:	00b12423          	sw	a1,8(sp)
    48e8:	ffffe097          	auipc	ra,0xffffe
    48ec:	a48080e7          	jalr	-1464(ra) # 2330 <fatfs_lfn_entries_required>
    48f0:	00150713          	addi	a4,a0,1
    48f4:	00100793          	li	a5,1
    48f8:	00050493          	mv	s1,a0
    48fc:	2ae7f263          	bgeu	a5,a4,4ba0 <fatfs_add_file_entry+0x318>
    4900:	00000a13          	li	s4,0
    4904:	00000993          	li	s3,0
    4908:	00000913          	li	s2,0
    490c:	00000c93          	li	s9,0
    4910:	00000b13          	li	s6,0
    4914:	01000c13          	li	s8,16
    4918:	00812583          	lw	a1,8(sp)
    491c:	00000693          	li	a3,0
    4920:	000b0613          	mv	a2,s6
    4924:	00040513          	mv	a0,s0
    4928:	000b0b93          	mv	s7,s6
    492c:	ffffe097          	auipc	ra,0xffffe
    4930:	7f4080e7          	jalr	2036(ra) # 3120 <fatfs_sector_reader>
    4934:	18050463          	beqz	a0,4abc <fatfs_add_file_entry+0x234>
    4938:	001b0b13          	addi	s6,s6,1
    493c:	04440793          	addi	a5,s0,68
    4940:	000c8d13          	mv	s10,s9
    4944:	00000d93          	li	s11,0
    4948:	00078513          	mv	a0,a5
    494c:	00f12623          	sw	a5,12(sp)
    4950:	ffffe097          	auipc	ra,0xffffe
    4954:	8f8080e7          	jalr	-1800(ra) # 2248 <fatfs_entry_lfn_text>
    4958:	00c12783          	lw	a5,12(sp)
    495c:	00050c93          	mv	s9,a0
    4960:	02050c63          	beqz	a0,4998 <fatfs_add_file_entry+0x110>
    4964:	020d0463          	beqz	s10,498c <fatfs_add_file_entry+0x104>
    4968:	00090c93          	mv	s9,s2
    496c:	000c8913          	mv	s2,s9
    4970:	001d0c93          	addi	s9,s10,1
    4974:	001d8d93          	addi	s11,s11,1
    4978:	0ffdfd93          	zext.b	s11,s11
    497c:	02078793          	addi	a5,a5,32
    4980:	f98d8ce3          	beq	s11,s8,4918 <fatfs_add_file_entry+0x90>
    4984:	000c8d13          	mv	s10,s9
    4988:	fc1ff06f          	j	4948 <fatfs_add_file_entry+0xc0>
    498c:	000d8a13          	mv	s4,s11
    4990:	000b8993          	mv	s3,s7
    4994:	fd9ff06f          	j	496c <fatfs_add_file_entry+0xe4>
    4998:	0007c683          	lbu	a3,0(a5)
    499c:	0e500713          	li	a4,229
    49a0:	10e69863          	bne	a3,a4,4ab0 <fatfs_add_file_entry+0x228>
    49a4:	000d1863          	bnez	s10,49b4 <fatfs_add_file_entry+0x12c>
    49a8:	000d8a13          	mv	s4,s11
    49ac:	000b8993          	mv	s3,s7
    49b0:	00100913          	li	s2,1
    49b4:	fa9d4ee3          	blt	s10,s1,4970 <fatfs_add_file_entry+0xe8>
    49b8:	00ba8693          	addi	a3,s5,11
    49bc:	000a8713          	mv	a4,s5
    49c0:	00000913          	li	s2,0
    49c4:	00074603          	lbu	a2,0(a4)
    49c8:	00195793          	srli	a5,s2,0x1
    49cc:	00791913          	slli	s2,s2,0x7
    49d0:	012787b3          	add	a5,a5,s2
    49d4:	00170713          	addi	a4,a4,1
    49d8:	00c787b3          	add	a5,a5,a2
    49dc:	0ff7f913          	zext.b	s2,a5
    49e0:	fed712e3          	bne	a4,a3,49c4 <fatfs_add_file_entry+0x13c>
    49e4:	00098b13          	mv	s6,s3
    49e8:	00000d13          	li	s10,0
    49ec:	01000b93          	li	s7,16
    49f0:	00812583          	lw	a1,8(sp)
    49f4:	00000693          	li	a3,0
    49f8:	000b0613          	mv	a2,s6
    49fc:	00040513          	mv	a0,s0
    4a00:	ffffe097          	auipc	ra,0xffffe
    4a04:	720080e7          	jalr	1824(ra) # 3120 <fatfs_sector_reader>
    4a08:	18050c63          	beqz	a0,4ba0 <fatfs_add_file_entry+0x318>
    4a0c:	04440c93          	addi	s9,s0,68
    4a10:	413b0db3          	sub	s11,s6,s3
    4a14:	00000793          	li	a5,0
    4a18:	00000c13          	li	s8,0
    4a1c:	01912623          	sw	s9,12(sp)
    4a20:	000d1663          	bnez	s10,4a2c <fatfs_add_file_entry+0x1a4>
    4a24:	154c1863          	bne	s8,s4,4b74 <fatfs_add_file_entry+0x2ec>
    4a28:	140d9663          	bnez	s11,4b74 <fatfs_add_file_entry+0x2ec>
    4a2c:	12049263          	bnez	s1,4b50 <fatfs_add_file_entry+0x2c8>
    4a30:	01c12703          	lw	a4,28(sp)
    4a34:	01412603          	lw	a2,20(sp)
    4a38:	01812583          	lw	a1,24(sp)
    4a3c:	02010693          	addi	a3,sp,32
    4a40:	000a8513          	mv	a0,s5
    4a44:	ffffe097          	auipc	ra,0xffffe
    4a48:	a30080e7          	jalr	-1488(ra) # 2474 <fatfs_sfn_create_entry>
    4a4c:	02000613          	li	a2,32
    4a50:	00c105b3          	add	a1,sp,a2
    4a54:	000c8513          	mv	a0,s9
    4a58:	ffffd097          	auipc	ra,0xffffd
    4a5c:	b88080e7          	jalr	-1144(ra) # 15e0 <memcpy>
    4a60:	03842783          	lw	a5,56(s0)
    4a64:	00c12583          	lw	a1,12(sp)
    4a68:	24442503          	lw	a0,580(s0)
    4a6c:	00100613          	li	a2,1
    4a70:	000780e7          	jalr	a5
    4a74:	07c12083          	lw	ra,124(sp)
    4a78:	07812403          	lw	s0,120(sp)
    4a7c:	07412483          	lw	s1,116(sp)
    4a80:	07012903          	lw	s2,112(sp)
    4a84:	06c12983          	lw	s3,108(sp)
    4a88:	06812a03          	lw	s4,104(sp)
    4a8c:	06412a83          	lw	s5,100(sp)
    4a90:	06012b03          	lw	s6,96(sp)
    4a94:	05c12b83          	lw	s7,92(sp)
    4a98:	05812c03          	lw	s8,88(sp)
    4a9c:	05412c83          	lw	s9,84(sp)
    4aa0:	05012d03          	lw	s10,80(sp)
    4aa4:	04c12d83          	lw	s11,76(sp)
    4aa8:	08010113          	addi	sp,sp,128
    4aac:	00008067          	ret
    4ab0:	ee068ae3          	beqz	a3,49a4 <fatfs_add_file_entry+0x11c>
    4ab4:	00000913          	li	s2,0
    4ab8:	ebdff06f          	j	4974 <fatfs_add_file_entry+0xec>
    4abc:	00842583          	lw	a1,8(s0)
    4ac0:	02010613          	addi	a2,sp,32
    4ac4:	00040513          	mv	a0,s0
    4ac8:	fffff097          	auipc	ra,0xfffff
    4acc:	3e4080e7          	jalr	996(ra) # 3eac <fatfs_find_blank_cluster>
    4ad0:	0c050863          	beqz	a0,4ba0 <fatfs_add_file_entry+0x318>
    4ad4:	02012b83          	lw	s7,32(sp)
    4ad8:	00812583          	lw	a1,8(sp)
    4adc:	00040513          	mv	a0,s0
    4ae0:	000b8613          	mv	a2,s7
    4ae4:	fffff097          	auipc	ra,0xfffff
    4ae8:	64c080e7          	jalr	1612(ra) # 4130 <fatfs_fat_add_cluster_to_chain>
    4aec:	0a050a63          	beqz	a0,4ba0 <fatfs_add_file_entry+0x318>
    4af0:	20000613          	li	a2,512
    4af4:	00000593          	li	a1,0
    4af8:	04440513          	addi	a0,s0,68
    4afc:	ffffd097          	auipc	ra,0xffffd
    4b00:	ac8080e7          	jalr	-1336(ra) # 15c4 <memset>
    4b04:	00000c13          	li	s8,0
    4b08:	00044783          	lbu	a5,0(s0)
    4b0c:	00fc6a63          	bltu	s8,a5,4b20 <fatfs_add_file_entry+0x298>
    4b10:	ea0914e3          	bnez	s2,49b8 <fatfs_add_file_entry+0x130>
    4b14:	000b0993          	mv	s3,s6
    4b18:	00000a13          	li	s4,0
    4b1c:	e9dff06f          	j	49b8 <fatfs_add_file_entry+0x130>
    4b20:	00000693          	li	a3,0
    4b24:	000c0613          	mv	a2,s8
    4b28:	000b8593          	mv	a1,s7
    4b2c:	00040513          	mv	a0,s0
    4b30:	ffffd097          	auipc	ra,0xffffd
    4b34:	4ec080e7          	jalr	1260(ra) # 201c <fatfs_write_sector>
    4b38:	06050463          	beqz	a0,4ba0 <fatfs_add_file_entry+0x318>
    4b3c:	001c0c13          	addi	s8,s8,1
    4b40:	0ffc7c13          	zext.b	s8,s8
    4b44:	fc5ff06f          	j	4b08 <fatfs_add_file_entry+0x280>
    4b48:	001b0b13          	addi	s6,s6,1
    4b4c:	ea5ff06f          	j	49f0 <fatfs_add_file_entry+0x168>
    4b50:	01012503          	lw	a0,16(sp)
    4b54:	fff48493          	addi	s1,s1,-1
    4b58:	00090693          	mv	a3,s2
    4b5c:	00048613          	mv	a2,s1
    4b60:	000c8593          	mv	a1,s9
    4b64:	ffffd097          	auipc	ra,0xffffd
    4b68:	7fc080e7          	jalr	2044(ra) # 2360 <fatfs_filename_to_lfn>
    4b6c:	00100d13          	li	s10,1
    4b70:	000d0793          	mv	a5,s10
    4b74:	001c0c13          	addi	s8,s8,1
    4b78:	0ffc7c13          	zext.b	s8,s8
    4b7c:	020c8c93          	addi	s9,s9,32
    4b80:	eb7c10e3          	bne	s8,s7,4a20 <fatfs_add_file_entry+0x198>
    4b84:	fc0782e3          	beqz	a5,4b48 <fatfs_add_file_entry+0x2c0>
    4b88:	03842783          	lw	a5,56(s0)
    4b8c:	00c12583          	lw	a1,12(sp)
    4b90:	24442503          	lw	a0,580(s0)
    4b94:	00100613          	li	a2,1
    4b98:	000780e7          	jalr	a5
    4b9c:	fa0516e3          	bnez	a0,4b48 <fatfs_add_file_entry+0x2c0>
    4ba0:	00000513          	li	a0,0
    4ba4:	ed1ff06f          	j	4a74 <fatfs_add_file_entry+0x1ec>
    4ba8:	00000513          	li	a0,0
    4bac:	00008067          	ret

00004bb0 <fl_fopen>:
    4bb0:	000057b7          	lui	a5,0x5
    4bb4:	3107a783          	lw	a5,784(a5) # 5310 <_filelib_init>
    4bb8:	fa010113          	addi	sp,sp,-96
    4bbc:	05212823          	sw	s2,80(sp)
    4bc0:	03a12823          	sw	s10,48(sp)
    4bc4:	04112e23          	sw	ra,92(sp)
    4bc8:	04812c23          	sw	s0,88(sp)
    4bcc:	04912a23          	sw	s1,84(sp)
    4bd0:	05312623          	sw	s3,76(sp)
    4bd4:	05412423          	sw	s4,72(sp)
    4bd8:	05512223          	sw	s5,68(sp)
    4bdc:	05612023          	sw	s6,64(sp)
    4be0:	03712e23          	sw	s7,60(sp)
    4be4:	03812c23          	sw	s8,56(sp)
    4be8:	03912a23          	sw	s9,52(sp)
    4bec:	00050d13          	mv	s10,a0
    4bf0:	00058913          	mv	s2,a1
    4bf4:	00079663          	bnez	a5,4c00 <fl_fopen+0x50>
    4bf8:	ffffd097          	auipc	ra,0xffffd
    4bfc:	4d8080e7          	jalr	1240(ra) # 20d0 <fl_init>
    4c00:	000057b7          	lui	a5,0x5
    4c04:	30c7a783          	lw	a5,780(a5) # 530c <_filelib_valid>
    4c08:	00193713          	seqz	a4,s2
    4c0c:	0017b793          	seqz	a5,a5
    4c10:	00e7e7b3          	or	a5,a5,a4
    4c14:	36079e63          	bnez	a5,4f90 <fl_fopen+0x3e0>
    4c18:	360d0c63          	beqz	s10,4f90 <fl_fopen+0x3e0>
    4c1c:	00000493          	li	s1,0
    4c20:	00000413          	li	s0,0
    4c24:	05700993          	li	s3,87
    4c28:	07200a13          	li	s4,114
    4c2c:	07700b13          	li	s6,119
    4c30:	06100b93          	li	s7,97
    4c34:	06200c13          	li	s8,98
    4c38:	04100a93          	li	s5,65
    4c3c:	04200c93          	li	s9,66
    4c40:	00090513          	mv	a0,s2
    4c44:	ffffd097          	auipc	ra,0xffffd
    4c48:	9c0080e7          	jalr	-1600(ra) # 1604 <strlen>
    4c4c:	10a44a63          	blt	s0,a0,4d60 <fl_fopen+0x1b0>
    4c50:	000099b7          	lui	s3,0x9
    4c54:	6dc98a13          	addi	s4,s3,1756 # 96dc <_fs>
    4c58:	038a2783          	lw	a5,56(s4)
    4c5c:	00079463          	bnez	a5,4c64 <fl_fopen+0xb4>
    4c60:	fd94f493          	andi	s1,s1,-39
    4c64:	03ca2783          	lw	a5,60(s4)
    4c68:	00078463          	beqz	a5,4c70 <fl_fopen+0xc0>
    4c6c:	000780e7          	jalr	a5
    4c70:	0014f793          	andi	a5,s1,1
    4c74:	18079263          	bnez	a5,4df8 <fl_fopen+0x248>
    4c78:	0204f793          	andi	a5,s1,32
    4c7c:	08078c63          	beqz	a5,4d14 <fl_fopen+0x164>
    4c80:	038a2783          	lw	a5,56(s4)
    4c84:	06078a63          	beqz	a5,4cf8 <fl_fopen+0x148>
    4c88:	ffffd097          	auipc	ra,0xffffd
    4c8c:	258080e7          	jalr	600(ra) # 1ee0 <_allocate_file>
    4c90:	00050413          	mv	s0,a0
    4c94:	06050263          	beqz	a0,4cf8 <fl_fopen+0x148>
    4c98:	01450a93          	addi	s5,a0,20
    4c9c:	10400613          	li	a2,260
    4ca0:	00000593          	li	a1,0
    4ca4:	000a8513          	mv	a0,s5
    4ca8:	ffffd097          	auipc	ra,0xffffd
    4cac:	91c080e7          	jalr	-1764(ra) # 15c4 <memset>
    4cb0:	11840b13          	addi	s6,s0,280
    4cb4:	10400613          	li	a2,260
    4cb8:	00000593          	li	a1,0
    4cbc:	000b0513          	mv	a0,s6
    4cc0:	ffffd097          	auipc	ra,0xffffd
    4cc4:	904080e7          	jalr	-1788(ra) # 15c4 <memset>
    4cc8:	10400713          	li	a4,260
    4ccc:	000b0693          	mv	a3,s6
    4cd0:	00070613          	mv	a2,a4
    4cd4:	000a8593          	mv	a1,s5
    4cd8:	000d0513          	mv	a0,s10
    4cdc:	ffffe097          	auipc	ra,0xffffe
    4ce0:	c88080e7          	jalr	-888(ra) # 2964 <fatfs_split_path>
    4ce4:	fff00793          	li	a5,-1
    4ce8:	12f51663          	bne	a0,a5,4e14 <fl_fopen+0x264>
    4cec:	00040513          	mv	a0,s0
    4cf0:	ffffd097          	auipc	ra,0xffffd
    4cf4:	268080e7          	jalr	616(ra) # 1f58 <_free_file>
    4cf8:	00000413          	li	s0,0
    4cfc:	0214f793          	andi	a5,s1,33
    4d00:	02000713          	li	a4,32
    4d04:	28e79263          	bne	a5,a4,4f88 <fl_fopen+0x3d8>
    4d08:	10041263          	bnez	s0,4e0c <fl_fopen+0x25c>
    4d0c:	0064f793          	andi	a5,s1,6
    4d10:	26079463          	bnez	a5,4f78 <fl_fopen+0x3c8>
    4d14:	00000413          	li	s0,0
    4d18:	040a2783          	lw	a5,64(s4)
    4d1c:	00078463          	beqz	a5,4d24 <fl_fopen+0x174>
    4d20:	000780e7          	jalr	a5
    4d24:	05c12083          	lw	ra,92(sp)
    4d28:	00040513          	mv	a0,s0
    4d2c:	05812403          	lw	s0,88(sp)
    4d30:	05412483          	lw	s1,84(sp)
    4d34:	05012903          	lw	s2,80(sp)
    4d38:	04c12983          	lw	s3,76(sp)
    4d3c:	04812a03          	lw	s4,72(sp)
    4d40:	04412a83          	lw	s5,68(sp)
    4d44:	04012b03          	lw	s6,64(sp)
    4d48:	03c12b83          	lw	s7,60(sp)
    4d4c:	03812c03          	lw	s8,56(sp)
    4d50:	03412c83          	lw	s9,52(sp)
    4d54:	03012d03          	lw	s10,48(sp)
    4d58:	06010113          	addi	sp,sp,96
    4d5c:	00008067          	ret
    4d60:	008907b3          	add	a5,s2,s0
    4d64:	0007c783          	lbu	a5,0(a5)
    4d68:	05378863          	beq	a5,s3,4db8 <fl_fopen+0x208>
    4d6c:	02f9e863          	bltu	s3,a5,4d9c <fl_fopen+0x1ec>
    4d70:	05578863          	beq	a5,s5,4dc0 <fl_fopen+0x210>
    4d74:	00faea63          	bltu	s5,a5,4d88 <fl_fopen+0x1d8>
    4d78:	02b00713          	li	a4,43
    4d7c:	04e78663          	beq	a5,a4,4dc8 <fl_fopen+0x218>
    4d80:	00140413          	addi	s0,s0,1
    4d84:	ebdff06f          	j	4c40 <fl_fopen+0x90>
    4d88:	03978263          	beq	a5,s9,4dac <fl_fopen+0x1fc>
    4d8c:	05200713          	li	a4,82
    4d90:	fee798e3          	bne	a5,a4,4d80 <fl_fopen+0x1d0>
    4d94:	0014e493          	ori	s1,s1,1
    4d98:	fe9ff06f          	j	4d80 <fl_fopen+0x1d0>
    4d9c:	ff478ce3          	beq	a5,s4,4d94 <fl_fopen+0x1e4>
    4da0:	00fa6a63          	bltu	s4,a5,4db4 <fl_fopen+0x204>
    4da4:	01778e63          	beq	a5,s7,4dc0 <fl_fopen+0x210>
    4da8:	fd879ce3          	bne	a5,s8,4d80 <fl_fopen+0x1d0>
    4dac:	0084e493          	ori	s1,s1,8
    4db0:	fd1ff06f          	j	4d80 <fl_fopen+0x1d0>
    4db4:	fd6796e3          	bne	a5,s6,4d80 <fl_fopen+0x1d0>
    4db8:	0324e493          	ori	s1,s1,50
    4dbc:	fc5ff06f          	j	4d80 <fl_fopen+0x1d0>
    4dc0:	0264e493          	ori	s1,s1,38
    4dc4:	fbdff06f          	j	4d80 <fl_fopen+0x1d0>
    4dc8:	0014f793          	andi	a5,s1,1
    4dcc:	00078663          	beqz	a5,4dd8 <fl_fopen+0x228>
    4dd0:	0024e493          	ori	s1,s1,2
    4dd4:	fadff06f          	j	4d80 <fl_fopen+0x1d0>
    4dd8:	0024f793          	andi	a5,s1,2
    4ddc:	00078663          	beqz	a5,4de8 <fl_fopen+0x238>
    4de0:	0314e493          	ori	s1,s1,49
    4de4:	f9dff06f          	j	4d80 <fl_fopen+0x1d0>
    4de8:	0044f793          	andi	a5,s1,4
    4dec:	f8078ae3          	beqz	a5,4d80 <fl_fopen+0x1d0>
    4df0:	0274e493          	ori	s1,s1,39
    4df4:	f8dff06f          	j	4d80 <fl_fopen+0x1d0>
    4df8:	000d0513          	mv	a0,s10
    4dfc:	fffff097          	auipc	ra,0xfffff
    4e00:	81c080e7          	jalr	-2020(ra) # 3618 <_open_file>
    4e04:	00050413          	mv	s0,a0
    4e08:	e60508e3          	beqz	a0,4c78 <fl_fopen+0xc8>
    4e0c:	42940c23          	sb	s1,1080(s0)
    4e10:	f09ff06f          	j	4d18 <fl_fopen+0x168>
    4e14:	00040513          	mv	a0,s0
    4e18:	ffffe097          	auipc	ra,0xffffe
    4e1c:	dc8080e7          	jalr	-568(ra) # 2be0 <_check_file_open>
    4e20:	00050913          	mv	s2,a0
    4e24:	ec0514e3          	bnez	a0,4cec <fl_fopen+0x13c>
    4e28:	01444783          	lbu	a5,20(s0)
    4e2c:	0e079663          	bnez	a5,4f18 <fl_fopen+0x368>
    4e30:	008a2783          	lw	a5,8(s4)
    4e34:	00f42023          	sw	a5,0(s0)
    4e38:	00042583          	lw	a1,0(s0)
    4e3c:	01010693          	addi	a3,sp,16
    4e40:	000b0613          	mv	a2,s6
    4e44:	6dc98513          	addi	a0,s3,1756
    4e48:	ffffe097          	auipc	ra,0xffffe
    4e4c:	428080e7          	jalr	1064(ra) # 3270 <fatfs_get_file_entry>
    4e50:	00100693          	li	a3,1
    4e54:	e8d50ce3          	beq	a0,a3,4cec <fl_fopen+0x13c>
    4e58:	00042223          	sw	zero,4(s0)
    4e5c:	00440613          	addi	a2,s0,4
    4e60:	00068593          	mv	a1,a3
    4e64:	6dc98513          	addi	a0,s3,1756
    4e68:	00000097          	auipc	ra,0x0
    4e6c:	908080e7          	jalr	-1784(ra) # 4770 <fatfs_allocate_free_space>
    4e70:	e6050ee3          	beqz	a0,4cec <fl_fopen+0x13c>
    4e74:	00002ab7          	lui	s5,0x2
    4e78:	21c40b93          	addi	s7,s0,540
    4e7c:	6dc98c13          	addi	s8,s3,1756
    4e80:	70fa8a93          	addi	s5,s5,1807 # 270f <fatfs_lfn_generate_tail+0x7b>
    4e84:	000b0593          	mv	a1,s6
    4e88:	00410513          	addi	a0,sp,4
    4e8c:	ffffd097          	auipc	ra,0xffffd
    4e90:	68c080e7          	jalr	1676(ra) # 2518 <fatfs_lfn_create_sfn>
    4e94:	08090e63          	beqz	s2,4f30 <fl_fopen+0x380>
    4e98:	00090613          	mv	a2,s2
    4e9c:	00410593          	addi	a1,sp,4
    4ea0:	000b8513          	mv	a0,s7
    4ea4:	ffffd097          	auipc	ra,0xffffd
    4ea8:	7f0080e7          	jalr	2032(ra) # 2694 <fatfs_lfn_generate_tail>
    4eac:	00042583          	lw	a1,0(s0)
    4eb0:	000b8613          	mv	a2,s7
    4eb4:	000c0513          	mv	a0,s8
    4eb8:	fffff097          	auipc	ra,0xfffff
    4ebc:	8d4080e7          	jalr	-1836(ra) # 378c <fatfs_sfn_exists>
    4ec0:	00050663          	beqz	a0,4ecc <fl_fopen+0x31c>
    4ec4:	00190913          	addi	s2,s2,1
    4ec8:	fb591ee3          	bne	s2,s5,4e84 <fl_fopen+0x2d4>
    4ecc:	00442703          	lw	a4,4(s0)
    4ed0:	000027b7          	lui	a5,0x2
    4ed4:	70f78793          	addi	a5,a5,1807 # 270f <fatfs_lfn_generate_tail+0x7b>
    4ed8:	00070593          	mv	a1,a4
    4edc:	02f90663          	beq	s2,a5,4f08 <fl_fopen+0x358>
    4ee0:	00042583          	lw	a1,0(s0)
    4ee4:	00000813          	li	a6,0
    4ee8:	00000793          	li	a5,0
    4eec:	000b8693          	mv	a3,s7
    4ef0:	000b0613          	mv	a2,s6
    4ef4:	6dc98513          	addi	a0,s3,1756
    4ef8:	00000097          	auipc	ra,0x0
    4efc:	990080e7          	jalr	-1648(ra) # 4888 <fatfs_add_file_entry>
    4f00:	04051463          	bnez	a0,4f48 <fl_fopen+0x398>
    4f04:	00442583          	lw	a1,4(s0)
    4f08:	6dc98513          	addi	a0,s3,1756
    4f0c:	fffff097          	auipc	ra,0xfffff
    4f10:	1b4080e7          	jalr	436(ra) # 40c0 <fatfs_free_cluster_chain>
    4f14:	dd9ff06f          	j	4cec <fl_fopen+0x13c>
    4f18:	00040593          	mv	a1,s0
    4f1c:	000a8513          	mv	a0,s5
    4f20:	ffffe097          	auipc	ra,0xffffe
    4f24:	54c080e7          	jalr	1356(ra) # 346c <_open_directory>
    4f28:	f00518e3          	bnez	a0,4e38 <fl_fopen+0x288>
    4f2c:	dc1ff06f          	j	4cec <fl_fopen+0x13c>
    4f30:	00b00613          	li	a2,11
    4f34:	00410593          	addi	a1,sp,4
    4f38:	000b8513          	mv	a0,s7
    4f3c:	ffffc097          	auipc	ra,0xffffc
    4f40:	6a4080e7          	jalr	1700(ra) # 15e0 <memcpy>
    4f44:	f69ff06f          	j	4eac <fl_fopen+0x2fc>
    4f48:	fff00793          	li	a5,-1
    4f4c:	00042623          	sw	zero,12(s0)
    4f50:	00042423          	sw	zero,8(s0)
    4f54:	42f42823          	sw	a5,1072(s0)
    4f58:	42042a23          	sw	zero,1076(s0)
    4f5c:	00042823          	sw	zero,16(s0)
    4f60:	22f42423          	sw	a5,552(s0)
    4f64:	22f42623          	sw	a5,556(s0)
    4f68:	6dc98513          	addi	a0,s3,1756
    4f6c:	ffffe097          	auipc	ra,0xffffe
    4f70:	054080e7          	jalr	84(ra) # 2fc0 <fatfs_fat_purge>
    4f74:	d89ff06f          	j	4cfc <fl_fopen+0x14c>
    4f78:	000d0513          	mv	a0,s10
    4f7c:	ffffe097          	auipc	ra,0xffffe
    4f80:	69c080e7          	jalr	1692(ra) # 3618 <_open_file>
    4f84:	00050413          	mv	s0,a0
    4f88:	e80412e3          	bnez	s0,4e0c <fl_fopen+0x25c>
    4f8c:	d89ff06f          	j	4d14 <fl_fopen+0x164>
    4f90:	00000413          	li	s0,0
    4f94:	d91ff06f          	j	4d24 <fl_fopen+0x174>

00004f98 <cmd16>:
    4f98:	02000050 00001500                       P.......

00004fa0 <acmd41>:
    4fa0:	00004069 00000100                       i@......

00004fa8 <cmd55>:
    4fa8:	00000077 00000100                       w.......

00004fb0 <cmd8>:
    4fb0:	01000048 000087aa                       H.......

00004fb8 <cmd0>:
    4fb8:	00000040 00009500                       @.......

00004fc0 <AUDIO>:
    4fc0:	00018000                                ....

00004fc4 <DISPLAY>:
    4fc4:	00014000                                .@..

00004fc8 <BUTTONS>:
    4fc8:	00010100                                ....

00004fcc <SDCARD>:
    4fcc:	00010080                                ....

00004fd0 <OLED_RST>:
    4fd0:	00010010                                ....

00004fd4 <OLED>:
    4fd4:	00010008                                ....

00004fd8 <LEDS>:
    4fd8:	00010004 7761722e 00000000 00006272     .....raw....rb..
    4fe8:	73756170 61722e65 00000077 7761722e     pause.raw....raw
    4ff8:	7761722e 00000000 0000002e 00002e2e     .raw............
    5008:	203d3d3d 3d207325 0a0a3d3d 00000000     === %s ===......
    5018:	2050555b 2e2e205d 0000000a 5249445b     [UP ] ......[DIR
    5028:	7325205d 0000000a 20202020 73252020     ] %s....      %s
    5038:	0000000a 64697628 000a2965 0000002f     ....(vide)../...
    5048:	69647541 6e69206f 756f7274 6c626176     Audio introuvabl
    5058:	250a3a65 00000a73 7561702f 722e6573     e:.%s.../pause.r
    5068:	00007761 33323130 37363534 42413938     aw..0123456789AB
    5078:	46454443 00000000 5f544146 203a5346     CDEF....FAT_FS: 
    5088:	6f727245 6f632072 20646c75 20746f6e     Error could not 
    5098:	64616f6c 54414620 74656420 736c6961     load FAT details
    50a8:	64252820 0a0d2129 00000000               (%d)!......

000050b4 <font>:
    50b4:	00000000 00002f00 00030000 14000003     ...../..........
    50c4:	143e143e 3a2b6a2e 08122600 171c3224     >.>..j+:.&..$2..
    50d4:	03003415 00000000 0000211e 001e2100     .4.......!...!..
    50e4:	08220000 0822081c 0000081c 00002040     .."...".....@ ..
    50f4:	00080800 00200000 20000000 02040810     ...... .... ....
    5104:	3f21213f 003f0100 253d0000 25002725     ?!!?..?...=%%'.%
    5114:	003f2525 3f040407 25252700 253f003d     %%?....?.'%%=.?%
    5124:	01003d25 00030539 3f25253f 25252700     %=..9...?%%?.'%%
    5134:	0028003f 40000000 00000028 00110a04     ?.(....@(.......
    5144:	00141400 0a110000 01000004 0007052d     ............-...
    5154:	253d213f 09093f1f 253f003f 3f003c27     ?!=%.?..?.?%'<.?
    5164:	00212121 1e21213f 25253f00 053f0025     !!!.?!!..?%%%.?.
    5174:	3f000505 003d2521 3f04043f 213f2100     ...?!%=.?..?.!?!
    5184:	20380000 3f013f21 003b0404 2020203f     ..8 !?.?..;.?   
    5194:	3f013f00 023f3f01 3f003f04 003f2121     .?.?.??..?.?!!?.
    51a4:	0f09093f 31213f00 093f003f 27002f39     ?....?!1?.?.9/.'
    51b4:	003d2525 013f0101 20203f01 100f003f     %%=...?..?  ?...
    51c4:	3f001f30 3f203f20 3b04043b 38080f00     0..? ? ?;..;...8
    51d4:	2931000f 3f002325 00000021 04081020     ..1)%#.?!... ...
    51e4:	003f2102 01020000 20000201 00000020     .!?........  ...
    51f4:	00000201 24243800 243f003c 3c003c24     .....8$$<.?$$<.<
    5204:	00242424 3f24243c 2c2c3c00 3f04002c     $$$.<$$?.<,,,..?
    5214:	bc000005 00fca4a4 3c04043f 00003d00     ........?..<.=..
    5224:	fd800000 3f000000 00340808 0000003f     .......?..4.?...
    5234:	3c043c00 043c3c04 3c003c04 003c2424     .<.<.<<..<.<$$<.
    5244:	3c2424fc 24243c00 083c00fc 2c000004     .$$<.<$$..<....,
    5254:	003c2c2c 00243f04 20203c00 100c003c     ,,<..?$..<  <...
    5264:	3c001c30 3c203c20 34080834 a0a0bc00     0..< < <4..4....
    5274:	342400fc 0400242c 0000213f 0000003f     ..$4,$..?!..?...
    5284:	043f2100 02010000 00000102 00000000     .!?.............
    5294:	00000001 00000003 00000005 00000007     ................
    52a4:	00000009 0000000e 00000010 00000012     ................
    52b4:	00000014 00000016 00000018 0000001c     ................
    52c4:	0000001e                                ....

000052c8 <silence_init.1>:
    52c8:	00000000                                ....

000052cc <selected>:
    52cc:	00000000                                ....

000052d0 <scroll>:
    52d0:	00000000                                ....

000052d4 <total_count>:
    52d4:	00000000                                ....

000052d8 <view_count>:
    52d8:	00000000                                ....

000052dc <vu_level>:
    52dc:	00000000                                ....

000052e0 <vol_led_blocks_left>:
    52e0:	00000000                                ....

000052e4 <pause_loaded>:
    52e4:	00000000                                ....

000052e8 <sdcard_while_loading_callback>:
    52e8:	00000000                                ....

000052ec <back_color>:
	...

000052ed <front_color>:
    52ed:	                                         ...

000052f0 <cursor_y>:
    52f0:	00000000                                ....

000052f4 <cursor_x>:
    52f4:	00000000                                ....

000052f8 <f_putchar>:
    52f8:	00000000                                ....

000052fc <_free_file_list>:
	...

00005304 <_open_file_list>:
	...

0000530c <_filelib_valid>:
    530c:	00000000                                ....

00005310 <_filelib_init>:
    5310:	00000000                                ....
