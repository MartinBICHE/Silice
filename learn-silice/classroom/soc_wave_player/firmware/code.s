
code.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
       0:	00010137          	lui	sp,0x10
       4:	00000097          	auipc	ra,0x0
       8:	494080e7          	jalr	1172(ra) # 498 <main>
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

00000050 <str_len_max>:
      50:	00000793          	li	a5,0
      54:	00f50733          	add	a4,a0,a5
      58:	00074703          	lbu	a4,0(a4)
      5c:	00070463          	beqz	a4,64 <str_len_max+0x14>
      60:	00b7c663          	blt	a5,a1,6c <str_len_max+0x1c>
      64:	00078513          	mv	a0,a5
      68:	00008067          	ret
      6c:	00178793          	addi	a5,a5,1
      70:	fe5ff06f          	j	54 <str_len_max+0x4>

00000074 <ends_with>:
      74:	ff010113          	addi	sp,sp,-16 # fff0 <_files+0x5f1c>
      78:	00912223          	sw	s1,4(sp)
      7c:	00058493          	mv	s1,a1
      80:	20000593          	li	a1,512
      84:	00812423          	sw	s0,8(sp)
      88:	01212023          	sw	s2,0(sp)
      8c:	00112623          	sw	ra,12(sp)
      90:	00050913          	mv	s2,a0
      94:	00000097          	auipc	ra,0x0
      98:	fbc080e7          	jalr	-68(ra) # 50 <str_len_max>
      9c:	00050413          	mv	s0,a0
      a0:	04000593          	li	a1,64
      a4:	00048513          	mv	a0,s1
      a8:	00000097          	auipc	ra,0x0
      ac:	fa8080e7          	jalr	-88(ra) # 50 <str_len_max>
      b0:	04a44663          	blt	s0,a0,fc <ends_with+0x88>
      b4:	40a40433          	sub	s0,s0,a0
      b8:	00000793          	li	a5,0
      bc:	02a79063          	bne	a5,a0,dc <ends_with+0x68>
      c0:	00100513          	li	a0,1
      c4:	00c12083          	lw	ra,12(sp)
      c8:	00812403          	lw	s0,8(sp)
      cc:	00412483          	lw	s1,4(sp)
      d0:	00012903          	lw	s2,0(sp)
      d4:	01010113          	addi	sp,sp,16
      d8:	00008067          	ret
      dc:	00f406b3          	add	a3,s0,a5
      e0:	00d906b3          	add	a3,s2,a3
      e4:	00f48733          	add	a4,s1,a5
      e8:	0006c683          	lbu	a3,0(a3)
      ec:	00074703          	lbu	a4,0(a4)
      f0:	00e69663          	bne	a3,a4,fc <ends_with+0x88>
      f4:	00178793          	addi	a5,a5,1
      f8:	fc5ff06f          	j	bc <ends_with+0x48>
      fc:	00000513          	li	a0,0
     100:	fc5ff06f          	j	c4 <ends_with+0x50>

00000104 <leds_set_bargraph_level>:
     104:	00800793          	li	a5,8
     108:	00a7c863          	blt	a5,a0,118 <leds_set_bargraph_level+0x14>
     10c:	fff54793          	not	a5,a0
     110:	41f7d793          	srai	a5,a5,0x1f
     114:	00f577b3          	and	a5,a0,a5
     118:	00000713          	li	a4,0
     11c:	00000693          	li	a3,0
     120:	00100613          	li	a2,1
     124:	00f71a63          	bne	a4,a5,138 <leds_set_bargraph_level+0x34>
     128:	000057b7          	lui	a5,0x5
     12c:	5747a783          	lw	a5,1396(a5) # 5574 <LEDS>
     130:	00d7a023          	sw	a3,0(a5)
     134:	00008067          	ret
     138:	00e615b3          	sll	a1,a2,a4
     13c:	00b6e6b3          	or	a3,a3,a1
     140:	00170713          	addi	a4,a4,1
     144:	fe1ff06f          	j	124 <leds_set_bargraph_level+0x20>

00000148 <read_buttons_debounced>:
     148:	000057b7          	lui	a5,0x5
     14c:	5647a783          	lw	a5,1380(a5) # 5564 <BUTTONS>
     150:	00000713          	li	a4,0
     154:	00000513          	li	a0,0
     158:	0007a583          	lw	a1,0(a5)
     15c:	0007a803          	lw	a6,0(a5)
     160:	0007a883          	lw	a7,0(a5)
     164:	0007a303          	lw	t1,0(a5)
     168:	0007ae03          	lw	t3,0(a5)
     16c:	00200e93          	li	t4,2
     170:	00100f13          	li	t5,1
     174:	00700613          	li	a2,7
     178:	40e5d7b3          	sra	a5,a1,a4
     17c:	40e856b3          	sra	a3,a6,a4
     180:	0016f693          	andi	a3,a3,1
     184:	0017f793          	andi	a5,a5,1
     188:	00d787b3          	add	a5,a5,a3
     18c:	40e8d6b3          	sra	a3,a7,a4
     190:	0016f693          	andi	a3,a3,1
     194:	00d787b3          	add	a5,a5,a3
     198:	40e356b3          	sra	a3,t1,a4
     19c:	0016f693          	andi	a3,a3,1
     1a0:	00d787b3          	add	a5,a5,a3
     1a4:	40ee56b3          	sra	a3,t3,a4
     1a8:	0016f693          	andi	a3,a3,1
     1ac:	00d787b3          	add	a5,a5,a3
     1b0:	00fed663          	bge	t4,a5,1bc <read_buttons_debounced+0x74>
     1b4:	00ef17b3          	sll	a5,t5,a4
     1b8:	00f56533          	or	a0,a0,a5
     1bc:	00170713          	addi	a4,a4,1
     1c0:	fac71ce3          	bne	a4,a2,178 <read_buttons_debounced+0x30>
     1c4:	00008067          	ret

000001c8 <tiny_delay>:
     1c8:	ff010113          	addi	sp,sp,-16
     1cc:	00012623          	sw	zero,12(sp)
     1d0:	00000793          	li	a5,0
     1d4:	00c12703          	lw	a4,12(sp)
     1d8:	00f70733          	add	a4,a4,a5
     1dc:	00e12623          	sw	a4,12(sp)
     1e0:	00178793          	addi	a5,a5,1
     1e4:	fef518e3          	bne	a0,a5,1d4 <tiny_delay+0xc>
     1e8:	00c12783          	lw	a5,12(sp)
     1ec:	01010113          	addi	sp,sp,16
     1f0:	00008067          	ret

000001f4 <clear_audio>:
     1f4:	fe010113          	addi	sp,sp,-32
     1f8:	000057b7          	lui	a5,0x5
     1fc:	00812c23          	sw	s0,24(sp)
     200:	55c7a403          	lw	s0,1372(a5) # 555c <AUDIO>
     204:	00112e23          	sw	ra,28(sp)
     208:	00912a23          	sw	s1,20(sp)
     20c:	00042703          	lw	a4,0(s0)
     210:	01212823          	sw	s2,16(sp)
     214:	01312623          	sw	s3,12(sp)
     218:	00042783          	lw	a5,0(s0)
     21c:	fef70ee3          	beq	a4,a5,218 <clear_audio+0x24>
     220:	00200493          	li	s1,2
     224:	00100993          	li	s3,1
     228:	00042903          	lw	s2,0(s0)
     22c:	20000613          	li	a2,512
     230:	08000593          	li	a1,128
     234:	00090513          	mv	a0,s2
     238:	00002097          	auipc	ra,0x2
     23c:	830080e7          	jalr	-2000(ra) # 1a68 <memset>
     240:	00042783          	lw	a5,0(s0)
     244:	fef90ee3          	beq	s2,a5,240 <clear_audio+0x4c>
     248:	03349063          	bne	s1,s3,268 <clear_audio+0x74>
     24c:	01c12083          	lw	ra,28(sp)
     250:	01812403          	lw	s0,24(sp)
     254:	01412483          	lw	s1,20(sp)
     258:	01012903          	lw	s2,16(sp)
     25c:	00c12983          	lw	s3,12(sp)
     260:	02010113          	addi	sp,sp,32
     264:	00008067          	ret
     268:	00100493          	li	s1,1
     26c:	fbdff06f          	j	228 <clear_audio+0x34>

00000270 <str_cpy_max.part.0>:
     270:	fc060793          	addi	a5,a2,-64
     274:	00f037b3          	snez	a5,a5
     278:	40f007b3          	neg	a5,a5
     27c:	0c07f793          	andi	a5,a5,192
     280:	03f78793          	addi	a5,a5,63
     284:	00000713          	li	a4,0
     288:	00e586b3          	add	a3,a1,a4
     28c:	0006c603          	lbu	a2,0(a3)
     290:	00e506b3          	add	a3,a0,a4
     294:	00060463          	beqz	a2,29c <str_cpy_max.part.0+0x2c>
     298:	00f74663          	blt	a4,a5,2a4 <str_cpy_max.part.0+0x34>
     29c:	00068023          	sb	zero,0(a3)
     2a0:	00008067          	ret
     2a4:	00c68023          	sb	a2,0(a3)
     2a8:	00170713          	addi	a4,a4,1
     2ac:	fddff06f          	j	288 <str_cpy_max.part.0+0x18>

000002b0 <volume_led_tick>:
     2b0:	00006737          	lui	a4,0x6
     2b4:	87072783          	lw	a5,-1936(a4) # 5870 <vol_led_blocks_left>
     2b8:	00f05e63          	blez	a5,2d4 <volume_led_tick+0x24>
     2bc:	fff78793          	addi	a5,a5,-1
     2c0:	86f72823          	sw	a5,-1936(a4)
     2c4:	00079863          	bnez	a5,2d4 <volume_led_tick+0x24>
     2c8:	000057b7          	lui	a5,0x5
     2cc:	5747a783          	lw	a5,1396(a5) # 5574 <LEDS>
     2d0:	0007a023          	sw	zero,0(a5)
     2d4:	00008067          	ret

000002d8 <is_visible_file>:
     2d8:	000055b7          	lui	a1,0x5
     2dc:	ff010113          	addi	sp,sp,-16
     2e0:	57858593          	addi	a1,a1,1400 # 5578 <LEDS+0x4>
     2e4:	00812423          	sw	s0,8(sp)
     2e8:	00112623          	sw	ra,12(sp)
     2ec:	00050413          	mv	s0,a0
     2f0:	00000097          	auipc	ra,0x0
     2f4:	d2c080e7          	jalr	-724(ra) # 1c <streq>
     2f8:	02051663          	bnez	a0,324 <is_visible_file+0x4c>
     2fc:	000055b7          	lui	a1,0x5
     300:	58458593          	addi	a1,a1,1412 # 5584 <LEDS+0x10>
     304:	00040513          	mv	a0,s0
     308:	00000097          	auipc	ra,0x0
     30c:	d6c080e7          	jalr	-660(ra) # 74 <ends_with>
     310:	00154513          	xori	a0,a0,1
     314:	00c12083          	lw	ra,12(sp)
     318:	00812403          	lw	s0,8(sp)
     31c:	01010113          	addi	sp,sp,16
     320:	00008067          	ret
     324:	00000513          	li	a0,0
     328:	fedff06f          	j	314 <is_visible_file+0x3c>

0000032c <str_cat_max.constprop.0>:
     32c:	00000793          	li	a5,0
     330:	10000713          	li	a4,256
     334:	00f506b3          	add	a3,a0,a5
     338:	0006c683          	lbu	a3,0(a3)
     33c:	00068a63          	beqz	a3,350 <str_cat_max.constprop.0+0x24>
     340:	00e79463          	bne	a5,a4,348 <str_cat_max.constprop.0+0x1c>
     344:	00008067          	ret
     348:	00178793          	addi	a5,a5,1
     34c:	fe9ff06f          	j	334 <str_cat_max.constprop.0+0x8>
     350:	0fe00713          	li	a4,254
     354:	02f74463          	blt	a4,a5,37c <str_cat_max.constprop.0+0x50>
     358:	00078713          	mv	a4,a5
     35c:	0ff00813          	li	a6,255
     360:	40f706b3          	sub	a3,a4,a5
     364:	00d586b3          	add	a3,a1,a3
     368:	0006c603          	lbu	a2,0(a3)
     36c:	00e506b3          	add	a3,a0,a4
     370:	00060463          	beqz	a2,378 <str_cat_max.constprop.0+0x4c>
     374:	01071663          	bne	a4,a6,380 <str_cat_max.constprop.0+0x54>
     378:	00068023          	sb	zero,0(a3)
     37c:	00008067          	ret
     380:	00c68023          	sb	a2,0(a3)
     384:	00170713          	addi	a4,a4,1
     388:	fd9ff06f          	j	360 <str_cat_max.constprop.0+0x34>

0000038c <show_image_for_audio>:
     38c:	ef010113          	addi	sp,sp,-272
     390:	00050593          	mv	a1,a0
     394:	10000613          	li	a2,256
     398:	00010513          	mv	a0,sp
     39c:	10112623          	sw	ra,268(sp)
     3a0:	10812423          	sw	s0,264(sp)
     3a4:	00000097          	auipc	ra,0x0
     3a8:	ecc080e7          	jalr	-308(ra) # 270 <str_cpy_max.part.0>
     3ac:	000055b7          	lui	a1,0x5
     3b0:	59058593          	addi	a1,a1,1424 # 5590 <LEDS+0x1c>
     3b4:	00010513          	mv	a0,sp
     3b8:	00000097          	auipc	ra,0x0
     3bc:	f74080e7          	jalr	-140(ra) # 32c <str_cat_max.constprop.0>
     3c0:	000055b7          	lui	a1,0x5
     3c4:	59858593          	addi	a1,a1,1432 # 5598 <LEDS+0x24>
     3c8:	00010513          	mv	a0,sp
     3cc:	00005097          	auipc	ra,0x5
     3d0:	d80080e7          	jalr	-640(ra) # 514c <fl_fopen>
     3d4:	02050c63          	beqz	a0,40c <show_image_for_audio+0x80>
     3d8:	00050413          	mv	s0,a0
     3dc:	00002097          	auipc	ra,0x2
     3e0:	910080e7          	jalr	-1776(ra) # 1cec <display_framebuffer>
     3e4:	00040693          	mv	a3,s0
     3e8:	00004637          	lui	a2,0x4
     3ec:	00100593          	li	a1,1
     3f0:	00004097          	auipc	ra,0x4
     3f4:	758080e7          	jalr	1880(ra) # 4b48 <fl_fread>
     3f8:	00040513          	mv	a0,s0
     3fc:	00004097          	auipc	ra,0x4
     400:	670080e7          	jalr	1648(ra) # 4a6c <fl_fclose>
     404:	00002097          	auipc	ra,0x2
     408:	a34080e7          	jalr	-1484(ra) # 1e38 <display_refresh>
     40c:	10c12083          	lw	ra,268(sp)
     410:	10812403          	lw	s0,264(sp)
     414:	11010113          	addi	sp,sp,272
     418:	00008067          	ret

0000041c <path_join>:
     41c:	0005c703          	lbu	a4,0(a1)
     420:	02f00693          	li	a3,47
     424:	00050793          	mv	a5,a0
     428:	02d71063          	bne	a4,a3,448 <path_join+0x2c>
     42c:	0015c683          	lbu	a3,1(a1)
     430:	00069c63          	bnez	a3,448 <path_join+0x2c>
     434:	00e50023          	sb	a4,0(a0)
     438:	000500a3          	sb	zero,1(a0)
     43c:	00060593          	mv	a1,a2
     440:	00000317          	auipc	t1,0x0
     444:	eec30067          	jr	-276(t1) # 32c <str_cat_max.constprop.0>
     448:	fe010113          	addi	sp,sp,-32
     44c:	00812c23          	sw	s0,24(sp)
     450:	00078513          	mv	a0,a5
     454:	00060413          	mv	s0,a2
     458:	10000613          	li	a2,256
     45c:	00112e23          	sw	ra,28(sp)
     460:	00f12623          	sw	a5,12(sp)
     464:	00000097          	auipc	ra,0x0
     468:	e0c080e7          	jalr	-500(ra) # 270 <str_cpy_max.part.0>
     46c:	00c12503          	lw	a0,12(sp)
     470:	000055b7          	lui	a1,0x5
     474:	59c58593          	addi	a1,a1,1436 # 559c <LEDS+0x28>
     478:	00000097          	auipc	ra,0x0
     47c:	eb4080e7          	jalr	-332(ra) # 32c <str_cat_max.constprop.0>
     480:	00040593          	mv	a1,s0
     484:	01812403          	lw	s0,24(sp)
     488:	00c12503          	lw	a0,12(sp)
     48c:	01c12083          	lw	ra,28(sp)
     490:	02010113          	addi	sp,sp,32
     494:	fadff06f          	j	440 <path_join+0x24>

00000498 <main>:
     498:	000057b7          	lui	a5,0x5
     49c:	5747a783          	lw	a5,1396(a5) # 5574 <LEDS>
     4a0:	93010113          	addi	sp,sp,-1744
     4a4:	ffffe2b7          	lui	t0,0xffffe
     4a8:	6c112623          	sw	ra,1740(sp)
     4ac:	6c812423          	sw	s0,1736(sp)
     4b0:	6c912223          	sw	s1,1732(sp)
     4b4:	6d212023          	sw	s2,1728(sp)
     4b8:	6b312e23          	sw	s3,1724(sp)
     4bc:	6b412c23          	sw	s4,1720(sp)
     4c0:	6b512a23          	sw	s5,1716(sp)
     4c4:	6b612823          	sw	s6,1712(sp)
     4c8:	6b712623          	sw	s7,1708(sp)
     4cc:	6b812423          	sw	s8,1704(sp)
     4d0:	6b912223          	sw	s9,1700(sp)
     4d4:	6ba12023          	sw	s10,1696(sp)
     4d8:	69b12e23          	sw	s11,1692(sp)
     4dc:	00510133          	add	sp,sp,t0
     4e0:	00f12423          	sw	a5,8(sp)
     4e4:	0007a023          	sw	zero,0(a5)
     4e8:	000027b7          	lui	a5,0x2
     4ec:	00006737          	lui	a4,0x6
     4f0:	d2078793          	addi	a5,a5,-736 # 1d20 <display_putchar>
     4f4:	88f72423          	sw	a5,-1912(a4) # 5888 <f_putchar>
     4f8:	00001097          	auipc	ra,0x1
     4fc:	750080e7          	jalr	1872(ra) # 1c48 <oled_init>
     500:	00001097          	auipc	ra,0x1
     504:	754080e7          	jalr	1876(ra) # 1c54 <oled_fullscreen>
     508:	00001097          	auipc	ra,0x1
     50c:	7e4080e7          	jalr	2020(ra) # 1cec <display_framebuffer>
     510:	00004637          	lui	a2,0x4
     514:	00000593          	li	a1,0
     518:	00001097          	auipc	ra,0x1
     51c:	550080e7          	jalr	1360(ra) # 1a68 <memset>
     520:	000024b7          	lui	s1,0x2
     524:	00002437          	lui	s0,0x2
     528:	00002097          	auipc	ra,0x2
     52c:	910080e7          	jalr	-1776(ra) # 1e38 <display_refresh>
     530:	9ac48493          	addi	s1,s1,-1620 # 19ac <sdcard_writesector>
     534:	00001097          	auipc	ra,0x1
     538:	2d4080e7          	jalr	724(ra) # 1808 <sdcard_init>
     53c:	95840413          	addi	s0,s0,-1704 # 1958 <sdcard_readsector>
     540:	00002097          	auipc	ra,0x2
     544:	034080e7          	jalr	52(ra) # 2574 <fl_init>
     548:	00048593          	mv	a1,s1
     54c:	00040513          	mv	a0,s0
     550:	00003097          	auipc	ra,0x3
     554:	f84080e7          	jalr	-124(ra) # 34d4 <fl_attach_media>
     558:	fe0518e3          	bnez	a0,548 <main+0xb0>
     55c:	00005737          	lui	a4,0x5
     560:	02f00793          	li	a5,47
     564:	55c72703          	lw	a4,1372(a4) # 555c <AUDIO>
     568:	08f11023          	sh	a5,128(sp)
     56c:	000187b7          	lui	a5,0x18
     570:	4007a023          	sw	zero,1024(a5) # 18400 <__stacktop+0x8400>
     574:	00012c23          	sw	zero,24(sp)
     578:	02012023          	sw	zero,32(sp)
     57c:	00012e23          	sw	zero,28(sp)
     580:	00100793          	li	a5,1
     584:	00006bb7          	lui	s7,0x6
     588:	000064b7          	lui	s1,0x6
     58c:	02e12423          	sw	a4,40(sp)
     590:	00006b37          	lui	s6,0x6
     594:	12078263          	beqz	a5,6b8 <main+0x220>
     598:	00812783          	lw	a5,8(sp)
     59c:	860ba423          	sw	zero,-1944(s7) # 5868 <view_count>
     5a0:	860b2223          	sw	zero,-1948(s6) # 5864 <total_count>
     5a4:	0007a023          	sw	zero,0(a5)
     5a8:	08014683          	lbu	a3,128(sp)
     5ac:	02f00713          	li	a4,47
     5b0:	00e69863          	bne	a3,a4,5c0 <main+0x128>
     5b4:	08114783          	lbu	a5,129(sp)
     5b8:	00000993          	li	s3,0
     5bc:	00078663          	beqz	a5,5c8 <main+0x130>
     5c0:	00100993          	li	s3,1
     5c4:	873b2223          	sw	s3,-1948(s6)
     5c8:	58010413          	addi	s0,sp,1408
     5cc:	00040593          	mv	a1,s0
     5d0:	08010513          	addi	a0,sp,128
     5d4:	00003097          	auipc	ra,0x3
     5d8:	518080e7          	jalr	1304(ra) # 3aec <fl_opendir>
     5dc:	02050a63          	beqz	a0,610 <main+0x178>
     5e0:	00005a37          	lui	s4,0x5
     5e4:	00005ab7          	lui	s5,0x5
     5e8:	5a0a0a13          	addi	s4,s4,1440 # 55a0 <LEDS+0x2c>
     5ec:	5a4a8a93          	addi	s5,s5,1444 # 55a4 <LEDS+0x30>
     5f0:	69010593          	addi	a1,sp,1680
     5f4:	00040513          	mv	a0,s0
     5f8:	00004097          	auipc	ra,0x4
     5fc:	bc0080e7          	jalr	-1088(ra) # 41b8 <fl_readdir>
     600:	10050063          	beqz	a0,700 <main+0x268>
     604:	00040513          	mv	a0,s0
     608:	00002097          	auipc	ra,0x2
     60c:	0cc080e7          	jalr	204(ra) # 26d4 <fl_closedir>
     610:	864b2703          	lw	a4,-1948(s6)
     614:	00006ab7          	lui	s5,0x6
     618:	12e04c63          	bgtz	a4,750 <main+0x2b8>
     61c:	840aae23          	sw	zero,-1956(s5) # 585c <selected>
     620:	8604a023          	sw	zero,-1952(s1) # 5860 <scroll>
     624:	00002097          	auipc	ra,0x2
     628:	814080e7          	jalr	-2028(ra) # 1e38 <display_refresh>
     62c:	00000593          	li	a1,0
     630:	00000513          	li	a0,0
     634:	00001097          	auipc	ra,0x1
     638:	6c4080e7          	jalr	1732(ra) # 1cf8 <display_set_cursor>
     63c:	01c14583          	lbu	a1,28(sp)
     640:	00006437          	lui	s0,0x6
     644:	000059b7          	lui	s3,0x5
     648:	07f58513          	addi	a0,a1,127
     64c:	0ff57513          	zext.b	a0,a0
     650:	00001097          	auipc	ra,0x1
     654:	6bc080e7          	jalr	1724(ra) # 1d0c <display_set_front_back_color>
     658:	00005537          	lui	a0,0x5
     65c:	08010593          	addi	a1,sp,128
     660:	5a850513          	addi	a0,a0,1448 # 55a8 <LEDS+0x34>
     664:	00005a37          	lui	s4,0x5
     668:	00002097          	auipc	ra,0x2
     66c:	93c080e7          	jalr	-1732(ra) # 1fa4 <printf>
     670:	aa440413          	addi	s0,s0,-1372 # 5aa4 <view>
     674:	00000913          	li	s2,0
     678:	5c498993          	addi	s3,s3,1476 # 55c4 <LEDS+0x50>
     67c:	5b8a0a13          	addi	s4,s4,1464 # 55b8 <LEDS+0x44>
     680:	868ba783          	lw	a5,-1944(s7)
     684:	22f94263          	blt	s2,a5,8a8 <main+0x410>
     688:	864b2783          	lw	a5,-1948(s6)
     68c:	02079263          	bnez	a5,6b0 <main+0x218>
     690:	0ff00513          	li	a0,255
     694:	00000593          	li	a1,0
     698:	00001097          	auipc	ra,0x1
     69c:	674080e7          	jalr	1652(ra) # 1d0c <display_set_front_back_color>
     6a0:	00005537          	lui	a0,0x5
     6a4:	5d050513          	addi	a0,a0,1488 # 55d0 <LEDS+0x5c>
     6a8:	00002097          	auipc	ra,0x2
     6ac:	8fc080e7          	jalr	-1796(ra) # 1fa4 <printf>
     6b0:	00001097          	auipc	ra,0x1
     6b4:	788080e7          	jalr	1928(ra) # 1e38 <display_refresh>
     6b8:	000019b7          	lui	s3,0x1
     6bc:	9c498993          	addi	s3,s3,-1596 # 9c4 <main+0x52c>
     6c0:	00006937          	lui	s2,0x6
     6c4:	02012403          	lw	s0,32(sp)
     6c8:	00000097          	auipc	ra,0x0
     6cc:	a80080e7          	jalr	-1408(ra) # 148 <read_buttons_debounced>
     6d0:	864b2683          	lw	a3,-1948(s6)
     6d4:	fff44793          	not	a5,s0
     6d8:	02a12023          	sw	a0,32(sp)
     6dc:	00a7f7b3          	and	a5,a5,a0
     6e0:	3cd050e3          	blez	a3,12a0 <main+0xe08>
     6e4:	0107f613          	andi	a2,a5,16
     6e8:	85c92703          	lw	a4,-1956(s2) # 585c <selected>
     6ec:	20060863          	beqz	a2,8fc <main+0x464>
     6f0:	00170713          	addi	a4,a4,1
     6f4:	84e92e23          	sw	a4,-1956(s2)
     6f8:	00100793          	li	a5,1
     6fc:	3bd0006f          	j	12b8 <main+0xe20>
     700:	000a0593          	mv	a1,s4
     704:	69010513          	addi	a0,sp,1680
     708:	00000097          	auipc	ra,0x0
     70c:	914080e7          	jalr	-1772(ra) # 1c <streq>
     710:	ee0510e3          	bnez	a0,5f0 <main+0x158>
     714:	000a8593          	mv	a1,s5
     718:	69010513          	addi	a0,sp,1680
     71c:	00000097          	auipc	ra,0x0
     720:	900080e7          	jalr	-1792(ra) # 1c <streq>
     724:	ec0516e3          	bnez	a0,5f0 <main+0x158>
     728:	79414783          	lbu	a5,1940(sp)
     72c:	00079a63          	bnez	a5,740 <main+0x2a8>
     730:	69010513          	addi	a0,sp,1680
     734:	00000097          	auipc	ra,0x0
     738:	ba4080e7          	jalr	-1116(ra) # 2d8 <is_visible_file>
     73c:	ea050ae3          	beqz	a0,5f0 <main+0x158>
     740:	864b2783          	lw	a5,-1948(s6)
     744:	00178793          	addi	a5,a5,1
     748:	86fb2223          	sw	a5,-1948(s6)
     74c:	ea5ff06f          	j	5f0 <main+0x158>
     750:	85caa783          	lw	a5,-1956(s5)
     754:	0607d863          	bgez	a5,7c4 <main+0x32c>
     758:	840aae23          	sw	zero,-1956(s5)
     75c:	00000793          	li	a5,0
     760:	8604a903          	lw	s2,-1952(s1)
     764:	0727d863          	bge	a5,s2,7d4 <main+0x33c>
     768:	86f4a023          	sw	a5,-1952(s1)
     76c:	00078913          	mv	s2,a5
     770:	58010593          	addi	a1,sp,1408
     774:	08010513          	addi	a0,sp,128
     778:	00003097          	auipc	ra,0x3
     77c:	374080e7          	jalr	884(ra) # 3aec <fl_opendir>
     780:	ea0502e3          	beqz	a0,624 <main+0x18c>
     784:	00005c37          	lui	s8,0x5
     788:	00005cb7          	lui	s9,0x5
     78c:	00690d13          	addi	s10,s2,6
     790:	69010413          	addi	s0,sp,1680
     794:	5a0c0c13          	addi	s8,s8,1440 # 55a0 <LEDS+0x2c>
     798:	5a4c8c93          	addi	s9,s9,1444 # 55a4 <LEDS+0x30>
     79c:	00500d93          	li	s11,5
     7a0:	00040593          	mv	a1,s0
     7a4:	58010513          	addi	a0,sp,1408
     7a8:	00004097          	auipc	ra,0x4
     7ac:	a10080e7          	jalr	-1520(ra) # 41b8 <fl_readdir>
     7b0:	04050263          	beqz	a0,7f4 <main+0x35c>
     7b4:	58010513          	addi	a0,sp,1408
     7b8:	00002097          	auipc	ra,0x2
     7bc:	f1c080e7          	jalr	-228(ra) # 26d4 <fl_closedir>
     7c0:	e65ff06f          	j	624 <main+0x18c>
     7c4:	f8e7cee3          	blt	a5,a4,760 <main+0x2c8>
     7c8:	fff70793          	addi	a5,a4,-1
     7cc:	84faae23          	sw	a5,-1956(s5)
     7d0:	f91ff06f          	j	760 <main+0x2c8>
     7d4:	00590713          	addi	a4,s2,5
     7d8:	00f75663          	bge	a4,a5,7e4 <main+0x34c>
     7dc:	ffb78913          	addi	s2,a5,-5
     7e0:	8724a023          	sw	s2,-1952(s1)
     7e4:	f80956e3          	bgez	s2,770 <main+0x2d8>
     7e8:	8604a023          	sw	zero,-1952(s1)
     7ec:	00000913          	li	s2,0
     7f0:	f81ff06f          	j	770 <main+0x2d8>
     7f4:	000c0593          	mv	a1,s8
     7f8:	00040513          	mv	a0,s0
     7fc:	00000097          	auipc	ra,0x0
     800:	820080e7          	jalr	-2016(ra) # 1c <streq>
     804:	f8051ee3          	bnez	a0,7a0 <main+0x308>
     808:	000c8593          	mv	a1,s9
     80c:	00040513          	mv	a0,s0
     810:	00000097          	auipc	ra,0x0
     814:	80c080e7          	jalr	-2036(ra) # 1c <streq>
     818:	f80514e3          	bnez	a0,7a0 <main+0x308>
     81c:	10444783          	lbu	a5,260(s0)
     820:	00079a63          	bnez	a5,834 <main+0x39c>
     824:	00040513          	mv	a0,s0
     828:	00000097          	auipc	ra,0x0
     82c:	ab0080e7          	jalr	-1360(ra) # 2d8 <is_visible_file>
     830:	f60508e3          	beqz	a0,7a0 <main+0x308>
     834:	0129d663          	bge	s3,s2,840 <main+0x3a8>
     838:	00198993          	addi	s3,s3,1
     83c:	f65ff06f          	j	7a0 <main+0x308>
     840:	f7a9dae3          	bge	s3,s10,7b4 <main+0x31c>
     844:	868ba783          	lw	a5,-1944(s7)
     848:	f6fdc6e3          	blt	s11,a5,7b4 <main+0x31c>
     84c:	00279513          	slli	a0,a5,0x2
     850:	00f50533          	add	a0,a0,a5
     854:	00251513          	slli	a0,a0,0x2
     858:	00178713          	addi	a4,a5,1
     85c:	40f50533          	sub	a0,a0,a5
     860:	000067b7          	lui	a5,0x6
     864:	aa478793          	addi	a5,a5,-1372 # 5aa4 <view>
     868:	00251513          	slli	a0,a0,0x2
     86c:	00f50533          	add	a0,a0,a5
     870:	04000613          	li	a2,64
     874:	00040593          	mv	a1,s0
     878:	00a12623          	sw	a0,12(sp)
     87c:	86eba423          	sw	a4,-1944(s7)
     880:	00000097          	auipc	ra,0x0
     884:	9f0080e7          	jalr	-1552(ra) # 270 <str_cpy_max.part.0>
     888:	10444783          	lbu	a5,260(s0)
     88c:	00c12503          	lw	a0,12(sp)
     890:	00f037b3          	snez	a5,a5
     894:	04f50023          	sb	a5,64(a0)
     898:	10c42783          	lw	a5,268(s0)
     89c:	04050423          	sb	zero,72(a0)
     8a0:	04f52223          	sw	a5,68(a0)
     8a4:	f95ff06f          	j	838 <main+0x3a0>
     8a8:	8604a783          	lw	a5,-1952(s1)
     8ac:	85caa703          	lw	a4,-1956(s5)
     8b0:	00f907b3          	add	a5,s2,a5
     8b4:	02e79e63          	bne	a5,a4,8f0 <main+0x458>
     8b8:	0ff00593          	li	a1,255
     8bc:	00000513          	li	a0,0
     8c0:	00001097          	auipc	ra,0x1
     8c4:	44c080e7          	jalr	1100(ra) # 1d0c <display_set_front_back_color>
     8c8:	04044783          	lbu	a5,64(s0)
     8cc:	00040593          	mv	a1,s0
     8d0:	000a0513          	mv	a0,s4
     8d4:	00079463          	bnez	a5,8dc <main+0x444>
     8d8:	00098513          	mv	a0,s3
     8dc:	00001097          	auipc	ra,0x1
     8e0:	6c8080e7          	jalr	1736(ra) # 1fa4 <printf>
     8e4:	00190913          	addi	s2,s2,1
     8e8:	04c40413          	addi	s0,s0,76
     8ec:	d95ff06f          	j	680 <main+0x1e8>
     8f0:	00000593          	li	a1,0
     8f4:	0ff00513          	li	a0,255
     8f8:	fc9ff06f          	j	8c0 <main+0x428>
     8fc:	0087f613          	andi	a2,a5,8
     900:	00060663          	beqz	a2,90c <main+0x474>
     904:	fff70713          	addi	a4,a4,-1
     908:	dedff06f          	j	6f4 <main+0x25c>
     90c:	0a075263          	bgez	a4,9b0 <main+0x518>
     910:	84092e23          	sw	zero,-1956(s2)
     914:	0407f713          	andi	a4,a5,64
     918:	08070ae3          	beqz	a4,11ac <main+0xd14>
     91c:	00001097          	auipc	ra,0x1
     920:	51c080e7          	jalr	1308(ra) # 1e38 <display_refresh>
     924:	8604a783          	lw	a5,-1952(s1)
     928:	85c92a03          	lw	s4,-1956(s2)
     92c:	40fa0a33          	sub	s4,s4,a5
     930:	00001097          	auipc	ra,0x1
     934:	3bc080e7          	jalr	956(ra) # 1cec <display_framebuffer>
     938:	00004637          	lui	a2,0x4
     93c:	00000593          	li	a1,0
     940:	00001097          	auipc	ra,0x1
     944:	128080e7          	jalr	296(ra) # 1a68 <memset>
     948:	140a4ce3          	bltz	s4,12a0 <main+0xe08>
     94c:	868ba783          	lw	a5,-1944(s7)
     950:	14fa58e3          	bge	s4,a5,12a0 <main+0xe08>
     954:	002a1413          	slli	s0,s4,0x2
     958:	01440433          	add	s0,s0,s4
     95c:	00241413          	slli	s0,s0,0x2
     960:	41440433          	sub	s0,s0,s4
     964:	000067b7          	lui	a5,0x6
     968:	aa478793          	addi	a5,a5,-1372 # 5aa4 <view>
     96c:	00241413          	slli	s0,s0,0x2
     970:	00f40433          	add	s0,s0,a5
     974:	00040613          	mv	a2,s0
     978:	08010593          	addi	a1,sp,128
     97c:	18010513          	addi	a0,sp,384
     980:	00000097          	auipc	ra,0x0
     984:	a9c080e7          	jalr	-1380(ra) # 41c <path_join>
     988:	04044783          	lbu	a5,64(s0)
     98c:	10000613          	li	a2,256
     990:	18010593          	addi	a1,sp,384
     994:	76078a63          	beqz	a5,1108 <main+0xc70>
     998:	08010513          	addi	a0,sp,128
     99c:	00000097          	auipc	ra,0x0
     9a0:	8d4080e7          	jalr	-1836(ra) # 270 <str_cpy_max.part.0>
     9a4:	84092e23          	sw	zero,-1956(s2)
     9a8:	8604a023          	sw	zero,-1952(s1)
     9ac:	d4dff06f          	j	6f8 <main+0x260>
     9b0:	f6d742e3          	blt	a4,a3,914 <main+0x47c>
     9b4:	fff68693          	addi	a3,a3,-1
     9b8:	84d92e23          	sw	a3,-1956(s2)
     9bc:	f59ff06f          	j	914 <main+0x47c>
     9c0:	000187b7          	lui	a5,0x18
     9c4:	00100413          	li	s0,1
     9c8:	4087a023          	sw	s0,1024(a5) # 18400 <__stacktop+0x8400>
     9cc:	00000097          	auipc	ra,0x0
     9d0:	828080e7          	jalr	-2008(ra) # 1f4 <clear_audio>
     9d4:	00006937          	lui	s2,0x6
     9d8:	85892783          	lw	a5,-1960(s2) # 5858 <silence_init.1>
     9dc:	02079063          	bnez	a5,9fc <main+0x564>
     9e0:	00006537          	lui	a0,0x6
     9e4:	20000613          	li	a2,512
     9e8:	08000593          	li	a1,128
     9ec:	8a450513          	addi	a0,a0,-1884 # 58a4 <silence.0>
     9f0:	00001097          	auipc	ra,0x1
     9f4:	078080e7          	jalr	120(ra) # 1a68 <memset>
     9f8:	84892c23          	sw	s0,-1960(s2)
     9fc:	00000a13          	li	s4,0
     a00:	00000d13          	li	s10,0
     a04:	00000d93          	li	s11,0
     a08:	02012223          	sw	zero,36(sp)
     a0c:	00012823          	sw	zero,16(sp)
     a10:	00000a93          	li	s5,0
     a14:	00000413          	li	s0,0
     a18:	00012623          	sw	zero,12(sp)
     a1c:	08000913          	li	s2,128
     a20:	fffff097          	auipc	ra,0xfffff
     a24:	728080e7          	jalr	1832(ra) # 148 <read_buttons_debounced>
     a28:	fffac793          	not	a5,s5
     a2c:	00a7f7b3          	and	a5,a5,a0
     a30:	0047f993          	andi	s3,a5,4
     a34:	00050c13          	mv	s8,a0
     a38:	04098263          	beqz	s3,a7c <main+0x5e4>
     a3c:	fffff097          	auipc	ra,0xfffff
     a40:	7b8080e7          	jalr	1976(ra) # 1f4 <clear_audio>
     a44:	00001097          	auipc	ra,0x1
     a48:	2a8080e7          	jalr	680(ra) # 1cec <display_framebuffer>
     a4c:	00004637          	lui	a2,0x4
     a50:	00000593          	li	a1,0
     a54:	00001097          	auipc	ra,0x1
     a58:	014080e7          	jalr	20(ra) # 1a68 <memset>
     a5c:	00001097          	auipc	ra,0x1
     a60:	3dc080e7          	jalr	988(ra) # 1e38 <display_refresh>
     a64:	01412503          	lw	a0,20(sp)
     a68:	00004097          	auipc	ra,0x4
     a6c:	004080e7          	jalr	4(ra) # 4a6c <fl_fclose>
     a70:	00812783          	lw	a5,8(sp)
     a74:	0007a023          	sw	zero,0(a5)
     a78:	7140006f          	j	118c <main+0xcf4>
     a7c:	0027f713          	andi	a4,a5,2
     a80:	18070a63          	beqz	a4,c14 <main+0x77c>
     a84:	00018cb7          	lui	s9,0x18
     a88:	00100a93          	li	s5,1
     a8c:	400c8c93          	addi	s9,s9,1024 # 18400 <__stacktop+0x8400>
     a90:	13540663          	beq	s0,s5,bbc <main+0x724>
     a94:	fffff097          	auipc	ra,0xfffff
     a98:	760080e7          	jalr	1888(ra) # 1f4 <clear_audio>
     a9c:	00812783          	lw	a5,8(sp)
     aa0:	000ca023          	sw	zero,0(s9)
     aa4:	000069b7          	lui	s3,0x6
     aa8:	0007a023          	sw	zero,0(a5)
     aac:	8749a783          	lw	a5,-1932(s3) # 5874 <pause_loaded>
     ab0:	04079863          	bnez	a5,b00 <main+0x668>
     ab4:	000057b7          	lui	a5,0x5
     ab8:	00005537          	lui	a0,0x5
     abc:	59878593          	addi	a1,a5,1432 # 5598 <LEDS+0x24>
     ac0:	5f050513          	addi	a0,a0,1520 # 55f0 <LEDS+0x7c>
     ac4:	00004097          	auipc	ra,0x4
     ac8:	688080e7          	jalr	1672(ra) # 514c <fl_fopen>
     acc:	00050c93          	mv	s9,a0
     ad0:	04050863          	beqz	a0,b20 <main+0x688>
     ad4:	00050693          	mv	a3,a0
     ad8:	00006537          	lui	a0,0x6
     adc:	00004637          	lui	a2,0x4
     ae0:	000a8593          	mv	a1,s5
     ae4:	c6c50513          	addi	a0,a0,-916 # 5c6c <pause_buf>
     ae8:	00004097          	auipc	ra,0x4
     aec:	060080e7          	jalr	96(ra) # 4b48 <fl_fread>
     af0:	000c8513          	mv	a0,s9
     af4:	00004097          	auipc	ra,0x4
     af8:	f78080e7          	jalr	-136(ra) # 4a6c <fl_fclose>
     afc:	8759aa23          	sw	s5,-1932(s3)
     b00:	00001097          	auipc	ra,0x1
     b04:	1ec080e7          	jalr	492(ra) # 1cec <display_framebuffer>
     b08:	000066b7          	lui	a3,0x6
     b0c:	00000793          	li	a5,0
     b10:	c6c68693          	addi	a3,a3,-916 # 5c6c <pause_buf>
     b14:	06300813          	li	a6,99
     b18:	000045b7          	lui	a1,0x4
     b1c:	0840006f          	j	ba0 <main+0x708>
     b20:	8749a783          	lw	a5,-1932(s3)
     b24:	fc079ee3          	bnez	a5,b00 <main+0x668>
     b28:	fffff097          	auipc	ra,0xfffff
     b2c:	788080e7          	jalr	1928(ra) # 2b0 <volume_led_tick>
     b30:	000067b7          	lui	a5,0x6
     b34:	8707a783          	lw	a5,-1936(a5) # 5870 <vol_led_blocks_left>
     b38:	00079663          	bnez	a5,b44 <main+0x6ac>
     b3c:	00812783          	lw	a5,8(sp)
     b40:	0007a023          	sw	zero,0(a5)
     b44:	0c800513          	li	a0,200
     b48:	fffff097          	auipc	ra,0xfffff
     b4c:	680080e7          	jalr	1664(ra) # 1c8 <tiny_delay>
     b50:	02412403          	lw	s0,36(sp)
     b54:	000a0a93          	mv	s5,s4
     b58:	000d0c93          	mv	s9,s10
     b5c:	00100993          	li	s3,1
     b60:	000a8a13          	mv	s4,s5
     b64:	02812223          	sw	s0,36(sp)
     b68:	000c8d13          	mv	s10,s9
     b6c:	000c0a93          	mv	s5,s8
     b70:	00098413          	mv	s0,s3
     b74:	eadff06f          	j	a20 <main+0x588>
     b78:	00e30633          	add	a2,t1,a4
     b7c:	00064603          	lbu	a2,0(a2) # 4000 <fatfs_list_directory_next+0x8c>
     b80:	00c86663          	bltu	a6,a2,b8c <main+0x6f4>
     b84:	00e88e33          	add	t3,a7,a4
     b88:	00ce0023          	sb	a2,0(t3)
     b8c:	00170713          	addi	a4,a4,1
     b90:	08000613          	li	a2,128
     b94:	fec712e3          	bne	a4,a2,b78 <main+0x6e0>
     b98:	00c787b3          	add	a5,a5,a2
     b9c:	00b78a63          	beq	a5,a1,bb0 <main+0x718>
     ba0:	00040713          	mv	a4,s0
     ba4:	00d78333          	add	t1,a5,a3
     ba8:	00f508b3          	add	a7,a0,a5
     bac:	fcdff06f          	j	b78 <main+0x6e0>
     bb0:	00001097          	auipc	ra,0x1
     bb4:	288080e7          	jalr	648(ra) # 1e38 <display_refresh>
     bb8:	f71ff06f          	j	b28 <main+0x690>
     bbc:	02f12623          	sw	a5,44(sp)
     bc0:	008ca023          	sw	s0,0(s9)
     bc4:	fffff097          	auipc	ra,0xfffff
     bc8:	630080e7          	jalr	1584(ra) # 1f4 <clear_audio>
     bcc:	28010513          	addi	a0,sp,640
     bd0:	fffff097          	auipc	ra,0xfffff
     bd4:	7bc080e7          	jalr	1980(ra) # 38c <show_image_for_audio>
     bd8:	02c12783          	lw	a5,44(sp)
     bdc:	020c7713          	andi	a4,s8,32
     be0:	040c7693          	andi	a3,s8,64
     be4:	74070e63          	beqz	a4,1340 <main+0xea8>
     be8:	001d0c93          	addi	s9,s10,1
     bec:	02068863          	beqz	a3,c1c <main+0x784>
     bf0:	001a0a93          	addi	s5,s4,1
     bf4:	02070a63          	beqz	a4,c28 <main+0x790>
     bf8:	019aa713          	slti	a4,s5,25
     bfc:	00173713          	seqz	a4,a4
     c00:	01800613          	li	a2,24
     c04:	73964863          	blt	a2,s9,1334 <main+0xe9c>
     c08:	6c068e63          	beqz	a3,12e4 <main+0xe4c>
     c0c:	00000d93          	li	s11,0
     c10:	0a00006f          	j	cb0 <main+0x818>
     c14:	fc0404e3          	beqz	s0,bdc <main+0x744>
     c18:	f11ff06f          	j	b28 <main+0x690>
     c1c:	00000713          	li	a4,0
     c20:	00000a93          	li	s5,0
     c24:	fddff06f          	j	c00 <main+0x768>
     c28:	01800713          	li	a4,24
     c2c:	73575063          	bge	a4,s5,134c <main+0xeb4>
     c30:	00100713          	li	a4,1
     c34:	001d8d93          	addi	s11,s11,1
     c38:	003df693          	andi	a3,s11,3
     c3c:	06069a63          	bnez	a3,cb0 <main+0x818>
     c40:	00100693          	li	a3,1
     c44:	000c8613          	mv	a2,s9
     c48:	00d71463          	bne	a4,a3,c50 <main+0x7b8>
     c4c:	000a8613          	mv	a2,s5
     c50:	03c00593          	li	a1,60
     c54:	00800693          	li	a3,8
     c58:	00c5dc63          	bge	a1,a2,c70 <main+0x7d8>
     c5c:	08c00693          	li	a3,140
     c60:	00c6a633          	slt	a2,a3,a2
     c64:	40c00633          	neg	a2,a2
     c68:	06067693          	andi	a3,a2,96
     c6c:	02068693          	addi	a3,a3,32
     c70:	00100613          	li	a2,1
     c74:	00969693          	slli	a3,a3,0x9
     c78:	20c71e63          	bne	a4,a2,e94 <main+0x9fc>
     c7c:	00c12703          	lw	a4,12(sp)
     c80:	00e68733          	add	a4,a3,a4
     c84:	01412503          	lw	a0,20(sp)
     c88:	02f12623          	sw	a5,44(sp)
     c8c:	e0077793          	andi	a5,a4,-512
     c90:	00078593          	mv	a1,a5
     c94:	00000613          	li	a2,0
     c98:	00f12623          	sw	a5,12(sp)
     c9c:	00002097          	auipc	ra,0x2
     ca0:	940080e7          	jalr	-1728(ra) # 25dc <fl_fseek>
     ca4:	fffff097          	auipc	ra,0xfffff
     ca8:	550080e7          	jalr	1360(ra) # 1f4 <clear_audio>
     cac:	02c12783          	lw	a5,44(sp)
     cb0:	008c7713          	andi	a4,s8,8
     cb4:	1e071a63          	bnez	a4,ea8 <main+0xa10>
     cb8:	01bc1713          	slli	a4,s8,0x1b
     cbc:	41f75413          	srai	s0,a4,0x1f
     cc0:	0087f713          	andi	a4,a5,8
     cc4:	0107f793          	andi	a5,a5,16
     cc8:	64078e63          	beqz	a5,1324 <main+0xe8c>
     ccc:	00e03733          	snez	a4,a4
     cd0:	00171413          	slli	s0,a4,0x1
     cd4:	fff40413          	addi	s0,s0,-1
     cd8:	00541793          	slli	a5,s0,0x5
     cdc:	012787b3          	add	a5,a5,s2
     ce0:	10000713          	li	a4,256
     ce4:	1cf75e63          	bge	a4,a5,ec0 <main+0xa28>
     ce8:	00070793          	mv	a5,a4
     cec:	40f90733          	sub	a4,s2,a5
     cf0:	00e03733          	snez	a4,a4
     cf4:	00012823          	sw	zero,16(sp)
     cf8:	00078913          	mv	s2,a5
     cfc:	02070063          	beqz	a4,d1c <main+0x884>
     d00:	01090513          	addi	a0,s2,16
     d04:	40555513          	srai	a0,a0,0x5
     d08:	fffff097          	auipc	ra,0xfffff
     d0c:	3fc080e7          	jalr	1020(ra) # 104 <leds_set_bargraph_level>
     d10:	000067b7          	lui	a5,0x6
     d14:	02800713          	li	a4,40
     d18:	86e7a823          	sw	a4,-1936(a5) # 5870 <vol_led_blocks_left>
     d1c:	02812783          	lw	a5,40(sp)
     d20:	00000a13          	li	s4,0
     d24:	20000713          	li	a4,512
     d28:	0007ad03          	lw	s10,0(a5)
     d2c:	01412683          	lw	a3,20(sp)
     d30:	69010793          	addi	a5,sp,1680
     d34:	41470633          	sub	a2,a4,s4
     d38:	00100593          	li	a1,1
     d3c:	01478533          	add	a0,a5,s4
     d40:	00004097          	auipc	ra,0x4
     d44:	e08080e7          	jalr	-504(ra) # 4b48 <fl_fread>
     d48:	00a05a63          	blez	a0,d5c <main+0x8c4>
     d4c:	00aa0a33          	add	s4,s4,a0
     d50:	1ff00793          	li	a5,511
     d54:	20000713          	li	a4,512
     d58:	fd47dae3          	bge	a5,s4,d2c <main+0x894>
     d5c:	1ff00793          	li	a5,511
     d60:	0347c063          	blt	a5,s4,d80 <main+0x8e8>
     d64:	20000613          	li	a2,512
     d68:	69010793          	addi	a5,sp,1680
     d6c:	41460633          	sub	a2,a2,s4
     d70:	08000593          	li	a1,128
     d74:	01478533          	add	a0,a5,s4
     d78:	00001097          	auipc	ra,0x1
     d7c:	cf0080e7          	jalr	-784(ra) # 1a68 <memset>
     d80:	69010793          	addi	a5,sp,1680
     d84:	20078693          	addi	a3,a5,512
     d88:	0007c503          	lbu	a0,0(a5)
     d8c:	00090593          	mv	a1,s2
     d90:	02d12623          	sw	a3,44(sp)
     d94:	f8050513          	addi	a0,a0,-128
     d98:	02f12223          	sw	a5,36(sp)
     d9c:	00001097          	auipc	ra,0x1
     da0:	344080e7          	jalr	836(ra) # 20e0 <__mulsi3>
     da4:	40855513          	srai	a0,a0,0x8
     da8:	08050513          	addi	a0,a0,128
     dac:	0ff00613          	li	a2,255
     db0:	02412783          	lw	a5,36(sp)
     db4:	02c12683          	lw	a3,44(sp)
     db8:	18a65463          	bge	a2,a0,f40 <main+0xaa8>
     dbc:	00060513          	mv	a0,a2
     dc0:	00a78023          	sb	a0,0(a5)
     dc4:	00178793          	addi	a5,a5,1
     dc8:	fcf690e3          	bne	a3,a5,d88 <main+0x8f0>
     dcc:	20000613          	li	a2,512
     dd0:	69010593          	addi	a1,sp,1680
     dd4:	000d0513          	mv	a0,s10
     dd8:	00001097          	auipc	ra,0x1
     ddc:	cac080e7          	jalr	-852(ra) # 1a84 <memcpy>
     de0:	fffff097          	auipc	ra,0xfffff
     de4:	4d0080e7          	jalr	1232(ra) # 2b0 <volume_led_tick>
     de8:	000067b7          	lui	a5,0x6
     dec:	8707a703          	lw	a4,-1936(a5) # 5870 <vol_led_blocks_left>
     df0:	08071063          	bnez	a4,e70 <main+0x9d8>
     df4:	00000793          	li	a5,0
     df8:	00000693          	li	a3,0
     dfc:	20000513          	li	a0,512
     e00:	69010613          	addi	a2,sp,1680
     e04:	00d60633          	add	a2,a2,a3
     e08:	00064583          	lbu	a1,0(a2)
     e0c:	f8058613          	addi	a2,a1,-128 # 3f80 <fatfs_list_directory_next+0xc>
     e10:	00065663          	bgez	a2,e1c <main+0x984>
     e14:	08000613          	li	a2,128
     e18:	40b60633          	sub	a2,a2,a1
     e1c:	00168693          	addi	a3,a3,1
     e20:	00c787b3          	add	a5,a5,a2
     e24:	fca69ee3          	bne	a3,a0,e00 <main+0x968>
     e28:	4097d793          	srai	a5,a5,0x9
     e2c:	00379513          	slli	a0,a5,0x3
     e30:	ff200793          	li	a5,-14
     e34:	02f54063          	blt	a0,a5,e54 <main+0x9bc>
     e38:	08600793          	li	a5,134
     e3c:	00800713          	li	a4,8
     e40:	00a7ca63          	blt	a5,a0,e54 <main+0x9bc>
     e44:	00f00593          	li	a1,15
     e48:	00001097          	auipc	ra,0x1
     e4c:	b6c080e7          	jalr	-1172(ra) # 19b4 <__divsi3>
     e50:	00050713          	mv	a4,a0
     e54:	000067b7          	lui	a5,0x6
     e58:	86c7a503          	lw	a0,-1940(a5) # 586c <vu_level>
     e5c:	0ee55a63          	bge	a0,a4,f50 <main+0xab8>
     e60:	86e7a623          	sw	a4,-1940(a5)
     e64:	00070513          	mv	a0,a4
     e68:	fffff097          	auipc	ra,0xfffff
     e6c:	29c080e7          	jalr	668(ra) # 104 <leds_set_bargraph_level>
     e70:	1ff00793          	li	a5,511
     e74:	bd47d4e3          	bge	a5,s4,a3c <main+0x5a4>
     e78:	00c12783          	lw	a5,12(sp)
     e7c:	014787b3          	add	a5,a5,s4
     e80:	00f12623          	sw	a5,12(sp)
     e84:	02812783          	lw	a5,40(sp)
     e88:	0007a783          	lw	a5,0(a5)
     e8c:	fefd0ce3          	beq	s10,a5,e84 <main+0x9ec>
     e90:	cd1ff06f          	j	b60 <main+0x6c8>
     e94:	00c12603          	lw	a2,12(sp)
     e98:	00000713          	li	a4,0
     e9c:	dec6f4e3          	bgeu	a3,a2,c84 <main+0x7ec>
     ea0:	40d60733          	sub	a4,a2,a3
     ea4:	de1ff06f          	j	c84 <main+0x7ec>
     ea8:	018c7413          	andi	s0,s8,24
     eac:	fe840413          	addi	s0,s0,-24
     eb0:	00803433          	snez	s0,s0
     eb4:	e0dff06f          	j	cc0 <main+0x828>
     eb8:	00100413          	li	s0,1
     ebc:	e1dff06f          	j	cd8 <main+0x840>
     ec0:	fff7c713          	not	a4,a5
     ec4:	41f75713          	srai	a4,a4,0x1f
     ec8:	00e7f7b3          	and	a5,a5,a4
     ecc:	e21ff06f          	j	cec <main+0x854>
     ed0:	02412783          	lw	a5,36(sp)
     ed4:	06879063          	bne	a5,s0,f34 <main+0xa9c>
     ed8:	01012783          	lw	a5,16(sp)
     edc:	00178793          	addi	a5,a5,1
     ee0:	00f12823          	sw	a5,16(sp)
     ee4:	01012703          	lw	a4,16(sp)
     ee8:	01900793          	li	a5,25
     eec:	e2e7d8e3          	bge	a5,a4,d1c <main+0x884>
     ef0:	00600593          	li	a1,6
     ef4:	00070513          	mv	a0,a4
     ef8:	00001097          	auipc	ra,0x1
     efc:	b40080e7          	jalr	-1216(ra) # 1a38 <__modsi3>
     f00:	e0051ee3          	bnez	a0,d1c <main+0x884>
     f04:	00541793          	slli	a5,s0,0x5
     f08:	012787b3          	add	a5,a5,s2
     f0c:	10000713          	li	a4,256
     f10:	00f75a63          	bge	a4,a5,f24 <main+0xa8c>
     f14:	00070793          	mv	a5,a4
     f18:	40f90733          	sub	a4,s2,a5
     f1c:	00e03733          	snez	a4,a4
     f20:	dd9ff06f          	j	cf8 <main+0x860>
     f24:	fff7c713          	not	a4,a5
     f28:	41f75713          	srai	a4,a4,0x1f
     f2c:	00e7f7b3          	and	a5,a5,a4
     f30:	fe9ff06f          	j	f18 <main+0xa80>
     f34:	00100793          	li	a5,1
     f38:	00f12823          	sw	a5,16(sp)
     f3c:	de1ff06f          	j	d1c <main+0x884>
     f40:	fff54713          	not	a4,a0
     f44:	41f75713          	srai	a4,a4,0x1f
     f48:	00e57533          	and	a0,a0,a4
     f4c:	e75ff06f          	j	dc0 <main+0x928>
     f50:	f0050ce3          	beqz	a0,e68 <main+0x9d0>
     f54:	fff50513          	addi	a0,a0,-1
     f58:	000067b7          	lui	a5,0x6
     f5c:	86a7a623          	sw	a0,-1940(a5) # 586c <vu_level>
     f60:	f09ff06f          	j	e68 <main+0x9d0>
     f64:	00000793          	li	a5,0
     f68:	fff00593          	li	a1,-1
     f6c:	02f00713          	li	a4,47
     f70:	28010693          	addi	a3,sp,640
     f74:	00f686b3          	add	a3,a3,a5
     f78:	0006c683          	lbu	a3,0(a3)
     f7c:	00e69463          	bne	a3,a4,f84 <main+0xaec>
     f80:	00078593          	mv	a1,a5
     f84:	00178793          	addi	a5,a5,1
     f88:	fef514e3          	bne	a0,a5,f70 <main+0xad8>
     f8c:	02b04863          	bgtz	a1,fbc <main+0xb24>
     f90:	28014683          	lbu	a3,640(sp)
     f94:	02f00713          	li	a4,47
     f98:	38e11023          	sh	a4,896(sp)
     f9c:	28010593          	addi	a1,sp,640
     fa0:	00e69463          	bne	a3,a4,fa8 <main+0xb10>
     fa4:	28110593          	addi	a1,sp,641
     fa8:	04000613          	li	a2,64
     fac:	00c10533          	add	a0,sp,a2
     fb0:	fffff097          	auipc	ra,0xfffff
     fb4:	2c0080e7          	jalr	704(ra) # 270 <str_cpy_max.part.0>
     fb8:	3e80006f          	j	13a0 <main+0xf08>
     fbc:	0ff00713          	li	a4,255
     fc0:	00058793          	mv	a5,a1
     fc4:	00b75463          	bge	a4,a1,fcc <main+0xb34>
     fc8:	00070793          	mv	a5,a4
     fcc:	00000713          	li	a4,0
     fd0:	38010693          	addi	a3,sp,896
     fd4:	28010613          	addi	a2,sp,640
     fd8:	00e60633          	add	a2,a2,a4
     fdc:	00064503          	lbu	a0,0(a2)
     fe0:	00e68633          	add	a2,a3,a4
     fe4:	00170713          	addi	a4,a4,1
     fe8:	00a60023          	sb	a0,0(a2)
     fec:	fee794e3          	bne	a5,a4,fd4 <main+0xb3c>
     ff0:	00002737          	lui	a4,0x2
     ff4:	66070713          	addi	a4,a4,1632 # 2660 <fl_fseek+0x84>
     ff8:	00f70733          	add	a4,a4,a5
     ffc:	03010793          	addi	a5,sp,48
    1000:	00f707b3          	add	a5,a4,a5
    1004:	ffffe737          	lui	a4,0xffffe
    1008:	00f707b3          	add	a5,a4,a5
    100c:	ce078823          	sb	zero,-784(a5)
    1010:	00158593          	addi	a1,a1,1
    1014:	28010793          	addi	a5,sp,640
    1018:	04000613          	li	a2,64
    101c:	00b785b3          	add	a1,a5,a1
    1020:	f8dff06f          	j	fac <main+0xb14>
    1024:	ff4d4783          	lbu	a5,-12(s10)
    1028:	04079863          	bnez	a5,1078 <main+0xbe0>
    102c:	58010513          	addi	a0,sp,1408
    1030:	fffff097          	auipc	ra,0xfffff
    1034:	2a8080e7          	jalr	680(ra) # 2d8 <is_visible_file>
    1038:	04050063          	beqz	a0,1078 <main+0xbe0>
    103c:	000c0593          	mv	a1,s8
    1040:	58010513          	addi	a0,sp,1408
    1044:	fffff097          	auipc	ra,0xfffff
    1048:	030080e7          	jalr	48(ra) # 74 <ends_with>
    104c:	08042793          	slti	a5,s0,128
    1050:	02078463          	beqz	a5,1078 <main+0xbe0>
    1054:	00157513          	andi	a0,a0,1
    1058:	02050063          	beqz	a0,1078 <main+0xbe0>
    105c:	00641513          	slli	a0,s0,0x6
    1060:	04000613          	li	a2,64
    1064:	58010593          	addi	a1,sp,1408
    1068:	00ad0533          	add	a0,s10,a0
    106c:	fffff097          	auipc	ra,0xfffff
    1070:	204080e7          	jalr	516(ra) # 270 <str_cpy_max.part.0>
    1074:	00140413          	addi	s0,s0,1
    1078:	58010593          	addi	a1,sp,1408
    107c:	000a0513          	mv	a0,s4
    1080:	00003097          	auipc	ra,0x3
    1084:	138080e7          	jalr	312(ra) # 41b8 <fl_readdir>
    1088:	f8050ee3          	beqz	a0,1024 <main+0xb8c>
    108c:	000a0513          	mv	a0,s4
    1090:	00001097          	auipc	ra,0x1
    1094:	644080e7          	jalr	1604(ra) # 26d4 <fl_closedir>
    1098:	0e040e63          	beqz	s0,1194 <main+0xcfc>
    109c:	69010a93          	addi	s5,sp,1680
    10a0:	00000913          	li	s2,0
    10a4:	04010593          	addi	a1,sp,64
    10a8:	000a8513          	mv	a0,s5
    10ac:	fffff097          	auipc	ra,0xfffff
    10b0:	f70080e7          	jalr	-144(ra) # 1c <streq>
    10b4:	00051c63          	bnez	a0,10cc <main+0xc34>
    10b8:	00190913          	addi	s2,s2,1
    10bc:	040a8a93          	addi	s5,s5,64
    10c0:	ff2412e3          	bne	s0,s2,10a4 <main+0xc0c>
    10c4:	00000913          	li	s2,0
    10c8:	0080006f          	j	10d0 <main+0xc38>
    10cc:	fe094ce3          	bltz	s2,10c4 <main+0xc2c>
    10d0:	01990933          	add	s2,s2,s9
    10d4:	fff00793          	li	a5,-1
    10d8:	0cf91463          	bne	s2,a5,11a0 <main+0xd08>
    10dc:	00f409b3          	add	s3,s0,a5
    10e0:	48010413          	addi	s0,sp,1152
    10e4:	69010793          	addi	a5,sp,1680
    10e8:	00699613          	slli	a2,s3,0x6
    10ec:	00c78633          	add	a2,a5,a2
    10f0:	38010593          	addi	a1,sp,896
    10f4:	00040513          	mv	a0,s0
    10f8:	fffff097          	auipc	ra,0xfffff
    10fc:	324080e7          	jalr	804(ra) # 41c <path_join>
    1100:	10000613          	li	a2,256
    1104:	00040593          	mv	a1,s0
    1108:	28010513          	addi	a0,sp,640
    110c:	fffff097          	auipc	ra,0xfffff
    1110:	164080e7          	jalr	356(ra) # 270 <str_cpy_max.part.0>
    1114:	00812783          	lw	a5,8(sp)
    1118:	28010513          	addi	a0,sp,640
    111c:	0007a023          	sw	zero,0(a5)
    1120:	000067b7          	lui	a5,0x6
    1124:	8607a823          	sw	zero,-1936(a5) # 5870 <vol_led_blocks_left>
    1128:	000067b7          	lui	a5,0x6
    112c:	8607a623          	sw	zero,-1940(a5) # 586c <vu_level>
    1130:	fffff097          	auipc	ra,0xfffff
    1134:	25c080e7          	jalr	604(ra) # 38c <show_image_for_audio>
    1138:	000057b7          	lui	a5,0x5
    113c:	59878593          	addi	a1,a5,1432 # 5598 <LEDS+0x24>
    1140:	28010513          	addi	a0,sp,640
    1144:	00004097          	auipc	ra,0x4
    1148:	008080e7          	jalr	8(ra) # 514c <fl_fopen>
    114c:	00a12a23          	sw	a0,20(sp)
    1150:	860518e3          	bnez	a0,9c0 <main+0x528>
    1154:	00000593          	li	a1,0
    1158:	00001097          	auipc	ra,0x1
    115c:	ba0080e7          	jalr	-1120(ra) # 1cf8 <display_set_cursor>
    1160:	00000593          	li	a1,0
    1164:	0ff00513          	li	a0,255
    1168:	00001097          	auipc	ra,0x1
    116c:	ba4080e7          	jalr	-1116(ra) # 1d0c <display_set_front_back_color>
    1170:	00005537          	lui	a0,0x5
    1174:	28010593          	addi	a1,sp,640
    1178:	5d850513          	addi	a0,a0,1496 # 55d8 <LEDS+0x64>
    117c:	00001097          	auipc	ra,0x1
    1180:	e28080e7          	jalr	-472(ra) # 1fa4 <printf>
    1184:	00001097          	auipc	ra,0x1
    1188:	cb4080e7          	jalr	-844(ra) # 1e38 <display_refresh>
    118c:	000187b7          	lui	a5,0x18
    1190:	4007a023          	sw	zero,1024(a5) # 18400 <__stacktop+0x8400>
    1194:	000187b7          	lui	a5,0x18
    1198:	4007a023          	sw	zero,1024(a5) # 18400 <__stacktop+0x8400>
    119c:	d5cff06f          	j	6f8 <main+0x260>
    11a0:	f48950e3          	bge	s2,s0,10e0 <main+0xc48>
    11a4:	00090993          	mv	s3,s2
    11a8:	f39ff06f          	j	10e0 <main+0xc48>
    11ac:	0207f793          	andi	a5,a5,32
    11b0:	0e078863          	beqz	a5,12a0 <main+0xe08>
    11b4:	00001097          	auipc	ra,0x1
    11b8:	c84080e7          	jalr	-892(ra) # 1e38 <display_refresh>
    11bc:	8604a783          	lw	a5,-1952(s1)
    11c0:	85c92403          	lw	s0,-1956(s2)
    11c4:	40f40433          	sub	s0,s0,a5
    11c8:	00001097          	auipc	ra,0x1
    11cc:	b24080e7          	jalr	-1244(ra) # 1cec <display_framebuffer>
    11d0:	00004637          	lui	a2,0x4
    11d4:	00000593          	li	a1,0
    11d8:	00001097          	auipc	ra,0x1
    11dc:	890080e7          	jalr	-1904(ra) # 1a68 <memset>
    11e0:	0c044063          	bltz	s0,12a0 <main+0xe08>
    11e4:	868ba783          	lw	a5,-1944(s7)
    11e8:	0af45c63          	bge	s0,a5,12a0 <main+0xe08>
    11ec:	08014983          	lbu	s3,128(sp)
    11f0:	02f00713          	li	a4,47
    11f4:	00e98863          	beq	s3,a4,1204 <main+0xd6c>
    11f8:	02f00793          	li	a5,47
    11fc:	08f11023          	sh	a5,128(sp)
    1200:	fa4ff06f          	j	9a4 <main+0x50c>
    1204:	08114783          	lbu	a5,129(sp)
    1208:	f8078e63          	beqz	a5,9a4 <main+0x50c>
    120c:	08010413          	addi	s0,sp,128
    1210:	10000593          	li	a1,256
    1214:	00040513          	mv	a0,s0
    1218:	fffff097          	auipc	ra,0xfffff
    121c:	e38080e7          	jalr	-456(ra) # 50 <str_len_max>
    1220:	008507b3          	add	a5,a0,s0
    1224:	00100693          	li	a3,1
    1228:	02a6ce63          	blt	a3,a0,1264 <main+0xdcc>
    122c:	008507b3          	add	a5,a0,s0
    1230:	00100613          	li	a2,1
    1234:	02f00713          	li	a4,47
    1238:	04a64263          	blt	a2,a0,127c <main+0xde4>
    123c:	00850433          	add	s0,a0,s0
    1240:	00100693          	li	a3,1
    1244:	02f00793          	li	a5,47
    1248:	00a6d863          	bge	a3,a0,1258 <main+0xdc0>
    124c:	fff44703          	lbu	a4,-1(s0)
    1250:	fff40413          	addi	s0,s0,-1
    1254:	04f70063          	beq	a4,a5,1294 <main+0xdfc>
    1258:	08014783          	lbu	a5,128(sp)
    125c:	f8078ee3          	beqz	a5,11f8 <main+0xd60>
    1260:	f44ff06f          	j	9a4 <main+0x50c>
    1264:	fff7c703          	lbu	a4,-1(a5)
    1268:	fff78793          	addi	a5,a5,-1
    126c:	fd3710e3          	bne	a4,s3,122c <main+0xd94>
    1270:	00078023          	sb	zero,0(a5)
    1274:	fff50513          	addi	a0,a0,-1
    1278:	fb1ff06f          	j	1228 <main+0xd90>
    127c:	fff7c683          	lbu	a3,-1(a5)
    1280:	fff78793          	addi	a5,a5,-1
    1284:	fae68ce3          	beq	a3,a4,123c <main+0xda4>
    1288:	00078023          	sb	zero,0(a5)
    128c:	fff50513          	addi	a0,a0,-1
    1290:	fa9ff06f          	j	1238 <main+0xda0>
    1294:	00040023          	sb	zero,0(s0)
    1298:	fff50513          	addi	a0,a0,-1
    129c:	fadff06f          	j	1248 <main+0xdb0>
    12a0:	00a00513          	li	a0,10
    12a4:	fff98993          	addi	s3,s3,-1
    12a8:	fffff097          	auipc	ra,0xfffff
    12ac:	f20080e7          	jalr	-224(ra) # 1c8 <tiny_delay>
    12b0:	c0099a63          	bnez	s3,6c4 <main+0x22c>
    12b4:	00000793          	li	a5,0
    12b8:	01812703          	lw	a4,24(sp)
    12bc:	00170713          	addi	a4,a4,1 # ffffe001 <__stacktop+0xfffee001>
    12c0:	00e12c23          	sw	a4,24(sp)
    12c4:	01812683          	lw	a3,24(sp)
    12c8:	02800713          	li	a4,40
    12cc:	ace69263          	bne	a3,a4,590 <main+0xf8>
    12d0:	01c12783          	lw	a5,28(sp)
    12d4:	00012c23          	sw	zero,24(sp)
    12d8:	00778793          	addi	a5,a5,7
    12dc:	00f12e23          	sw	a5,28(sp)
    12e0:	ab8ff06f          	j	598 <main+0x100>
    12e4:	940718e3          	bnez	a4,c34 <main+0x79c>
    12e8:	fffa0a13          	addi	s4,s4,-1
    12ec:	018a3a13          	sltiu	s4,s4,24
    12f0:	900a0ee3          	beqz	s4,c0c <main+0x774>
    12f4:	90069ce3          	bnez	a3,c0c <main+0x774>
    12f8:	fffff097          	auipc	ra,0xfffff
    12fc:	efc080e7          	jalr	-260(ra) # 1f4 <clear_audio>
    1300:	01412503          	lw	a0,20(sp)
    1304:	00100413          	li	s0,1
    1308:	00003097          	auipc	ra,0x3
    130c:	764080e7          	jalr	1892(ra) # 4a6c <fl_fclose>
    1310:	00812783          	lw	a5,8(sp)
    1314:	0007a023          	sw	zero,0(a5)
    1318:	000187b7          	lui	a5,0x18
    131c:	4007a023          	sw	zero,1024(a5) # 18400 <__stacktop+0x8400>
    1320:	0600006f          	j	1380 <main+0xee8>
    1324:	b8071ae3          	bnez	a4,eb8 <main+0xa20>
    1328:	ba0414e3          	bnez	s0,ed0 <main+0xa38>
    132c:	00012823          	sw	zero,16(sp)
    1330:	9edff06f          	j	d1c <main+0x884>
    1334:	fff00713          	li	a4,-1
    1338:	8c069ae3          	bnez	a3,c0c <main+0x774>
    133c:	8f9ff06f          	j	c34 <main+0x79c>
    1340:	00000c93          	li	s9,0
    1344:	00000a93          	li	s5,0
    1348:	8a0694e3          	bnez	a3,bf0 <main+0x758>
    134c:	019d2713          	slti	a4,s10,25
    1350:	f8070ce3          	beqz	a4,12e8 <main+0xe50>
    1354:	f80d0ae3          	beqz	s10,12e8 <main+0xe50>
    1358:	fffff097          	auipc	ra,0xfffff
    135c:	e9c080e7          	jalr	-356(ra) # 1f4 <clear_audio>
    1360:	01412503          	lw	a0,20(sp)
    1364:	00200413          	li	s0,2
    1368:	00003097          	auipc	ra,0x3
    136c:	704080e7          	jalr	1796(ra) # 4a6c <fl_fclose>
    1370:	00812783          	lw	a5,8(sp)
    1374:	0007a023          	sw	zero,0(a5)
    1378:	000187b7          	lui	a5,0x18
    137c:	4007a023          	sw	zero,1024(a5) # 18400 <__stacktop+0x8400>
    1380:	10000593          	li	a1,256
    1384:	28010513          	addi	a0,sp,640
    1388:	fffff097          	auipc	ra,0xfffff
    138c:	cc8080e7          	jalr	-824(ra) # 50 <str_len_max>
    1390:	bc051ae3          	bnez	a0,f64 <main+0xacc>
    1394:	02f00713          	li	a4,47
    1398:	38e11023          	sh	a4,896(sp)
    139c:	04010023          	sb	zero,64(sp)
    13a0:	00100793          	li	a5,1
    13a4:	fff00c93          	li	s9,-1
    13a8:	00f41463          	bne	s0,a5,13b0 <main+0xf18>
    13ac:	00040c93          	mv	s9,s0
    13b0:	03410a13          	addi	s4,sp,52
    13b4:	000a0593          	mv	a1,s4
    13b8:	38010513          	addi	a0,sp,896
    13bc:	00002097          	auipc	ra,0x2
    13c0:	730080e7          	jalr	1840(ra) # 3aec <fl_opendir>
    13c4:	dc0508e3          	beqz	a0,1194 <main+0xcfc>
    13c8:	00005c37          	lui	s8,0x5
    13cc:	00000413          	li	s0,0
    13d0:	69010d13          	addi	s10,sp,1680
    13d4:	590c0c13          	addi	s8,s8,1424 # 5590 <LEDS+0x1c>
    13d8:	ca1ff06f          	j	1078 <main+0xbe0>

000013dc <pause>:
    13dc:	c0002773          	rdcycle	a4
    13e0:	c00027f3          	rdcycle	a5
    13e4:	40e787b3          	sub	a5,a5,a4
    13e8:	fea7ece3          	bltu	a5,a0,13e0 <pause+0x4>
    13ec:	00008067          	ret

000013f0 <sdcard_idle>:
    13f0:	00008067          	ret

000013f4 <sdcard_select>:
    13f4:	000057b7          	lui	a5,0x5
    13f8:	5687a783          	lw	a5,1384(a5) # 5568 <SDCARD>
    13fc:	00200713          	li	a4,2
    1400:	00e7a023          	sw	a4,0(a5)
    1404:	00008067          	ret

00001408 <sdcard_ponder>:
    1408:	000056b7          	lui	a3,0x5
    140c:	5686a683          	lw	a3,1384(a3) # 5568 <SDCARD>
    1410:	01000793          	li	a5,16
    1414:	00000713          	li	a4,0
    1418:	00676613          	ori	a2,a4,6
    141c:	00c6a023          	sw	a2,0(a3)
    1420:	00174713          	xori	a4,a4,1
    1424:	00000013          	nop
    1428:	fff78793          	addi	a5,a5,-1
    142c:	fe0796e3          	bnez	a5,1418 <sdcard_ponder+0x10>
    1430:	00008067          	ret

00001434 <sdcard_unselect>:
    1434:	000057b7          	lui	a5,0x5
    1438:	5687a783          	lw	a5,1384(a5) # 5568 <SDCARD>
    143c:	00600713          	li	a4,6
    1440:	00e7a023          	sw	a4,0(a5)
    1444:	00008067          	ret

00001448 <sdcard_send>:
    1448:	000057b7          	lui	a5,0x5
    144c:	5687a783          	lw	a5,1384(a5) # 5568 <SDCARD>
    1450:	00655713          	srli	a4,a0,0x6
    1454:	00277713          	andi	a4,a4,2
    1458:	00e7a023          	sw	a4,0(a5)
    145c:	00176713          	ori	a4,a4,1
    1460:	00e7a023          	sw	a4,0(a5)
    1464:	00555713          	srli	a4,a0,0x5
    1468:	00277713          	andi	a4,a4,2
    146c:	00e7a023          	sw	a4,0(a5)
    1470:	00176713          	ori	a4,a4,1
    1474:	00e7a023          	sw	a4,0(a5)
    1478:	00455713          	srli	a4,a0,0x4
    147c:	00277713          	andi	a4,a4,2
    1480:	00e7a023          	sw	a4,0(a5)
    1484:	00176713          	ori	a4,a4,1
    1488:	00e7a023          	sw	a4,0(a5)
    148c:	00355713          	srli	a4,a0,0x3
    1490:	00277713          	andi	a4,a4,2
    1494:	00e7a023          	sw	a4,0(a5)
    1498:	00176713          	ori	a4,a4,1
    149c:	00e7a023          	sw	a4,0(a5)
    14a0:	00255713          	srli	a4,a0,0x2
    14a4:	00277713          	andi	a4,a4,2
    14a8:	00e7a023          	sw	a4,0(a5)
    14ac:	00176713          	ori	a4,a4,1
    14b0:	00e7a023          	sw	a4,0(a5)
    14b4:	00155713          	srli	a4,a0,0x1
    14b8:	00277713          	andi	a4,a4,2
    14bc:	00e7a023          	sw	a4,0(a5)
    14c0:	00176713          	ori	a4,a4,1
    14c4:	00e7a023          	sw	a4,0(a5)
    14c8:	00257713          	andi	a4,a0,2
    14cc:	00e7a023          	sw	a4,0(a5)
    14d0:	00151513          	slli	a0,a0,0x1
    14d4:	00176713          	ori	a4,a4,1
    14d8:	00e7a023          	sw	a4,0(a5)
    14dc:	00257513          	andi	a0,a0,2
    14e0:	00a7a023          	sw	a0,0(a5)
    14e4:	00156513          	ori	a0,a0,1
    14e8:	00a7a023          	sw	a0,0(a5)
    14ec:	00200713          	li	a4,2
    14f0:	00e7a023          	sw	a4,0(a5)
    14f4:	000067b7          	lui	a5,0x6
    14f8:	8787a783          	lw	a5,-1928(a5) # 5878 <sdcard_while_loading_callback>
    14fc:	00078067          	jr	a5

00001500 <sdcard_read>:
    1500:	fd010113          	addi	sp,sp,-48
    1504:	fff50793          	addi	a5,a0,-1
    1508:	03212023          	sw	s2,32(sp)
    150c:	00100913          	li	s2,1
    1510:	00f91933          	sll	s2,s2,a5
    1514:	000057b7          	lui	a5,0x5
    1518:	01312e23          	sw	s3,28(sp)
    151c:	5687a983          	lw	s3,1384(a5) # 5568 <SDCARD>
    1520:	02812423          	sw	s0,40(sp)
    1524:	02912223          	sw	s1,36(sp)
    1528:	01412c23          	sw	s4,24(sp)
    152c:	01512a23          	sw	s5,20(sp)
    1530:	01612823          	sw	s6,16(sp)
    1534:	02112623          	sw	ra,44(sp)
    1538:	0ff00413          	li	s0,255
    153c:	00000493          	li	s1,0
    1540:	00300a13          	li	s4,3
    1544:	00200a93          	li	s5,2
    1548:	00006b37          	lui	s6,0x6
    154c:	02058c63          	beqz	a1,1584 <sdcard_read+0x84>
    1550:	012477b3          	and	a5,s0,s2
    1554:	02079a63          	bnez	a5,1588 <sdcard_read+0x88>
    1558:	02c12083          	lw	ra,44(sp)
    155c:	0ff47513          	zext.b	a0,s0
    1560:	02812403          	lw	s0,40(sp)
    1564:	02412483          	lw	s1,36(sp)
    1568:	02012903          	lw	s2,32(sp)
    156c:	01c12983          	lw	s3,28(sp)
    1570:	01812a03          	lw	s4,24(sp)
    1574:	01412a83          	lw	s5,20(sp)
    1578:	01012b03          	lw	s6,16(sp)
    157c:	03010113          	addi	sp,sp,48
    1580:	00008067          	ret
    1584:	fca4dae3          	bge	s1,a0,1558 <sdcard_read+0x58>
    1588:	0149a023          	sw	s4,0(s3)
    158c:	0159a023          	sw	s5,0(s3)
    1590:	0009a783          	lw	a5,0(s3)
    1594:	00141413          	slli	s0,s0,0x1
    1598:	00b12623          	sw	a1,12(sp)
    159c:	00f46433          	or	s0,s0,a5
    15a0:	878b2783          	lw	a5,-1928(s6) # 5878 <sdcard_while_loading_callback>
    15a4:	00a12423          	sw	a0,8(sp)
    15a8:	00148493          	addi	s1,s1,1
    15ac:	000780e7          	jalr	a5
    15b0:	00c12583          	lw	a1,12(sp)
    15b4:	00812503          	lw	a0,8(sp)
    15b8:	f95ff06f          	j	154c <sdcard_read+0x4c>

000015bc <sdcard_get>:
    15bc:	fe010113          	addi	sp,sp,-32
    15c0:	00112e23          	sw	ra,28(sp)
    15c4:	00812c23          	sw	s0,24(sp)
    15c8:	00912a23          	sw	s1,20(sp)
    15cc:	00050413          	mv	s0,a0
    15d0:	00b12623          	sw	a1,12(sp)
    15d4:	00000097          	auipc	ra,0x0
    15d8:	e20080e7          	jalr	-480(ra) # 13f4 <sdcard_select>
    15dc:	00c12583          	lw	a1,12(sp)
    15e0:	00040513          	mv	a0,s0
    15e4:	00100493          	li	s1,1
    15e8:	00000097          	auipc	ra,0x0
    15ec:	f18080e7          	jalr	-232(ra) # 1500 <sdcard_read>
    15f0:	00345413          	srli	s0,s0,0x3
    15f4:	0284c463          	blt	s1,s0,161c <sdcard_get+0x60>
    15f8:	00a12623          	sw	a0,12(sp)
    15fc:	00000097          	auipc	ra,0x0
    1600:	e38080e7          	jalr	-456(ra) # 1434 <sdcard_unselect>
    1604:	01c12083          	lw	ra,28(sp)
    1608:	01812403          	lw	s0,24(sp)
    160c:	00c12503          	lw	a0,12(sp)
    1610:	01412483          	lw	s1,20(sp)
    1614:	02010113          	addi	sp,sp,32
    1618:	00008067          	ret
    161c:	00000593          	li	a1,0
    1620:	00800513          	li	a0,8
    1624:	00000097          	auipc	ra,0x0
    1628:	edc080e7          	jalr	-292(ra) # 1500 <sdcard_read>
    162c:	00148493          	addi	s1,s1,1
    1630:	fc5ff06f          	j	15f4 <sdcard_get+0x38>

00001634 <sdcard_cmd>:
    1634:	ff010113          	addi	sp,sp,-16
    1638:	00812423          	sw	s0,8(sp)
    163c:	00912223          	sw	s1,4(sp)
    1640:	01212023          	sw	s2,0(sp)
    1644:	00112623          	sw	ra,12(sp)
    1648:	00050913          	mv	s2,a0
    164c:	00000413          	li	s0,0
    1650:	00000097          	auipc	ra,0x0
    1654:	da4080e7          	jalr	-604(ra) # 13f4 <sdcard_select>
    1658:	00600493          	li	s1,6
    165c:	008907b3          	add	a5,s2,s0
    1660:	0007c503          	lbu	a0,0(a5)
    1664:	00140413          	addi	s0,s0,1
    1668:	00000097          	auipc	ra,0x0
    166c:	de0080e7          	jalr	-544(ra) # 1448 <sdcard_send>
    1670:	fe9416e3          	bne	s0,s1,165c <sdcard_cmd+0x28>
    1674:	00812403          	lw	s0,8(sp)
    1678:	00c12083          	lw	ra,12(sp)
    167c:	00412483          	lw	s1,4(sp)
    1680:	00012903          	lw	s2,0(sp)
    1684:	01010113          	addi	sp,sp,16
    1688:	00000317          	auipc	t1,0x0
    168c:	dac30067          	jr	-596(t1) # 1434 <sdcard_unselect>

00001690 <sdcard_start_sector>:
    1690:	ff010113          	addi	sp,sp,-16
    1694:	00112623          	sw	ra,12(sp)
    1698:	00812423          	sw	s0,8(sp)
    169c:	00050413          	mv	s0,a0
    16a0:	00000097          	auipc	ra,0x0
    16a4:	d54080e7          	jalr	-684(ra) # 13f4 <sdcard_select>
    16a8:	05100513          	li	a0,81
    16ac:	00000097          	auipc	ra,0x0
    16b0:	d9c080e7          	jalr	-612(ra) # 1448 <sdcard_send>
    16b4:	01845513          	srli	a0,s0,0x18
    16b8:	00000097          	auipc	ra,0x0
    16bc:	d90080e7          	jalr	-624(ra) # 1448 <sdcard_send>
    16c0:	41045513          	srai	a0,s0,0x10
    16c4:	0ff57513          	zext.b	a0,a0
    16c8:	00000097          	auipc	ra,0x0
    16cc:	d80080e7          	jalr	-640(ra) # 1448 <sdcard_send>
    16d0:	40845513          	srai	a0,s0,0x8
    16d4:	0ff57513          	zext.b	a0,a0
    16d8:	00000097          	auipc	ra,0x0
    16dc:	d70080e7          	jalr	-656(ra) # 1448 <sdcard_send>
    16e0:	0ff47513          	zext.b	a0,s0
    16e4:	00000097          	auipc	ra,0x0
    16e8:	d64080e7          	jalr	-668(ra) # 1448 <sdcard_send>
    16ec:	05500513          	li	a0,85
    16f0:	00000097          	auipc	ra,0x0
    16f4:	d58080e7          	jalr	-680(ra) # 1448 <sdcard_send>
    16f8:	00000097          	auipc	ra,0x0
    16fc:	d3c080e7          	jalr	-708(ra) # 1434 <sdcard_unselect>
    1700:	00812403          	lw	s0,8(sp)
    1704:	00c12083          	lw	ra,12(sp)
    1708:	00100593          	li	a1,1
    170c:	00800513          	li	a0,8
    1710:	01010113          	addi	sp,sp,16
    1714:	00000317          	auipc	t1,0x0
    1718:	ea830067          	jr	-344(t1) # 15bc <sdcard_get>

0000171c <sdcard_read_sector>:
    171c:	ff010113          	addi	sp,sp,-16
    1720:	00812423          	sw	s0,8(sp)
    1724:	00112623          	sw	ra,12(sp)
    1728:	00912223          	sw	s1,4(sp)
    172c:	01212023          	sw	s2,0(sp)
    1730:	00058413          	mv	s0,a1
    1734:	00000097          	auipc	ra,0x0
    1738:	f5c080e7          	jalr	-164(ra) # 1690 <sdcard_start_sector>
    173c:	04051863          	bnez	a0,178c <sdcard_read_sector+0x70>
    1740:	00100593          	li	a1,1
    1744:	00058513          	mv	a0,a1
    1748:	00000097          	auipc	ra,0x0
    174c:	e74080e7          	jalr	-396(ra) # 15bc <sdcard_get>
    1750:	00000493          	li	s1,0
    1754:	20000913          	li	s2,512
    1758:	00000593          	li	a1,0
    175c:	00800513          	li	a0,8
    1760:	00000097          	auipc	ra,0x0
    1764:	e5c080e7          	jalr	-420(ra) # 15bc <sdcard_get>
    1768:	009407b3          	add	a5,s0,s1
    176c:	00a78023          	sb	a0,0(a5)
    1770:	00148493          	addi	s1,s1,1
    1774:	ff2492e3          	bne	s1,s2,1758 <sdcard_read_sector+0x3c>
    1778:	00100593          	li	a1,1
    177c:	01000513          	li	a0,16
    1780:	20040413          	addi	s0,s0,512
    1784:	00000097          	auipc	ra,0x0
    1788:	e38080e7          	jalr	-456(ra) # 15bc <sdcard_get>
    178c:	00c12083          	lw	ra,12(sp)
    1790:	00040513          	mv	a0,s0
    1794:	00812403          	lw	s0,8(sp)
    1798:	00412483          	lw	s1,4(sp)
    179c:	00012903          	lw	s2,0(sp)
    17a0:	01010113          	addi	sp,sp,16
    17a4:	00008067          	ret

000017a8 <sdcard_preinit>:
    17a8:	ff010113          	addi	sp,sp,-16
    17ac:	000057b7          	lui	a5,0x5
    17b0:	00812423          	sw	s0,8(sp)
    17b4:	5687a403          	lw	s0,1384(a5) # 5568 <SDCARD>
    17b8:	00112623          	sw	ra,12(sp)
    17bc:	00600793          	li	a5,6
    17c0:	01313537          	lui	a0,0x1313
    17c4:	00f42023          	sw	a5,0(s0)
    17c8:	d0050513          	addi	a0,a0,-768 # 1312d00 <__stacktop+0x1302d00>
    17cc:	00000097          	auipc	ra,0x0
    17d0:	c10080e7          	jalr	-1008(ra) # 13dc <pause>
    17d4:	0a000793          	li	a5,160
    17d8:	00000713          	li	a4,0
    17dc:	00676693          	ori	a3,a4,6
    17e0:	00d42023          	sw	a3,0(s0)
    17e4:	fff78793          	addi	a5,a5,-1
    17e8:	00174713          	xori	a4,a4,1
    17ec:	fe0798e3          	bnez	a5,17dc <sdcard_preinit+0x34>
    17f0:	00600793          	li	a5,6
    17f4:	00c12083          	lw	ra,12(sp)
    17f8:	00f42023          	sw	a5,0(s0)
    17fc:	00812403          	lw	s0,8(sp)
    1800:	01010113          	addi	sp,sp,16
    1804:	00008067          	ret

00001808 <sdcard_init>:
    1808:	000017b7          	lui	a5,0x1
    180c:	3f078793          	addi	a5,a5,1008 # 13f0 <sdcard_idle>
    1810:	00006737          	lui	a4,0x6
    1814:	fe010113          	addi	sp,sp,-32
    1818:	86f72c23          	sw	a5,-1928(a4) # 5878 <sdcard_while_loading_callback>
    181c:	000057b7          	lui	a5,0x5
    1820:	00812c23          	sw	s0,24(sp)
    1824:	00912a23          	sw	s1,20(sp)
    1828:	00112e23          	sw	ra,28(sp)
    182c:	55478493          	addi	s1,a5,1364 # 5554 <cmd0>
    1830:	0ff00413          	li	s0,255
    1834:	00000097          	auipc	ra,0x0
    1838:	f74080e7          	jalr	-140(ra) # 17a8 <sdcard_preinit>
    183c:	00048513          	mv	a0,s1
    1840:	00000097          	auipc	ra,0x0
    1844:	df4080e7          	jalr	-524(ra) # 1634 <sdcard_cmd>
    1848:	00100593          	li	a1,1
    184c:	00800513          	li	a0,8
    1850:	00000097          	auipc	ra,0x0
    1854:	d6c080e7          	jalr	-660(ra) # 15bc <sdcard_get>
    1858:	00a12623          	sw	a0,12(sp)
    185c:	00000097          	auipc	ra,0x0
    1860:	bac080e7          	jalr	-1108(ra) # 1408 <sdcard_ponder>
    1864:	00c12503          	lw	a0,12(sp)
    1868:	00851c63          	bne	a0,s0,1880 <sdcard_init+0x78>
    186c:	01313537          	lui	a0,0x1313
    1870:	d0050513          	addi	a0,a0,-768 # 1312d00 <__stacktop+0x1302d00>
    1874:	00000097          	auipc	ra,0x0
    1878:	b68080e7          	jalr	-1176(ra) # 13dc <pause>
    187c:	fb9ff06f          	j	1834 <sdcard_init+0x2c>
    1880:	00005537          	lui	a0,0x5
    1884:	54c50513          	addi	a0,a0,1356 # 554c <cmd8>
    1888:	00000097          	auipc	ra,0x0
    188c:	dac080e7          	jalr	-596(ra) # 1634 <sdcard_cmd>
    1890:	00100593          	li	a1,1
    1894:	02800513          	li	a0,40
    1898:	00000097          	auipc	ra,0x0
    189c:	d24080e7          	jalr	-732(ra) # 15bc <sdcard_get>
    18a0:	00000097          	auipc	ra,0x0
    18a4:	b68080e7          	jalr	-1176(ra) # 1408 <sdcard_ponder>
    18a8:	000057b7          	lui	a5,0x5
    18ac:	54478413          	addi	s0,a5,1348 # 5544 <cmd55>
    18b0:	000057b7          	lui	a5,0x5
    18b4:	53c78493          	addi	s1,a5,1340 # 553c <acmd41>
    18b8:	00040513          	mv	a0,s0
    18bc:	00000097          	auipc	ra,0x0
    18c0:	d78080e7          	jalr	-648(ra) # 1634 <sdcard_cmd>
    18c4:	00100593          	li	a1,1
    18c8:	00800513          	li	a0,8
    18cc:	00000097          	auipc	ra,0x0
    18d0:	cf0080e7          	jalr	-784(ra) # 15bc <sdcard_get>
    18d4:	00000097          	auipc	ra,0x0
    18d8:	b34080e7          	jalr	-1228(ra) # 1408 <sdcard_ponder>
    18dc:	00048513          	mv	a0,s1
    18e0:	00000097          	auipc	ra,0x0
    18e4:	d54080e7          	jalr	-684(ra) # 1634 <sdcard_cmd>
    18e8:	00100593          	li	a1,1
    18ec:	00800513          	li	a0,8
    18f0:	00000097          	auipc	ra,0x0
    18f4:	ccc080e7          	jalr	-820(ra) # 15bc <sdcard_get>
    18f8:	00a12623          	sw	a0,12(sp)
    18fc:	00000097          	auipc	ra,0x0
    1900:	b0c080e7          	jalr	-1268(ra) # 1408 <sdcard_ponder>
    1904:	00c12503          	lw	a0,12(sp)
    1908:	00050c63          	beqz	a0,1920 <sdcard_init+0x118>
    190c:	001e8537          	lui	a0,0x1e8
    1910:	48050513          	addi	a0,a0,1152 # 1e8480 <__stacktop+0x1d8480>
    1914:	00000097          	auipc	ra,0x0
    1918:	ac8080e7          	jalr	-1336(ra) # 13dc <pause>
    191c:	f9dff06f          	j	18b8 <sdcard_init+0xb0>
    1920:	00005537          	lui	a0,0x5
    1924:	53450513          	addi	a0,a0,1332 # 5534 <cmd16>
    1928:	00000097          	auipc	ra,0x0
    192c:	d0c080e7          	jalr	-756(ra) # 1634 <sdcard_cmd>
    1930:	00100593          	li	a1,1
    1934:	00800513          	li	a0,8
    1938:	00000097          	auipc	ra,0x0
    193c:	c84080e7          	jalr	-892(ra) # 15bc <sdcard_get>
    1940:	01812403          	lw	s0,24(sp)
    1944:	01c12083          	lw	ra,28(sp)
    1948:	01412483          	lw	s1,20(sp)
    194c:	02010113          	addi	sp,sp,32
    1950:	00000317          	auipc	t1,0x0
    1954:	ab830067          	jr	-1352(t1) # 1408 <sdcard_ponder>

00001958 <sdcard_readsector>:
    1958:	04060663          	beqz	a2,19a4 <sdcard_readsector+0x4c>
    195c:	ff010113          	addi	sp,sp,-16
    1960:	00812423          	sw	s0,8(sp)
    1964:	00912223          	sw	s1,4(sp)
    1968:	00112623          	sw	ra,12(sp)
    196c:	00050413          	mv	s0,a0
    1970:	00a604b3          	add	s1,a2,a0
    1974:	00040513          	mv	a0,s0
    1978:	00000097          	auipc	ra,0x0
    197c:	da4080e7          	jalr	-604(ra) # 171c <sdcard_read_sector>
    1980:	00140413          	addi	s0,s0,1
    1984:	00050593          	mv	a1,a0
    1988:	fe9416e3          	bne	s0,s1,1974 <sdcard_readsector+0x1c>
    198c:	00c12083          	lw	ra,12(sp)
    1990:	00812403          	lw	s0,8(sp)
    1994:	00412483          	lw	s1,4(sp)
    1998:	00100513          	li	a0,1
    199c:	01010113          	addi	sp,sp,16
    19a0:	00008067          	ret
    19a4:	00000513          	li	a0,0
    19a8:	00008067          	ret

000019ac <sdcard_writesector>:
    19ac:	00000513          	li	a0,0
    19b0:	00008067          	ret

000019b4 <__divsi3>:
    19b4:	06054063          	bltz	a0,1a14 <__umodsi3+0x10>
    19b8:	0605c663          	bltz	a1,1a24 <__umodsi3+0x20>

000019bc <__udivsi3>:
    19bc:	00058613          	mv	a2,a1
    19c0:	00050593          	mv	a1,a0
    19c4:	fff00513          	li	a0,-1
    19c8:	02060c63          	beqz	a2,1a00 <__udivsi3+0x44>
    19cc:	00100693          	li	a3,1
    19d0:	00b67a63          	bgeu	a2,a1,19e4 <__udivsi3+0x28>
    19d4:	00c05863          	blez	a2,19e4 <__udivsi3+0x28>
    19d8:	00161613          	slli	a2,a2,0x1
    19dc:	00169693          	slli	a3,a3,0x1
    19e0:	feb66ae3          	bltu	a2,a1,19d4 <__udivsi3+0x18>
    19e4:	00000513          	li	a0,0
    19e8:	00c5e663          	bltu	a1,a2,19f4 <__udivsi3+0x38>
    19ec:	40c585b3          	sub	a1,a1,a2
    19f0:	00d56533          	or	a0,a0,a3
    19f4:	0016d693          	srli	a3,a3,0x1
    19f8:	00165613          	srli	a2,a2,0x1
    19fc:	fe0696e3          	bnez	a3,19e8 <__udivsi3+0x2c>
    1a00:	00008067          	ret

00001a04 <__umodsi3>:
    1a04:	00008293          	mv	t0,ra
    1a08:	fb5ff0ef          	jal	19bc <__udivsi3>
    1a0c:	00058513          	mv	a0,a1
    1a10:	00028067          	jr	t0 # ffffe000 <__stacktop+0xfffee000>
    1a14:	40a00533          	neg	a0,a0
    1a18:	0005d863          	bgez	a1,1a28 <__umodsi3+0x24>
    1a1c:	40b005b3          	neg	a1,a1
    1a20:	f95ff06f          	j	19b4 <__divsi3>
    1a24:	40b005b3          	neg	a1,a1
    1a28:	00008293          	mv	t0,ra
    1a2c:	f89ff0ef          	jal	19b4 <__divsi3>
    1a30:	40a00533          	neg	a0,a0
    1a34:	00028067          	jr	t0

00001a38 <__modsi3>:
    1a38:	00008293          	mv	t0,ra
    1a3c:	0005ca63          	bltz	a1,1a50 <__modsi3+0x18>
    1a40:	00054c63          	bltz	a0,1a58 <__modsi3+0x20>
    1a44:	f79ff0ef          	jal	19bc <__udivsi3>
    1a48:	00058513          	mv	a0,a1
    1a4c:	00028067          	jr	t0
    1a50:	40b005b3          	neg	a1,a1
    1a54:	fe0558e3          	bgez	a0,1a44 <__modsi3+0xc>
    1a58:	40a00533          	neg	a0,a0
    1a5c:	f61ff0ef          	jal	19bc <__udivsi3>
    1a60:	40b00533          	neg	a0,a1
    1a64:	00028067          	jr	t0

00001a68 <memset>:
    1a68:	00c50633          	add	a2,a0,a2
    1a6c:	00050793          	mv	a5,a0
    1a70:	00c79463          	bne	a5,a2,1a78 <memset+0x10>
    1a74:	00008067          	ret
    1a78:	00178793          	addi	a5,a5,1
    1a7c:	feb78fa3          	sb	a1,-1(a5)
    1a80:	ff1ff06f          	j	1a70 <memset+0x8>

00001a84 <memcpy>:
    1a84:	00000793          	li	a5,0
    1a88:	00c79463          	bne	a5,a2,1a90 <memcpy+0xc>
    1a8c:	00008067          	ret
    1a90:	00f58733          	add	a4,a1,a5
    1a94:	00074683          	lbu	a3,0(a4)
    1a98:	00f50733          	add	a4,a0,a5
    1a9c:	00178793          	addi	a5,a5,1
    1aa0:	00d70023          	sb	a3,0(a4)
    1aa4:	fe5ff06f          	j	1a88 <memcpy+0x4>

00001aa8 <strlen>:
    1aa8:	00000793          	li	a5,0
    1aac:	00f50733          	add	a4,a0,a5
    1ab0:	00074703          	lbu	a4,0(a4)
    1ab4:	00071663          	bnez	a4,1ac0 <strlen+0x18>
    1ab8:	00078513          	mv	a0,a5
    1abc:	00008067          	ret
    1ac0:	00178793          	addi	a5,a5,1
    1ac4:	fe9ff06f          	j	1aac <strlen+0x4>

00001ac8 <strncmp>:
    1ac8:	00000793          	li	a5,0
    1acc:	00c79663          	bne	a5,a2,1ad8 <strncmp+0x10>
    1ad0:	00000513          	li	a0,0
    1ad4:	00008067          	ret
    1ad8:	00f50733          	add	a4,a0,a5
    1adc:	00074683          	lbu	a3,0(a4)
    1ae0:	00f58733          	add	a4,a1,a5
    1ae4:	00074703          	lbu	a4,0(a4)
    1ae8:	00e6e863          	bltu	a3,a4,1af8 <strncmp+0x30>
    1aec:	00d76a63          	bltu	a4,a3,1b00 <strncmp+0x38>
    1af0:	00178793          	addi	a5,a5,1
    1af4:	fd9ff06f          	j	1acc <strncmp+0x4>
    1af8:	fff00513          	li	a0,-1
    1afc:	00008067          	ret
    1b00:	00100513          	li	a0,1
    1b04:	00008067          	ret

00001b08 <strncpy>:
    1b08:	00000793          	li	a5,0
    1b0c:	00c79463          	bne	a5,a2,1b14 <strncpy+0xc>
    1b10:	00008067          	ret
    1b14:	00f58733          	add	a4,a1,a5
    1b18:	00074683          	lbu	a3,0(a4)
    1b1c:	00f50733          	add	a4,a0,a5
    1b20:	00178793          	addi	a5,a5,1
    1b24:	00d70023          	sb	a3,0(a4)
    1b28:	fe5ff06f          	j	1b0c <strncpy+0x4>

00001b2c <oled_wait>:
    1b2c:	00000013          	nop
    1b30:	00000013          	nop
    1b34:	00000013          	nop
    1b38:	00000013          	nop
    1b3c:	00000013          	nop
    1b40:	00000013          	nop
    1b44:	00000013          	nop
    1b48:	00008067          	ret

00001b4c <oled_init_mode>:
    1b4c:	000057b7          	lui	a5,0x5
    1b50:	56c7a703          	lw	a4,1388(a5) # 556c <OLED_RST>
    1b54:	fe010113          	addi	sp,sp,-32
    1b58:	00112e23          	sw	ra,28(sp)
    1b5c:	00812c23          	sw	s0,24(sp)
    1b60:	00072023          	sw	zero,0(a4)
    1b64:	00040737          	lui	a4,0x40
    1b68:	00000013          	nop
    1b6c:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
    1b70:	fe071ce3          	bnez	a4,1b68 <oled_init_mode+0x1c>
    1b74:	56c7a703          	lw	a4,1388(a5)
    1b78:	00100693          	li	a3,1
    1b7c:	00d72023          	sw	a3,0(a4)
    1b80:	00040737          	lui	a4,0x40
    1b84:	00000013          	nop
    1b88:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
    1b8c:	fe071ce3          	bnez	a4,1b84 <oled_init_mode+0x38>
    1b90:	56c7a783          	lw	a5,1388(a5)
    1b94:	0007a023          	sw	zero,0(a5)
    1b98:	000407b7          	lui	a5,0x40
    1b9c:	00000013          	nop
    1ba0:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
    1ba4:	fe079ce3          	bnez	a5,1b9c <oled_init_mode+0x50>
    1ba8:	00005737          	lui	a4,0x5
    1bac:	57072783          	lw	a5,1392(a4) # 5570 <OLED>
    1bb0:	2af00693          	li	a3,687
    1bb4:	00d7a023          	sw	a3,0(a5)
    1bb8:	000407b7          	lui	a5,0x40
    1bbc:	00000013          	nop
    1bc0:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
    1bc4:	fe079ce3          	bnez	a5,1bbc <oled_init_mode+0x70>
    1bc8:	57072403          	lw	s0,1392(a4)
    1bcc:	2a000793          	li	a5,672
    1bd0:	00a12623          	sw	a0,12(sp)
    1bd4:	00f42023          	sw	a5,0(s0)
    1bd8:	00000097          	auipc	ra,0x0
    1bdc:	f54080e7          	jalr	-172(ra) # 1b2c <oled_wait>
    1be0:	00c12503          	lw	a0,12(sp)
    1be4:	4a000793          	li	a5,1184
    1be8:	00050463          	beqz	a0,1bf0 <oled_init_mode+0xa4>
    1bec:	42000793          	li	a5,1056
    1bf0:	00f42023          	sw	a5,0(s0)
    1bf4:	00000097          	auipc	ra,0x0
    1bf8:	f38080e7          	jalr	-200(ra) # 1b2c <oled_wait>
    1bfc:	2fd00793          	li	a5,765
    1c00:	00f42023          	sw	a5,0(s0)
    1c04:	00000097          	auipc	ra,0x0
    1c08:	f28080e7          	jalr	-216(ra) # 1b2c <oled_wait>
    1c0c:	4b100793          	li	a5,1201
    1c10:	00f42023          	sw	a5,0(s0)
    1c14:	00000097          	auipc	ra,0x0
    1c18:	f18080e7          	jalr	-232(ra) # 1b2c <oled_wait>
    1c1c:	2a200793          	li	a5,674
    1c20:	00f42023          	sw	a5,0(s0)
    1c24:	00000097          	auipc	ra,0x0
    1c28:	f08080e7          	jalr	-248(ra) # 1b2c <oled_wait>
    1c2c:	40000793          	li	a5,1024
    1c30:	00f42023          	sw	a5,0(s0)
    1c34:	01812403          	lw	s0,24(sp)
    1c38:	01c12083          	lw	ra,28(sp)
    1c3c:	02010113          	addi	sp,sp,32
    1c40:	00000317          	auipc	t1,0x0
    1c44:	eec30067          	jr	-276(t1) # 1b2c <oled_wait>

00001c48 <oled_init>:
    1c48:	00000513          	li	a0,0
    1c4c:	00000317          	auipc	t1,0x0
    1c50:	f0030067          	jr	-256(t1) # 1b4c <oled_init_mode>

00001c54 <oled_fullscreen>:
    1c54:	ff010113          	addi	sp,sp,-16
    1c58:	000057b7          	lui	a5,0x5
    1c5c:	00812423          	sw	s0,8(sp)
    1c60:	5707a403          	lw	s0,1392(a5) # 5570 <OLED>
    1c64:	00112623          	sw	ra,12(sp)
    1c68:	00912223          	sw	s1,4(sp)
    1c6c:	01212023          	sw	s2,0(sp)
    1c70:	21500793          	li	a5,533
    1c74:	00f42023          	sw	a5,0(s0)
    1c78:	40000913          	li	s2,1024
    1c7c:	00000097          	auipc	ra,0x0
    1c80:	eb0080e7          	jalr	-336(ra) # 1b2c <oled_wait>
    1c84:	47f00493          	li	s1,1151
    1c88:	01242023          	sw	s2,0(s0)
    1c8c:	00000097          	auipc	ra,0x0
    1c90:	ea0080e7          	jalr	-352(ra) # 1b2c <oled_wait>
    1c94:	00942023          	sw	s1,0(s0)
    1c98:	00000097          	auipc	ra,0x0
    1c9c:	e94080e7          	jalr	-364(ra) # 1b2c <oled_wait>
    1ca0:	27500793          	li	a5,629
    1ca4:	00f42023          	sw	a5,0(s0)
    1ca8:	00000097          	auipc	ra,0x0
    1cac:	e84080e7          	jalr	-380(ra) # 1b2c <oled_wait>
    1cb0:	01242023          	sw	s2,0(s0)
    1cb4:	00000097          	auipc	ra,0x0
    1cb8:	e78080e7          	jalr	-392(ra) # 1b2c <oled_wait>
    1cbc:	00942023          	sw	s1,0(s0)
    1cc0:	00000097          	auipc	ra,0x0
    1cc4:	e6c080e7          	jalr	-404(ra) # 1b2c <oled_wait>
    1cc8:	25c00793          	li	a5,604
    1ccc:	00f42023          	sw	a5,0(s0)
    1cd0:	00812403          	lw	s0,8(sp)
    1cd4:	00c12083          	lw	ra,12(sp)
    1cd8:	00412483          	lw	s1,4(sp)
    1cdc:	00012903          	lw	s2,0(sp)
    1ce0:	01010113          	addi	sp,sp,16
    1ce4:	00000317          	auipc	t1,0x0
    1ce8:	e4830067          	jr	-440(t1) # 1b2c <oled_wait>

00001cec <display_framebuffer>:
    1cec:	000057b7          	lui	a5,0x5
    1cf0:	5607a503          	lw	a0,1376(a5) # 5560 <DISPLAY>
    1cf4:	00008067          	ret

00001cf8 <display_set_cursor>:
    1cf8:	000067b7          	lui	a5,0x6
    1cfc:	88a7a223          	sw	a0,-1916(a5) # 5884 <cursor_x>
    1d00:	000067b7          	lui	a5,0x6
    1d04:	88b7a023          	sw	a1,-1920(a5) # 5880 <cursor_y>
    1d08:	00008067          	ret

00001d0c <display_set_front_back_color>:
    1d0c:	000067b7          	lui	a5,0x6
    1d10:	86a78ea3          	sb	a0,-1923(a5) # 587d <front_color>
    1d14:	000067b7          	lui	a5,0x6
    1d18:	86b78e23          	sb	a1,-1924(a5) # 587c <back_color>
    1d1c:	00008067          	ret

00001d20 <display_putchar>:
    1d20:	00a00793          	li	a5,10
    1d24:	00006737          	lui	a4,0x6
    1d28:	02f51663          	bne	a0,a5,1d54 <display_putchar+0x34>
    1d2c:	88072223          	sw	zero,-1916(a4) # 5884 <cursor_x>
    1d30:	00006737          	lui	a4,0x6
    1d34:	88072783          	lw	a5,-1920(a4) # 5880 <cursor_y>
    1d38:	00878793          	addi	a5,a5,8
    1d3c:	88f72023          	sw	a5,-1920(a4)
    1d40:	07f00713          	li	a4,127
    1d44:	00f75663          	bge	a4,a5,1d50 <display_putchar+0x30>
    1d48:	000067b7          	lui	a5,0x6
    1d4c:	8807a023          	sw	zero,-1920(a5) # 5880 <cursor_y>
    1d50:	00008067          	ret
    1d54:	ff010113          	addi	sp,sp,-16
    1d58:	00812623          	sw	s0,12(sp)
    1d5c:	01f00793          	li	a5,31
    1d60:	08a7d663          	bge	a5,a0,1dec <display_putchar+0xcc>
    1d64:	000057b7          	lui	a5,0x5
    1d68:	5607ae83          	lw	t4,1376(a5) # 5560 <DISPLAY>
    1d6c:	000056b7          	lui	a3,0x5
    1d70:	00251793          	slli	a5,a0,0x2
    1d74:	64468693          	addi	a3,a3,1604 # 5644 <font>
    1d78:	00a787b3          	add	a5,a5,a0
    1d7c:	00d78533          	add	a0,a5,a3
    1d80:	00100e13          	li	t3,1
    1d84:	00000693          	li	a3,0
    1d88:	000063b7          	lui	t2,0x6
    1d8c:	00006437          	lui	s0,0x6
    1d90:	00006f37          	lui	t5,0x6
    1d94:	00500f93          	li	t6,5
    1d98:	00800293          	li	t0,8
    1d9c:	00de1333          	sll	t1,t3,a3
    1da0:	00050593          	mv	a1,a0
    1da4:	00000613          	li	a2,0
    1da8:	f605c783          	lbu	a5,-160(a1)
    1dac:	0067f7b3          	and	a5,a5,t1
    1db0:	04078a63          	beqz	a5,1e04 <display_putchar+0xe4>
    1db4:	87d44883          	lbu	a7,-1923(s0) # 587d <front_color>
    1db8:	88472783          	lw	a5,-1916(a4)
    1dbc:	880f2803          	lw	a6,-1920(t5) # 5880 <cursor_y>
    1dc0:	00158593          	addi	a1,a1,1
    1dc4:	00f607b3          	add	a5,a2,a5
    1dc8:	00779793          	slli	a5,a5,0x7
    1dcc:	01068833          	add	a6,a3,a6
    1dd0:	010787b3          	add	a5,a5,a6
    1dd4:	00fe87b3          	add	a5,t4,a5
    1dd8:	01178023          	sb	a7,0(a5)
    1ddc:	00160613          	addi	a2,a2,1 # 4001 <fatfs_list_directory_next+0x8d>
    1de0:	fdf614e3          	bne	a2,t6,1da8 <display_putchar+0x88>
    1de4:	00168693          	addi	a3,a3,1
    1de8:	fa569ae3          	bne	a3,t0,1d9c <display_putchar+0x7c>
    1dec:	88472783          	lw	a5,-1916(a4)
    1df0:	07f00693          	li	a3,127
    1df4:	00578793          	addi	a5,a5,5
    1df8:	00f6ca63          	blt	a3,a5,1e0c <display_putchar+0xec>
    1dfc:	88f72223          	sw	a5,-1916(a4)
    1e00:	02c0006f          	j	1e2c <display_putchar+0x10c>
    1e04:	87c3c883          	lbu	a7,-1924(t2) # 587c <back_color>
    1e08:	fb1ff06f          	j	1db8 <display_putchar+0x98>
    1e0c:	88072223          	sw	zero,-1916(a4)
    1e10:	00006737          	lui	a4,0x6
    1e14:	88072783          	lw	a5,-1920(a4) # 5880 <cursor_y>
    1e18:	00878793          	addi	a5,a5,8
    1e1c:	88f72023          	sw	a5,-1920(a4)
    1e20:	00f6d663          	bge	a3,a5,1e2c <display_putchar+0x10c>
    1e24:	000067b7          	lui	a5,0x6
    1e28:	8807a023          	sw	zero,-1920(a5) # 5880 <cursor_y>
    1e2c:	00c12403          	lw	s0,12(sp)
    1e30:	01010113          	addi	sp,sp,16
    1e34:	00008067          	ret

00001e38 <display_refresh>:
    1e38:	00008067          	ret

00001e3c <print_string>:
    1e3c:	ff010113          	addi	sp,sp,-16
    1e40:	00812423          	sw	s0,8(sp)
    1e44:	00912223          	sw	s1,4(sp)
    1e48:	00112623          	sw	ra,12(sp)
    1e4c:	00050413          	mv	s0,a0
    1e50:	000064b7          	lui	s1,0x6
    1e54:	00044503          	lbu	a0,0(s0)
    1e58:	00051c63          	bnez	a0,1e70 <print_string+0x34>
    1e5c:	00c12083          	lw	ra,12(sp)
    1e60:	00812403          	lw	s0,8(sp)
    1e64:	00412483          	lw	s1,4(sp)
    1e68:	01010113          	addi	sp,sp,16
    1e6c:	00008067          	ret
    1e70:	8884a783          	lw	a5,-1912(s1) # 5888 <f_putchar>
    1e74:	00140413          	addi	s0,s0,1
    1e78:	000780e7          	jalr	a5
    1e7c:	fd9ff06f          	j	1e54 <print_string+0x18>

00001e80 <print_dec>:
    1e80:	ef010113          	addi	sp,sp,-272
    1e84:	10812423          	sw	s0,264(sp)
    1e88:	10912223          	sw	s1,260(sp)
    1e8c:	10112623          	sw	ra,268(sp)
    1e90:	11212023          	sw	s2,256(sp)
    1e94:	00050413          	mv	s0,a0
    1e98:	000064b7          	lui	s1,0x6
    1e9c:	08045063          	bgez	s0,1f1c <print_dec+0x9c>
    1ea0:	8884a783          	lw	a5,-1912(s1) # 5888 <f_putchar>
    1ea4:	02d00513          	li	a0,45
    1ea8:	40800433          	neg	s0,s0
    1eac:	000780e7          	jalr	a5
    1eb0:	fedff06f          	j	1e9c <print_dec+0x1c>
    1eb4:	00040513          	mv	a0,s0
    1eb8:	00a00593          	li	a1,10
    1ebc:	00000097          	auipc	ra,0x0
    1ec0:	af8080e7          	jalr	-1288(ra) # 19b4 <__divsi3>
    1ec4:	00251793          	slli	a5,a0,0x2
    1ec8:	00f507b3          	add	a5,a0,a5
    1ecc:	00179793          	slli	a5,a5,0x1
    1ed0:	40f40433          	sub	s0,s0,a5
    1ed4:	00148493          	addi	s1,s1,1
    1ed8:	fe848fa3          	sb	s0,-1(s1)
    1edc:	00050413          	mv	s0,a0
    1ee0:	fc041ae3          	bnez	s0,1eb4 <print_dec+0x34>
    1ee4:	fd2488e3          	beq	s1,s2,1eb4 <print_dec+0x34>
    1ee8:	00006437          	lui	s0,0x6
    1eec:	fff4c503          	lbu	a0,-1(s1)
    1ef0:	88842783          	lw	a5,-1912(s0) # 5888 <f_putchar>
    1ef4:	fff48493          	addi	s1,s1,-1
    1ef8:	03050513          	addi	a0,a0,48
    1efc:	000780e7          	jalr	a5
    1f00:	ff2496e3          	bne	s1,s2,1eec <print_dec+0x6c>
    1f04:	10c12083          	lw	ra,268(sp)
    1f08:	10812403          	lw	s0,264(sp)
    1f0c:	10412483          	lw	s1,260(sp)
    1f10:	10012903          	lw	s2,256(sp)
    1f14:	11010113          	addi	sp,sp,272
    1f18:	00008067          	ret
    1f1c:	00010493          	mv	s1,sp
    1f20:	00010913          	mv	s2,sp
    1f24:	fbdff06f          	j	1ee0 <print_dec+0x60>

00001f28 <print_hex_digits>:
    1f28:	fe010113          	addi	sp,sp,-32
    1f2c:	00812c23          	sw	s0,24(sp)
    1f30:	00912a23          	sw	s1,20(sp)
    1f34:	fff58413          	addi	s0,a1,-1
    1f38:	000054b7          	lui	s1,0x5
    1f3c:	01212823          	sw	s2,16(sp)
    1f40:	01312623          	sw	s3,12(sp)
    1f44:	00112e23          	sw	ra,28(sp)
    1f48:	00050993          	mv	s3,a0
    1f4c:	00241413          	slli	s0,s0,0x2
    1f50:	5fc48493          	addi	s1,s1,1532 # 55fc <LEDS+0x88>
    1f54:	00006937          	lui	s2,0x6
    1f58:	02045063          	bgez	s0,1f78 <print_hex_digits+0x50>
    1f5c:	01c12083          	lw	ra,28(sp)
    1f60:	01812403          	lw	s0,24(sp)
    1f64:	01412483          	lw	s1,20(sp)
    1f68:	01012903          	lw	s2,16(sp)
    1f6c:	00c12983          	lw	s3,12(sp)
    1f70:	02010113          	addi	sp,sp,32
    1f74:	00008067          	ret
    1f78:	0089d7b3          	srl	a5,s3,s0
    1f7c:	00f7f793          	andi	a5,a5,15
    1f80:	00f487b3          	add	a5,s1,a5
    1f84:	88892703          	lw	a4,-1912(s2) # 5888 <f_putchar>
    1f88:	0007c503          	lbu	a0,0(a5)
    1f8c:	ffc40413          	addi	s0,s0,-4
    1f90:	000700e7          	jalr	a4
    1f94:	fc5ff06f          	j	1f58 <print_hex_digits+0x30>

00001f98 <print_hex>:
    1f98:	00800593          	li	a1,8
    1f9c:	00000317          	auipc	t1,0x0
    1fa0:	f8c30067          	jr	-116(t1) # 1f28 <print_hex_digits>

00001fa4 <printf>:
    1fa4:	fa010113          	addi	sp,sp,-96
    1fa8:	04f12a23          	sw	a5,84(sp)
    1fac:	04410793          	addi	a5,sp,68
    1fb0:	02812c23          	sw	s0,56(sp)
    1fb4:	02912a23          	sw	s1,52(sp)
    1fb8:	03212823          	sw	s2,48(sp)
    1fbc:	03312623          	sw	s3,44(sp)
    1fc0:	03412423          	sw	s4,40(sp)
    1fc4:	03512223          	sw	s5,36(sp)
    1fc8:	03612023          	sw	s6,32(sp)
    1fcc:	02112e23          	sw	ra,60(sp)
    1fd0:	01712e23          	sw	s7,28(sp)
    1fd4:	00050413          	mv	s0,a0
    1fd8:	04b12223          	sw	a1,68(sp)
    1fdc:	04c12423          	sw	a2,72(sp)
    1fe0:	04d12623          	sw	a3,76(sp)
    1fe4:	04e12823          	sw	a4,80(sp)
    1fe8:	05012c23          	sw	a6,88(sp)
    1fec:	05112e23          	sw	a7,92(sp)
    1ff0:	00f12623          	sw	a5,12(sp)
    1ff4:	02500913          	li	s2,37
    1ff8:	000064b7          	lui	s1,0x6
    1ffc:	07300993          	li	s3,115
    2000:	07800a13          	li	s4,120
    2004:	06400a93          	li	s5,100
    2008:	06300b13          	li	s6,99
    200c:	00044503          	lbu	a0,0(s0)
    2010:	02051863          	bnez	a0,2040 <printf+0x9c>
    2014:	03c12083          	lw	ra,60(sp)
    2018:	03812403          	lw	s0,56(sp)
    201c:	03412483          	lw	s1,52(sp)
    2020:	03012903          	lw	s2,48(sp)
    2024:	02c12983          	lw	s3,44(sp)
    2028:	02812a03          	lw	s4,40(sp)
    202c:	02412a83          	lw	s5,36(sp)
    2030:	02012b03          	lw	s6,32(sp)
    2034:	01c12b83          	lw	s7,28(sp)
    2038:	06010113          	addi	sp,sp,96
    203c:	00008067          	ret
    2040:	09251a63          	bne	a0,s2,20d4 <printf+0x130>
    2044:	00144503          	lbu	a0,1(s0)
    2048:	00140b93          	addi	s7,s0,1
    204c:	03351463          	bne	a0,s3,2074 <printf+0xd0>
    2050:	00c12783          	lw	a5,12(sp)
    2054:	0007a503          	lw	a0,0(a5)
    2058:	00478713          	addi	a4,a5,4
    205c:	00e12623          	sw	a4,12(sp)
    2060:	00000097          	auipc	ra,0x0
    2064:	ddc080e7          	jalr	-548(ra) # 1e3c <print_string>
    2068:	000b8413          	mv	s0,s7
    206c:	00140413          	addi	s0,s0,1
    2070:	f9dff06f          	j	200c <printf+0x68>
    2074:	03451063          	bne	a0,s4,2094 <printf+0xf0>
    2078:	00c12783          	lw	a5,12(sp)
    207c:	0007a503          	lw	a0,0(a5)
    2080:	00478713          	addi	a4,a5,4
    2084:	00e12623          	sw	a4,12(sp)
    2088:	00000097          	auipc	ra,0x0
    208c:	f10080e7          	jalr	-240(ra) # 1f98 <print_hex>
    2090:	fd9ff06f          	j	2068 <printf+0xc4>
    2094:	03551063          	bne	a0,s5,20b4 <printf+0x110>
    2098:	00c12783          	lw	a5,12(sp)
    209c:	0007a503          	lw	a0,0(a5)
    20a0:	00478713          	addi	a4,a5,4
    20a4:	00e12623          	sw	a4,12(sp)
    20a8:	00000097          	auipc	ra,0x0
    20ac:	dd8080e7          	jalr	-552(ra) # 1e80 <print_dec>
    20b0:	fb9ff06f          	j	2068 <printf+0xc4>
    20b4:	8884a783          	lw	a5,-1912(s1) # 5888 <f_putchar>
    20b8:	01651a63          	bne	a0,s6,20cc <printf+0x128>
    20bc:	00c12703          	lw	a4,12(sp)
    20c0:	00072503          	lw	a0,0(a4)
    20c4:	00470693          	addi	a3,a4,4
    20c8:	00d12623          	sw	a3,12(sp)
    20cc:	000780e7          	jalr	a5
    20d0:	f99ff06f          	j	2068 <printf+0xc4>
    20d4:	8884a783          	lw	a5,-1912(s1)
    20d8:	000780e7          	jalr	a5
    20dc:	f91ff06f          	j	206c <printf+0xc8>

000020e0 <__mulsi3>:
    20e0:	00050793          	mv	a5,a0
    20e4:	00000513          	li	a0,0
    20e8:	00079463          	bnez	a5,20f0 <__mulsi3+0x10>
    20ec:	00008067          	ret
    20f0:	01f79693          	slli	a3,a5,0x1f
    20f4:	41f6d713          	srai	a4,a3,0x1f
    20f8:	00b77733          	and	a4,a4,a1
    20fc:	00e50533          	add	a0,a0,a4
    2100:	0017d793          	srli	a5,a5,0x1
    2104:	00159593          	slli	a1,a1,0x1
    2108:	fe1ff06f          	j	20e8 <__mulsi3+0x8>

0000210c <fat_list_insert_last>:
    210c:	00452783          	lw	a5,4(a0)
    2110:	04079263          	bnez	a5,2154 <fat_list_insert_last+0x48>
    2114:	00052783          	lw	a5,0(a0)
    2118:	00079c63          	bnez	a5,2130 <fat_list_insert_last+0x24>
    211c:	00b52023          	sw	a1,0(a0)
    2120:	00b52223          	sw	a1,4(a0)
    2124:	0005a023          	sw	zero,0(a1)
    2128:	0005a223          	sw	zero,4(a1)
    212c:	00008067          	ret
    2130:	0007a703          	lw	a4,0(a5)
    2134:	00f5a223          	sw	a5,4(a1)
    2138:	00e5a023          	sw	a4,0(a1)
    213c:	00071863          	bnez	a4,214c <fat_list_insert_last+0x40>
    2140:	00b52023          	sw	a1,0(a0)
    2144:	00b7a023          	sw	a1,0(a5)
    2148:	00008067          	ret
    214c:	00b72223          	sw	a1,4(a4)
    2150:	ff5ff06f          	j	2144 <fat_list_insert_last+0x38>
    2154:	0047a703          	lw	a4,4(a5)
    2158:	00f5a023          	sw	a5,0(a1)
    215c:	00e5a223          	sw	a4,4(a1)
    2160:	00071863          	bnez	a4,2170 <fat_list_insert_last+0x64>
    2164:	00b52223          	sw	a1,4(a0)
    2168:	00b7a223          	sw	a1,4(a5)
    216c:	00008067          	ret
    2170:	00b72023          	sw	a1,0(a4)
    2174:	ff5ff06f          	j	2168 <fat_list_insert_last+0x5c>

00002178 <FileString_StrCmpNoCase>:
    2178:	00050e93          	mv	t4,a0
    217c:	00000793          	li	a5,0
    2180:	01900e13          	li	t3,25
    2184:	00c79663          	bne	a5,a2,2190 <FileString_StrCmpNoCase+0x18>
    2188:	00000513          	li	a0,0
    218c:	00008067          	ret
    2190:	00fe8733          	add	a4,t4,a5
    2194:	00074803          	lbu	a6,0(a4)
    2198:	00f58733          	add	a4,a1,a5
    219c:	00074883          	lbu	a7,0(a4)
    21a0:	fbf80713          	addi	a4,a6,-65
    21a4:	0ff77713          	zext.b	a4,a4
    21a8:	00080693          	mv	a3,a6
    21ac:	00ee6663          	bltu	t3,a4,21b8 <FileString_StrCmpNoCase+0x40>
    21b0:	02080693          	addi	a3,a6,32
    21b4:	0ff6f693          	zext.b	a3,a3
    21b8:	fbf88313          	addi	t1,a7,-65
    21bc:	0ff37313          	zext.b	t1,t1
    21c0:	00088713          	mv	a4,a7
    21c4:	006e6663          	bltu	t3,t1,21d0 <FileString_StrCmpNoCase+0x58>
    21c8:	02088713          	addi	a4,a7,32
    21cc:	0ff77713          	zext.b	a4,a4
    21d0:	40e68533          	sub	a0,a3,a4
    21d4:	00e69863          	bne	a3,a4,21e4 <FileString_StrCmpNoCase+0x6c>
    21d8:	00178793          	addi	a5,a5,1
    21dc:	00088463          	beqz	a7,21e4 <FileString_StrCmpNoCase+0x6c>
    21e0:	fa0812e3          	bnez	a6,2184 <FileString_StrCmpNoCase+0xc>
    21e4:	00008067          	ret

000021e8 <FileString_GetExtension>:
    21e8:	00050793          	mv	a5,a0
    21ec:	fff00713          	li	a4,-1
    21f0:	02e00613          	li	a2,46
    21f4:	0007c683          	lbu	a3,0(a5)
    21f8:	00069663          	bnez	a3,2204 <FileString_GetExtension+0x1c>
    21fc:	00070513          	mv	a0,a4
    2200:	00008067          	ret
    2204:	00c69463          	bne	a3,a2,220c <FileString_GetExtension+0x24>
    2208:	40a78733          	sub	a4,a5,a0
    220c:	00178793          	addi	a5,a5,1
    2210:	fe5ff06f          	j	21f4 <FileString_GetExtension+0xc>

00002214 <fatfs_fat_writeback>:
    2214:	00059e63          	bnez	a1,2230 <fatfs_fat_writeback+0x1c>
    2218:	00000513          	li	a0,0
    221c:	00008067          	ret
    2220:	00000513          	li	a0,0
    2224:	01c12083          	lw	ra,28(sp)
    2228:	02010113          	addi	sp,sp,32
    222c:	00008067          	ret
    2230:	2045a783          	lw	a5,516(a1)
    2234:	04078e63          	beqz	a5,2290 <fatfs_fat_writeback+0x7c>
    2238:	03852683          	lw	a3,56(a0)
    223c:	00050793          	mv	a5,a0
    2240:	04068663          	beqz	a3,228c <fatfs_fat_writeback+0x78>
    2244:	0147a703          	lw	a4,20(a5)
    2248:	2005a503          	lw	a0,512(a1)
    224c:	0207a803          	lw	a6,32(a5)
    2250:	00100613          	li	a2,1
    2254:	fe010113          	addi	sp,sp,-32
    2258:	40e607b3          	sub	a5,a2,a4
    225c:	00112e23          	sw	ra,28(sp)
    2260:	00a787b3          	add	a5,a5,a0
    2264:	00f87663          	bgeu	a6,a5,2270 <fatfs_fat_writeback+0x5c>
    2268:	01070733          	add	a4,a4,a6
    226c:	40a70633          	sub	a2,a4,a0
    2270:	00b12623          	sw	a1,12(sp)
    2274:	000680e7          	jalr	a3
    2278:	fa0504e3          	beqz	a0,2220 <fatfs_fat_writeback+0xc>
    227c:	00c12583          	lw	a1,12(sp)
    2280:	00100513          	li	a0,1
    2284:	2005a223          	sw	zero,516(a1)
    2288:	f9dff06f          	j	2224 <fatfs_fat_writeback+0x10>
    228c:	2005a223          	sw	zero,516(a1)
    2290:	00100513          	li	a0,1
    2294:	00008067          	ret

00002298 <fatfs_fat_read_sector>:
    2298:	fe010113          	addi	sp,sp,-32
    229c:	01212823          	sw	s2,16(sp)
    22a0:	25452903          	lw	s2,596(a0)
    22a4:	00812c23          	sw	s0,24(sp)
    22a8:	00112e23          	sw	ra,28(sp)
    22ac:	00912a23          	sw	s1,20(sp)
    22b0:	01312623          	sw	s3,12(sp)
    22b4:	00000413          	li	s0,0
    22b8:	04091463          	bnez	s2,2300 <fatfs_fat_read_sector+0x68>
    22bc:	25452783          	lw	a5,596(a0)
    22c0:	00058493          	mv	s1,a1
    22c4:	00050993          	mv	s3,a0
    22c8:	20f42623          	sw	a5,524(s0)
    22cc:	20442783          	lw	a5,516(s0)
    22d0:	24852a23          	sw	s0,596(a0)
    22d4:	08079863          	bnez	a5,2364 <fatfs_fat_read_sector+0xcc>
    22d8:	0349a783          	lw	a5,52(s3)
    22dc:	20942023          	sw	s1,512(s0)
    22e0:	00100613          	li	a2,1
    22e4:	00040593          	mv	a1,s0
    22e8:	00048513          	mv	a0,s1
    22ec:	000780e7          	jalr	a5
    22f0:	08051463          	bnez	a0,2378 <fatfs_fat_read_sector+0xe0>
    22f4:	fff00793          	li	a5,-1
    22f8:	20f42023          	sw	a5,512(s0)
    22fc:	0480006f          	j	2344 <fatfs_fat_read_sector+0xac>
    2300:	20092783          	lw	a5,512(s2)
    2304:	00f5e663          	bltu	a1,a5,2310 <fatfs_fat_read_sector+0x78>
    2308:	00178713          	addi	a4,a5,1
    230c:	02e5e463          	bltu	a1,a4,2334 <fatfs_fat_read_sector+0x9c>
    2310:	20c92783          	lw	a5,524(s2)
    2314:	00079663          	bnez	a5,2320 <fatfs_fat_read_sector+0x88>
    2318:	00040a63          	beqz	s0,232c <fatfs_fat_read_sector+0x94>
    231c:	20042623          	sw	zero,524(s0)
    2320:	00090413          	mv	s0,s2
    2324:	20c92903          	lw	s2,524(s2)
    2328:	f91ff06f          	j	22b8 <fatfs_fat_read_sector+0x20>
    232c:	24052a23          	sw	zero,596(a0)
    2330:	ff1ff06f          	j	2320 <fatfs_fat_read_sector+0x88>
    2334:	40f585b3          	sub	a1,a1,a5
    2338:	00959593          	slli	a1,a1,0x9
    233c:	00b905b3          	add	a1,s2,a1
    2340:	20b92423          	sw	a1,520(s2)
    2344:	01c12083          	lw	ra,28(sp)
    2348:	01812403          	lw	s0,24(sp)
    234c:	01412483          	lw	s1,20(sp)
    2350:	00c12983          	lw	s3,12(sp)
    2354:	00090513          	mv	a0,s2
    2358:	01012903          	lw	s2,16(sp)
    235c:	02010113          	addi	sp,sp,32
    2360:	00008067          	ret
    2364:	00040593          	mv	a1,s0
    2368:	00000097          	auipc	ra,0x0
    236c:	eac080e7          	jalr	-340(ra) # 2214 <fatfs_fat_writeback>
    2370:	f60514e3          	bnez	a0,22d8 <fatfs_fat_read_sector+0x40>
    2374:	fd1ff06f          	j	2344 <fatfs_fat_read_sector+0xac>
    2378:	20842423          	sw	s0,520(s0)
    237c:	00040913          	mv	s2,s0
    2380:	fc5ff06f          	j	2344 <fatfs_fat_read_sector+0xac>

00002384 <_allocate_file>:
    2384:	000067b7          	lui	a5,0x6
    2388:	88c78793          	addi	a5,a5,-1908 # 588c <_free_file_list>
    238c:	0007a583          	lw	a1,0(a5)
    2390:	06058263          	beqz	a1,23f4 <_allocate_file+0x70>
    2394:	0005a703          	lw	a4,0(a1)
    2398:	fe010113          	addi	sp,sp,-32
    239c:	00112e23          	sw	ra,28(sp)
    23a0:	0045a683          	lw	a3,4(a1)
    23a4:	04071063          	bnez	a4,23e4 <_allocate_file+0x60>
    23a8:	00d7a023          	sw	a3,0(a5)
    23ac:	0045a683          	lw	a3,4(a1)
    23b0:	02069e63          	bnez	a3,23ec <_allocate_file+0x68>
    23b4:	00e7a223          	sw	a4,4(a5)
    23b8:	00006537          	lui	a0,0x6
    23bc:	89450513          	addi	a0,a0,-1900 # 5894 <_open_file_list>
    23c0:	00b12623          	sw	a1,12(sp)
    23c4:	00000097          	auipc	ra,0x0
    23c8:	d48080e7          	jalr	-696(ra) # 210c <fat_list_insert_last>
    23cc:	00c12583          	lw	a1,12(sp)
    23d0:	01c12083          	lw	ra,28(sp)
    23d4:	bc458593          	addi	a1,a1,-1084
    23d8:	00058513          	mv	a0,a1
    23dc:	02010113          	addi	sp,sp,32
    23e0:	00008067          	ret
    23e4:	00d72223          	sw	a3,4(a4)
    23e8:	fc5ff06f          	j	23ac <_allocate_file+0x28>
    23ec:	00e6a023          	sw	a4,0(a3)
    23f0:	fc9ff06f          	j	23b8 <_allocate_file+0x34>
    23f4:	00058513          	mv	a0,a1
    23f8:	00008067          	ret

000023fc <_free_file>:
    23fc:	43c52783          	lw	a5,1084(a0)
    2400:	44052703          	lw	a4,1088(a0)
    2404:	43c50593          	addi	a1,a0,1084
    2408:	02079663          	bnez	a5,2434 <_free_file+0x38>
    240c:	000066b7          	lui	a3,0x6
    2410:	88e6aa23          	sw	a4,-1900(a3) # 5894 <_open_file_list>
    2414:	44052703          	lw	a4,1088(a0)
    2418:	02071263          	bnez	a4,243c <_free_file+0x40>
    241c:	00006737          	lui	a4,0x6
    2420:	88f72c23          	sw	a5,-1896(a4) # 5898 <_open_file_list+0x4>
    2424:	00006537          	lui	a0,0x6
    2428:	88c50513          	addi	a0,a0,-1908 # 588c <_free_file_list>
    242c:	00000317          	auipc	t1,0x0
    2430:	ce030067          	jr	-800(t1) # 210c <fat_list_insert_last>
    2434:	00e7a223          	sw	a4,4(a5)
    2438:	fddff06f          	j	2414 <_free_file+0x18>
    243c:	00f72023          	sw	a5,0(a4)
    2440:	fe5ff06f          	j	2424 <_free_file+0x28>

00002444 <fatfs_lba_of_cluster>:
    2444:	ff010113          	addi	sp,sp,-16
    2448:	00812423          	sw	s0,8(sp)
    244c:	00112623          	sw	ra,12(sp)
    2450:	00050413          	mv	s0,a0
    2454:	ffe58513          	addi	a0,a1,-2
    2458:	00044583          	lbu	a1,0(s0)
    245c:	00000097          	auipc	ra,0x0
    2460:	c84080e7          	jalr	-892(ra) # 20e0 <__mulsi3>
    2464:	00442783          	lw	a5,4(s0)
    2468:	00f50533          	add	a0,a0,a5
    246c:	03042783          	lw	a5,48(s0)
    2470:	00079863          	bnez	a5,2480 <fatfs_lba_of_cluster+0x3c>
    2474:	02845783          	lhu	a5,40(s0)
    2478:	4047d793          	srai	a5,a5,0x4
    247c:	00f50533          	add	a0,a0,a5
    2480:	00c12083          	lw	ra,12(sp)
    2484:	00812403          	lw	s0,8(sp)
    2488:	01010113          	addi	sp,sp,16
    248c:	00008067          	ret

00002490 <fatfs_sector_read>:
    2490:	03452783          	lw	a5,52(a0)
    2494:	00058713          	mv	a4,a1
    2498:	00070513          	mv	a0,a4
    249c:	00060593          	mv	a1,a2
    24a0:	00068613          	mv	a2,a3
    24a4:	00078067          	jr	a5

000024a8 <fatfs_sector_write>:
    24a8:	03852783          	lw	a5,56(a0)
    24ac:	00058713          	mv	a4,a1
    24b0:	00070513          	mv	a0,a4
    24b4:	00060593          	mv	a1,a2
    24b8:	00068613          	mv	a2,a3
    24bc:	00078067          	jr	a5

000024c0 <fatfs_write_sector>:
    24c0:	03852703          	lw	a4,56(a0)
    24c4:	0a070463          	beqz	a4,256c <fatfs_write_sector+0xac>
    24c8:	03052883          	lw	a7,48(a0)
    24cc:	00050793          	mv	a5,a0
    24d0:	0115e833          	or	a6,a1,a7
    24d4:	02081e63          	bnez	a6,2510 <fatfs_write_sector+0x50>
    24d8:	01052583          	lw	a1,16(a0)
    24dc:	08b67863          	bgeu	a2,a1,256c <fatfs_write_sector+0xac>
    24e0:	01c52503          	lw	a0,28(a0)
    24e4:	00c7a583          	lw	a1,12(a5)
    24e8:	00b50533          	add	a0,a0,a1
    24ec:	00c50533          	add	a0,a0,a2
    24f0:	00068863          	beqz	a3,2500 <fatfs_write_sector+0x40>
    24f4:	00100613          	li	a2,1
    24f8:	00068593          	mv	a1,a3
    24fc:	00070067          	jr	a4
    2500:	24a7a223          	sw	a0,580(a5)
    2504:	00100613          	li	a2,1
    2508:	04478593          	addi	a1,a5,68
    250c:	ff1ff06f          	j	24fc <fatfs_write_sector+0x3c>
    2510:	fe010113          	addi	sp,sp,-32
    2514:	00e12623          	sw	a4,12(sp)
    2518:	00d12423          	sw	a3,8(sp)
    251c:	00c12223          	sw	a2,4(sp)
    2520:	00112e23          	sw	ra,28(sp)
    2524:	00a12023          	sw	a0,0(sp)
    2528:	00000097          	auipc	ra,0x0
    252c:	f1c080e7          	jalr	-228(ra) # 2444 <fatfs_lba_of_cluster>
    2530:	00412603          	lw	a2,4(sp)
    2534:	00812683          	lw	a3,8(sp)
    2538:	00012783          	lw	a5,0(sp)
    253c:	00c12703          	lw	a4,12(sp)
    2540:	00a60533          	add	a0,a2,a0
    2544:	00068c63          	beqz	a3,255c <fatfs_write_sector+0x9c>
    2548:	00100613          	li	a2,1
    254c:	00068593          	mv	a1,a3
    2550:	01c12083          	lw	ra,28(sp)
    2554:	02010113          	addi	sp,sp,32
    2558:	fa5ff06f          	j	24fc <fatfs_write_sector+0x3c>
    255c:	24a7a223          	sw	a0,580(a5)
    2560:	00100613          	li	a2,1
    2564:	04478593          	addi	a1,a5,68
    2568:	fe9ff06f          	j	2550 <fatfs_write_sector+0x90>
    256c:	00000513          	li	a0,0
    2570:	00008067          	ret

00002574 <fl_init>:
    2574:	ff010113          	addi	sp,sp,-16
    2578:	00006537          	lui	a0,0x6
    257c:	000067b7          	lui	a5,0x6
    2580:	0000a5b7          	lui	a1,0xa
    2584:	00112623          	sw	ra,12(sp)
    2588:	88c50513          	addi	a0,a0,-1908 # 588c <_free_file_list>
    258c:	89478793          	addi	a5,a5,-1900 # 5894 <_open_file_list>
    2590:	51058593          	addi	a1,a1,1296 # a510 <_files+0x43c>
    2594:	00052223          	sw	zero,4(a0)
    2598:	00052023          	sw	zero,0(a0)
    259c:	0007a223          	sw	zero,4(a5)
    25a0:	0007a023          	sw	zero,0(a5)
    25a4:	00000097          	auipc	ra,0x0
    25a8:	b68080e7          	jalr	-1176(ra) # 210c <fat_list_insert_last>
    25ac:	000067b7          	lui	a5,0x6
    25b0:	0000b5b7          	lui	a1,0xb
    25b4:	88c78513          	addi	a0,a5,-1908 # 588c <_free_file_list>
    25b8:	95458593          	addi	a1,a1,-1708 # a954 <_files+0x880>
    25bc:	00000097          	auipc	ra,0x0
    25c0:	b50080e7          	jalr	-1200(ra) # 210c <fat_list_insert_last>
    25c4:	00c12083          	lw	ra,12(sp)
    25c8:	000067b7          	lui	a5,0x6
    25cc:	00100713          	li	a4,1
    25d0:	8ae7a023          	sw	a4,-1888(a5) # 58a0 <_filelib_init>
    25d4:	01010113          	addi	sp,sp,16
    25d8:	00008067          	ret

000025dc <fl_fseek>:
    25dc:	000067b7          	lui	a5,0x6
    25e0:	8a07a783          	lw	a5,-1888(a5) # 58a0 <_filelib_init>
    25e4:	fd010113          	addi	sp,sp,-48
    25e8:	02812423          	sw	s0,40(sp)
    25ec:	02912223          	sw	s1,36(sp)
    25f0:	01312e23          	sw	s3,28(sp)
    25f4:	02112623          	sw	ra,44(sp)
    25f8:	03212023          	sw	s2,32(sp)
    25fc:	00050413          	mv	s0,a0
    2600:	00058493          	mv	s1,a1
    2604:	00060993          	mv	s3,a2
    2608:	00079663          	bnez	a5,2614 <fl_fseek+0x38>
    260c:	00000097          	auipc	ra,0x0
    2610:	f68080e7          	jalr	-152(ra) # 2574 <fl_init>
    2614:	fff00513          	li	a0,-1
    2618:	08040263          	beqz	s0,269c <fl_fseek+0xc0>
    261c:	00048663          	beqz	s1,2628 <fl_fseek+0x4c>
    2620:	ffe98793          	addi	a5,s3,-2
    2624:	06078c63          	beqz	a5,269c <fl_fseek+0xc0>
    2628:	0000a937          	lui	s2,0xa
    262c:	c6c90913          	addi	s2,s2,-916 # 9c6c <_fs>
    2630:	03c92783          	lw	a5,60(s2)
    2634:	00078463          	beqz	a5,263c <fl_fseek+0x60>
    2638:	000780e7          	jalr	a5
    263c:	fff00513          	li	a0,-1
    2640:	42a42823          	sw	a0,1072(s0)
    2644:	42042a23          	sw	zero,1076(s0)
    2648:	00099c63          	bnez	s3,2660 <fl_fseek+0x84>
    264c:	00c42783          	lw	a5,12(s0)
    2650:	00942423          	sw	s1,8(s0)
    2654:	0297f863          	bgeu	a5,s1,2684 <fl_fseek+0xa8>
    2658:	00f42423          	sw	a5,8(s0)
    265c:	0280006f          	j	2684 <fl_fseek+0xa8>
    2660:	00100793          	li	a5,1
    2664:	06f99063          	bne	s3,a5,26c4 <fl_fseek+0xe8>
    2668:	00842783          	lw	a5,8(s0)
    266c:	0004c663          	bltz	s1,2678 <fl_fseek+0x9c>
    2670:	00f484b3          	add	s1,s1,a5
    2674:	fd9ff06f          	j	264c <fl_fseek+0x70>
    2678:	40900733          	neg	a4,s1
    267c:	02e7fe63          	bgeu	a5,a4,26b8 <fl_fseek+0xdc>
    2680:	00042423          	sw	zero,8(s0)
    2684:	00000513          	li	a0,0
    2688:	04092783          	lw	a5,64(s2)
    268c:	00078863          	beqz	a5,269c <fl_fseek+0xc0>
    2690:	00a12623          	sw	a0,12(sp)
    2694:	000780e7          	jalr	a5
    2698:	00c12503          	lw	a0,12(sp)
    269c:	02c12083          	lw	ra,44(sp)
    26a0:	02812403          	lw	s0,40(sp)
    26a4:	02412483          	lw	s1,36(sp)
    26a8:	02012903          	lw	s2,32(sp)
    26ac:	01c12983          	lw	s3,28(sp)
    26b0:	03010113          	addi	sp,sp,48
    26b4:	00008067          	ret
    26b8:	00f484b3          	add	s1,s1,a5
    26bc:	00942423          	sw	s1,8(s0)
    26c0:	fc5ff06f          	j	2684 <fl_fseek+0xa8>
    26c4:	00200793          	li	a5,2
    26c8:	fcf990e3          	bne	s3,a5,2688 <fl_fseek+0xac>
    26cc:	00c42783          	lw	a5,12(s0)
    26d0:	f89ff06f          	j	2658 <fl_fseek+0x7c>

000026d4 <fl_closedir>:
    26d4:	00000513          	li	a0,0
    26d8:	00008067          	ret

000026dc <fatfs_lfn_cache_entry>:
    26dc:	0005c783          	lbu	a5,0(a1)
    26e0:	01300693          	li	a3,19
    26e4:	01f7f793          	andi	a5,a5,31
    26e8:	fff78713          	addi	a4,a5,-1
    26ec:	0ff77613          	zext.b	a2,a4
    26f0:	0ac6ea63          	bltu	a3,a2,27a4 <fatfs_lfn_cache_entry+0xc8>
    26f4:	10554683          	lbu	a3,261(a0)
    26f8:	00069463          	bnez	a3,2700 <fatfs_lfn_cache_entry+0x24>
    26fc:	10f502a3          	sb	a5,261(a0)
    2700:	00171793          	slli	a5,a4,0x1
    2704:	00e787b3          	add	a5,a5,a4
    2708:	0015c683          	lbu	a3,1(a1)
    270c:	00279793          	slli	a5,a5,0x2
    2710:	00e787b3          	add	a5,a5,a4
    2714:	00f50533          	add	a0,a0,a5
    2718:	00d50023          	sb	a3,0(a0)
    271c:	0035c783          	lbu	a5,3(a1)
    2720:	0ff00713          	li	a4,255
    2724:	02000693          	li	a3,32
    2728:	00f500a3          	sb	a5,1(a0)
    272c:	0055c783          	lbu	a5,5(a1)
    2730:	00f50123          	sb	a5,2(a0)
    2734:	0075c783          	lbu	a5,7(a1)
    2738:	00f501a3          	sb	a5,3(a0)
    273c:	0095c783          	lbu	a5,9(a1)
    2740:	00f50223          	sb	a5,4(a0)
    2744:	00e5c783          	lbu	a5,14(a1)
    2748:	00f502a3          	sb	a5,5(a0)
    274c:	0105c783          	lbu	a5,16(a1)
    2750:	00f50323          	sb	a5,6(a0)
    2754:	0125c783          	lbu	a5,18(a1)
    2758:	00f503a3          	sb	a5,7(a0)
    275c:	0145c783          	lbu	a5,20(a1)
    2760:	00f50423          	sb	a5,8(a0)
    2764:	0165c783          	lbu	a5,22(a1)
    2768:	00f504a3          	sb	a5,9(a0)
    276c:	0185c783          	lbu	a5,24(a1)
    2770:	00f50523          	sb	a5,10(a0)
    2774:	01c5c783          	lbu	a5,28(a1)
    2778:	00f505a3          	sb	a5,11(a0)
    277c:	01e5c783          	lbu	a5,30(a1)
    2780:	00f50623          	sb	a5,12(a0)
    2784:	00d00793          	li	a5,13
    2788:	00054603          	lbu	a2,0(a0)
    278c:	00e61463          	bne	a2,a4,2794 <fatfs_lfn_cache_entry+0xb8>
    2790:	00d50023          	sb	a3,0(a0)
    2794:	fff78793          	addi	a5,a5,-1
    2798:	0ff7f793          	zext.b	a5,a5
    279c:	00150513          	addi	a0,a0,1
    27a0:	fe0794e3          	bnez	a5,2788 <fatfs_lfn_cache_entry+0xac>
    27a4:	00008067          	ret

000027a8 <fatfs_lfn_cache_get>:
    27a8:	10554703          	lbu	a4,261(a0)
    27ac:	01400793          	li	a5,20
    27b0:	00f71663          	bne	a4,a5,27bc <fatfs_lfn_cache_get+0x14>
    27b4:	10050223          	sb	zero,260(a0)
    27b8:	00008067          	ret
    27bc:	02070063          	beqz	a4,27dc <fatfs_lfn_cache_get+0x34>
    27c0:	00171793          	slli	a5,a4,0x1
    27c4:	00e787b3          	add	a5,a5,a4
    27c8:	00279793          	slli	a5,a5,0x2
    27cc:	00e787b3          	add	a5,a5,a4
    27d0:	00f507b3          	add	a5,a0,a5
    27d4:	00078023          	sb	zero,0(a5)
    27d8:	00008067          	ret
    27dc:	00050023          	sb	zero,0(a0)
    27e0:	00008067          	ret

000027e4 <fatfs_entry_lfn_text>:
    27e4:	00b54503          	lbu	a0,11(a0)
    27e8:	00f57513          	andi	a0,a0,15
    27ec:	ff150513          	addi	a0,a0,-15
    27f0:	00153513          	seqz	a0,a0
    27f4:	00008067          	ret

000027f8 <fatfs_entry_lfn_invalid>:
    27f8:	00054783          	lbu	a5,0(a0)
    27fc:	f1b78713          	addi	a4,a5,-229
    2800:	02070263          	beqz	a4,2824 <fatfs_entry_lfn_invalid+0x2c>
    2804:	02078063          	beqz	a5,2824 <fatfs_entry_lfn_invalid+0x2c>
    2808:	00b54783          	lbu	a5,11(a0)
    280c:	00800713          	li	a4,8
    2810:	00100513          	li	a0,1
    2814:	00e78a63          	beq	a5,a4,2828 <fatfs_entry_lfn_invalid+0x30>
    2818:	0067f793          	andi	a5,a5,6
    281c:	00f03533          	snez	a0,a5
    2820:	00008067          	ret
    2824:	00100513          	li	a0,1
    2828:	00008067          	ret

0000282c <fatfs_entry_lfn_exists>:
    282c:	00b5c783          	lbu	a5,11(a1)
    2830:	00f00713          	li	a4,15
    2834:	04e78063          	beq	a5,a4,2874 <fatfs_entry_lfn_exists+0x48>
    2838:	0005c683          	lbu	a3,0(a1)
    283c:	f1b68713          	addi	a4,a3,-229
    2840:	00e03733          	snez	a4,a4
    2844:	00d036b3          	snez	a3,a3
    2848:	00d77733          	and	a4,a4,a3
    284c:	02070463          	beqz	a4,2874 <fatfs_entry_lfn_exists+0x48>
    2850:	ff878713          	addi	a4,a5,-8
    2854:	02070063          	beqz	a4,2874 <fatfs_entry_lfn_exists+0x48>
    2858:	0067f713          	andi	a4,a5,6
    285c:	00000793          	li	a5,0
    2860:	00071663          	bnez	a4,286c <fatfs_entry_lfn_exists+0x40>
    2864:	10554783          	lbu	a5,261(a0)
    2868:	00f037b3          	snez	a5,a5
    286c:	00078513          	mv	a0,a5
    2870:	00008067          	ret
    2874:	00000793          	li	a5,0
    2878:	ff5ff06f          	j	286c <fatfs_entry_lfn_exists+0x40>

0000287c <fatfs_entry_sfn_only>:
    287c:	00b54783          	lbu	a5,11(a0)
    2880:	00f00713          	li	a4,15
    2884:	02e78863          	beq	a5,a4,28b4 <fatfs_entry_sfn_only+0x38>
    2888:	00054683          	lbu	a3,0(a0)
    288c:	f1b68713          	addi	a4,a3,-229
    2890:	00e03733          	snez	a4,a4
    2894:	00d036b3          	snez	a3,a3
    2898:	00d77733          	and	a4,a4,a3
    289c:	00070c63          	beqz	a4,28b4 <fatfs_entry_sfn_only+0x38>
    28a0:	ff878713          	addi	a4,a5,-8
    28a4:	00070863          	beqz	a4,28b4 <fatfs_entry_sfn_only+0x38>
    28a8:	0067f513          	andi	a0,a5,6
    28ac:	00153513          	seqz	a0,a0
    28b0:	00008067          	ret
    28b4:	00000513          	li	a0,0
    28b8:	00008067          	ret

000028bc <fatfs_entry_is_dir>:
    28bc:	00b54503          	lbu	a0,11(a0)
    28c0:	00455513          	srli	a0,a0,0x4
    28c4:	00157513          	andi	a0,a0,1
    28c8:	00008067          	ret

000028cc <fatfs_lfn_entries_required>:
    28cc:	ff010113          	addi	sp,sp,-16
    28d0:	00112623          	sw	ra,12(sp)
    28d4:	fffff097          	auipc	ra,0xfffff
    28d8:	1d4080e7          	jalr	468(ra) # 1aa8 <strlen>
    28dc:	00050a63          	beqz	a0,28f0 <fatfs_lfn_entries_required+0x24>
    28e0:	00d00593          	li	a1,13
    28e4:	00c50513          	addi	a0,a0,12
    28e8:	fffff097          	auipc	ra,0xfffff
    28ec:	0cc080e7          	jalr	204(ra) # 19b4 <__divsi3>
    28f0:	00c12083          	lw	ra,12(sp)
    28f4:	01010113          	addi	sp,sp,16
    28f8:	00008067          	ret

000028fc <fatfs_filename_to_lfn>:
    28fc:	f9010113          	addi	sp,sp,-112
    2900:	06812423          	sw	s0,104(sp)
    2904:	00058413          	mv	s0,a1
    2908:	000065b7          	lui	a1,0x6
    290c:	82458593          	addi	a1,a1,-2012 # 5824 <font+0x1e0>
    2910:	06912223          	sw	s1,100(sp)
    2914:	05312e23          	sw	s3,92(sp)
    2918:	00060493          	mv	s1,a2
    291c:	00050993          	mv	s3,a0
    2920:	03400613          	li	a2,52
    2924:	01c10513          	addi	a0,sp,28
    2928:	00d12623          	sw	a3,12(sp)
    292c:	06112623          	sw	ra,108(sp)
    2930:	07212023          	sw	s2,96(sp)
    2934:	05412c23          	sw	s4,88(sp)
    2938:	fffff097          	auipc	ra,0xfffff
    293c:	14c080e7          	jalr	332(ra) # 1a84 <memcpy>
    2940:	00098513          	mv	a0,s3
    2944:	fffff097          	auipc	ra,0xfffff
    2948:	164080e7          	jalr	356(ra) # 1aa8 <strlen>
    294c:	00050913          	mv	s2,a0
    2950:	00098513          	mv	a0,s3
    2954:	00000097          	auipc	ra,0x0
    2958:	f78080e7          	jalr	-136(ra) # 28cc <fatfs_lfn_entries_required>
    295c:	00050a13          	mv	s4,a0
    2960:	02000613          	li	a2,32
    2964:	00000593          	li	a1,0
    2968:	00040513          	mv	a0,s0
    296c:	fffff097          	auipc	ra,0xfffff
    2970:	0fc080e7          	jalr	252(ra) # 1a68 <memset>
    2974:	fffa0713          	addi	a4,s4,-1
    2978:	00c12683          	lw	a3,12(sp)
    297c:	00148793          	addi	a5,s1,1
    2980:	00971463          	bne	a4,s1,2988 <fatfs_filename_to_lfn+0x8c>
    2984:	0407e793          	ori	a5,a5,64
    2988:	00149613          	slli	a2,s1,0x1
    298c:	00960633          	add	a2,a2,s1
    2990:	00f40023          	sb	a5,0(s0)
    2994:	00261613          	slli	a2,a2,0x2
    2998:	00f00793          	li	a5,15
    299c:	00f405a3          	sb	a5,11(s0)
    29a0:	00d406a3          	sb	a3,13(s0)
    29a4:	01c10793          	addi	a5,sp,28
    29a8:	00960633          	add	a2,a2,s1
    29ac:	fff00693          	li	a3,-1
    29b0:	0007a703          	lw	a4,0(a5)
    29b4:	00e40733          	add	a4,s0,a4
    29b8:	05265063          	bge	a2,s2,29f8 <fatfs_filename_to_lfn+0xfc>
    29bc:	00c985b3          	add	a1,s3,a2
    29c0:	0005c583          	lbu	a1,0(a1)
    29c4:	00b70023          	sb	a1,0(a4)
    29c8:	00478793          	addi	a5,a5,4
    29cc:	05010713          	addi	a4,sp,80
    29d0:	00160613          	addi	a2,a2,1
    29d4:	fce79ee3          	bne	a5,a4,29b0 <fatfs_filename_to_lfn+0xb4>
    29d8:	06c12083          	lw	ra,108(sp)
    29dc:	06812403          	lw	s0,104(sp)
    29e0:	06412483          	lw	s1,100(sp)
    29e4:	06012903          	lw	s2,96(sp)
    29e8:	05c12983          	lw	s3,92(sp)
    29ec:	05812a03          	lw	s4,88(sp)
    29f0:	07010113          	addi	sp,sp,112
    29f4:	00008067          	ret
    29f8:	01261663          	bne	a2,s2,2a04 <fatfs_filename_to_lfn+0x108>
    29fc:	00070023          	sb	zero,0(a4)
    2a00:	fc9ff06f          	j	29c8 <fatfs_filename_to_lfn+0xcc>
    2a04:	00d70023          	sb	a3,0(a4)
    2a08:	00d700a3          	sb	a3,1(a4)
    2a0c:	fbdff06f          	j	29c8 <fatfs_filename_to_lfn+0xcc>

00002a10 <fatfs_sfn_create_entry>:
    2a10:	00000793          	li	a5,0
    2a14:	00b00813          	li	a6,11
    2a18:	00f508b3          	add	a7,a0,a5
    2a1c:	0008c303          	lbu	t1,0(a7)
    2a20:	00f688b3          	add	a7,a3,a5
    2a24:	00178793          	addi	a5,a5,1
    2a28:	00688023          	sb	t1,0(a7)
    2a2c:	ff0796e3          	bne	a5,a6,2a18 <fatfs_sfn_create_entry+0x8>
    2a30:	00e03733          	snez	a4,a4
    2a34:	40e00733          	neg	a4,a4
    2a38:	02000793          	li	a5,32
    2a3c:	ff077713          	andi	a4,a4,-16
    2a40:	00f70733          	add	a4,a4,a5
    2a44:	00f68823          	sb	a5,16(a3)
    2a48:	00f68923          	sb	a5,18(a3)
    2a4c:	00f68c23          	sb	a5,24(a3)
    2a50:	01065793          	srli	a5,a2,0x10
    2a54:	00f68a23          	sb	a5,20(a3)
    2a58:	01865793          	srli	a5,a2,0x18
    2a5c:	00f68aa3          	sb	a5,21(a3)
    2a60:	0085d793          	srli	a5,a1,0x8
    2a64:	00c68d23          	sb	a2,26(a3)
    2a68:	00b68e23          	sb	a1,28(a3)
    2a6c:	00865613          	srli	a2,a2,0x8
    2a70:	00f68ea3          	sb	a5,29(a3)
    2a74:	0105d793          	srli	a5,a1,0x10
    2a78:	0185d593          	srli	a1,a1,0x18
    2a7c:	000686a3          	sb	zero,13(a3)
    2a80:	00068723          	sb	zero,14(a3)
    2a84:	000687a3          	sb	zero,15(a3)
    2a88:	000688a3          	sb	zero,17(a3)
    2a8c:	000689a3          	sb	zero,19(a3)
    2a90:	00068b23          	sb	zero,22(a3)
    2a94:	00068ba3          	sb	zero,23(a3)
    2a98:	00068ca3          	sb	zero,25(a3)
    2a9c:	00e685a3          	sb	a4,11(a3)
    2aa0:	00068623          	sb	zero,12(a3)
    2aa4:	00c68da3          	sb	a2,27(a3)
    2aa8:	00f68f23          	sb	a5,30(a3)
    2aac:	00b68fa3          	sb	a1,31(a3)
    2ab0:	00008067          	ret

00002ab4 <fatfs_lfn_create_sfn>:
    2ab4:	fd010113          	addi	sp,sp,-48
    2ab8:	02912223          	sw	s1,36(sp)
    2abc:	00050493          	mv	s1,a0
    2ac0:	00058513          	mv	a0,a1
    2ac4:	02812423          	sw	s0,40(sp)
    2ac8:	01312e23          	sw	s3,28(sp)
    2acc:	00058413          	mv	s0,a1
    2ad0:	02112623          	sw	ra,44(sp)
    2ad4:	03212023          	sw	s2,32(sp)
    2ad8:	fffff097          	auipc	ra,0xfffff
    2adc:	fd0080e7          	jalr	-48(ra) # 1aa8 <strlen>
    2ae0:	00044783          	lbu	a5,0(s0)
    2ae4:	02e00993          	li	s3,46
    2ae8:	15378063          	beq	a5,s3,2c28 <fatfs_lfn_create_sfn+0x174>
    2aec:	00b00613          	li	a2,11
    2af0:	02000593          	li	a1,32
    2af4:	00050913          	mv	s2,a0
    2af8:	00048513          	mv	a0,s1
    2afc:	fffff097          	auipc	ra,0xfffff
    2b00:	f6c080e7          	jalr	-148(ra) # 1a68 <memset>
    2b04:	00300613          	li	a2,3
    2b08:	02000593          	li	a1,32
    2b0c:	00c10513          	addi	a0,sp,12
    2b10:	fffff097          	auipc	ra,0xfffff
    2b14:	f58080e7          	jalr	-168(ra) # 1a68 <memset>
    2b18:	fff00793          	li	a5,-1
    2b1c:	00000713          	li	a4,0
    2b20:	0d274263          	blt	a4,s2,2be4 <fatfs_lfn_create_sfn+0x130>
    2b24:	fff00713          	li	a4,-1
    2b28:	0ee78863          	beq	a5,a4,2c18 <fatfs_lfn_create_sfn+0x164>
    2b2c:	00178713          	addi	a4,a5,1
    2b30:	00c10693          	addi	a3,sp,12
    2b34:	00478613          	addi	a2,a5,4
    2b38:	0ce61263          	bne	a2,a4,2bfc <fatfs_lfn_create_sfn+0x148>
    2b3c:	00000613          	li	a2,0
    2b40:	00000693          	li	a3,0
    2b44:	01900813          	li	a6,25
    2b48:	00800893          	li	a7,8
    2b4c:	02f6de63          	bge	a3,a5,2b88 <fatfs_lfn_create_sfn+0xd4>
    2b50:	00d40733          	add	a4,s0,a3
    2b54:	00074703          	lbu	a4,0(a4)
    2b58:	fe070513          	addi	a0,a4,-32
    2b5c:	0c050263          	beqz	a0,2c20 <fatfs_lfn_create_sfn+0x16c>
    2b60:	fd270593          	addi	a1,a4,-46
    2b64:	0a058e63          	beqz	a1,2c20 <fatfs_lfn_create_sfn+0x16c>
    2b68:	f9f70593          	addi	a1,a4,-97
    2b6c:	0ff5f593          	zext.b	a1,a1
    2b70:	00c48333          	add	t1,s1,a2
    2b74:	00160613          	addi	a2,a2,1
    2b78:	00b86463          	bltu	a6,a1,2b80 <fatfs_lfn_create_sfn+0xcc>
    2b7c:	0ff57713          	zext.b	a4,a0
    2b80:	00e30023          	sb	a4,0(t1)
    2b84:	09161e63          	bne	a2,a7,2c20 <fatfs_lfn_create_sfn+0x16c>
    2b88:	00c10793          	addi	a5,sp,12
    2b8c:	00800693          	li	a3,8
    2b90:	01900513          	li	a0,25
    2b94:	00b00593          	li	a1,11
    2b98:	0007c703          	lbu	a4,0(a5)
    2b9c:	f9f70613          	addi	a2,a4,-97
    2ba0:	0ff67613          	zext.b	a2,a2
    2ba4:	00c56663          	bltu	a0,a2,2bb0 <fatfs_lfn_create_sfn+0xfc>
    2ba8:	fe070713          	addi	a4,a4,-32
    2bac:	0ff77713          	zext.b	a4,a4
    2bb0:	00d48633          	add	a2,s1,a3
    2bb4:	00e60023          	sb	a4,0(a2)
    2bb8:	00168693          	addi	a3,a3,1
    2bbc:	00178793          	addi	a5,a5,1
    2bc0:	fcb69ce3          	bne	a3,a1,2b98 <fatfs_lfn_create_sfn+0xe4>
    2bc4:	00100513          	li	a0,1
    2bc8:	02c12083          	lw	ra,44(sp)
    2bcc:	02812403          	lw	s0,40(sp)
    2bd0:	02412483          	lw	s1,36(sp)
    2bd4:	02012903          	lw	s2,32(sp)
    2bd8:	01c12983          	lw	s3,28(sp)
    2bdc:	03010113          	addi	sp,sp,48
    2be0:	00008067          	ret
    2be4:	00e406b3          	add	a3,s0,a4
    2be8:	0006c683          	lbu	a3,0(a3)
    2bec:	01369463          	bne	a3,s3,2bf4 <fatfs_lfn_create_sfn+0x140>
    2bf0:	00070793          	mv	a5,a4
    2bf4:	00170713          	addi	a4,a4,1
    2bf8:	f29ff06f          	j	2b20 <fatfs_lfn_create_sfn+0x6c>
    2bfc:	01275863          	bge	a4,s2,2c0c <fatfs_lfn_create_sfn+0x158>
    2c00:	00e405b3          	add	a1,s0,a4
    2c04:	0005c583          	lbu	a1,0(a1)
    2c08:	00b68023          	sb	a1,0(a3)
    2c0c:	00170713          	addi	a4,a4,1
    2c10:	00168693          	addi	a3,a3,1
    2c14:	f25ff06f          	j	2b38 <fatfs_lfn_create_sfn+0x84>
    2c18:	00090793          	mv	a5,s2
    2c1c:	f21ff06f          	j	2b3c <fatfs_lfn_create_sfn+0x88>
    2c20:	00168693          	addi	a3,a3,1
    2c24:	f29ff06f          	j	2b4c <fatfs_lfn_create_sfn+0x98>
    2c28:	00000513          	li	a0,0
    2c2c:	f9dff06f          	j	2bc8 <fatfs_lfn_create_sfn+0x114>

00002c30 <fatfs_lfn_generate_tail>:
    2c30:	000187b7          	lui	a5,0x18
    2c34:	69f78793          	addi	a5,a5,1695 # 1869f <__stacktop+0x869f>
    2c38:	16c7e463          	bltu	a5,a2,2da0 <fatfs_lfn_generate_tail+0x170>
    2c3c:	fa010113          	addi	sp,sp,-96
    2c40:	04812c23          	sw	s0,88(sp)
    2c44:	04912a23          	sw	s1,84(sp)
    2c48:	03712e23          	sw	s7,60(sp)
    2c4c:	00060413          	mv	s0,a2
    2c50:	00058b93          	mv	s7,a1
    2c54:	00c00613          	li	a2,12
    2c58:	00000593          	li	a1,0
    2c5c:	00050493          	mv	s1,a0
    2c60:	00410513          	addi	a0,sp,4
    2c64:	04112e23          	sw	ra,92(sp)
    2c68:	05312623          	sw	s3,76(sp)
    2c6c:	05412423          	sw	s4,72(sp)
    2c70:	05612023          	sw	s6,64(sp)
    2c74:	05212823          	sw	s2,80(sp)
    2c78:	05512223          	sw	s5,68(sp)
    2c7c:	fffff097          	auipc	ra,0xfffff
    2c80:	dec080e7          	jalr	-532(ra) # 1a68 <memset>
    2c84:	000055b7          	lui	a1,0x5
    2c88:	07e00793          	li	a5,126
    2c8c:	01100613          	li	a2,17
    2c90:	5fc58593          	addi	a1,a1,1532 # 55fc <LEDS+0x88>
    2c94:	01c10513          	addi	a0,sp,28
    2c98:	01010993          	addi	s3,sp,16
    2c9c:	00f10223          	sb	a5,4(sp)
    2ca0:	00098a13          	mv	s4,s3
    2ca4:	fffff097          	auipc	ra,0xfffff
    2ca8:	de0080e7          	jalr	-544(ra) # 1a84 <memcpy>
    2cac:	00900b13          	li	s6,9
    2cb0:	00a00593          	li	a1,10
    2cb4:	00040513          	mv	a0,s0
    2cb8:	fffff097          	auipc	ra,0xfffff
    2cbc:	d4c080e7          	jalr	-692(ra) # 1a04 <__umodsi3>
    2cc0:	03050793          	addi	a5,a0,48
    2cc4:	00278533          	add	a0,a5,sp
    2cc8:	fec54783          	lbu	a5,-20(a0)
    2ccc:	00098913          	mv	s2,s3
    2cd0:	00040513          	mv	a0,s0
    2cd4:	00a00593          	li	a1,10
    2cd8:	00f98023          	sb	a5,0(s3)
    2cdc:	00040a93          	mv	s5,s0
    2ce0:	fffff097          	auipc	ra,0xfffff
    2ce4:	cdc080e7          	jalr	-804(ra) # 19bc <__udivsi3>
    2ce8:	00198993          	addi	s3,s3,1
    2cec:	00050413          	mv	s0,a0
    2cf0:	fd5b60e3          	bltu	s6,s5,2cb0 <fatfs_lfn_generate_tail+0x80>
    2cf4:	00098023          	sb	zero,0(s3)
    2cf8:	00410713          	addi	a4,sp,4
    2cfc:	00090793          	mv	a5,s2
    2d00:	0947f663          	bgeu	a5,s4,2d8c <fatfs_lfn_generate_tail+0x15c>
    2d04:	00f10713          	addi	a4,sp,15
    2d08:	00000793          	li	a5,0
    2d0c:	00e96663          	bltu	s2,a4,2d18 <fatfs_lfn_generate_tail+0xe8>
    2d10:	41490933          	sub	s2,s2,s4
    2d14:	00190793          	addi	a5,s2,1
    2d18:	03078793          	addi	a5,a5,48
    2d1c:	002787b3          	add	a5,a5,sp
    2d20:	000b8593          	mv	a1,s7
    2d24:	fc078aa3          	sb	zero,-43(a5)
    2d28:	00b00613          	li	a2,11
    2d2c:	00048513          	mv	a0,s1
    2d30:	fffff097          	auipc	ra,0xfffff
    2d34:	d54080e7          	jalr	-684(ra) # 1a84 <memcpy>
    2d38:	00410513          	addi	a0,sp,4
    2d3c:	fffff097          	auipc	ra,0xfffff
    2d40:	d6c080e7          	jalr	-660(ra) # 1aa8 <strlen>
    2d44:	40a484b3          	sub	s1,s1,a0
    2d48:	00050613          	mv	a2,a0
    2d4c:	00410593          	addi	a1,sp,4
    2d50:	00848513          	addi	a0,s1,8
    2d54:	fffff097          	auipc	ra,0xfffff
    2d58:	d30080e7          	jalr	-720(ra) # 1a84 <memcpy>
    2d5c:	05c12083          	lw	ra,92(sp)
    2d60:	05812403          	lw	s0,88(sp)
    2d64:	05412483          	lw	s1,84(sp)
    2d68:	05012903          	lw	s2,80(sp)
    2d6c:	04c12983          	lw	s3,76(sp)
    2d70:	04812a03          	lw	s4,72(sp)
    2d74:	04412a83          	lw	s5,68(sp)
    2d78:	04012b03          	lw	s6,64(sp)
    2d7c:	03c12b83          	lw	s7,60(sp)
    2d80:	00100513          	li	a0,1
    2d84:	06010113          	addi	sp,sp,96
    2d88:	00008067          	ret
    2d8c:	0007c683          	lbu	a3,0(a5)
    2d90:	00170713          	addi	a4,a4,1
    2d94:	fff78793          	addi	a5,a5,-1
    2d98:	00d70023          	sb	a3,0(a4)
    2d9c:	f65ff06f          	j	2d00 <fatfs_lfn_generate_tail+0xd0>
    2da0:	00000513          	li	a0,0
    2da4:	00008067          	ret

00002da8 <fatfs_total_path_levels>:
    2da8:	fff00793          	li	a5,-1
    2dac:	06050263          	beqz	a0,2e10 <fatfs_total_path_levels+0x68>
    2db0:	00054703          	lbu	a4,0(a0)
    2db4:	02f00793          	li	a5,47
    2db8:	00f71863          	bne	a4,a5,2dc8 <fatfs_total_path_levels+0x20>
    2dbc:	00150513          	addi	a0,a0,1
    2dc0:	00000793          	li	a5,0
    2dc4:	0400006f          	j	2e04 <fatfs_total_path_levels+0x5c>
    2dc8:	00154703          	lbu	a4,1(a0)
    2dcc:	03a00793          	li	a5,58
    2dd0:	00f70a63          	beq	a4,a5,2de4 <fatfs_total_path_levels+0x3c>
    2dd4:	00254683          	lbu	a3,2(a0)
    2dd8:	05c00713          	li	a4,92
    2ddc:	fff00793          	li	a5,-1
    2de0:	02e69863          	bne	a3,a4,2e10 <fatfs_total_path_levels+0x68>
    2de4:	00350513          	addi	a0,a0,3
    2de8:	05c00713          	li	a4,92
    2dec:	fd5ff06f          	j	2dc0 <fatfs_total_path_levels+0x18>
    2df0:	00150513          	addi	a0,a0,1
    2df4:	00e68663          	beq	a3,a4,2e00 <fatfs_total_path_levels+0x58>
    2df8:	00054683          	lbu	a3,0(a0)
    2dfc:	fe069ae3          	bnez	a3,2df0 <fatfs_total_path_levels+0x48>
    2e00:	00178793          	addi	a5,a5,1
    2e04:	00054683          	lbu	a3,0(a0)
    2e08:	fe0698e3          	bnez	a3,2df8 <fatfs_total_path_levels+0x50>
    2e0c:	fff78793          	addi	a5,a5,-1
    2e10:	00078513          	mv	a0,a5
    2e14:	00008067          	ret

00002e18 <fatfs_get_substring>:
    2e18:	0cd05e63          	blez	a3,2ef4 <fatfs_get_substring+0xdc>
    2e1c:	0c050c63          	beqz	a0,2ef4 <fatfs_get_substring+0xdc>
    2e20:	fe010113          	addi	sp,sp,-32
    2e24:	00812c23          	sw	s0,24(sp)
    2e28:	00112e23          	sw	ra,28(sp)
    2e2c:	00912a23          	sw	s1,20(sp)
    2e30:	00054483          	lbu	s1,0(a0)
    2e34:	02f00793          	li	a5,47
    2e38:	00150413          	addi	s0,a0,1
    2e3c:	02f48463          	beq	s1,a5,2e64 <fatfs_get_substring+0x4c>
    2e40:	00154703          	lbu	a4,1(a0)
    2e44:	03a00793          	li	a5,58
    2e48:	00f70a63          	beq	a4,a5,2e5c <fatfs_get_substring+0x44>
    2e4c:	00254803          	lbu	a6,2(a0)
    2e50:	05c00713          	li	a4,92
    2e54:	fff00793          	li	a5,-1
    2e58:	04e81c63          	bne	a6,a4,2eb0 <fatfs_get_substring+0x98>
    2e5c:	00350413          	addi	s0,a0,3
    2e60:	05c00493          	li	s1,92
    2e64:	00040513          	mv	a0,s0
    2e68:	00d12623          	sw	a3,12(sp)
    2e6c:	00c12423          	sw	a2,8(sp)
    2e70:	00b12223          	sw	a1,4(sp)
    2e74:	fffff097          	auipc	ra,0xfffff
    2e78:	c34080e7          	jalr	-972(ra) # 1aa8 <strlen>
    2e7c:	00c12683          	lw	a3,12(sp)
    2e80:	00412583          	lw	a1,4(sp)
    2e84:	00812603          	lw	a2,8(sp)
    2e88:	00000713          	li	a4,0
    2e8c:	00000813          	li	a6,0
    2e90:	00000793          	li	a5,0
    2e94:	fff68693          	addi	a3,a3,-1
    2e98:	00e608b3          	add	a7,a2,a4
    2e9c:	02a7c663          	blt	a5,a0,2ec8 <fatfs_get_substring+0xb0>
    2ea0:	00088023          	sb	zero,0(a7)
    2ea4:	00064783          	lbu	a5,0(a2)
    2ea8:	0017b793          	seqz	a5,a5
    2eac:	40f007b3          	neg	a5,a5
    2eb0:	01c12083          	lw	ra,28(sp)
    2eb4:	01812403          	lw	s0,24(sp)
    2eb8:	01412483          	lw	s1,20(sp)
    2ebc:	00078513          	mv	a0,a5
    2ec0:	02010113          	addi	sp,sp,32
    2ec4:	00008067          	ret
    2ec8:	00f40333          	add	t1,s0,a5
    2ecc:	00034303          	lbu	t1,0(t1)
    2ed0:	00931863          	bne	t1,s1,2ee0 <fatfs_get_substring+0xc8>
    2ed4:	00180813          	addi	a6,a6,1
    2ed8:	00178793          	addi	a5,a5,1
    2edc:	fbdff06f          	j	2e98 <fatfs_get_substring+0x80>
    2ee0:	feb81ce3          	bne	a6,a1,2ed8 <fatfs_get_substring+0xc0>
    2ee4:	fed75ae3          	bge	a4,a3,2ed8 <fatfs_get_substring+0xc0>
    2ee8:	00170713          	addi	a4,a4,1
    2eec:	00688023          	sb	t1,0(a7)
    2ef0:	fe9ff06f          	j	2ed8 <fatfs_get_substring+0xc0>
    2ef4:	fff00793          	li	a5,-1
    2ef8:	00078513          	mv	a0,a5
    2efc:	00008067          	ret

00002f00 <fatfs_split_path>:
    2f00:	fd010113          	addi	sp,sp,-48
    2f04:	02912223          	sw	s1,36(sp)
    2f08:	03212023          	sw	s2,32(sp)
    2f0c:	01312e23          	sw	s3,28(sp)
    2f10:	01412c23          	sw	s4,24(sp)
    2f14:	02112623          	sw	ra,44(sp)
    2f18:	02812423          	sw	s0,40(sp)
    2f1c:	01512a23          	sw	s5,20(sp)
    2f20:	00050993          	mv	s3,a0
    2f24:	00058493          	mv	s1,a1
    2f28:	00060913          	mv	s2,a2
    2f2c:	00068a13          	mv	s4,a3
    2f30:	00e12623          	sw	a4,12(sp)
    2f34:	00000097          	auipc	ra,0x0
    2f38:	e74080e7          	jalr	-396(ra) # 2da8 <fatfs_total_path_levels>
    2f3c:	fff00793          	li	a5,-1
    2f40:	02f51863          	bne	a0,a5,2f70 <fatfs_split_path+0x70>
    2f44:	fff00413          	li	s0,-1
    2f48:	02c12083          	lw	ra,44(sp)
    2f4c:	00040513          	mv	a0,s0
    2f50:	02812403          	lw	s0,40(sp)
    2f54:	02412483          	lw	s1,36(sp)
    2f58:	02012903          	lw	s2,32(sp)
    2f5c:	01c12983          	lw	s3,28(sp)
    2f60:	01812a03          	lw	s4,24(sp)
    2f64:	01412a83          	lw	s5,20(sp)
    2f68:	03010113          	addi	sp,sp,48
    2f6c:	00008067          	ret
    2f70:	00c12683          	lw	a3,12(sp)
    2f74:	00050593          	mv	a1,a0
    2f78:	00a12623          	sw	a0,12(sp)
    2f7c:	000a0613          	mv	a2,s4
    2f80:	00098513          	mv	a0,s3
    2f84:	00000097          	auipc	ra,0x0
    2f88:	e94080e7          	jalr	-364(ra) # 2e18 <fatfs_get_substring>
    2f8c:	00050413          	mv	s0,a0
    2f90:	fa051ae3          	bnez	a0,2f44 <fatfs_split_path+0x44>
    2f94:	00c12583          	lw	a1,12(sp)
    2f98:	00059663          	bnez	a1,2fa4 <fatfs_split_path+0xa4>
    2f9c:	00048023          	sb	zero,0(s1)
    2fa0:	fa9ff06f          	j	2f48 <fatfs_split_path+0x48>
    2fa4:	00098513          	mv	a0,s3
    2fa8:	fffff097          	auipc	ra,0xfffff
    2fac:	b00080e7          	jalr	-1280(ra) # 1aa8 <strlen>
    2fb0:	00050a93          	mv	s5,a0
    2fb4:	000a0513          	mv	a0,s4
    2fb8:	fffff097          	auipc	ra,0xfffff
    2fbc:	af0080e7          	jalr	-1296(ra) # 1aa8 <strlen>
    2fc0:	40aa8633          	sub	a2,s5,a0
    2fc4:	00c95463          	bge	s2,a2,2fcc <fatfs_split_path+0xcc>
    2fc8:	00090613          	mv	a2,s2
    2fcc:	00048513          	mv	a0,s1
    2fd0:	00098593          	mv	a1,s3
    2fd4:	00c12623          	sw	a2,12(sp)
    2fd8:	fffff097          	auipc	ra,0xfffff
    2fdc:	aac080e7          	jalr	-1364(ra) # 1a84 <memcpy>
    2fe0:	00c12603          	lw	a2,12(sp)
    2fe4:	00c484b3          	add	s1,s1,a2
    2fe8:	fe048fa3          	sb	zero,-1(s1)
    2fec:	f5dff06f          	j	2f48 <fatfs_split_path+0x48>

00002ff0 <fatfs_compare_names>:
    2ff0:	fd010113          	addi	sp,sp,-48
    2ff4:	02112623          	sw	ra,44(sp)
    2ff8:	03212023          	sw	s2,32(sp)
    2ffc:	01312e23          	sw	s3,28(sp)
    3000:	01412c23          	sw	s4,24(sp)
    3004:	01512a23          	sw	s5,20(sp)
    3008:	00058a13          	mv	s4,a1
    300c:	02812423          	sw	s0,40(sp)
    3010:	02912223          	sw	s1,36(sp)
    3014:	01612823          	sw	s6,16(sp)
    3018:	01712623          	sw	s7,12(sp)
    301c:	01812423          	sw	s8,8(sp)
    3020:	00050a93          	mv	s5,a0
    3024:	fffff097          	auipc	ra,0xfffff
    3028:	1c4080e7          	jalr	452(ra) # 21e8 <FileString_GetExtension>
    302c:	00050993          	mv	s3,a0
    3030:	000a0513          	mv	a0,s4
    3034:	fffff097          	auipc	ra,0xfffff
    3038:	1b4080e7          	jalr	436(ra) # 21e8 <FileString_GetExtension>
    303c:	fff00793          	li	a5,-1
    3040:	00050913          	mv	s2,a0
    3044:	02f99e63          	bne	s3,a5,3080 <fatfs_compare_names+0x90>
    3048:	0f350063          	beq	a0,s3,3128 <fatfs_compare_names+0x138>
    304c:	00000513          	li	a0,0
    3050:	02c12083          	lw	ra,44(sp)
    3054:	02812403          	lw	s0,40(sp)
    3058:	02412483          	lw	s1,36(sp)
    305c:	02012903          	lw	s2,32(sp)
    3060:	01c12983          	lw	s3,28(sp)
    3064:	01812a03          	lw	s4,24(sp)
    3068:	01412a83          	lw	s5,20(sp)
    306c:	01012b03          	lw	s6,16(sp)
    3070:	00c12b83          	lw	s7,12(sp)
    3074:	00812c03          	lw	s8,8(sp)
    3078:	03010113          	addi	sp,sp,48
    307c:	00008067          	ret
    3080:	fcf506e3          	beq	a0,a5,304c <fatfs_compare_names+0x5c>
    3084:	00198793          	addi	a5,s3,1
    3088:	00fa8b33          	add	s6,s5,a5
    308c:	00050413          	mv	s0,a0
    3090:	00150793          	addi	a5,a0,1
    3094:	000b0513          	mv	a0,s6
    3098:	00fa0bb3          	add	s7,s4,a5
    309c:	fffff097          	auipc	ra,0xfffff
    30a0:	a0c080e7          	jalr	-1524(ra) # 1aa8 <strlen>
    30a4:	00050c13          	mv	s8,a0
    30a8:	000b8513          	mv	a0,s7
    30ac:	00098493          	mv	s1,s3
    30b0:	fffff097          	auipc	ra,0xfffff
    30b4:	9f8080e7          	jalr	-1544(ra) # 1aa8 <strlen>
    30b8:	f8ac1ae3          	bne	s8,a0,304c <fatfs_compare_names+0x5c>
    30bc:	000b0513          	mv	a0,s6
    30c0:	fffff097          	auipc	ra,0xfffff
    30c4:	9e8080e7          	jalr	-1560(ra) # 1aa8 <strlen>
    30c8:	00050613          	mv	a2,a0
    30cc:	000b8593          	mv	a1,s7
    30d0:	000b0513          	mv	a0,s6
    30d4:	fffff097          	auipc	ra,0xfffff
    30d8:	0a4080e7          	jalr	164(ra) # 2178 <FileString_StrCmpNoCase>
    30dc:	f60518e3          	bnez	a0,304c <fatfs_compare_names+0x5c>
    30e0:	fff48793          	addi	a5,s1,-1
    30e4:	00fa87b3          	add	a5,s5,a5
    30e8:	41378733          	sub	a4,a5,s3
    30ec:	02000693          	li	a3,32
    30f0:	06e79263          	bne	a5,a4,3154 <fatfs_compare_names+0x164>
    30f4:	fff40793          	addi	a5,s0,-1
    30f8:	00fa07b3          	add	a5,s4,a5
    30fc:	41278733          	sub	a4,a5,s2
    3100:	02000693          	li	a3,32
    3104:	06e79263          	bne	a5,a4,3168 <fatfs_compare_names+0x178>
    3108:	f53912e3          	bne	s2,s3,304c <fatfs_compare_names+0x5c>
    310c:	00090613          	mv	a2,s2
    3110:	000a0593          	mv	a1,s4
    3114:	000a8513          	mv	a0,s5
    3118:	fffff097          	auipc	ra,0xfffff
    311c:	060080e7          	jalr	96(ra) # 2178 <FileString_StrCmpNoCase>
    3120:	00153513          	seqz	a0,a0
    3124:	f2dff06f          	j	3050 <fatfs_compare_names+0x60>
    3128:	000a8513          	mv	a0,s5
    312c:	fffff097          	auipc	ra,0xfffff
    3130:	97c080e7          	jalr	-1668(ra) # 1aa8 <strlen>
    3134:	00050493          	mv	s1,a0
    3138:	00050993          	mv	s3,a0
    313c:	000a0513          	mv	a0,s4
    3140:	fffff097          	auipc	ra,0xfffff
    3144:	968080e7          	jalr	-1688(ra) # 1aa8 <strlen>
    3148:	00050413          	mv	s0,a0
    314c:	00050913          	mv	s2,a0
    3150:	f91ff06f          	j	30e0 <fatfs_compare_names+0xf0>
    3154:	0007c603          	lbu	a2,0(a5)
    3158:	f8d61ee3          	bne	a2,a3,30f4 <fatfs_compare_names+0x104>
    315c:	415789b3          	sub	s3,a5,s5
    3160:	fff78793          	addi	a5,a5,-1
    3164:	f8dff06f          	j	30f0 <fatfs_compare_names+0x100>
    3168:	0007c603          	lbu	a2,0(a5)
    316c:	f8d61ee3          	bne	a2,a3,3108 <fatfs_compare_names+0x118>
    3170:	41478933          	sub	s2,a5,s4
    3174:	fff78793          	addi	a5,a5,-1
    3178:	f8dff06f          	j	3104 <fatfs_compare_names+0x114>

0000317c <_check_file_open>:
    317c:	fe010113          	addi	sp,sp,-32
    3180:	000067b7          	lui	a5,0x6
    3184:	00812c23          	sw	s0,24(sp)
    3188:	8947a403          	lw	s0,-1900(a5) # 5894 <_open_file_list>
    318c:	00912a23          	sw	s1,20(sp)
    3190:	00112e23          	sw	ra,28(sp)
    3194:	01212823          	sw	s2,16(sp)
    3198:	01312623          	sw	s3,12(sp)
    319c:	00050493          	mv	s1,a0
    31a0:	00041663          	bnez	s0,31ac <_check_file_open+0x30>
    31a4:	00000513          	li	a0,0
    31a8:	03c0006f          	j	31e4 <_check_file_open+0x68>
    31ac:	bc440793          	addi	a5,s0,-1084
    31b0:	00f49663          	bne	s1,a5,31bc <_check_file_open+0x40>
    31b4:	00442403          	lw	s0,4(s0)
    31b8:	fe9ff06f          	j	31a0 <_check_file_open+0x24>
    31bc:	01448593          	addi	a1,s1,20
    31c0:	bd840513          	addi	a0,s0,-1064
    31c4:	00000097          	auipc	ra,0x0
    31c8:	e2c080e7          	jalr	-468(ra) # 2ff0 <fatfs_compare_names>
    31cc:	fe0504e3          	beqz	a0,31b4 <_check_file_open+0x38>
    31d0:	11848593          	addi	a1,s1,280
    31d4:	cdc40513          	addi	a0,s0,-804
    31d8:	00000097          	auipc	ra,0x0
    31dc:	e18080e7          	jalr	-488(ra) # 2ff0 <fatfs_compare_names>
    31e0:	fc050ae3          	beqz	a0,31b4 <_check_file_open+0x38>
    31e4:	01c12083          	lw	ra,28(sp)
    31e8:	01812403          	lw	s0,24(sp)
    31ec:	01412483          	lw	s1,20(sp)
    31f0:	01012903          	lw	s2,16(sp)
    31f4:	00c12983          	lw	s3,12(sp)
    31f8:	02010113          	addi	sp,sp,32
    31fc:	00008067          	ret

00003200 <fatfs_get_sfn_display_name>:
    3200:	00000713          	li	a4,0
    3204:	02000613          	li	a2,32
    3208:	01900813          	li	a6,25
    320c:	0005c783          	lbu	a5,0(a1)
    3210:	00078663          	beqz	a5,321c <fatfs_get_sfn_display_name+0x1c>
    3214:	ff470693          	addi	a3,a4,-12
    3218:	00069863          	bnez	a3,3228 <fatfs_get_sfn_display_name+0x28>
    321c:	00050023          	sb	zero,0(a0)
    3220:	00100513          	li	a0,1
    3224:	00008067          	ret
    3228:	00158593          	addi	a1,a1,1
    322c:	fec780e3          	beq	a5,a2,320c <fatfs_get_sfn_display_name+0xc>
    3230:	fbf78693          	addi	a3,a5,-65
    3234:	0ff6f693          	zext.b	a3,a3
    3238:	00d86663          	bltu	a6,a3,3244 <fatfs_get_sfn_display_name+0x44>
    323c:	02078793          	addi	a5,a5,32
    3240:	0ff7f793          	zext.b	a5,a5
    3244:	00f50023          	sb	a5,0(a0)
    3248:	00170713          	addi	a4,a4,1
    324c:	00150513          	addi	a0,a0,1
    3250:	fbdff06f          	j	320c <fatfs_get_sfn_display_name+0xc>

00003254 <fatfs_fat_init>:
    3254:	ff010113          	addi	sp,sp,-16
    3258:	00812423          	sw	s0,8(sp)
    325c:	00912223          	sw	s1,4(sp)
    3260:	00112623          	sw	ra,12(sp)
    3264:	fff00793          	li	a5,-1
    3268:	25850493          	addi	s1,a0,600
    326c:	00050413          	mv	s0,a0
    3270:	44f52c23          	sw	a5,1112(a0)
    3274:	24052a23          	sw	zero,596(a0)
    3278:	44052e23          	sw	zero,1116(a0)
    327c:	20000613          	li	a2,512
    3280:	00048513          	mv	a0,s1
    3284:	00000593          	li	a1,0
    3288:	ffffe097          	auipc	ra,0xffffe
    328c:	7e0080e7          	jalr	2016(ra) # 1a68 <memset>
    3290:	25442783          	lw	a5,596(s0)
    3294:	00c12083          	lw	ra,12(sp)
    3298:	24942a23          	sw	s1,596(s0)
    329c:	46042023          	sw	zero,1120(s0)
    32a0:	46f42223          	sw	a5,1124(s0)
    32a4:	00812403          	lw	s0,8(sp)
    32a8:	00412483          	lw	s1,4(sp)
    32ac:	01010113          	addi	sp,sp,16
    32b0:	00008067          	ret

000032b4 <fatfs_init>:
    32b4:	fd010113          	addi	sp,sp,-48
    32b8:	02812423          	sw	s0,40(sp)
    32bc:	02112623          	sw	ra,44(sp)
    32c0:	02912223          	sw	s1,36(sp)
    32c4:	03212023          	sw	s2,32(sp)
    32c8:	01312e23          	sw	s3,28(sp)
    32cc:	fff00793          	li	a5,-1
    32d0:	24f52223          	sw	a5,580(a0)
    32d4:	24052423          	sw	zero,584(a0)
    32d8:	02052223          	sw	zero,36(a0)
    32dc:	00050413          	mv	s0,a0
    32e0:	00000097          	auipc	ra,0x0
    32e4:	f74080e7          	jalr	-140(ra) # 3254 <fatfs_fat_init>
    32e8:	03442783          	lw	a5,52(s0)
    32ec:	02079463          	bnez	a5,3314 <fatfs_init+0x60>
    32f0:	fff00713          	li	a4,-1
    32f4:	02c12083          	lw	ra,44(sp)
    32f8:	02812403          	lw	s0,40(sp)
    32fc:	02412483          	lw	s1,36(sp)
    3300:	02012903          	lw	s2,32(sp)
    3304:	01c12983          	lw	s3,28(sp)
    3308:	00070513          	mv	a0,a4
    330c:	03010113          	addi	sp,sp,48
    3310:	00008067          	ret
    3314:	04440593          	addi	a1,s0,68
    3318:	00100613          	li	a2,1
    331c:	00000513          	li	a0,0
    3320:	00b12623          	sw	a1,12(sp)
    3324:	000780e7          	jalr	a5
    3328:	fc0504e3          	beqz	a0,32f0 <fatfs_init+0x3c>
    332c:	24244703          	lbu	a4,578(s0)
    3330:	05500793          	li	a5,85
    3334:	00c12583          	lw	a1,12(sp)
    3338:	00f70663          	beq	a4,a5,3344 <fatfs_init+0x90>
    333c:	ffd00713          	li	a4,-3
    3340:	fb5ff06f          	j	32f4 <fatfs_init+0x40>
    3344:	24344703          	lbu	a4,579(s0)
    3348:	0aa00793          	li	a5,170
    334c:	fef718e3          	bne	a4,a5,333c <fatfs_init+0x88>
    3350:	20644783          	lbu	a5,518(s0)
    3354:	00600713          	li	a4,6
    3358:	02f76463          	bltu	a4,a5,3380 <fatfs_init+0xcc>
    335c:	00400713          	li	a4,4
    3360:	00f76663          	bltu	a4,a5,336c <fatfs_init+0xb8>
    3364:	00000513          	li	a0,0
    3368:	02078663          	beqz	a5,3394 <fatfs_init+0xe0>
    336c:	20c45503          	lhu	a0,524(s0)
    3370:	20a45783          	lhu	a5,522(s0)
    3374:	01051513          	slli	a0,a0,0x10
    3378:	00f56533          	or	a0,a0,a5
    337c:	0180006f          	j	3394 <fatfs_init+0xe0>
    3380:	00c00713          	li	a4,12
    3384:	12f76663          	bltu	a4,a5,34b0 <fatfs_init+0x1fc>
    3388:	00a00713          	li	a4,10
    338c:	00000513          	li	a0,0
    3390:	fcf76ee3          	bltu	a4,a5,336c <fatfs_init+0xb8>
    3394:	03442783          	lw	a5,52(s0)
    3398:	00a42e23          	sw	a0,28(s0)
    339c:	00100613          	li	a2,1
    33a0:	000780e7          	jalr	a5
    33a4:	f40506e3          	beqz	a0,32f0 <fatfs_init+0x3c>
    33a8:	05044783          	lbu	a5,80(s0)
    33ac:	04f44703          	lbu	a4,79(s0)
    33b0:	20000693          	li	a3,512
    33b4:	00879793          	slli	a5,a5,0x8
    33b8:	00e7e7b3          	or	a5,a5,a4
    33bc:	ffe00713          	li	a4,-2
    33c0:	f2d79ae3          	bne	a5,a3,32f4 <fatfs_init+0x40>
    33c4:	05644483          	lbu	s1,86(s0)
    33c8:	05544783          	lbu	a5,85(s0)
    33cc:	05144983          	lbu	s3,81(s0)
    33d0:	00849493          	slli	s1,s1,0x8
    33d4:	05a45583          	lhu	a1,90(s0)
    33d8:	00f4e4b3          	or	s1,s1,a5
    33dc:	01340023          	sb	s3,0(s0)
    33e0:	02941423          	sh	s1,40(s0)
    33e4:	05245903          	lhu	s2,82(s0)
    33e8:	05444503          	lbu	a0,84(s0)
    33ec:	00059463          	bnez	a1,33f4 <fatfs_init+0x140>
    33f0:	06842583          	lw	a1,104(s0)
    33f4:	07042783          	lw	a5,112(s0)
    33f8:	02b42023          	sw	a1,32(s0)
    33fc:	00549493          	slli	s1,s1,0x5
    3400:	00f42423          	sw	a5,8(s0)
    3404:	07445783          	lhu	a5,116(s0)
    3408:	1ff48493          	addi	s1,s1,511
    340c:	4094d493          	srai	s1,s1,0x9
    3410:	00f41c23          	sh	a5,24(s0)
    3414:	fffff097          	auipc	ra,0xfffff
    3418:	ccc080e7          	jalr	-820(ra) # 20e0 <__mulsi3>
    341c:	00a907b3          	add	a5,s2,a0
    3420:	00f42623          	sw	a5,12(s0)
    3424:	01c42783          	lw	a5,28(s0)
    3428:	24245703          	lhu	a4,578(s0)
    342c:	00942823          	sw	s1,16(s0)
    3430:	00f907b3          	add	a5,s2,a5
    3434:	00f42a23          	sw	a5,20(s0)
    3438:	00f507b3          	add	a5,a0,a5
    343c:	00f42223          	sw	a5,4(s0)
    3440:	0000b7b7          	lui	a5,0xb
    3444:	a5578793          	addi	a5,a5,-1451 # aa55 <_files+0x981>
    3448:	eef71ae3          	bne	a4,a5,333c <fatfs_init+0x88>
    344c:	05844783          	lbu	a5,88(s0)
    3450:	05744703          	lbu	a4,87(s0)
    3454:	00879793          	slli	a5,a5,0x8
    3458:	00e7e7b3          	or	a5,a5,a4
    345c:	00079463          	bnez	a5,3464 <fatfs_init+0x1b0>
    3460:	06442783          	lw	a5,100(s0)
    3464:	ffb00713          	li	a4,-5
    3468:	e80986e3          	beqz	s3,32f4 <fatfs_init+0x40>
    346c:	00990933          	add	s2,s2,s1
    3470:	00a90533          	add	a0,s2,a0
    3474:	40a78533          	sub	a0,a5,a0
    3478:	00098593          	mv	a1,s3
    347c:	ffffe097          	auipc	ra,0xffffe
    3480:	540080e7          	jalr	1344(ra) # 19bc <__udivsi3>
    3484:	000017b7          	lui	a5,0x1
    3488:	ff478793          	addi	a5,a5,-12 # ff4 <main+0xb5c>
    348c:	ffb00713          	li	a4,-5
    3490:	e6a7f2e3          	bgeu	a5,a0,32f4 <fatfs_init+0x40>
    3494:	000107b7          	lui	a5,0x10
    3498:	ff478793          	addi	a5,a5,-12 # fff4 <_files+0x5f20>
    349c:	02a7e663          	bltu	a5,a0,34c8 <fatfs_init+0x214>
    34a0:	00042423          	sw	zero,8(s0)
    34a4:	02042823          	sw	zero,48(s0)
    34a8:	00000713          	li	a4,0
    34ac:	e49ff06f          	j	32f4 <fatfs_init+0x40>
    34b0:	ff278793          	addi	a5,a5,-14
    34b4:	0ff7f793          	zext.b	a5,a5
    34b8:	00100713          	li	a4,1
    34bc:	00000513          	li	a0,0
    34c0:	eaf776e3          	bgeu	a4,a5,336c <fatfs_init+0xb8>
    34c4:	ed1ff06f          	j	3394 <fatfs_init+0xe0>
    34c8:	00100793          	li	a5,1
    34cc:	02f42823          	sw	a5,48(s0)
    34d0:	fd9ff06f          	j	34a8 <fatfs_init+0x1f4>

000034d4 <fl_attach_media>:
    34d4:	000067b7          	lui	a5,0x6
    34d8:	8a07a783          	lw	a5,-1888(a5) # 58a0 <_filelib_init>
    34dc:	fe010113          	addi	sp,sp,-32
    34e0:	00812c23          	sw	s0,24(sp)
    34e4:	00112e23          	sw	ra,28(sp)
    34e8:	00050413          	mv	s0,a0
    34ec:	00079a63          	bnez	a5,3500 <fl_attach_media+0x2c>
    34f0:	00b12623          	sw	a1,12(sp)
    34f4:	fffff097          	auipc	ra,0xfffff
    34f8:	080080e7          	jalr	128(ra) # 2574 <fl_init>
    34fc:	00c12583          	lw	a1,12(sp)
    3500:	0000a7b7          	lui	a5,0xa
    3504:	c6c78513          	addi	a0,a5,-916 # 9c6c <_fs>
    3508:	02b52c23          	sw	a1,56(a0)
    350c:	02852a23          	sw	s0,52(a0)
    3510:	00000097          	auipc	ra,0x0
    3514:	da4080e7          	jalr	-604(ra) # 32b4 <fatfs_init>
    3518:	00050593          	mv	a1,a0
    351c:	02050863          	beqz	a0,354c <fl_attach_media+0x78>
    3520:	00a12623          	sw	a0,12(sp)
    3524:	00005537          	lui	a0,0x5
    3528:	61050513          	addi	a0,a0,1552 # 5610 <LEDS+0x9c>
    352c:	fffff097          	auipc	ra,0xfffff
    3530:	a78080e7          	jalr	-1416(ra) # 1fa4 <printf>
    3534:	00c12583          	lw	a1,12(sp)
    3538:	01c12083          	lw	ra,28(sp)
    353c:	01812403          	lw	s0,24(sp)
    3540:	00058513          	mv	a0,a1
    3544:	02010113          	addi	sp,sp,32
    3548:	00008067          	ret
    354c:	000067b7          	lui	a5,0x6
    3550:	00100713          	li	a4,1
    3554:	88e7ae23          	sw	a4,-1892(a5) # 589c <_filelib_valid>
    3558:	fe1ff06f          	j	3538 <fl_attach_media+0x64>

0000355c <fatfs_fat_purge>:
    355c:	25452583          	lw	a1,596(a0)
    3560:	fe010113          	addi	sp,sp,-32
    3564:	00812c23          	sw	s0,24(sp)
    3568:	00112e23          	sw	ra,28(sp)
    356c:	00050413          	mv	s0,a0
    3570:	00059663          	bnez	a1,357c <fatfs_fat_purge+0x20>
    3574:	00100513          	li	a0,1
    3578:	02c0006f          	j	35a4 <fatfs_fat_purge+0x48>
    357c:	2045a783          	lw	a5,516(a1)
    3580:	00079663          	bnez	a5,358c <fatfs_fat_purge+0x30>
    3584:	20c5a583          	lw	a1,524(a1)
    3588:	fe9ff06f          	j	3570 <fatfs_fat_purge+0x14>
    358c:	00040513          	mv	a0,s0
    3590:	00b12623          	sw	a1,12(sp)
    3594:	fffff097          	auipc	ra,0xfffff
    3598:	c80080e7          	jalr	-896(ra) # 2214 <fatfs_fat_writeback>
    359c:	00c12583          	lw	a1,12(sp)
    35a0:	fe0512e3          	bnez	a0,3584 <fatfs_fat_purge+0x28>
    35a4:	01c12083          	lw	ra,28(sp)
    35a8:	01812403          	lw	s0,24(sp)
    35ac:	02010113          	addi	sp,sp,32
    35b0:	00008067          	ret

000035b4 <fatfs_find_next_cluster>:
    35b4:	ff010113          	addi	sp,sp,-16
    35b8:	00812423          	sw	s0,8(sp)
    35bc:	01212023          	sw	s2,0(sp)
    35c0:	00112623          	sw	ra,12(sp)
    35c4:	00912223          	sw	s1,4(sp)
    35c8:	00050913          	mv	s2,a0
    35cc:	00200413          	li	s0,2
    35d0:	00058463          	beqz	a1,35d8 <fatfs_find_next_cluster+0x24>
    35d4:	00058413          	mv	s0,a1
    35d8:	03092783          	lw	a5,48(s2)
    35dc:	00745493          	srli	s1,s0,0x7
    35e0:	00079463          	bnez	a5,35e8 <fatfs_find_next_cluster+0x34>
    35e4:	00845493          	srli	s1,s0,0x8
    35e8:	01492583          	lw	a1,20(s2)
    35ec:	00090513          	mv	a0,s2
    35f0:	00b485b3          	add	a1,s1,a1
    35f4:	fffff097          	auipc	ra,0xfffff
    35f8:	ca4080e7          	jalr	-860(ra) # 2298 <fatfs_fat_read_sector>
    35fc:	00050793          	mv	a5,a0
    3600:	fff00513          	li	a0,-1
    3604:	04078863          	beqz	a5,3654 <fatfs_find_next_cluster+0xa0>
    3608:	03092703          	lw	a4,48(s2)
    360c:	2087a783          	lw	a5,520(a5)
    3610:	04071e63          	bnez	a4,366c <fatfs_find_next_cluster+0xb8>
    3614:	00849493          	slli	s1,s1,0x8
    3618:	40940433          	sub	s0,s0,s1
    361c:	00141413          	slli	s0,s0,0x1
    3620:	01041413          	slli	s0,s0,0x10
    3624:	01045413          	srli	s0,s0,0x10
    3628:	008787b3          	add	a5,a5,s0
    362c:	0017c503          	lbu	a0,1(a5)
    3630:	0007c783          	lbu	a5,0(a5)
    3634:	00851513          	slli	a0,a0,0x8
    3638:	00f50533          	add	a0,a0,a5
    363c:	ffff07b7          	lui	a5,0xffff0
    3640:	00878793          	addi	a5,a5,8 # ffff0008 <__stacktop+0xfffe0008>
    3644:	00f507b3          	add	a5,a0,a5
    3648:	00700713          	li	a4,7
    364c:	00f76463          	bltu	a4,a5,3654 <fatfs_find_next_cluster+0xa0>
    3650:	fff00513          	li	a0,-1
    3654:	00c12083          	lw	ra,12(sp)
    3658:	00812403          	lw	s0,8(sp)
    365c:	00412483          	lw	s1,4(sp)
    3660:	00012903          	lw	s2,0(sp)
    3664:	01010113          	addi	sp,sp,16
    3668:	00008067          	ret
    366c:	00749493          	slli	s1,s1,0x7
    3670:	40940433          	sub	s0,s0,s1
    3674:	00241413          	slli	s0,s0,0x2
    3678:	01041413          	slli	s0,s0,0x10
    367c:	01045413          	srli	s0,s0,0x10
    3680:	008787b3          	add	a5,a5,s0
    3684:	0037c503          	lbu	a0,3(a5)
    3688:	0027c703          	lbu	a4,2(a5)
    368c:	01851513          	slli	a0,a0,0x18
    3690:	01071713          	slli	a4,a4,0x10
    3694:	00e50533          	add	a0,a0,a4
    3698:	0007c703          	lbu	a4,0(a5)
    369c:	0017c783          	lbu	a5,1(a5)
    36a0:	00e50533          	add	a0,a0,a4
    36a4:	00879793          	slli	a5,a5,0x8
    36a8:	00f50533          	add	a0,a0,a5
    36ac:	00451513          	slli	a0,a0,0x4
    36b0:	00455513          	srli	a0,a0,0x4
    36b4:	f00007b7          	lui	a5,0xf0000
    36b8:	f89ff06f          	j	3640 <fatfs_find_next_cluster+0x8c>

000036bc <fatfs_sector_reader>:
    36bc:	03052783          	lw	a5,48(a0)
    36c0:	fe010113          	addi	sp,sp,-32
    36c4:	00812c23          	sw	s0,24(sp)
    36c8:	01212823          	sw	s2,16(sp)
    36cc:	01512223          	sw	s5,4(sp)
    36d0:	00112e23          	sw	ra,28(sp)
    36d4:	00912a23          	sw	s1,20(sp)
    36d8:	01312623          	sw	s3,12(sp)
    36dc:	01412423          	sw	s4,8(sp)
    36e0:	01612023          	sw	s6,0(sp)
    36e4:	00f5e7b3          	or	a5,a1,a5
    36e8:	00050413          	mv	s0,a0
    36ec:	00060913          	mv	s2,a2
    36f0:	00068a93          	mv	s5,a3
    36f4:	08079063          	bnez	a5,3774 <fatfs_sector_reader+0xb8>
    36f8:	01052783          	lw	a5,16(a0)
    36fc:	02f66863          	bltu	a2,a5,372c <fatfs_sector_reader+0x70>
    3700:	00000513          	li	a0,0
    3704:	01c12083          	lw	ra,28(sp)
    3708:	01812403          	lw	s0,24(sp)
    370c:	01412483          	lw	s1,20(sp)
    3710:	01012903          	lw	s2,16(sp)
    3714:	00c12983          	lw	s3,12(sp)
    3718:	00812a03          	lw	s4,8(sp)
    371c:	00412a83          	lw	s5,4(sp)
    3720:	00012b03          	lw	s6,0(sp)
    3724:	02010113          	addi	sp,sp,32
    3728:	00008067          	ret
    372c:	01c52503          	lw	a0,28(a0)
    3730:	00c42783          	lw	a5,12(s0)
    3734:	00f50533          	add	a0,a0,a5
    3738:	01250533          	add	a0,a0,s2
    373c:	0a0a8663          	beqz	s5,37e8 <fatfs_sector_reader+0x12c>
    3740:	03442783          	lw	a5,52(s0)
    3744:	00100613          	li	a2,1
    3748:	000a8593          	mv	a1,s5
    374c:	01812403          	lw	s0,24(sp)
    3750:	01c12083          	lw	ra,28(sp)
    3754:	01412483          	lw	s1,20(sp)
    3758:	01012903          	lw	s2,16(sp)
    375c:	00c12983          	lw	s3,12(sp)
    3760:	00812a03          	lw	s4,8(sp)
    3764:	00412a83          	lw	s5,4(sp)
    3768:	00012b03          	lw	s6,0(sp)
    376c:	02010113          	addi	sp,sp,32
    3770:	00078067          	jr	a5 # f0000000 <__stacktop+0xefff0000>
    3774:	00054783          	lbu	a5,0(a0)
    3778:	00058493          	mv	s1,a1
    377c:	00060513          	mv	a0,a2
    3780:	00078593          	mv	a1,a5
    3784:	00078a13          	mv	s4,a5
    3788:	ffffe097          	auipc	ra,0xffffe
    378c:	234080e7          	jalr	564(ra) # 19bc <__udivsi3>
    3790:	00050b13          	mv	s6,a0
    3794:	00000993          	li	s3,0
    3798:	03699a63          	bne	s3,s6,37cc <fatfs_sector_reader+0x110>
    379c:	fff00793          	li	a5,-1
    37a0:	f6f480e3          	beq	s1,a5,3700 <fatfs_sector_reader+0x44>
    37a4:	000a0593          	mv	a1,s4
    37a8:	00090513          	mv	a0,s2
    37ac:	ffffe097          	auipc	ra,0xffffe
    37b0:	258080e7          	jalr	600(ra) # 1a04 <__umodsi3>
    37b4:	00050913          	mv	s2,a0
    37b8:	00048593          	mv	a1,s1
    37bc:	00040513          	mv	a0,s0
    37c0:	fffff097          	auipc	ra,0xfffff
    37c4:	c84080e7          	jalr	-892(ra) # 2444 <fatfs_lba_of_cluster>
    37c8:	f71ff06f          	j	3738 <fatfs_sector_reader+0x7c>
    37cc:	00048593          	mv	a1,s1
    37d0:	00040513          	mv	a0,s0
    37d4:	00000097          	auipc	ra,0x0
    37d8:	de0080e7          	jalr	-544(ra) # 35b4 <fatfs_find_next_cluster>
    37dc:	00050493          	mv	s1,a0
    37e0:	00198993          	addi	s3,s3,1
    37e4:	fb5ff06f          	j	3798 <fatfs_sector_reader+0xdc>
    37e8:	24442783          	lw	a5,580(s0)
    37ec:	00a78c63          	beq	a5,a0,3804 <fatfs_sector_reader+0x148>
    37f0:	03442783          	lw	a5,52(s0)
    37f4:	24a42223          	sw	a0,580(s0)
    37f8:	00100613          	li	a2,1
    37fc:	04440593          	addi	a1,s0,68
    3800:	f4dff06f          	j	374c <fatfs_sector_reader+0x90>
    3804:	00100513          	li	a0,1
    3808:	efdff06f          	j	3704 <fatfs_sector_reader+0x48>

0000380c <fatfs_get_file_entry>:
    380c:	eb010113          	addi	sp,sp,-336
    3810:	14812423          	sw	s0,328(sp)
    3814:	14912223          	sw	s1,324(sp)
    3818:	13312e23          	sw	s3,316(sp)
    381c:	13712623          	sw	s7,300(sp)
    3820:	13812423          	sw	s8,296(sp)
    3824:	13912223          	sw	s9,292(sp)
    3828:	14112623          	sw	ra,332(sp)
    382c:	15212023          	sw	s2,320(sp)
    3830:	13412c23          	sw	s4,312(sp)
    3834:	13512a23          	sw	s5,308(sp)
    3838:	13612823          	sw	s6,304(sp)
    383c:	00050993          	mv	s3,a0
    3840:	00058c93          	mv	s9,a1
    3844:	00060b93          	mv	s7,a2
    3848:	00068c13          	mv	s8,a3
    384c:	10010ea3          	sb	zero,285(sp)
    3850:	01810413          	addi	s0,sp,24
    3854:	11c10493          	addi	s1,sp,284
    3858:	00040513          	mv	a0,s0
    385c:	00d00613          	li	a2,13
    3860:	00000593          	li	a1,0
    3864:	00d40413          	addi	s0,s0,13
    3868:	ffffe097          	auipc	ra,0xffffe
    386c:	200080e7          	jalr	512(ra) # 1a68 <memset>
    3870:	fe9414e3          	bne	s0,s1,3858 <fatfs_get_file_entry+0x4c>
    3874:	00000493          	li	s1,0
    3878:	24498a13          	addi	s4,s3,580
    387c:	00810913          	addi	s2,sp,8
    3880:	00800a93          	li	s5,8
    3884:	02e00b13          	li	s6,46
    3888:	00000693          	li	a3,0
    388c:	00048613          	mv	a2,s1
    3890:	000c8593          	mv	a1,s9
    3894:	00098513          	mv	a0,s3
    3898:	00000097          	auipc	ra,0x0
    389c:	e24080e7          	jalr	-476(ra) # 36bc <fatfs_sector_reader>
    38a0:	08050c63          	beqz	a0,3938 <fatfs_get_file_entry+0x12c>
    38a4:	00148493          	addi	s1,s1,1
    38a8:	04498413          	addi	s0,s3,68
    38ac:	00040513          	mv	a0,s0
    38b0:	fffff097          	auipc	ra,0xfffff
    38b4:	f34080e7          	jalr	-204(ra) # 27e4 <fatfs_entry_lfn_text>
    38b8:	02050063          	beqz	a0,38d8 <fatfs_get_file_entry+0xcc>
    38bc:	00040593          	mv	a1,s0
    38c0:	01810513          	addi	a0,sp,24
    38c4:	fffff097          	auipc	ra,0xfffff
    38c8:	e18080e7          	jalr	-488(ra) # 26dc <fatfs_lfn_cache_entry>
    38cc:	02040413          	addi	s0,s0,32
    38d0:	fd441ee3          	bne	s0,s4,38ac <fatfs_get_file_entry+0xa0>
    38d4:	fb5ff06f          	j	3888 <fatfs_get_file_entry+0x7c>
    38d8:	00040513          	mv	a0,s0
    38dc:	fffff097          	auipc	ra,0xfffff
    38e0:	f1c080e7          	jalr	-228(ra) # 27f8 <fatfs_entry_lfn_invalid>
    38e4:	00050663          	beqz	a0,38f0 <fatfs_get_file_entry+0xe4>
    38e8:	10010ea3          	sb	zero,285(sp)
    38ec:	fe1ff06f          	j	38cc <fatfs_get_file_entry+0xc0>
    38f0:	00040593          	mv	a1,s0
    38f4:	01810513          	addi	a0,sp,24
    38f8:	fffff097          	auipc	ra,0xfffff
    38fc:	f34080e7          	jalr	-204(ra) # 282c <fatfs_entry_lfn_exists>
    3900:	06050663          	beqz	a0,396c <fatfs_get_file_entry+0x160>
    3904:	01810513          	addi	a0,sp,24
    3908:	fffff097          	auipc	ra,0xfffff
    390c:	ea0080e7          	jalr	-352(ra) # 27a8 <fatfs_lfn_cache_get>
    3910:	000b8593          	mv	a1,s7
    3914:	fffff097          	auipc	ra,0xfffff
    3918:	6dc080e7          	jalr	1756(ra) # 2ff0 <fatfs_compare_names>
    391c:	fc0506e3          	beqz	a0,38e8 <fatfs_get_file_entry+0xdc>
    3920:	02000613          	li	a2,32
    3924:	00040593          	mv	a1,s0
    3928:	000c0513          	mv	a0,s8
    392c:	ffffe097          	auipc	ra,0xffffe
    3930:	158080e7          	jalr	344(ra) # 1a84 <memcpy>
    3934:	00100513          	li	a0,1
    3938:	14c12083          	lw	ra,332(sp)
    393c:	14812403          	lw	s0,328(sp)
    3940:	14412483          	lw	s1,324(sp)
    3944:	14012903          	lw	s2,320(sp)
    3948:	13c12983          	lw	s3,316(sp)
    394c:	13812a03          	lw	s4,312(sp)
    3950:	13412a83          	lw	s5,308(sp)
    3954:	13012b03          	lw	s6,304(sp)
    3958:	12c12b83          	lw	s7,300(sp)
    395c:	12812c03          	lw	s8,296(sp)
    3960:	12412c83          	lw	s9,292(sp)
    3964:	15010113          	addi	sp,sp,336
    3968:	00008067          	ret
    396c:	00040513          	mv	a0,s0
    3970:	fffff097          	auipc	ra,0xfffff
    3974:	f0c080e7          	jalr	-244(ra) # 287c <fatfs_entry_sfn_only>
    3978:	f4050ae3          	beqz	a0,38cc <fatfs_get_file_entry+0xc0>
    397c:	00d00613          	li	a2,13
    3980:	00000593          	li	a1,0
    3984:	00090513          	mv	a0,s2
    3988:	ffffe097          	auipc	ra,0xffffe
    398c:	0e0080e7          	jalr	224(ra) # 1a68 <memset>
    3990:	00000793          	li	a5,0
    3994:	00f406b3          	add	a3,s0,a5
    3998:	0006c683          	lbu	a3,0(a3)
    399c:	00f90733          	add	a4,s2,a5
    39a0:	00178793          	addi	a5,a5,1
    39a4:	00d70023          	sb	a3,0(a4)
    39a8:	ff5796e3          	bne	a5,s5,3994 <fatfs_get_file_entry+0x188>
    39ac:	00844703          	lbu	a4,8(s0)
    39b0:	00944783          	lbu	a5,9(s0)
    39b4:	00a44683          	lbu	a3,10(s0)
    39b8:	00e108a3          	sb	a4,17(sp)
    39bc:	00f10923          	sb	a5,18(sp)
    39c0:	fe070713          	addi	a4,a4,-32
    39c4:	fe078793          	addi	a5,a5,-32
    39c8:	00f037b3          	snez	a5,a5
    39cc:	00e03733          	snez	a4,a4
    39d0:	00d109a3          	sb	a3,19(sp)
    39d4:	00e7e7b3          	or	a5,a5,a4
    39d8:	00079863          	bnez	a5,39e8 <fatfs_get_file_entry+0x1dc>
    39dc:	fe068693          	addi	a3,a3,-32
    39e0:	02000793          	li	a5,32
    39e4:	00068a63          	beqz	a3,39f8 <fatfs_get_file_entry+0x1ec>
    39e8:	00814703          	lbu	a4,8(sp)
    39ec:	02e00793          	li	a5,46
    39f0:	01671463          	bne	a4,s6,39f8 <fatfs_get_file_entry+0x1ec>
    39f4:	02000793          	li	a5,32
    39f8:	00f10823          	sb	a5,16(sp)
    39fc:	000b8593          	mv	a1,s7
    3a00:	00090513          	mv	a0,s2
    3a04:	f11ff06f          	j	3914 <fatfs_get_file_entry+0x108>

00003a08 <_open_directory>:
    3a08:	eb010113          	addi	sp,sp,-336
    3a0c:	15212023          	sw	s2,320(sp)
    3a10:	0000a937          	lui	s2,0xa
    3a14:	c6c90913          	addi	s2,s2,-916 # 9c6c <_fs>
    3a18:	14812423          	sw	s0,328(sp)
    3a1c:	00892403          	lw	s0,8(s2)
    3a20:	14912223          	sw	s1,324(sp)
    3a24:	13312e23          	sw	s3,316(sp)
    3a28:	13412c23          	sw	s4,312(sp)
    3a2c:	13512a23          	sw	s5,308(sp)
    3a30:	13612823          	sw	s6,304(sp)
    3a34:	14112623          	sw	ra,332(sp)
    3a38:	00050a13          	mv	s4,a0
    3a3c:	00058a93          	mv	s5,a1
    3a40:	fffff097          	auipc	ra,0xfffff
    3a44:	368080e7          	jalr	872(ra) # 2da8 <fatfs_total_path_levels>
    3a48:	00050b13          	mv	s6,a0
    3a4c:	00000493          	li	s1,0
    3a50:	fff00993          	li	s3,-1
    3a54:	009b5863          	bge	s6,s1,3a64 <_open_directory+0x5c>
    3a58:	008aa023          	sw	s0,0(s5)
    3a5c:	00100513          	li	a0,1
    3a60:	0240006f          	j	3a84 <_open_directory+0x7c>
    3a64:	10400693          	li	a3,260
    3a68:	02c10613          	addi	a2,sp,44
    3a6c:	00048593          	mv	a1,s1
    3a70:	000a0513          	mv	a0,s4
    3a74:	fffff097          	auipc	ra,0xfffff
    3a78:	3a4080e7          	jalr	932(ra) # 2e18 <fatfs_get_substring>
    3a7c:	03351863          	bne	a0,s3,3aac <_open_directory+0xa4>
    3a80:	00000513          	li	a0,0
    3a84:	14c12083          	lw	ra,332(sp)
    3a88:	14812403          	lw	s0,328(sp)
    3a8c:	14412483          	lw	s1,324(sp)
    3a90:	14012903          	lw	s2,320(sp)
    3a94:	13c12983          	lw	s3,316(sp)
    3a98:	13812a03          	lw	s4,312(sp)
    3a9c:	13412a83          	lw	s5,308(sp)
    3aa0:	13012b03          	lw	s6,304(sp)
    3aa4:	15010113          	addi	sp,sp,336
    3aa8:	00008067          	ret
    3aac:	00c10693          	addi	a3,sp,12
    3ab0:	02c10613          	addi	a2,sp,44
    3ab4:	00040593          	mv	a1,s0
    3ab8:	00090513          	mv	a0,s2
    3abc:	00000097          	auipc	ra,0x0
    3ac0:	d50080e7          	jalr	-688(ra) # 380c <fatfs_get_file_entry>
    3ac4:	fa050ee3          	beqz	a0,3a80 <_open_directory+0x78>
    3ac8:	01714783          	lbu	a5,23(sp)
    3acc:	0107f793          	andi	a5,a5,16
    3ad0:	fa0788e3          	beqz	a5,3a80 <_open_directory+0x78>
    3ad4:	02015403          	lhu	s0,32(sp)
    3ad8:	02615783          	lhu	a5,38(sp)
    3adc:	00148493          	addi	s1,s1,1
    3ae0:	01041413          	slli	s0,s0,0x10
    3ae4:	00f40433          	add	s0,s0,a5
    3ae8:	f6dff06f          	j	3a54 <_open_directory+0x4c>

00003aec <fl_opendir>:
    3aec:	fe010113          	addi	sp,sp,-32
    3af0:	fff00793          	li	a5,-1
    3af4:	00f12623          	sw	a5,12(sp)
    3af8:	000067b7          	lui	a5,0x6
    3afc:	8a07a783          	lw	a5,-1888(a5) # 58a0 <_filelib_init>
    3b00:	00812c23          	sw	s0,24(sp)
    3b04:	01212823          	sw	s2,16(sp)
    3b08:	00112e23          	sw	ra,28(sp)
    3b0c:	00912a23          	sw	s1,20(sp)
    3b10:	00050913          	mv	s2,a0
    3b14:	00058413          	mv	s0,a1
    3b18:	00079663          	bnez	a5,3b24 <fl_opendir+0x38>
    3b1c:	fffff097          	auipc	ra,0xfffff
    3b20:	a58080e7          	jalr	-1448(ra) # 2574 <fl_init>
    3b24:	0000a4b7          	lui	s1,0xa
    3b28:	c6c48493          	addi	s1,s1,-916 # 9c6c <_fs>
    3b2c:	03c4a783          	lw	a5,60(s1)
    3b30:	00078463          	beqz	a5,3b38 <fl_opendir+0x4c>
    3b34:	000780e7          	jalr	a5
    3b38:	00090513          	mv	a0,s2
    3b3c:	fffff097          	auipc	ra,0xfffff
    3b40:	26c080e7          	jalr	620(ra) # 2da8 <fatfs_total_path_levels>
    3b44:	fff00793          	li	a5,-1
    3b48:	02f51063          	bne	a0,a5,3b68 <fl_opendir+0x7c>
    3b4c:	0084a783          	lw	a5,8(s1)
    3b50:	00f12623          	sw	a5,12(sp)
    3b54:	00c12783          	lw	a5,12(sp)
    3b58:	00042023          	sw	zero,0(s0)
    3b5c:	00040423          	sb	zero,8(s0)
    3b60:	00f42223          	sw	a5,4(s0)
    3b64:	0180006f          	j	3b7c <fl_opendir+0x90>
    3b68:	00c10593          	addi	a1,sp,12
    3b6c:	00090513          	mv	a0,s2
    3b70:	00000097          	auipc	ra,0x0
    3b74:	e98080e7          	jalr	-360(ra) # 3a08 <_open_directory>
    3b78:	fc051ee3          	bnez	a0,3b54 <fl_opendir+0x68>
    3b7c:	0404a783          	lw	a5,64(s1)
    3b80:	00078463          	beqz	a5,3b88 <fl_opendir+0x9c>
    3b84:	000780e7          	jalr	a5
    3b88:	00c12703          	lw	a4,12(sp)
    3b8c:	fff00793          	li	a5,-1
    3b90:	00f71463          	bne	a4,a5,3b98 <fl_opendir+0xac>
    3b94:	00000413          	li	s0,0
    3b98:	01c12083          	lw	ra,28(sp)
    3b9c:	00040513          	mv	a0,s0
    3ba0:	01812403          	lw	s0,24(sp)
    3ba4:	01412483          	lw	s1,20(sp)
    3ba8:	01012903          	lw	s2,16(sp)
    3bac:	02010113          	addi	sp,sp,32
    3bb0:	00008067          	ret

00003bb4 <_open_file>:
    3bb4:	fc010113          	addi	sp,sp,-64
    3bb8:	03312623          	sw	s3,44(sp)
    3bbc:	02112e23          	sw	ra,60(sp)
    3bc0:	02812c23          	sw	s0,56(sp)
    3bc4:	02912a23          	sw	s1,52(sp)
    3bc8:	03212823          	sw	s2,48(sp)
    3bcc:	00050993          	mv	s3,a0
    3bd0:	ffffe097          	auipc	ra,0xffffe
    3bd4:	7b4080e7          	jalr	1972(ra) # 2384 <_allocate_file>
    3bd8:	06050463          	beqz	a0,3c40 <_open_file+0x8c>
    3bdc:	01450913          	addi	s2,a0,20
    3be0:	00050413          	mv	s0,a0
    3be4:	10400613          	li	a2,260
    3be8:	00000593          	li	a1,0
    3bec:	00090513          	mv	a0,s2
    3bf0:	ffffe097          	auipc	ra,0xffffe
    3bf4:	e78080e7          	jalr	-392(ra) # 1a68 <memset>
    3bf8:	11840493          	addi	s1,s0,280
    3bfc:	10400613          	li	a2,260
    3c00:	00000593          	li	a1,0
    3c04:	00048513          	mv	a0,s1
    3c08:	ffffe097          	auipc	ra,0xffffe
    3c0c:	e60080e7          	jalr	-416(ra) # 1a68 <memset>
    3c10:	10400713          	li	a4,260
    3c14:	00048693          	mv	a3,s1
    3c18:	00070613          	mv	a2,a4
    3c1c:	00090593          	mv	a1,s2
    3c20:	00098513          	mv	a0,s3
    3c24:	fffff097          	auipc	ra,0xfffff
    3c28:	2dc080e7          	jalr	732(ra) # 2f00 <fatfs_split_path>
    3c2c:	fff00793          	li	a5,-1
    3c30:	02f51a63          	bne	a0,a5,3c64 <_open_file+0xb0>
    3c34:	00040513          	mv	a0,s0
    3c38:	ffffe097          	auipc	ra,0xffffe
    3c3c:	7c4080e7          	jalr	1988(ra) # 23fc <_free_file>
    3c40:	00000413          	li	s0,0
    3c44:	03c12083          	lw	ra,60(sp)
    3c48:	00040513          	mv	a0,s0
    3c4c:	03812403          	lw	s0,56(sp)
    3c50:	03412483          	lw	s1,52(sp)
    3c54:	03012903          	lw	s2,48(sp)
    3c58:	02c12983          	lw	s3,44(sp)
    3c5c:	04010113          	addi	sp,sp,64
    3c60:	00008067          	ret
    3c64:	00040513          	mv	a0,s0
    3c68:	fffff097          	auipc	ra,0xfffff
    3c6c:	514080e7          	jalr	1300(ra) # 317c <_check_file_open>
    3c70:	fc0512e3          	bnez	a0,3c34 <_open_file+0x80>
    3c74:	01444783          	lbu	a5,20(s0)
    3c78:	08079c63          	bnez	a5,3d10 <_open_file+0x15c>
    3c7c:	0000a7b7          	lui	a5,0xa
    3c80:	c747a783          	lw	a5,-908(a5) # 9c74 <_fs+0x8>
    3c84:	00f42023          	sw	a5,0(s0)
    3c88:	00042583          	lw	a1,0(s0)
    3c8c:	00048613          	mv	a2,s1
    3c90:	0000a4b7          	lui	s1,0xa
    3c94:	00010693          	mv	a3,sp
    3c98:	c6c48513          	addi	a0,s1,-916 # 9c6c <_fs>
    3c9c:	00000097          	auipc	ra,0x0
    3ca0:	b70080e7          	jalr	-1168(ra) # 380c <fatfs_get_file_entry>
    3ca4:	f80508e3          	beqz	a0,3c34 <_open_file+0x80>
    3ca8:	00b14783          	lbu	a5,11(sp)
    3cac:	0207f793          	andi	a5,a5,32
    3cb0:	f80782e3          	beqz	a5,3c34 <_open_file+0x80>
    3cb4:	00b00613          	li	a2,11
    3cb8:	00010593          	mv	a1,sp
    3cbc:	21c40513          	addi	a0,s0,540
    3cc0:	ffffe097          	auipc	ra,0xffffe
    3cc4:	dc4080e7          	jalr	-572(ra) # 1a84 <memcpy>
    3cc8:	01c12783          	lw	a5,28(sp)
    3ccc:	01a15703          	lhu	a4,26(sp)
    3cd0:	00042423          	sw	zero,8(s0)
    3cd4:	00f42623          	sw	a5,12(s0)
    3cd8:	01415783          	lhu	a5,20(sp)
    3cdc:	42042a23          	sw	zero,1076(s0)
    3ce0:	00042823          	sw	zero,16(s0)
    3ce4:	01079793          	slli	a5,a5,0x10
    3ce8:	00e787b3          	add	a5,a5,a4
    3cec:	00f42223          	sw	a5,4(s0)
    3cf0:	fff00793          	li	a5,-1
    3cf4:	42f42823          	sw	a5,1072(s0)
    3cf8:	22f42423          	sw	a5,552(s0)
    3cfc:	22f42623          	sw	a5,556(s0)
    3d00:	c6c48513          	addi	a0,s1,-916
    3d04:	00000097          	auipc	ra,0x0
    3d08:	858080e7          	jalr	-1960(ra) # 355c <fatfs_fat_purge>
    3d0c:	f39ff06f          	j	3c44 <_open_file+0x90>
    3d10:	00040593          	mv	a1,s0
    3d14:	00090513          	mv	a0,s2
    3d18:	00000097          	auipc	ra,0x0
    3d1c:	cf0080e7          	jalr	-784(ra) # 3a08 <_open_directory>
    3d20:	f60514e3          	bnez	a0,3c88 <_open_file+0xd4>
    3d24:	f11ff06f          	j	3c34 <_open_file+0x80>

00003d28 <fatfs_sfn_exists>:
    3d28:	fe010113          	addi	sp,sp,-32
    3d2c:	01212823          	sw	s2,16(sp)
    3d30:	01312623          	sw	s3,12(sp)
    3d34:	01412423          	sw	s4,8(sp)
    3d38:	01512223          	sw	s5,4(sp)
    3d3c:	01612023          	sw	s6,0(sp)
    3d40:	00112e23          	sw	ra,28(sp)
    3d44:	00812c23          	sw	s0,24(sp)
    3d48:	00912a23          	sw	s1,20(sp)
    3d4c:	00050993          	mv	s3,a0
    3d50:	00058a93          	mv	s5,a1
    3d54:	00060b13          	mv	s6,a2
    3d58:	00000913          	li	s2,0
    3d5c:	24450a13          	addi	s4,a0,580
    3d60:	00000693          	li	a3,0
    3d64:	00090613          	mv	a2,s2
    3d68:	000a8593          	mv	a1,s5
    3d6c:	00098513          	mv	a0,s3
    3d70:	00000097          	auipc	ra,0x0
    3d74:	94c080e7          	jalr	-1716(ra) # 36bc <fatfs_sector_reader>
    3d78:	00050413          	mv	s0,a0
    3d7c:	06050263          	beqz	a0,3de0 <fatfs_sfn_exists+0xb8>
    3d80:	00190913          	addi	s2,s2,1
    3d84:	04498493          	addi	s1,s3,68
    3d88:	00048513          	mv	a0,s1
    3d8c:	fffff097          	auipc	ra,0xfffff
    3d90:	a58080e7          	jalr	-1448(ra) # 27e4 <fatfs_entry_lfn_text>
    3d94:	00050863          	beqz	a0,3da4 <fatfs_sfn_exists+0x7c>
    3d98:	02048493          	addi	s1,s1,32
    3d9c:	ff4496e3          	bne	s1,s4,3d88 <fatfs_sfn_exists+0x60>
    3da0:	fc1ff06f          	j	3d60 <fatfs_sfn_exists+0x38>
    3da4:	00048513          	mv	a0,s1
    3da8:	fffff097          	auipc	ra,0xfffff
    3dac:	a50080e7          	jalr	-1456(ra) # 27f8 <fatfs_entry_lfn_invalid>
    3db0:	fe0514e3          	bnez	a0,3d98 <fatfs_sfn_exists+0x70>
    3db4:	00048513          	mv	a0,s1
    3db8:	fffff097          	auipc	ra,0xfffff
    3dbc:	ac4080e7          	jalr	-1340(ra) # 287c <fatfs_entry_sfn_only>
    3dc0:	00050413          	mv	s0,a0
    3dc4:	fc050ae3          	beqz	a0,3d98 <fatfs_sfn_exists+0x70>
    3dc8:	00b00613          	li	a2,11
    3dcc:	000b0593          	mv	a1,s6
    3dd0:	00048513          	mv	a0,s1
    3dd4:	ffffe097          	auipc	ra,0xffffe
    3dd8:	cf4080e7          	jalr	-780(ra) # 1ac8 <strncmp>
    3ddc:	fa051ee3          	bnez	a0,3d98 <fatfs_sfn_exists+0x70>
    3de0:	01c12083          	lw	ra,28(sp)
    3de4:	00040513          	mv	a0,s0
    3de8:	01812403          	lw	s0,24(sp)
    3dec:	01412483          	lw	s1,20(sp)
    3df0:	01012903          	lw	s2,16(sp)
    3df4:	00c12983          	lw	s3,12(sp)
    3df8:	00812a03          	lw	s4,8(sp)
    3dfc:	00412a83          	lw	s5,4(sp)
    3e00:	00012b03          	lw	s6,0(sp)
    3e04:	02010113          	addi	sp,sp,32
    3e08:	00008067          	ret

00003e0c <fatfs_update_file_length>:
    3e0c:	03852783          	lw	a5,56(a0)
    3e10:	14078e63          	beqz	a5,3f6c <fatfs_update_file_length+0x160>
    3e14:	fd010113          	addi	sp,sp,-48
    3e18:	02912223          	sw	s1,36(sp)
    3e1c:	03212023          	sw	s2,32(sp)
    3e20:	01312e23          	sw	s3,28(sp)
    3e24:	01412c23          	sw	s4,24(sp)
    3e28:	01612823          	sw	s6,16(sp)
    3e2c:	01712623          	sw	s7,12(sp)
    3e30:	02112623          	sw	ra,44(sp)
    3e34:	02812423          	sw	s0,40(sp)
    3e38:	01512a23          	sw	s5,20(sp)
    3e3c:	00068913          	mv	s2,a3
    3e40:	00060b93          	mv	s7,a2
    3e44:	00058b13          	mv	s6,a1
    3e48:	00050493          	mv	s1,a0
    3e4c:	00000993          	li	s3,0
    3e50:	24450a13          	addi	s4,a0,580
    3e54:	00000693          	li	a3,0
    3e58:	00098613          	mv	a2,s3
    3e5c:	000b0593          	mv	a1,s6
    3e60:	00048513          	mv	a0,s1
    3e64:	00000097          	auipc	ra,0x0
    3e68:	858080e7          	jalr	-1960(ra) # 36bc <fatfs_sector_reader>
    3e6c:	0c050863          	beqz	a0,3f3c <fatfs_update_file_length+0x130>
    3e70:	04448413          	addi	s0,s1,68
    3e74:	00198993          	addi	s3,s3,1
    3e78:	00040a93          	mv	s5,s0
    3e7c:	00040513          	mv	a0,s0
    3e80:	fffff097          	auipc	ra,0xfffff
    3e84:	964080e7          	jalr	-1692(ra) # 27e4 <fatfs_entry_lfn_text>
    3e88:	0a051463          	bnez	a0,3f30 <fatfs_update_file_length+0x124>
    3e8c:	00040513          	mv	a0,s0
    3e90:	fffff097          	auipc	ra,0xfffff
    3e94:	968080e7          	jalr	-1688(ra) # 27f8 <fatfs_entry_lfn_invalid>
    3e98:	08051c63          	bnez	a0,3f30 <fatfs_update_file_length+0x124>
    3e9c:	00040513          	mv	a0,s0
    3ea0:	fffff097          	auipc	ra,0xfffff
    3ea4:	9dc080e7          	jalr	-1572(ra) # 287c <fatfs_entry_sfn_only>
    3ea8:	08050463          	beqz	a0,3f30 <fatfs_update_file_length+0x124>
    3eac:	00b00613          	li	a2,11
    3eb0:	000b8593          	mv	a1,s7
    3eb4:	00040513          	mv	a0,s0
    3eb8:	ffffe097          	auipc	ra,0xffffe
    3ebc:	c10080e7          	jalr	-1008(ra) # 1ac8 <strncmp>
    3ec0:	06051863          	bnez	a0,3f30 <fatfs_update_file_length+0x124>
    3ec4:	00895793          	srli	a5,s2,0x8
    3ec8:	01240e23          	sb	s2,28(s0)
    3ecc:	00f40ea3          	sb	a5,29(s0)
    3ed0:	01095793          	srli	a5,s2,0x10
    3ed4:	01895913          	srli	s2,s2,0x18
    3ed8:	00f40f23          	sb	a5,30(s0)
    3edc:	01240fa3          	sb	s2,31(s0)
    3ee0:	00040593          	mv	a1,s0
    3ee4:	02000613          	li	a2,32
    3ee8:	00040513          	mv	a0,s0
    3eec:	ffffe097          	auipc	ra,0xffffe
    3ef0:	b98080e7          	jalr	-1128(ra) # 1a84 <memcpy>
    3ef4:	02812403          	lw	s0,40(sp)
    3ef8:	0384a783          	lw	a5,56(s1)
    3efc:	2444a503          	lw	a0,580(s1)
    3f00:	02c12083          	lw	ra,44(sp)
    3f04:	02412483          	lw	s1,36(sp)
    3f08:	02012903          	lw	s2,32(sp)
    3f0c:	01c12983          	lw	s3,28(sp)
    3f10:	01812a03          	lw	s4,24(sp)
    3f14:	01012b03          	lw	s6,16(sp)
    3f18:	00c12b83          	lw	s7,12(sp)
    3f1c:	000a8593          	mv	a1,s5
    3f20:	01412a83          	lw	s5,20(sp)
    3f24:	00100613          	li	a2,1
    3f28:	03010113          	addi	sp,sp,48
    3f2c:	00078067          	jr	a5
    3f30:	02040413          	addi	s0,s0,32
    3f34:	f54414e3          	bne	s0,s4,3e7c <fatfs_update_file_length+0x70>
    3f38:	f1dff06f          	j	3e54 <fatfs_update_file_length+0x48>
    3f3c:	02c12083          	lw	ra,44(sp)
    3f40:	02812403          	lw	s0,40(sp)
    3f44:	02412483          	lw	s1,36(sp)
    3f48:	02012903          	lw	s2,32(sp)
    3f4c:	01c12983          	lw	s3,28(sp)
    3f50:	01812a03          	lw	s4,24(sp)
    3f54:	01412a83          	lw	s5,20(sp)
    3f58:	01012b03          	lw	s6,16(sp)
    3f5c:	00c12b83          	lw	s7,12(sp)
    3f60:	00000513          	li	a0,0
    3f64:	03010113          	addi	sp,sp,48
    3f68:	00008067          	ret
    3f6c:	00000513          	li	a0,0
    3f70:	00008067          	ret

00003f74 <fatfs_list_directory_next>:
    3f74:	ec010113          	addi	sp,sp,-320
    3f78:	13212823          	sw	s2,304(sp)
    3f7c:	13312623          	sw	s3,300(sp)
    3f80:	13412423          	sw	s4,296(sp)
    3f84:	13512223          	sw	s5,292(sp)
    3f88:	13612023          	sw	s6,288(sp)
    3f8c:	12112e23          	sw	ra,316(sp)
    3f90:	12812c23          	sw	s0,312(sp)
    3f94:	12912a23          	sw	s1,308(sp)
    3f98:	00050a13          	mv	s4,a0
    3f9c:	00058913          	mv	s2,a1
    3fa0:	00060993          	mv	s3,a2
    3fa4:	10010ea3          	sb	zero,285(sp)
    3fa8:	04450a93          	addi	s5,a0,68
    3fac:	00f00b13          	li	s6,15
    3fb0:	00092603          	lw	a2,0(s2)
    3fb4:	00492583          	lw	a1,4(s2)
    3fb8:	00000693          	li	a3,0
    3fbc:	000a0513          	mv	a0,s4
    3fc0:	fffff097          	auipc	ra,0xfffff
    3fc4:	6fc080e7          	jalr	1788(ra) # 36bc <fatfs_sector_reader>
    3fc8:	10050c63          	beqz	a0,40e0 <fatfs_list_directory_next+0x16c>
    3fcc:	00894483          	lbu	s1,8(s2)
    3fd0:	00549413          	slli	s0,s1,0x5
    3fd4:	008a8433          	add	s0,s5,s0
    3fd8:	009b7c63          	bgeu	s6,s1,3ff0 <fatfs_list_directory_next+0x7c>
    3fdc:	00092783          	lw	a5,0(s2)
    3fe0:	00090423          	sb	zero,8(s2)
    3fe4:	00178793          	addi	a5,a5,1
    3fe8:	00f92023          	sw	a5,0(s2)
    3fec:	fc5ff06f          	j	3fb0 <fatfs_list_directory_next+0x3c>
    3ff0:	00040513          	mv	a0,s0
    3ff4:	ffffe097          	auipc	ra,0xffffe
    3ff8:	7f0080e7          	jalr	2032(ra) # 27e4 <fatfs_entry_lfn_text>
    3ffc:	02050263          	beqz	a0,4020 <fatfs_list_directory_next+0xac>
    4000:	00040593          	mv	a1,s0
    4004:	01810513          	addi	a0,sp,24
    4008:	ffffe097          	auipc	ra,0xffffe
    400c:	6d4080e7          	jalr	1748(ra) # 26dc <fatfs_lfn_cache_entry>
    4010:	00148493          	addi	s1,s1,1
    4014:	0ff4f493          	zext.b	s1,s1
    4018:	02040413          	addi	s0,s0,32
    401c:	fbdff06f          	j	3fd8 <fatfs_list_directory_next+0x64>
    4020:	00040513          	mv	a0,s0
    4024:	ffffe097          	auipc	ra,0xffffe
    4028:	7d4080e7          	jalr	2004(ra) # 27f8 <fatfs_entry_lfn_invalid>
    402c:	00050663          	beqz	a0,4038 <fatfs_list_directory_next+0xc4>
    4030:	10010ea3          	sb	zero,285(sp)
    4034:	fddff06f          	j	4010 <fatfs_list_directory_next+0x9c>
    4038:	00040593          	mv	a1,s0
    403c:	01810513          	addi	a0,sp,24
    4040:	ffffe097          	auipc	ra,0xffffe
    4044:	7ec080e7          	jalr	2028(ra) # 282c <fatfs_entry_lfn_exists>
    4048:	0c050063          	beqz	a0,4108 <fatfs_list_directory_next+0x194>
    404c:	01810513          	addi	a0,sp,24
    4050:	ffffe097          	auipc	ra,0xffffe
    4054:	758080e7          	jalr	1880(ra) # 27a8 <fatfs_lfn_cache_get>
    4058:	00050593          	mv	a1,a0
    405c:	10300613          	li	a2,259
    4060:	00098513          	mv	a0,s3
    4064:	ffffe097          	auipc	ra,0xffffe
    4068:	aa4080e7          	jalr	-1372(ra) # 1b08 <strncpy>
    406c:	00040513          	mv	a0,s0
    4070:	fffff097          	auipc	ra,0xfffff
    4074:	84c080e7          	jalr	-1972(ra) # 28bc <fatfs_entry_is_dir>
    4078:	10a98223          	sb	a0,260(s3)
    407c:	01d44783          	lbu	a5,29(s0)
    4080:	01c44703          	lbu	a4,28(s0)
    4084:	00148493          	addi	s1,s1,1
    4088:	00879793          	slli	a5,a5,0x8
    408c:	00e7e7b3          	or	a5,a5,a4
    4090:	01e44703          	lbu	a4,30(s0)
    4094:	00100513          	li	a0,1
    4098:	01071713          	slli	a4,a4,0x10
    409c:	00f76733          	or	a4,a4,a5
    40a0:	01f44783          	lbu	a5,31(s0)
    40a4:	01879793          	slli	a5,a5,0x18
    40a8:	00e7e7b3          	or	a5,a5,a4
    40ac:	10f9a623          	sw	a5,268(s3)
    40b0:	01544783          	lbu	a5,21(s0)
    40b4:	01444703          	lbu	a4,20(s0)
    40b8:	01a44683          	lbu	a3,26(s0)
    40bc:	00879793          	slli	a5,a5,0x8
    40c0:	00e7e7b3          	or	a5,a5,a4
    40c4:	01b44703          	lbu	a4,27(s0)
    40c8:	01079793          	slli	a5,a5,0x10
    40cc:	00871713          	slli	a4,a4,0x8
    40d0:	00d76733          	or	a4,a4,a3
    40d4:	00e7e7b3          	or	a5,a5,a4
    40d8:	10f9a423          	sw	a5,264(s3)
    40dc:	00990423          	sb	s1,8(s2)
    40e0:	13c12083          	lw	ra,316(sp)
    40e4:	13812403          	lw	s0,312(sp)
    40e8:	13412483          	lw	s1,308(sp)
    40ec:	13012903          	lw	s2,304(sp)
    40f0:	12c12983          	lw	s3,300(sp)
    40f4:	12812a03          	lw	s4,296(sp)
    40f8:	12412a83          	lw	s5,292(sp)
    40fc:	12012b03          	lw	s6,288(sp)
    4100:	14010113          	addi	sp,sp,320
    4104:	00008067          	ret
    4108:	00040513          	mv	a0,s0
    410c:	ffffe097          	auipc	ra,0xffffe
    4110:	770080e7          	jalr	1904(ra) # 287c <fatfs_entry_sfn_only>
    4114:	ee050ee3          	beqz	a0,4010 <fatfs_list_directory_next+0x9c>
    4118:	00810a13          	addi	s4,sp,8
    411c:	00d00613          	li	a2,13
    4120:	00000593          	li	a1,0
    4124:	000a0513          	mv	a0,s4
    4128:	10010ea3          	sb	zero,285(sp)
    412c:	ffffe097          	auipc	ra,0xffffe
    4130:	93c080e7          	jalr	-1732(ra) # 1a68 <memset>
    4134:	00000793          	li	a5,0
    4138:	00800713          	li	a4,8
    413c:	00f40633          	add	a2,s0,a5
    4140:	00064603          	lbu	a2,0(a2)
    4144:	00fa06b3          	add	a3,s4,a5
    4148:	00178793          	addi	a5,a5,1
    414c:	00c68023          	sb	a2,0(a3)
    4150:	fee796e3          	bne	a5,a4,413c <fatfs_list_directory_next+0x1c8>
    4154:	00844783          	lbu	a5,8(s0)
    4158:	00944703          	lbu	a4,9(s0)
    415c:	00a44683          	lbu	a3,10(s0)
    4160:	00f108a3          	sb	a5,17(sp)
    4164:	00e10923          	sb	a4,18(sp)
    4168:	fe078793          	addi	a5,a5,-32
    416c:	fe070713          	addi	a4,a4,-32
    4170:	00f037b3          	snez	a5,a5
    4174:	00e03733          	snez	a4,a4
    4178:	00d109a3          	sb	a3,19(sp)
    417c:	00e7e7b3          	or	a5,a5,a4
    4180:	00079863          	bnez	a5,4190 <fatfs_list_directory_next+0x21c>
    4184:	fe068693          	addi	a3,a3,-32
    4188:	02000793          	li	a5,32
    418c:	00068a63          	beqz	a3,41a0 <fatfs_list_directory_next+0x22c>
    4190:	00814703          	lbu	a4,8(sp)
    4194:	02e00793          	li	a5,46
    4198:	00f71463          	bne	a4,a5,41a0 <fatfs_list_directory_next+0x22c>
    419c:	02000793          	li	a5,32
    41a0:	000a0593          	mv	a1,s4
    41a4:	00098513          	mv	a0,s3
    41a8:	00f10823          	sb	a5,16(sp)
    41ac:	fffff097          	auipc	ra,0xfffff
    41b0:	054080e7          	jalr	84(ra) # 3200 <fatfs_get_sfn_display_name>
    41b4:	eb9ff06f          	j	406c <fatfs_list_directory_next+0xf8>

000041b8 <fl_readdir>:
    41b8:	000067b7          	lui	a5,0x6
    41bc:	8a07a783          	lw	a5,-1888(a5) # 58a0 <_filelib_init>
    41c0:	fd010113          	addi	sp,sp,-48
    41c4:	03212023          	sw	s2,32(sp)
    41c8:	01312e23          	sw	s3,28(sp)
    41cc:	02112623          	sw	ra,44(sp)
    41d0:	02812423          	sw	s0,40(sp)
    41d4:	02912223          	sw	s1,36(sp)
    41d8:	00050913          	mv	s2,a0
    41dc:	00058993          	mv	s3,a1
    41e0:	00079663          	bnez	a5,41ec <fl_readdir+0x34>
    41e4:	ffffe097          	auipc	ra,0xffffe
    41e8:	390080e7          	jalr	912(ra) # 2574 <fl_init>
    41ec:	0000a4b7          	lui	s1,0xa
    41f0:	c6c48413          	addi	s0,s1,-916 # 9c6c <_fs>
    41f4:	03c42783          	lw	a5,60(s0)
    41f8:	00078463          	beqz	a5,4200 <fl_readdir+0x48>
    41fc:	000780e7          	jalr	a5
    4200:	00098613          	mv	a2,s3
    4204:	00090593          	mv	a1,s2
    4208:	c6c48513          	addi	a0,s1,-916
    420c:	00000097          	auipc	ra,0x0
    4210:	d68080e7          	jalr	-664(ra) # 3f74 <fatfs_list_directory_next>
    4214:	04042783          	lw	a5,64(s0)
    4218:	00078863          	beqz	a5,4228 <fl_readdir+0x70>
    421c:	00a12623          	sw	a0,12(sp)
    4220:	000780e7          	jalr	a5
    4224:	00c12503          	lw	a0,12(sp)
    4228:	02c12083          	lw	ra,44(sp)
    422c:	02812403          	lw	s0,40(sp)
    4230:	00154513          	xori	a0,a0,1
    4234:	02412483          	lw	s1,36(sp)
    4238:	02012903          	lw	s2,32(sp)
    423c:	01c12983          	lw	s3,28(sp)
    4240:	40a00533          	neg	a0,a0
    4244:	03010113          	addi	sp,sp,48
    4248:	00008067          	ret

0000424c <_read_sectors>:
    424c:	fd010113          	addi	sp,sp,-48
    4250:	01512a23          	sw	s5,20(sp)
    4254:	0000aab7          	lui	s5,0xa
    4258:	01312e23          	sw	s3,28(sp)
    425c:	c6cac983          	lbu	s3,-916(s5) # 9c6c <_fs>
    4260:	01612823          	sw	s6,16(sp)
    4264:	00058b13          	mv	s6,a1
    4268:	02912223          	sw	s1,36(sp)
    426c:	00098593          	mv	a1,s3
    4270:	00050493          	mv	s1,a0
    4274:	000b0513          	mv	a0,s6
    4278:	02112623          	sw	ra,44(sp)
    427c:	02812423          	sw	s0,40(sp)
    4280:	01412c23          	sw	s4,24(sp)
    4284:	00068413          	mv	s0,a3
    4288:	01712623          	sw	s7,12(sp)
    428c:	01812423          	sw	s8,8(sp)
    4290:	03212023          	sw	s2,32(sp)
    4294:	00060c13          	mv	s8,a2
    4298:	ffffd097          	auipc	ra,0xffffd
    429c:	724080e7          	jalr	1828(ra) # 19bc <__udivsi3>
    42a0:	00050a13          	mv	s4,a0
    42a4:	00098593          	mv	a1,s3
    42a8:	000b0513          	mv	a0,s6
    42ac:	ffffd097          	auipc	ra,0xffffd
    42b0:	758080e7          	jalr	1880(ra) # 1a04 <__umodsi3>
    42b4:	00a407b3          	add	a5,s0,a0
    42b8:	00050b93          	mv	s7,a0
    42bc:	00f9fe63          	bgeu	s3,a5,42d8 <_read_sectors+0x8c>
    42c0:	000a0593          	mv	a1,s4
    42c4:	00098513          	mv	a0,s3
    42c8:	ffffe097          	auipc	ra,0xffffe
    42cc:	e18080e7          	jalr	-488(ra) # 20e0 <__mulsi3>
    42d0:	416987b3          	sub	a5,s3,s6
    42d4:	00f50433          	add	s0,a0,a5
    42d8:	2284a903          	lw	s2,552(s1)
    42dc:	07491863          	bne	s2,s4,434c <_read_sectors+0x100>
    42e0:	22c4a583          	lw	a1,556(s1)
    42e4:	fff00793          	li	a5,-1
    42e8:	02f58663          	beq	a1,a5,4314 <_read_sectors+0xc8>
    42ec:	c6ca8513          	addi	a0,s5,-916
    42f0:	ffffe097          	auipc	ra,0xffffe
    42f4:	154080e7          	jalr	340(ra) # 2444 <fatfs_lba_of_cluster>
    42f8:	017505b3          	add	a1,a0,s7
    42fc:	00040693          	mv	a3,s0
    4300:	000c0613          	mv	a2,s8
    4304:	c6ca8513          	addi	a0,s5,-916
    4308:	ffffe097          	auipc	ra,0xffffe
    430c:	188080e7          	jalr	392(ra) # 2490 <fatfs_sector_read>
    4310:	00051463          	bnez	a0,4318 <_read_sectors+0xcc>
    4314:	00000413          	li	s0,0
    4318:	02c12083          	lw	ra,44(sp)
    431c:	00040513          	mv	a0,s0
    4320:	02812403          	lw	s0,40(sp)
    4324:	02412483          	lw	s1,36(sp)
    4328:	02012903          	lw	s2,32(sp)
    432c:	01c12983          	lw	s3,28(sp)
    4330:	01812a03          	lw	s4,24(sp)
    4334:	01412a83          	lw	s5,20(sp)
    4338:	01012b03          	lw	s6,16(sp)
    433c:	00c12b83          	lw	s7,12(sp)
    4340:	00812c03          	lw	s8,8(sp)
    4344:	03010113          	addi	sp,sp,48
    4348:	00008067          	ret
    434c:	033b6463          	bltu	s6,s3,4374 <_read_sectors+0x128>
    4350:	00190793          	addi	a5,s2,1
    4354:	03479063          	bne	a5,s4,4374 <_read_sectors+0x128>
    4358:	22c4a583          	lw	a1,556(s1)
    435c:	03496263          	bltu	s2,s4,4380 <_read_sectors+0x134>
    4360:	fff00793          	li	a5,-1
    4364:	faf588e3          	beq	a1,a5,4314 <_read_sectors+0xc8>
    4368:	22b4a623          	sw	a1,556(s1)
    436c:	2344a423          	sw	s4,552(s1)
    4370:	f7dff06f          	j	42ec <_read_sectors+0xa0>
    4374:	0044a583          	lw	a1,4(s1)
    4378:	00000913          	li	s2,0
    437c:	fe1ff06f          	j	435c <_read_sectors+0x110>
    4380:	c6ca8513          	addi	a0,s5,-916
    4384:	fffff097          	auipc	ra,0xfffff
    4388:	230080e7          	jalr	560(ra) # 35b4 <fatfs_find_next_cluster>
    438c:	00050593          	mv	a1,a0
    4390:	00190913          	addi	s2,s2,1
    4394:	fc9ff06f          	j	435c <_read_sectors+0x110>

00004398 <fatfs_set_fs_info_next_free_cluster>:
    4398:	03052783          	lw	a5,48(a0)
    439c:	0a078463          	beqz	a5,4444 <fatfs_set_fs_info_next_free_cluster+0xac>
    43a0:	fe010113          	addi	sp,sp,-32
    43a4:	01c52783          	lw	a5,28(a0)
    43a8:	00912a23          	sw	s1,20(sp)
    43ac:	00058493          	mv	s1,a1
    43b0:	01855583          	lhu	a1,24(a0)
    43b4:	00812c23          	sw	s0,24(sp)
    43b8:	00112e23          	sw	ra,28(sp)
    43bc:	00f585b3          	add	a1,a1,a5
    43c0:	00050413          	mv	s0,a0
    43c4:	ffffe097          	auipc	ra,0xffffe
    43c8:	ed4080e7          	jalr	-300(ra) # 2298 <fatfs_fat_read_sector>
    43cc:	00050593          	mv	a1,a0
    43d0:	06050063          	beqz	a0,4430 <fatfs_set_fs_info_next_free_cluster+0x98>
    43d4:	20852783          	lw	a5,520(a0)
    43d8:	0084d713          	srli	a4,s1,0x8
    43dc:	00100613          	li	a2,1
    43e0:	1e978623          	sb	s1,492(a5)
    43e4:	20852783          	lw	a5,520(a0)
    43e8:	1ee786a3          	sb	a4,493(a5)
    43ec:	20852783          	lw	a5,520(a0)
    43f0:	0104d713          	srli	a4,s1,0x10
    43f4:	1ee78723          	sb	a4,494(a5)
    43f8:	20852783          	lw	a5,520(a0)
    43fc:	0184d713          	srli	a4,s1,0x18
    4400:	1ee787a3          	sb	a4,495(a5)
    4404:	03842783          	lw	a5,56(s0)
    4408:	20c52223          	sw	a2,516(a0)
    440c:	02942223          	sw	s1,36(s0)
    4410:	00078a63          	beqz	a5,4424 <fatfs_set_fs_info_next_free_cluster+0x8c>
    4414:	20052503          	lw	a0,512(a0)
    4418:	00b12623          	sw	a1,12(sp)
    441c:	000780e7          	jalr	a5
    4420:	00c12583          	lw	a1,12(sp)
    4424:	fff00793          	li	a5,-1
    4428:	20f5a023          	sw	a5,512(a1)
    442c:	2005a223          	sw	zero,516(a1)
    4430:	01c12083          	lw	ra,28(sp)
    4434:	01812403          	lw	s0,24(sp)
    4438:	01412483          	lw	s1,20(sp)
    443c:	02010113          	addi	sp,sp,32
    4440:	00008067          	ret
    4444:	00008067          	ret

00004448 <fatfs_find_blank_cluster>:
    4448:	fd010113          	addi	sp,sp,-48
    444c:	01312e23          	sw	s3,28(sp)
    4450:	100009b7          	lui	s3,0x10000
    4454:	02912223          	sw	s1,36(sp)
    4458:	03212023          	sw	s2,32(sp)
    445c:	02112623          	sw	ra,44(sp)
    4460:	02812423          	sw	s0,40(sp)
    4464:	00050913          	mv	s2,a0
    4468:	00058493          	mv	s1,a1
    446c:	fff98993          	addi	s3,s3,-1 # fffffff <__stacktop+0xffeffff>
    4470:	03092783          	lw	a5,48(s2)
    4474:	0074d413          	srli	s0,s1,0x7
    4478:	00079463          	bnez	a5,4480 <fatfs_find_blank_cluster+0x38>
    447c:	0084d413          	srli	s0,s1,0x8
    4480:	02092783          	lw	a5,32(s2)
    4484:	0cf47863          	bgeu	s0,a5,4554 <fatfs_find_blank_cluster+0x10c>
    4488:	01492583          	lw	a1,20(s2)
    448c:	00090513          	mv	a0,s2
    4490:	00c12623          	sw	a2,12(sp)
    4494:	00b405b3          	add	a1,s0,a1
    4498:	ffffe097          	auipc	ra,0xffffe
    449c:	e00080e7          	jalr	-512(ra) # 2298 <fatfs_fat_read_sector>
    44a0:	0a050a63          	beqz	a0,4554 <fatfs_find_blank_cluster+0x10c>
    44a4:	03092783          	lw	a5,48(s2)
    44a8:	20852703          	lw	a4,520(a0)
    44ac:	00c12603          	lw	a2,12(sp)
    44b0:	04079a63          	bnez	a5,4504 <fatfs_find_blank_cluster+0xbc>
    44b4:	00841413          	slli	s0,s0,0x8
    44b8:	40848433          	sub	s0,s1,s0
    44bc:	00141413          	slli	s0,s0,0x1
    44c0:	01041413          	slli	s0,s0,0x10
    44c4:	01045413          	srli	s0,s0,0x10
    44c8:	00870733          	add	a4,a4,s0
    44cc:	00174783          	lbu	a5,1(a4)
    44d0:	00074703          	lbu	a4,0(a4)
    44d4:	00879793          	slli	a5,a5,0x8
    44d8:	00e787b3          	add	a5,a5,a4
    44dc:	06079863          	bnez	a5,454c <fatfs_find_blank_cluster+0x104>
    44e0:	00962023          	sw	s1,0(a2)
    44e4:	00100513          	li	a0,1
    44e8:	02c12083          	lw	ra,44(sp)
    44ec:	02812403          	lw	s0,40(sp)
    44f0:	02412483          	lw	s1,36(sp)
    44f4:	02012903          	lw	s2,32(sp)
    44f8:	01c12983          	lw	s3,28(sp)
    44fc:	03010113          	addi	sp,sp,48
    4500:	00008067          	ret
    4504:	00741413          	slli	s0,s0,0x7
    4508:	40848433          	sub	s0,s1,s0
    450c:	00241413          	slli	s0,s0,0x2
    4510:	01041413          	slli	s0,s0,0x10
    4514:	01045413          	srli	s0,s0,0x10
    4518:	00870733          	add	a4,a4,s0
    451c:	00374783          	lbu	a5,3(a4)
    4520:	00274683          	lbu	a3,2(a4)
    4524:	01879793          	slli	a5,a5,0x18
    4528:	01069693          	slli	a3,a3,0x10
    452c:	00d787b3          	add	a5,a5,a3
    4530:	00074683          	lbu	a3,0(a4)
    4534:	00174703          	lbu	a4,1(a4)
    4538:	00d787b3          	add	a5,a5,a3
    453c:	00871713          	slli	a4,a4,0x8
    4540:	00e787b3          	add	a5,a5,a4
    4544:	0137f7b3          	and	a5,a5,s3
    4548:	f95ff06f          	j	44dc <fatfs_find_blank_cluster+0x94>
    454c:	00148493          	addi	s1,s1,1
    4550:	f21ff06f          	j	4470 <fatfs_find_blank_cluster+0x28>
    4554:	00000513          	li	a0,0
    4558:	f91ff06f          	j	44e8 <fatfs_find_blank_cluster+0xa0>

0000455c <fatfs_fat_set_cluster>:
    455c:	03052783          	lw	a5,48(a0)
    4560:	fe010113          	addi	sp,sp,-32
    4564:	00812c23          	sw	s0,24(sp)
    4568:	00912a23          	sw	s1,20(sp)
    456c:	01212823          	sw	s2,16(sp)
    4570:	00112e23          	sw	ra,28(sp)
    4574:	00050913          	mv	s2,a0
    4578:	00058413          	mv	s0,a1
    457c:	0085d493          	srli	s1,a1,0x8
    4580:	00078463          	beqz	a5,4588 <fatfs_fat_set_cluster+0x2c>
    4584:	0075d493          	srli	s1,a1,0x7
    4588:	01492583          	lw	a1,20(s2)
    458c:	00090513          	mv	a0,s2
    4590:	00c12623          	sw	a2,12(sp)
    4594:	00b485b3          	add	a1,s1,a1
    4598:	ffffe097          	auipc	ra,0xffffe
    459c:	d00080e7          	jalr	-768(ra) # 2298 <fatfs_fat_read_sector>
    45a0:	00050793          	mv	a5,a0
    45a4:	00000513          	li	a0,0
    45a8:	04078663          	beqz	a5,45f4 <fatfs_fat_set_cluster+0x98>
    45ac:	03092683          	lw	a3,48(s2)
    45b0:	2087a703          	lw	a4,520(a5)
    45b4:	00c12603          	lw	a2,12(sp)
    45b8:	04069a63          	bnez	a3,460c <fatfs_fat_set_cluster+0xb0>
    45bc:	00849493          	slli	s1,s1,0x8
    45c0:	40940433          	sub	s0,s0,s1
    45c4:	00141413          	slli	s0,s0,0x1
    45c8:	01041413          	slli	s0,s0,0x10
    45cc:	01045413          	srli	s0,s0,0x10
    45d0:	00870733          	add	a4,a4,s0
    45d4:	00c70023          	sb	a2,0(a4)
    45d8:	2087a703          	lw	a4,520(a5)
    45dc:	00865613          	srli	a2,a2,0x8
    45e0:	00870733          	add	a4,a4,s0
    45e4:	00c700a3          	sb	a2,1(a4)
    45e8:	00100713          	li	a4,1
    45ec:	20e7a223          	sw	a4,516(a5)
    45f0:	00100513          	li	a0,1
    45f4:	01c12083          	lw	ra,28(sp)
    45f8:	01812403          	lw	s0,24(sp)
    45fc:	01412483          	lw	s1,20(sp)
    4600:	01012903          	lw	s2,16(sp)
    4604:	02010113          	addi	sp,sp,32
    4608:	00008067          	ret
    460c:	00749493          	slli	s1,s1,0x7
    4610:	40940433          	sub	s0,s0,s1
    4614:	00241413          	slli	s0,s0,0x2
    4618:	01041413          	slli	s0,s0,0x10
    461c:	01045413          	srli	s0,s0,0x10
    4620:	00870733          	add	a4,a4,s0
    4624:	00c70023          	sb	a2,0(a4)
    4628:	2087a703          	lw	a4,520(a5)
    462c:	00865693          	srli	a3,a2,0x8
    4630:	00870733          	add	a4,a4,s0
    4634:	00d700a3          	sb	a3,1(a4)
    4638:	2087a703          	lw	a4,520(a5)
    463c:	01065693          	srli	a3,a2,0x10
    4640:	01865613          	srli	a2,a2,0x18
    4644:	00870733          	add	a4,a4,s0
    4648:	00d70123          	sb	a3,2(a4)
    464c:	2087a703          	lw	a4,520(a5)
    4650:	00870733          	add	a4,a4,s0
    4654:	00c701a3          	sb	a2,3(a4)
    4658:	f91ff06f          	j	45e8 <fatfs_fat_set_cluster+0x8c>

0000465c <fatfs_free_cluster_chain>:
    465c:	fe010113          	addi	sp,sp,-32
    4660:	00812c23          	sw	s0,24(sp)
    4664:	00912a23          	sw	s1,20(sp)
    4668:	00112e23          	sw	ra,28(sp)
    466c:	01212823          	sw	s2,16(sp)
    4670:	00050493          	mv	s1,a0
    4674:	ffd00413          	li	s0,-3
    4678:	fff58793          	addi	a5,a1,-1
    467c:	02f47063          	bgeu	s0,a5,469c <fatfs_free_cluster_chain+0x40>
    4680:	01c12083          	lw	ra,28(sp)
    4684:	01812403          	lw	s0,24(sp)
    4688:	01412483          	lw	s1,20(sp)
    468c:	01012903          	lw	s2,16(sp)
    4690:	00100513          	li	a0,1
    4694:	02010113          	addi	sp,sp,32
    4698:	00008067          	ret
    469c:	00048513          	mv	a0,s1
    46a0:	00b12623          	sw	a1,12(sp)
    46a4:	fffff097          	auipc	ra,0xfffff
    46a8:	f10080e7          	jalr	-240(ra) # 35b4 <fatfs_find_next_cluster>
    46ac:	00c12583          	lw	a1,12(sp)
    46b0:	00050913          	mv	s2,a0
    46b4:	00000613          	li	a2,0
    46b8:	00048513          	mv	a0,s1
    46bc:	00000097          	auipc	ra,0x0
    46c0:	ea0080e7          	jalr	-352(ra) # 455c <fatfs_fat_set_cluster>
    46c4:	00090593          	mv	a1,s2
    46c8:	fb1ff06f          	j	4678 <fatfs_free_cluster_chain+0x1c>

000046cc <fatfs_fat_add_cluster_to_chain>:
    46cc:	fd010113          	addi	sp,sp,-48
    46d0:	02912223          	sw	s1,36(sp)
    46d4:	02112623          	sw	ra,44(sp)
    46d8:	02812423          	sw	s0,40(sp)
    46dc:	03212023          	sw	s2,32(sp)
    46e0:	01312e23          	sw	s3,28(sp)
    46e4:	fff00493          	li	s1,-1
    46e8:	02959263          	bne	a1,s1,470c <fatfs_fat_add_cluster_to_chain+0x40>
    46ec:	00000513          	li	a0,0
    46f0:	02c12083          	lw	ra,44(sp)
    46f4:	02812403          	lw	s0,40(sp)
    46f8:	02412483          	lw	s1,36(sp)
    46fc:	02012903          	lw	s2,32(sp)
    4700:	01c12983          	lw	s3,28(sp)
    4704:	03010113          	addi	sp,sp,48
    4708:	00008067          	ret
    470c:	00050913          	mv	s2,a0
    4710:	00058413          	mv	s0,a1
    4714:	00060993          	mv	s3,a2
    4718:	00040593          	mv	a1,s0
    471c:	00090513          	mv	a0,s2
    4720:	00812623          	sw	s0,12(sp)
    4724:	fffff097          	auipc	ra,0xfffff
    4728:	e90080e7          	jalr	-368(ra) # 35b4 <fatfs_find_next_cluster>
    472c:	00050413          	mv	s0,a0
    4730:	fa050ee3          	beqz	a0,46ec <fatfs_fat_add_cluster_to_chain+0x20>
    4734:	00c12583          	lw	a1,12(sp)
    4738:	fe9510e3          	bne	a0,s1,4718 <fatfs_fat_add_cluster_to_chain+0x4c>
    473c:	00098613          	mv	a2,s3
    4740:	00090513          	mv	a0,s2
    4744:	00000097          	auipc	ra,0x0
    4748:	e18080e7          	jalr	-488(ra) # 455c <fatfs_fat_set_cluster>
    474c:	00040613          	mv	a2,s0
    4750:	00098593          	mv	a1,s3
    4754:	00090513          	mv	a0,s2
    4758:	00000097          	auipc	ra,0x0
    475c:	e04080e7          	jalr	-508(ra) # 455c <fatfs_fat_set_cluster>
    4760:	00100513          	li	a0,1
    4764:	f8dff06f          	j	46f0 <fatfs_fat_add_cluster_to_chain+0x24>

00004768 <fatfs_add_free_space>:
    4768:	02452783          	lw	a5,36(a0)
    476c:	fd010113          	addi	sp,sp,-48
    4770:	02812423          	sw	s0,40(sp)
    4774:	01312e23          	sw	s3,28(sp)
    4778:	01412c23          	sw	s4,24(sp)
    477c:	0005a983          	lw	s3,0(a1)
    4780:	01512a23          	sw	s5,20(sp)
    4784:	00058a13          	mv	s4,a1
    4788:	02112623          	sw	ra,44(sp)
    478c:	02912223          	sw	s1,36(sp)
    4790:	03212023          	sw	s2,32(sp)
    4794:	fff00593          	li	a1,-1
    4798:	00050413          	mv	s0,a0
    479c:	00060a93          	mv	s5,a2
    47a0:	00b78663          	beq	a5,a1,47ac <fatfs_add_free_space+0x44>
    47a4:	00000097          	auipc	ra,0x0
    47a8:	bf4080e7          	jalr	-1036(ra) # 4398 <fatfs_set_fs_info_next_free_cluster>
    47ac:	00000493          	li	s1,0
    47b0:	03549663          	bne	s1,s5,47dc <fatfs_add_free_space+0x74>
    47b4:	00100513          	li	a0,1
    47b8:	02c12083          	lw	ra,44(sp)
    47bc:	02812403          	lw	s0,40(sp)
    47c0:	02412483          	lw	s1,36(sp)
    47c4:	02012903          	lw	s2,32(sp)
    47c8:	01c12983          	lw	s3,28(sp)
    47cc:	01812a03          	lw	s4,24(sp)
    47d0:	01412a83          	lw	s5,20(sp)
    47d4:	03010113          	addi	sp,sp,48
    47d8:	00008067          	ret
    47dc:	00842583          	lw	a1,8(s0)
    47e0:	00c10613          	addi	a2,sp,12
    47e4:	00040513          	mv	a0,s0
    47e8:	00000097          	auipc	ra,0x0
    47ec:	c60080e7          	jalr	-928(ra) # 4448 <fatfs_find_blank_cluster>
    47f0:	fc0504e3          	beqz	a0,47b8 <fatfs_add_free_space+0x50>
    47f4:	00c12903          	lw	s2,12(sp)
    47f8:	00098593          	mv	a1,s3
    47fc:	00040513          	mv	a0,s0
    4800:	00090613          	mv	a2,s2
    4804:	00000097          	auipc	ra,0x0
    4808:	d58080e7          	jalr	-680(ra) # 455c <fatfs_fat_set_cluster>
    480c:	fff00613          	li	a2,-1
    4810:	00090593          	mv	a1,s2
    4814:	00040513          	mv	a0,s0
    4818:	00000097          	auipc	ra,0x0
    481c:	d44080e7          	jalr	-700(ra) # 455c <fatfs_fat_set_cluster>
    4820:	00049463          	bnez	s1,4828 <fatfs_add_free_space+0xc0>
    4824:	012a2023          	sw	s2,0(s4)
    4828:	00148493          	addi	s1,s1,1
    482c:	00090993          	mv	s3,s2
    4830:	f81ff06f          	j	47b0 <fatfs_add_free_space+0x48>

00004834 <_write_sectors>:
    4834:	fb010113          	addi	sp,sp,-80
    4838:	03512a23          	sw	s5,52(sp)
    483c:	0000aab7          	lui	s5,0xa
    4840:	04112623          	sw	ra,76(sp)
    4844:	04812423          	sw	s0,72(sp)
    4848:	04912223          	sw	s1,68(sp)
    484c:	03412c23          	sw	s4,56(sp)
    4850:	03612823          	sw	s6,48(sp)
    4854:	03712623          	sw	s7,44(sp)
    4858:	03812423          	sw	s8,40(sp)
    485c:	03912223          	sw	s9,36(sp)
    4860:	03a12023          	sw	s10,32(sp)
    4864:	05212023          	sw	s2,64(sp)
    4868:	03312e23          	sw	s3,60(sp)
    486c:	c6ca8b93          	addi	s7,s5,-916 # 9c6c <_fs>
    4870:	000bc983          	lbu	s3,0(s7)
    4874:	00058b13          	mv	s6,a1
    4878:	fff00793          	li	a5,-1
    487c:	00098593          	mv	a1,s3
    4880:	00050493          	mv	s1,a0
    4884:	000b0513          	mv	a0,s6
    4888:	00068c13          	mv	s8,a3
    488c:	00f12e23          	sw	a5,28(sp)
    4890:	00060d13          	mv	s10,a2
    4894:	ffffd097          	auipc	ra,0xffffd
    4898:	128080e7          	jalr	296(ra) # 19bc <__udivsi3>
    489c:	00050a13          	mv	s4,a0
    48a0:	00098593          	mv	a1,s3
    48a4:	000b0513          	mv	a0,s6
    48a8:	ffffd097          	auipc	ra,0xffffd
    48ac:	15c080e7          	jalr	348(ra) # 1a04 <__umodsi3>
    48b0:	00ac07b3          	add	a5,s8,a0
    48b4:	00050c93          	mv	s9,a0
    48b8:	000c0413          	mv	s0,s8
    48bc:	00f9fe63          	bgeu	s3,a5,48d8 <_write_sectors+0xa4>
    48c0:	000a0593          	mv	a1,s4
    48c4:	00098513          	mv	a0,s3
    48c8:	ffffe097          	auipc	ra,0xffffe
    48cc:	818080e7          	jalr	-2024(ra) # 20e0 <__mulsi3>
    48d0:	416987b3          	sub	a5,s3,s6
    48d4:	00f50433          	add	s0,a0,a5
    48d8:	2284a903          	lw	s2,552(s1)
    48dc:	03491a63          	bne	s2,s4,4910 <_write_sectors+0xdc>
    48e0:	22c4a583          	lw	a1,556(s1)
    48e4:	c6ca8513          	addi	a0,s5,-916
    48e8:	ffffe097          	auipc	ra,0xffffe
    48ec:	b5c080e7          	jalr	-1188(ra) # 2444 <fatfs_lba_of_cluster>
    48f0:	019505b3          	add	a1,a0,s9
    48f4:	00040693          	mv	a3,s0
    48f8:	000d0613          	mv	a2,s10
    48fc:	c6ca8513          	addi	a0,s5,-916
    4900:	ffffe097          	auipc	ra,0xffffe
    4904:	ba8080e7          	jalr	-1112(ra) # 24a8 <fatfs_sector_write>
    4908:	04050a63          	beqz	a0,495c <_write_sectors+0x128>
    490c:	0540006f          	j	4960 <_write_sectors+0x12c>
    4910:	093b6663          	bltu	s6,s3,499c <_write_sectors+0x168>
    4914:	00190793          	addi	a5,s2,1
    4918:	09479263          	bne	a5,s4,499c <_write_sectors+0x168>
    491c:	22c4a583          	lw	a1,556(s1)
    4920:	fff00b13          	li	s6,-1
    4924:	09496263          	bltu	s2,s4,49a8 <_write_sectors+0x174>
    4928:	fff00793          	li	a5,-1
    492c:	0af59463          	bne	a1,a5,49d4 <_write_sectors+0x1a0>
    4930:	000bc583          	lbu	a1,0(s7)
    4934:	fff58513          	addi	a0,a1,-1
    4938:	01850533          	add	a0,a0,s8
    493c:	ffffd097          	auipc	ra,0xffffd
    4940:	080080e7          	jalr	128(ra) # 19bc <__udivsi3>
    4944:	00050613          	mv	a2,a0
    4948:	01c10593          	addi	a1,sp,28
    494c:	000b8513          	mv	a0,s7
    4950:	00000097          	auipc	ra,0x0
    4954:	e18080e7          	jalr	-488(ra) # 4768 <fatfs_add_free_space>
    4958:	06051c63          	bnez	a0,49d0 <_write_sectors+0x19c>
    495c:	00000413          	li	s0,0
    4960:	04c12083          	lw	ra,76(sp)
    4964:	00040513          	mv	a0,s0
    4968:	04812403          	lw	s0,72(sp)
    496c:	04412483          	lw	s1,68(sp)
    4970:	04012903          	lw	s2,64(sp)
    4974:	03c12983          	lw	s3,60(sp)
    4978:	03812a03          	lw	s4,56(sp)
    497c:	03412a83          	lw	s5,52(sp)
    4980:	03012b03          	lw	s6,48(sp)
    4984:	02c12b83          	lw	s7,44(sp)
    4988:	02812c03          	lw	s8,40(sp)
    498c:	02412c83          	lw	s9,36(sp)
    4990:	02012d03          	lw	s10,32(sp)
    4994:	05010113          	addi	sp,sp,80
    4998:	00008067          	ret
    499c:	0044a583          	lw	a1,4(s1)
    49a0:	00000913          	li	s2,0
    49a4:	f7dff06f          	j	4920 <_write_sectors+0xec>
    49a8:	c6ca8513          	addi	a0,s5,-916
    49ac:	00b12623          	sw	a1,12(sp)
    49b0:	fffff097          	auipc	ra,0xfffff
    49b4:	c04080e7          	jalr	-1020(ra) # 35b4 <fatfs_find_next_cluster>
    49b8:	00c12583          	lw	a1,12(sp)
    49bc:	00b12e23          	sw	a1,28(sp)
    49c0:	f76508e3          	beq	a0,s6,4930 <_write_sectors+0xfc>
    49c4:	00190913          	addi	s2,s2,1
    49c8:	00050593          	mv	a1,a0
    49cc:	f59ff06f          	j	4924 <_write_sectors+0xf0>
    49d0:	01c12583          	lw	a1,28(sp)
    49d4:	22b4a623          	sw	a1,556(s1)
    49d8:	2344a423          	sw	s4,552(s1)
    49dc:	f09ff06f          	j	48e4 <_write_sectors+0xb0>

000049e0 <fl_fflush>:
    49e0:	000067b7          	lui	a5,0x6
    49e4:	8a07a783          	lw	a5,-1888(a5) # 58a0 <_filelib_init>
    49e8:	ff010113          	addi	sp,sp,-16
    49ec:	00812423          	sw	s0,8(sp)
    49f0:	00112623          	sw	ra,12(sp)
    49f4:	00912223          	sw	s1,4(sp)
    49f8:	00050413          	mv	s0,a0
    49fc:	00079663          	bnez	a5,4a08 <fl_fflush+0x28>
    4a00:	ffffe097          	auipc	ra,0xffffe
    4a04:	b74080e7          	jalr	-1164(ra) # 2574 <fl_init>
    4a08:	04040663          	beqz	s0,4a54 <fl_fflush+0x74>
    4a0c:	0000a4b7          	lui	s1,0xa
    4a10:	c6c48493          	addi	s1,s1,-916 # 9c6c <_fs>
    4a14:	03c4a783          	lw	a5,60(s1)
    4a18:	00078463          	beqz	a5,4a20 <fl_fflush+0x40>
    4a1c:	000780e7          	jalr	a5
    4a20:	43442783          	lw	a5,1076(s0)
    4a24:	02078263          	beqz	a5,4a48 <fl_fflush+0x68>
    4a28:	43042583          	lw	a1,1072(s0)
    4a2c:	00100693          	li	a3,1
    4a30:	23040613          	addi	a2,s0,560
    4a34:	00040513          	mv	a0,s0
    4a38:	00000097          	auipc	ra,0x0
    4a3c:	dfc080e7          	jalr	-516(ra) # 4834 <_write_sectors>
    4a40:	00050463          	beqz	a0,4a48 <fl_fflush+0x68>
    4a44:	42042a23          	sw	zero,1076(s0)
    4a48:	0404a783          	lw	a5,64(s1)
    4a4c:	00078463          	beqz	a5,4a54 <fl_fflush+0x74>
    4a50:	000780e7          	jalr	a5
    4a54:	00c12083          	lw	ra,12(sp)
    4a58:	00812403          	lw	s0,8(sp)
    4a5c:	00412483          	lw	s1,4(sp)
    4a60:	00000513          	li	a0,0
    4a64:	01010113          	addi	sp,sp,16
    4a68:	00008067          	ret

00004a6c <fl_fclose>:
    4a6c:	000067b7          	lui	a5,0x6
    4a70:	8a07a783          	lw	a5,-1888(a5) # 58a0 <_filelib_init>
    4a74:	ff010113          	addi	sp,sp,-16
    4a78:	00812423          	sw	s0,8(sp)
    4a7c:	00112623          	sw	ra,12(sp)
    4a80:	00912223          	sw	s1,4(sp)
    4a84:	01212023          	sw	s2,0(sp)
    4a88:	00050413          	mv	s0,a0
    4a8c:	00079663          	bnez	a5,4a98 <fl_fclose+0x2c>
    4a90:	ffffe097          	auipc	ra,0xffffe
    4a94:	ae4080e7          	jalr	-1308(ra) # 2574 <fl_init>
    4a98:	08040c63          	beqz	s0,4b30 <fl_fclose+0xc4>
    4a9c:	0000a4b7          	lui	s1,0xa
    4aa0:	c6c48913          	addi	s2,s1,-916 # 9c6c <_fs>
    4aa4:	03c92783          	lw	a5,60(s2)
    4aa8:	00078463          	beqz	a5,4ab0 <fl_fclose+0x44>
    4aac:	000780e7          	jalr	a5
    4ab0:	00040513          	mv	a0,s0
    4ab4:	00000097          	auipc	ra,0x0
    4ab8:	f2c080e7          	jalr	-212(ra) # 49e0 <fl_fflush>
    4abc:	01042783          	lw	a5,16(s0)
    4ac0:	00078e63          	beqz	a5,4adc <fl_fclose+0x70>
    4ac4:	00c42683          	lw	a3,12(s0)
    4ac8:	00042583          	lw	a1,0(s0)
    4acc:	21c40613          	addi	a2,s0,540
    4ad0:	c6c48513          	addi	a0,s1,-916
    4ad4:	fffff097          	auipc	ra,0xfffff
    4ad8:	338080e7          	jalr	824(ra) # 3e0c <fatfs_update_file_length>
    4adc:	fff00793          	li	a5,-1
    4ae0:	42f42823          	sw	a5,1072(s0)
    4ae4:	00040513          	mv	a0,s0
    4ae8:	00042423          	sw	zero,8(s0)
    4aec:	00042623          	sw	zero,12(s0)
    4af0:	00042223          	sw	zero,4(s0)
    4af4:	42042a23          	sw	zero,1076(s0)
    4af8:	00042823          	sw	zero,16(s0)
    4afc:	ffffe097          	auipc	ra,0xffffe
    4b00:	900080e7          	jalr	-1792(ra) # 23fc <_free_file>
    4b04:	c6c48513          	addi	a0,s1,-916
    4b08:	fffff097          	auipc	ra,0xfffff
    4b0c:	a54080e7          	jalr	-1452(ra) # 355c <fatfs_fat_purge>
    4b10:	04092783          	lw	a5,64(s2)
    4b14:	00078e63          	beqz	a5,4b30 <fl_fclose+0xc4>
    4b18:	00812403          	lw	s0,8(sp)
    4b1c:	00c12083          	lw	ra,12(sp)
    4b20:	00412483          	lw	s1,4(sp)
    4b24:	00012903          	lw	s2,0(sp)
    4b28:	01010113          	addi	sp,sp,16
    4b2c:	00078067          	jr	a5
    4b30:	00c12083          	lw	ra,12(sp)
    4b34:	00812403          	lw	s0,8(sp)
    4b38:	00412483          	lw	s1,4(sp)
    4b3c:	00012903          	lw	s2,0(sp)
    4b40:	01010113          	addi	sp,sp,16
    4b44:	00008067          	ret

00004b48 <fl_fread>:
    4b48:	000067b7          	lui	a5,0x6
    4b4c:	8a07a783          	lw	a5,-1888(a5) # 58a0 <_filelib_init>
    4b50:	fc010113          	addi	sp,sp,-64
    4b54:	02812c23          	sw	s0,56(sp)
    4b58:	03512223          	sw	s5,36(sp)
    4b5c:	02112e23          	sw	ra,60(sp)
    4b60:	02912a23          	sw	s1,52(sp)
    4b64:	03212823          	sw	s2,48(sp)
    4b68:	03312623          	sw	s3,44(sp)
    4b6c:	03412423          	sw	s4,40(sp)
    4b70:	03612023          	sw	s6,32(sp)
    4b74:	01712e23          	sw	s7,28(sp)
    4b78:	01812c23          	sw	s8,24(sp)
    4b7c:	01912a23          	sw	s9,20(sp)
    4b80:	00050a93          	mv	s5,a0
    4b84:	00068413          	mv	s0,a3
    4b88:	00058513          	mv	a0,a1
    4b8c:	00079e63          	bnez	a5,4ba8 <fl_fread+0x60>
    4b90:	00c12623          	sw	a2,12(sp)
    4b94:	00b12423          	sw	a1,8(sp)
    4b98:	ffffe097          	auipc	ra,0xffffe
    4b9c:	9dc080e7          	jalr	-1572(ra) # 2574 <fl_init>
    4ba0:	00c12603          	lw	a2,12(sp)
    4ba4:	00812503          	lw	a0,8(sp)
    4ba8:	14040e63          	beqz	s0,4d04 <fl_fread+0x1bc>
    4bac:	140a8c63          	beqz	s5,4d04 <fl_fread+0x1bc>
    4bb0:	43844783          	lbu	a5,1080(s0)
    4bb4:	fff00493          	li	s1,-1
    4bb8:	0017f793          	andi	a5,a5,1
    4bbc:	04078863          	beqz	a5,4c0c <fl_fread+0xc4>
    4bc0:	00060593          	mv	a1,a2
    4bc4:	ffffd097          	auipc	ra,0xffffd
    4bc8:	51c080e7          	jalr	1308(ra) # 20e0 <__mulsi3>
    4bcc:	00050493          	mv	s1,a0
    4bd0:	02050e63          	beqz	a0,4c0c <fl_fread+0xc4>
    4bd4:	00842583          	lw	a1,8(s0)
    4bd8:	00c42783          	lw	a5,12(s0)
    4bdc:	12f5f463          	bgeu	a1,a5,4d04 <fl_fread+0x1bc>
    4be0:	00b50733          	add	a4,a0,a1
    4be4:	00e7f463          	bgeu	a5,a4,4bec <fl_fread+0xa4>
    4be8:	40b784b3          	sub	s1,a5,a1
    4bec:	0095da13          	srli	s4,a1,0x9
    4bf0:	1ff5f913          	andi	s2,a1,511
    4bf4:	00000993          	li	s3,0
    4bf8:	23040b13          	addi	s6,s0,560
    4bfc:	20000b93          	li	s7,512
    4c00:	1ff00c13          	li	s8,511
    4c04:	0499c063          	blt	s3,s1,4c44 <fl_fread+0xfc>
    4c08:	00098493          	mv	s1,s3
    4c0c:	03c12083          	lw	ra,60(sp)
    4c10:	03812403          	lw	s0,56(sp)
    4c14:	03012903          	lw	s2,48(sp)
    4c18:	02c12983          	lw	s3,44(sp)
    4c1c:	02812a03          	lw	s4,40(sp)
    4c20:	02412a83          	lw	s5,36(sp)
    4c24:	02012b03          	lw	s6,32(sp)
    4c28:	01c12b83          	lw	s7,28(sp)
    4c2c:	01812c03          	lw	s8,24(sp)
    4c30:	01412c83          	lw	s9,20(sp)
    4c34:	00048513          	mv	a0,s1
    4c38:	03412483          	lw	s1,52(sp)
    4c3c:	04010113          	addi	sp,sp,64
    4c40:	00008067          	ret
    4c44:	04091663          	bnez	s2,4c90 <fl_fread+0x148>
    4c48:	413486b3          	sub	a3,s1,s3
    4c4c:	04dc5263          	bge	s8,a3,4c90 <fl_fread+0x148>
    4c50:	4096d693          	srai	a3,a3,0x9
    4c54:	013a8633          	add	a2,s5,s3
    4c58:	000a0593          	mv	a1,s4
    4c5c:	00040513          	mv	a0,s0
    4c60:	fffff097          	auipc	ra,0xfffff
    4c64:	5ec080e7          	jalr	1516(ra) # 424c <_read_sectors>
    4c68:	fa0500e3          	beqz	a0,4c08 <fl_fread+0xc0>
    4c6c:	00951c93          	slli	s9,a0,0x9
    4c70:	000c8613          	mv	a2,s9
    4c74:	00aa0a33          	add	s4,s4,a0
    4c78:	00842783          	lw	a5,8(s0)
    4c7c:	00c989b3          	add	s3,s3,a2
    4c80:	00000913          	li	s2,0
    4c84:	019787b3          	add	a5,a5,s9
    4c88:	00f42423          	sw	a5,8(s0)
    4c8c:	f79ff06f          	j	4c04 <fl_fread+0xbc>
    4c90:	43042783          	lw	a5,1072(s0)
    4c94:	03478e63          	beq	a5,s4,4cd0 <fl_fread+0x188>
    4c98:	43442783          	lw	a5,1076(s0)
    4c9c:	00078863          	beqz	a5,4cac <fl_fread+0x164>
    4ca0:	00040513          	mv	a0,s0
    4ca4:	00000097          	auipc	ra,0x0
    4ca8:	d3c080e7          	jalr	-708(ra) # 49e0 <fl_fflush>
    4cac:	00100693          	li	a3,1
    4cb0:	000b0613          	mv	a2,s6
    4cb4:	000a0593          	mv	a1,s4
    4cb8:	00040513          	mv	a0,s0
    4cbc:	fffff097          	auipc	ra,0xfffff
    4cc0:	590080e7          	jalr	1424(ra) # 424c <_read_sectors>
    4cc4:	f40502e3          	beqz	a0,4c08 <fl_fread+0xc0>
    4cc8:	43442823          	sw	s4,1072(s0)
    4ccc:	42042a23          	sw	zero,1076(s0)
    4cd0:	412b87b3          	sub	a5,s7,s2
    4cd4:	41348633          	sub	a2,s1,s3
    4cd8:	00c7d463          	bge	a5,a2,4ce0 <fl_fread+0x198>
    4cdc:	00078613          	mv	a2,a5
    4ce0:	012b05b3          	add	a1,s6,s2
    4ce4:	013a8533          	add	a0,s5,s3
    4ce8:	00060c93          	mv	s9,a2
    4cec:	00c12423          	sw	a2,8(sp)
    4cf0:	ffffd097          	auipc	ra,0xffffd
    4cf4:	d94080e7          	jalr	-620(ra) # 1a84 <memcpy>
    4cf8:	00812603          	lw	a2,8(sp)
    4cfc:	001a0a13          	addi	s4,s4,1
    4d00:	f79ff06f          	j	4c78 <fl_fread+0x130>
    4d04:	fff00493          	li	s1,-1
    4d08:	f05ff06f          	j	4c0c <fl_fread+0xc4>

00004d0c <fatfs_allocate_free_space>:
    4d0c:	fd010113          	addi	sp,sp,-48
    4d10:	02112623          	sw	ra,44(sp)
    4d14:	02812423          	sw	s0,40(sp)
    4d18:	02912223          	sw	s1,36(sp)
    4d1c:	03212023          	sw	s2,32(sp)
    4d20:	01312e23          	sw	s3,28(sp)
    4d24:	01412c23          	sw	s4,24(sp)
    4d28:	01512a23          	sw	s5,20(sp)
    4d2c:	02069863          	bnez	a3,4d5c <fatfs_allocate_free_space+0x50>
    4d30:	00000413          	li	s0,0
    4d34:	02c12083          	lw	ra,44(sp)
    4d38:	00040513          	mv	a0,s0
    4d3c:	02812403          	lw	s0,40(sp)
    4d40:	02412483          	lw	s1,36(sp)
    4d44:	02012903          	lw	s2,32(sp)
    4d48:	01c12983          	lw	s3,28(sp)
    4d4c:	01812a03          	lw	s4,24(sp)
    4d50:	01412a83          	lw	s5,20(sp)
    4d54:	03010113          	addi	sp,sp,48
    4d58:	00008067          	ret
    4d5c:	02452783          	lw	a5,36(a0)
    4d60:	00058a13          	mv	s4,a1
    4d64:	fff00593          	li	a1,-1
    4d68:	00050493          	mv	s1,a0
    4d6c:	00068913          	mv	s2,a3
    4d70:	00060993          	mv	s3,a2
    4d74:	00b78663          	beq	a5,a1,4d80 <fatfs_allocate_free_space+0x74>
    4d78:	fffff097          	auipc	ra,0xfffff
    4d7c:	620080e7          	jalr	1568(ra) # 4398 <fatfs_set_fs_info_next_free_cluster>
    4d80:	0004c783          	lbu	a5,0(s1)
    4d84:	00090513          	mv	a0,s2
    4d88:	00979a93          	slli	s5,a5,0x9
    4d8c:	000a8593          	mv	a1,s5
    4d90:	ffffd097          	auipc	ra,0xffffd
    4d94:	c2c080e7          	jalr	-980(ra) # 19bc <__udivsi3>
    4d98:	00050413          	mv	s0,a0
    4d9c:	00050593          	mv	a1,a0
    4da0:	000a8513          	mv	a0,s5
    4da4:	ffffd097          	auipc	ra,0xffffd
    4da8:	33c080e7          	jalr	828(ra) # 20e0 <__mulsi3>
    4dac:	41250533          	sub	a0,a0,s2
    4db0:	00a03533          	snez	a0,a0
    4db4:	00a40933          	add	s2,s0,a0
    4db8:	040a0463          	beqz	s4,4e00 <fatfs_allocate_free_space+0xf4>
    4dbc:	0084a583          	lw	a1,8(s1)
    4dc0:	00c10613          	addi	a2,sp,12
    4dc4:	00048513          	mv	a0,s1
    4dc8:	fffff097          	auipc	ra,0xfffff
    4dcc:	680080e7          	jalr	1664(ra) # 4448 <fatfs_find_blank_cluster>
    4dd0:	00050413          	mv	s0,a0
    4dd4:	f4050ee3          	beqz	a0,4d30 <fatfs_allocate_free_space+0x24>
    4dd8:	00100793          	li	a5,1
    4ddc:	02f91663          	bne	s2,a5,4e08 <fatfs_allocate_free_space+0xfc>
    4de0:	00c12903          	lw	s2,12(sp)
    4de4:	fff00613          	li	a2,-1
    4de8:	00048513          	mv	a0,s1
    4dec:	00090593          	mv	a1,s2
    4df0:	fffff097          	auipc	ra,0xfffff
    4df4:	76c080e7          	jalr	1900(ra) # 455c <fatfs_fat_set_cluster>
    4df8:	0129a023          	sw	s2,0(s3)
    4dfc:	f39ff06f          	j	4d34 <fatfs_allocate_free_space+0x28>
    4e00:	0009a783          	lw	a5,0(s3)
    4e04:	00f12623          	sw	a5,12(sp)
    4e08:	00090613          	mv	a2,s2
    4e0c:	00c10593          	addi	a1,sp,12
    4e10:	00048513          	mv	a0,s1
    4e14:	00000097          	auipc	ra,0x0
    4e18:	954080e7          	jalr	-1708(ra) # 4768 <fatfs_add_free_space>
    4e1c:	00050413          	mv	s0,a0
    4e20:	f15ff06f          	j	4d34 <fatfs_allocate_free_space+0x28>

00004e24 <fatfs_add_file_entry>:
    4e24:	03852883          	lw	a7,56(a0)
    4e28:	30088e63          	beqz	a7,5144 <fatfs_add_file_entry+0x320>
    4e2c:	f8010113          	addi	sp,sp,-128
    4e30:	06812c23          	sw	s0,120(sp)
    4e34:	00050413          	mv	s0,a0
    4e38:	00060513          	mv	a0,a2
    4e3c:	06912a23          	sw	s1,116(sp)
    4e40:	07512223          	sw	s5,100(sp)
    4e44:	00f12c23          	sw	a5,24(sp)
    4e48:	00e12a23          	sw	a4,20(sp)
    4e4c:	06112e23          	sw	ra,124(sp)
    4e50:	07212823          	sw	s2,112(sp)
    4e54:	07312623          	sw	s3,108(sp)
    4e58:	07412423          	sw	s4,104(sp)
    4e5c:	07612023          	sw	s6,96(sp)
    4e60:	05712e23          	sw	s7,92(sp)
    4e64:	05812c23          	sw	s8,88(sp)
    4e68:	05912a23          	sw	s9,84(sp)
    4e6c:	05a12823          	sw	s10,80(sp)
    4e70:	05b12623          	sw	s11,76(sp)
    4e74:	01012e23          	sw	a6,28(sp)
    4e78:	00068a93          	mv	s5,a3
    4e7c:	00c12823          	sw	a2,16(sp)
    4e80:	00b12423          	sw	a1,8(sp)
    4e84:	ffffe097          	auipc	ra,0xffffe
    4e88:	a48080e7          	jalr	-1464(ra) # 28cc <fatfs_lfn_entries_required>
    4e8c:	00150713          	addi	a4,a0,1
    4e90:	00100793          	li	a5,1
    4e94:	00050493          	mv	s1,a0
    4e98:	2ae7f263          	bgeu	a5,a4,513c <fatfs_add_file_entry+0x318>
    4e9c:	00000a13          	li	s4,0
    4ea0:	00000993          	li	s3,0
    4ea4:	00000913          	li	s2,0
    4ea8:	00000c93          	li	s9,0
    4eac:	00000b13          	li	s6,0
    4eb0:	01000c13          	li	s8,16
    4eb4:	00812583          	lw	a1,8(sp)
    4eb8:	00000693          	li	a3,0
    4ebc:	000b0613          	mv	a2,s6
    4ec0:	00040513          	mv	a0,s0
    4ec4:	000b0b93          	mv	s7,s6
    4ec8:	ffffe097          	auipc	ra,0xffffe
    4ecc:	7f4080e7          	jalr	2036(ra) # 36bc <fatfs_sector_reader>
    4ed0:	18050463          	beqz	a0,5058 <fatfs_add_file_entry+0x234>
    4ed4:	001b0b13          	addi	s6,s6,1
    4ed8:	04440793          	addi	a5,s0,68
    4edc:	000c8d13          	mv	s10,s9
    4ee0:	00000d93          	li	s11,0
    4ee4:	00078513          	mv	a0,a5
    4ee8:	00f12623          	sw	a5,12(sp)
    4eec:	ffffe097          	auipc	ra,0xffffe
    4ef0:	8f8080e7          	jalr	-1800(ra) # 27e4 <fatfs_entry_lfn_text>
    4ef4:	00c12783          	lw	a5,12(sp)
    4ef8:	00050c93          	mv	s9,a0
    4efc:	02050c63          	beqz	a0,4f34 <fatfs_add_file_entry+0x110>
    4f00:	020d0463          	beqz	s10,4f28 <fatfs_add_file_entry+0x104>
    4f04:	00090c93          	mv	s9,s2
    4f08:	000c8913          	mv	s2,s9
    4f0c:	001d0c93          	addi	s9,s10,1
    4f10:	001d8d93          	addi	s11,s11,1
    4f14:	0ffdfd93          	zext.b	s11,s11
    4f18:	02078793          	addi	a5,a5,32
    4f1c:	f98d8ce3          	beq	s11,s8,4eb4 <fatfs_add_file_entry+0x90>
    4f20:	000c8d13          	mv	s10,s9
    4f24:	fc1ff06f          	j	4ee4 <fatfs_add_file_entry+0xc0>
    4f28:	000d8a13          	mv	s4,s11
    4f2c:	000b8993          	mv	s3,s7
    4f30:	fd9ff06f          	j	4f08 <fatfs_add_file_entry+0xe4>
    4f34:	0007c683          	lbu	a3,0(a5)
    4f38:	0e500713          	li	a4,229
    4f3c:	10e69863          	bne	a3,a4,504c <fatfs_add_file_entry+0x228>
    4f40:	000d1863          	bnez	s10,4f50 <fatfs_add_file_entry+0x12c>
    4f44:	000d8a13          	mv	s4,s11
    4f48:	000b8993          	mv	s3,s7
    4f4c:	00100913          	li	s2,1
    4f50:	fa9d4ee3          	blt	s10,s1,4f0c <fatfs_add_file_entry+0xe8>
    4f54:	00ba8693          	addi	a3,s5,11
    4f58:	000a8713          	mv	a4,s5
    4f5c:	00000913          	li	s2,0
    4f60:	00074603          	lbu	a2,0(a4)
    4f64:	00195793          	srli	a5,s2,0x1
    4f68:	00791913          	slli	s2,s2,0x7
    4f6c:	012787b3          	add	a5,a5,s2
    4f70:	00170713          	addi	a4,a4,1
    4f74:	00c787b3          	add	a5,a5,a2
    4f78:	0ff7f913          	zext.b	s2,a5
    4f7c:	fed712e3          	bne	a4,a3,4f60 <fatfs_add_file_entry+0x13c>
    4f80:	00098b13          	mv	s6,s3
    4f84:	00000d13          	li	s10,0
    4f88:	01000b93          	li	s7,16
    4f8c:	00812583          	lw	a1,8(sp)
    4f90:	00000693          	li	a3,0
    4f94:	000b0613          	mv	a2,s6
    4f98:	00040513          	mv	a0,s0
    4f9c:	ffffe097          	auipc	ra,0xffffe
    4fa0:	720080e7          	jalr	1824(ra) # 36bc <fatfs_sector_reader>
    4fa4:	18050c63          	beqz	a0,513c <fatfs_add_file_entry+0x318>
    4fa8:	04440c93          	addi	s9,s0,68
    4fac:	413b0db3          	sub	s11,s6,s3
    4fb0:	00000793          	li	a5,0
    4fb4:	00000c13          	li	s8,0
    4fb8:	01912623          	sw	s9,12(sp)
    4fbc:	000d1663          	bnez	s10,4fc8 <fatfs_add_file_entry+0x1a4>
    4fc0:	154c1863          	bne	s8,s4,5110 <fatfs_add_file_entry+0x2ec>
    4fc4:	140d9663          	bnez	s11,5110 <fatfs_add_file_entry+0x2ec>
    4fc8:	12049263          	bnez	s1,50ec <fatfs_add_file_entry+0x2c8>
    4fcc:	01c12703          	lw	a4,28(sp)
    4fd0:	01412603          	lw	a2,20(sp)
    4fd4:	01812583          	lw	a1,24(sp)
    4fd8:	02010693          	addi	a3,sp,32
    4fdc:	000a8513          	mv	a0,s5
    4fe0:	ffffe097          	auipc	ra,0xffffe
    4fe4:	a30080e7          	jalr	-1488(ra) # 2a10 <fatfs_sfn_create_entry>
    4fe8:	02000613          	li	a2,32
    4fec:	00c105b3          	add	a1,sp,a2
    4ff0:	000c8513          	mv	a0,s9
    4ff4:	ffffd097          	auipc	ra,0xffffd
    4ff8:	a90080e7          	jalr	-1392(ra) # 1a84 <memcpy>
    4ffc:	03842783          	lw	a5,56(s0)
    5000:	00c12583          	lw	a1,12(sp)
    5004:	24442503          	lw	a0,580(s0)
    5008:	00100613          	li	a2,1
    500c:	000780e7          	jalr	a5
    5010:	07c12083          	lw	ra,124(sp)
    5014:	07812403          	lw	s0,120(sp)
    5018:	07412483          	lw	s1,116(sp)
    501c:	07012903          	lw	s2,112(sp)
    5020:	06c12983          	lw	s3,108(sp)
    5024:	06812a03          	lw	s4,104(sp)
    5028:	06412a83          	lw	s5,100(sp)
    502c:	06012b03          	lw	s6,96(sp)
    5030:	05c12b83          	lw	s7,92(sp)
    5034:	05812c03          	lw	s8,88(sp)
    5038:	05412c83          	lw	s9,84(sp)
    503c:	05012d03          	lw	s10,80(sp)
    5040:	04c12d83          	lw	s11,76(sp)
    5044:	08010113          	addi	sp,sp,128
    5048:	00008067          	ret
    504c:	ee068ae3          	beqz	a3,4f40 <fatfs_add_file_entry+0x11c>
    5050:	00000913          	li	s2,0
    5054:	ebdff06f          	j	4f10 <fatfs_add_file_entry+0xec>
    5058:	00842583          	lw	a1,8(s0)
    505c:	02010613          	addi	a2,sp,32
    5060:	00040513          	mv	a0,s0
    5064:	fffff097          	auipc	ra,0xfffff
    5068:	3e4080e7          	jalr	996(ra) # 4448 <fatfs_find_blank_cluster>
    506c:	0c050863          	beqz	a0,513c <fatfs_add_file_entry+0x318>
    5070:	02012b83          	lw	s7,32(sp)
    5074:	00812583          	lw	a1,8(sp)
    5078:	00040513          	mv	a0,s0
    507c:	000b8613          	mv	a2,s7
    5080:	fffff097          	auipc	ra,0xfffff
    5084:	64c080e7          	jalr	1612(ra) # 46cc <fatfs_fat_add_cluster_to_chain>
    5088:	0a050a63          	beqz	a0,513c <fatfs_add_file_entry+0x318>
    508c:	20000613          	li	a2,512
    5090:	00000593          	li	a1,0
    5094:	04440513          	addi	a0,s0,68
    5098:	ffffd097          	auipc	ra,0xffffd
    509c:	9d0080e7          	jalr	-1584(ra) # 1a68 <memset>
    50a0:	00000c13          	li	s8,0
    50a4:	00044783          	lbu	a5,0(s0)
    50a8:	00fc6a63          	bltu	s8,a5,50bc <fatfs_add_file_entry+0x298>
    50ac:	ea0914e3          	bnez	s2,4f54 <fatfs_add_file_entry+0x130>
    50b0:	000b0993          	mv	s3,s6
    50b4:	00000a13          	li	s4,0
    50b8:	e9dff06f          	j	4f54 <fatfs_add_file_entry+0x130>
    50bc:	00000693          	li	a3,0
    50c0:	000c0613          	mv	a2,s8
    50c4:	000b8593          	mv	a1,s7
    50c8:	00040513          	mv	a0,s0
    50cc:	ffffd097          	auipc	ra,0xffffd
    50d0:	3f4080e7          	jalr	1012(ra) # 24c0 <fatfs_write_sector>
    50d4:	06050463          	beqz	a0,513c <fatfs_add_file_entry+0x318>
    50d8:	001c0c13          	addi	s8,s8,1
    50dc:	0ffc7c13          	zext.b	s8,s8
    50e0:	fc5ff06f          	j	50a4 <fatfs_add_file_entry+0x280>
    50e4:	001b0b13          	addi	s6,s6,1
    50e8:	ea5ff06f          	j	4f8c <fatfs_add_file_entry+0x168>
    50ec:	01012503          	lw	a0,16(sp)
    50f0:	fff48493          	addi	s1,s1,-1
    50f4:	00090693          	mv	a3,s2
    50f8:	00048613          	mv	a2,s1
    50fc:	000c8593          	mv	a1,s9
    5100:	ffffd097          	auipc	ra,0xffffd
    5104:	7fc080e7          	jalr	2044(ra) # 28fc <fatfs_filename_to_lfn>
    5108:	00100d13          	li	s10,1
    510c:	000d0793          	mv	a5,s10
    5110:	001c0c13          	addi	s8,s8,1
    5114:	0ffc7c13          	zext.b	s8,s8
    5118:	020c8c93          	addi	s9,s9,32
    511c:	eb7c10e3          	bne	s8,s7,4fbc <fatfs_add_file_entry+0x198>
    5120:	fc0782e3          	beqz	a5,50e4 <fatfs_add_file_entry+0x2c0>
    5124:	03842783          	lw	a5,56(s0)
    5128:	00c12583          	lw	a1,12(sp)
    512c:	24442503          	lw	a0,580(s0)
    5130:	00100613          	li	a2,1
    5134:	000780e7          	jalr	a5
    5138:	fa0516e3          	bnez	a0,50e4 <fatfs_add_file_entry+0x2c0>
    513c:	00000513          	li	a0,0
    5140:	ed1ff06f          	j	5010 <fatfs_add_file_entry+0x1ec>
    5144:	00000513          	li	a0,0
    5148:	00008067          	ret

0000514c <fl_fopen>:
    514c:	000067b7          	lui	a5,0x6
    5150:	8a07a783          	lw	a5,-1888(a5) # 58a0 <_filelib_init>
    5154:	fa010113          	addi	sp,sp,-96
    5158:	05212823          	sw	s2,80(sp)
    515c:	03a12823          	sw	s10,48(sp)
    5160:	04112e23          	sw	ra,92(sp)
    5164:	04812c23          	sw	s0,88(sp)
    5168:	04912a23          	sw	s1,84(sp)
    516c:	05312623          	sw	s3,76(sp)
    5170:	05412423          	sw	s4,72(sp)
    5174:	05512223          	sw	s5,68(sp)
    5178:	05612023          	sw	s6,64(sp)
    517c:	03712e23          	sw	s7,60(sp)
    5180:	03812c23          	sw	s8,56(sp)
    5184:	03912a23          	sw	s9,52(sp)
    5188:	00050d13          	mv	s10,a0
    518c:	00058913          	mv	s2,a1
    5190:	00079663          	bnez	a5,519c <fl_fopen+0x50>
    5194:	ffffd097          	auipc	ra,0xffffd
    5198:	3e0080e7          	jalr	992(ra) # 2574 <fl_init>
    519c:	000067b7          	lui	a5,0x6
    51a0:	89c7a783          	lw	a5,-1892(a5) # 589c <_filelib_valid>
    51a4:	00193713          	seqz	a4,s2
    51a8:	0017b793          	seqz	a5,a5
    51ac:	00e7e7b3          	or	a5,a5,a4
    51b0:	36079e63          	bnez	a5,552c <fl_fopen+0x3e0>
    51b4:	360d0c63          	beqz	s10,552c <fl_fopen+0x3e0>
    51b8:	00000493          	li	s1,0
    51bc:	00000413          	li	s0,0
    51c0:	05700993          	li	s3,87
    51c4:	07200a13          	li	s4,114
    51c8:	07700b13          	li	s6,119
    51cc:	06100b93          	li	s7,97
    51d0:	06200c13          	li	s8,98
    51d4:	04100a93          	li	s5,65
    51d8:	04200c93          	li	s9,66
    51dc:	00090513          	mv	a0,s2
    51e0:	ffffd097          	auipc	ra,0xffffd
    51e4:	8c8080e7          	jalr	-1848(ra) # 1aa8 <strlen>
    51e8:	10a44a63          	blt	s0,a0,52fc <fl_fopen+0x1b0>
    51ec:	0000a9b7          	lui	s3,0xa
    51f0:	c6c98a13          	addi	s4,s3,-916 # 9c6c <_fs>
    51f4:	038a2783          	lw	a5,56(s4)
    51f8:	00079463          	bnez	a5,5200 <fl_fopen+0xb4>
    51fc:	fd94f493          	andi	s1,s1,-39
    5200:	03ca2783          	lw	a5,60(s4)
    5204:	00078463          	beqz	a5,520c <fl_fopen+0xc0>
    5208:	000780e7          	jalr	a5
    520c:	0014f793          	andi	a5,s1,1
    5210:	18079263          	bnez	a5,5394 <fl_fopen+0x248>
    5214:	0204f793          	andi	a5,s1,32
    5218:	08078c63          	beqz	a5,52b0 <fl_fopen+0x164>
    521c:	038a2783          	lw	a5,56(s4)
    5220:	06078a63          	beqz	a5,5294 <fl_fopen+0x148>
    5224:	ffffd097          	auipc	ra,0xffffd
    5228:	160080e7          	jalr	352(ra) # 2384 <_allocate_file>
    522c:	00050413          	mv	s0,a0
    5230:	06050263          	beqz	a0,5294 <fl_fopen+0x148>
    5234:	01450a93          	addi	s5,a0,20
    5238:	10400613          	li	a2,260
    523c:	00000593          	li	a1,0
    5240:	000a8513          	mv	a0,s5
    5244:	ffffd097          	auipc	ra,0xffffd
    5248:	824080e7          	jalr	-2012(ra) # 1a68 <memset>
    524c:	11840b13          	addi	s6,s0,280
    5250:	10400613          	li	a2,260
    5254:	00000593          	li	a1,0
    5258:	000b0513          	mv	a0,s6
    525c:	ffffd097          	auipc	ra,0xffffd
    5260:	80c080e7          	jalr	-2036(ra) # 1a68 <memset>
    5264:	10400713          	li	a4,260
    5268:	000b0693          	mv	a3,s6
    526c:	00070613          	mv	a2,a4
    5270:	000a8593          	mv	a1,s5
    5274:	000d0513          	mv	a0,s10
    5278:	ffffe097          	auipc	ra,0xffffe
    527c:	c88080e7          	jalr	-888(ra) # 2f00 <fatfs_split_path>
    5280:	fff00793          	li	a5,-1
    5284:	12f51663          	bne	a0,a5,53b0 <fl_fopen+0x264>
    5288:	00040513          	mv	a0,s0
    528c:	ffffd097          	auipc	ra,0xffffd
    5290:	170080e7          	jalr	368(ra) # 23fc <_free_file>
    5294:	00000413          	li	s0,0
    5298:	0214f793          	andi	a5,s1,33
    529c:	02000713          	li	a4,32
    52a0:	28e79263          	bne	a5,a4,5524 <fl_fopen+0x3d8>
    52a4:	10041263          	bnez	s0,53a8 <fl_fopen+0x25c>
    52a8:	0064f793          	andi	a5,s1,6
    52ac:	26079463          	bnez	a5,5514 <fl_fopen+0x3c8>
    52b0:	00000413          	li	s0,0
    52b4:	040a2783          	lw	a5,64(s4)
    52b8:	00078463          	beqz	a5,52c0 <fl_fopen+0x174>
    52bc:	000780e7          	jalr	a5
    52c0:	05c12083          	lw	ra,92(sp)
    52c4:	00040513          	mv	a0,s0
    52c8:	05812403          	lw	s0,88(sp)
    52cc:	05412483          	lw	s1,84(sp)
    52d0:	05012903          	lw	s2,80(sp)
    52d4:	04c12983          	lw	s3,76(sp)
    52d8:	04812a03          	lw	s4,72(sp)
    52dc:	04412a83          	lw	s5,68(sp)
    52e0:	04012b03          	lw	s6,64(sp)
    52e4:	03c12b83          	lw	s7,60(sp)
    52e8:	03812c03          	lw	s8,56(sp)
    52ec:	03412c83          	lw	s9,52(sp)
    52f0:	03012d03          	lw	s10,48(sp)
    52f4:	06010113          	addi	sp,sp,96
    52f8:	00008067          	ret
    52fc:	008907b3          	add	a5,s2,s0
    5300:	0007c783          	lbu	a5,0(a5)
    5304:	05378863          	beq	a5,s3,5354 <fl_fopen+0x208>
    5308:	02f9e863          	bltu	s3,a5,5338 <fl_fopen+0x1ec>
    530c:	05578863          	beq	a5,s5,535c <fl_fopen+0x210>
    5310:	00faea63          	bltu	s5,a5,5324 <fl_fopen+0x1d8>
    5314:	02b00713          	li	a4,43
    5318:	04e78663          	beq	a5,a4,5364 <fl_fopen+0x218>
    531c:	00140413          	addi	s0,s0,1
    5320:	ebdff06f          	j	51dc <fl_fopen+0x90>
    5324:	03978263          	beq	a5,s9,5348 <fl_fopen+0x1fc>
    5328:	05200713          	li	a4,82
    532c:	fee798e3          	bne	a5,a4,531c <fl_fopen+0x1d0>
    5330:	0014e493          	ori	s1,s1,1
    5334:	fe9ff06f          	j	531c <fl_fopen+0x1d0>
    5338:	ff478ce3          	beq	a5,s4,5330 <fl_fopen+0x1e4>
    533c:	00fa6a63          	bltu	s4,a5,5350 <fl_fopen+0x204>
    5340:	01778e63          	beq	a5,s7,535c <fl_fopen+0x210>
    5344:	fd879ce3          	bne	a5,s8,531c <fl_fopen+0x1d0>
    5348:	0084e493          	ori	s1,s1,8
    534c:	fd1ff06f          	j	531c <fl_fopen+0x1d0>
    5350:	fd6796e3          	bne	a5,s6,531c <fl_fopen+0x1d0>
    5354:	0324e493          	ori	s1,s1,50
    5358:	fc5ff06f          	j	531c <fl_fopen+0x1d0>
    535c:	0264e493          	ori	s1,s1,38
    5360:	fbdff06f          	j	531c <fl_fopen+0x1d0>
    5364:	0014f793          	andi	a5,s1,1
    5368:	00078663          	beqz	a5,5374 <fl_fopen+0x228>
    536c:	0024e493          	ori	s1,s1,2
    5370:	fadff06f          	j	531c <fl_fopen+0x1d0>
    5374:	0024f793          	andi	a5,s1,2
    5378:	00078663          	beqz	a5,5384 <fl_fopen+0x238>
    537c:	0314e493          	ori	s1,s1,49
    5380:	f9dff06f          	j	531c <fl_fopen+0x1d0>
    5384:	0044f793          	andi	a5,s1,4
    5388:	f8078ae3          	beqz	a5,531c <fl_fopen+0x1d0>
    538c:	0274e493          	ori	s1,s1,39
    5390:	f8dff06f          	j	531c <fl_fopen+0x1d0>
    5394:	000d0513          	mv	a0,s10
    5398:	fffff097          	auipc	ra,0xfffff
    539c:	81c080e7          	jalr	-2020(ra) # 3bb4 <_open_file>
    53a0:	00050413          	mv	s0,a0
    53a4:	e60508e3          	beqz	a0,5214 <fl_fopen+0xc8>
    53a8:	42940c23          	sb	s1,1080(s0)
    53ac:	f09ff06f          	j	52b4 <fl_fopen+0x168>
    53b0:	00040513          	mv	a0,s0
    53b4:	ffffe097          	auipc	ra,0xffffe
    53b8:	dc8080e7          	jalr	-568(ra) # 317c <_check_file_open>
    53bc:	00050913          	mv	s2,a0
    53c0:	ec0514e3          	bnez	a0,5288 <fl_fopen+0x13c>
    53c4:	01444783          	lbu	a5,20(s0)
    53c8:	0e079663          	bnez	a5,54b4 <fl_fopen+0x368>
    53cc:	008a2783          	lw	a5,8(s4)
    53d0:	00f42023          	sw	a5,0(s0)
    53d4:	00042583          	lw	a1,0(s0)
    53d8:	01010693          	addi	a3,sp,16
    53dc:	000b0613          	mv	a2,s6
    53e0:	c6c98513          	addi	a0,s3,-916
    53e4:	ffffe097          	auipc	ra,0xffffe
    53e8:	428080e7          	jalr	1064(ra) # 380c <fatfs_get_file_entry>
    53ec:	00100693          	li	a3,1
    53f0:	e8d50ce3          	beq	a0,a3,5288 <fl_fopen+0x13c>
    53f4:	00042223          	sw	zero,4(s0)
    53f8:	00440613          	addi	a2,s0,4
    53fc:	00068593          	mv	a1,a3
    5400:	c6c98513          	addi	a0,s3,-916
    5404:	00000097          	auipc	ra,0x0
    5408:	908080e7          	jalr	-1784(ra) # 4d0c <fatfs_allocate_free_space>
    540c:	e6050ee3          	beqz	a0,5288 <fl_fopen+0x13c>
    5410:	00002ab7          	lui	s5,0x2
    5414:	21c40b93          	addi	s7,s0,540
    5418:	c6c98c13          	addi	s8,s3,-916
    541c:	70fa8a93          	addi	s5,s5,1807 # 270f <fatfs_lfn_cache_entry+0x33>
    5420:	000b0593          	mv	a1,s6
    5424:	00410513          	addi	a0,sp,4
    5428:	ffffd097          	auipc	ra,0xffffd
    542c:	68c080e7          	jalr	1676(ra) # 2ab4 <fatfs_lfn_create_sfn>
    5430:	08090e63          	beqz	s2,54cc <fl_fopen+0x380>
    5434:	00090613          	mv	a2,s2
    5438:	00410593          	addi	a1,sp,4
    543c:	000b8513          	mv	a0,s7
    5440:	ffffd097          	auipc	ra,0xffffd
    5444:	7f0080e7          	jalr	2032(ra) # 2c30 <fatfs_lfn_generate_tail>
    5448:	00042583          	lw	a1,0(s0)
    544c:	000b8613          	mv	a2,s7
    5450:	000c0513          	mv	a0,s8
    5454:	fffff097          	auipc	ra,0xfffff
    5458:	8d4080e7          	jalr	-1836(ra) # 3d28 <fatfs_sfn_exists>
    545c:	00050663          	beqz	a0,5468 <fl_fopen+0x31c>
    5460:	00190913          	addi	s2,s2,1
    5464:	fb591ee3          	bne	s2,s5,5420 <fl_fopen+0x2d4>
    5468:	00442703          	lw	a4,4(s0)
    546c:	000027b7          	lui	a5,0x2
    5470:	70f78793          	addi	a5,a5,1807 # 270f <fatfs_lfn_cache_entry+0x33>
    5474:	00070593          	mv	a1,a4
    5478:	02f90663          	beq	s2,a5,54a4 <fl_fopen+0x358>
    547c:	00042583          	lw	a1,0(s0)
    5480:	00000813          	li	a6,0
    5484:	00000793          	li	a5,0
    5488:	000b8693          	mv	a3,s7
    548c:	000b0613          	mv	a2,s6
    5490:	c6c98513          	addi	a0,s3,-916
    5494:	00000097          	auipc	ra,0x0
    5498:	990080e7          	jalr	-1648(ra) # 4e24 <fatfs_add_file_entry>
    549c:	04051463          	bnez	a0,54e4 <fl_fopen+0x398>
    54a0:	00442583          	lw	a1,4(s0)
    54a4:	c6c98513          	addi	a0,s3,-916
    54a8:	fffff097          	auipc	ra,0xfffff
    54ac:	1b4080e7          	jalr	436(ra) # 465c <fatfs_free_cluster_chain>
    54b0:	dd9ff06f          	j	5288 <fl_fopen+0x13c>
    54b4:	00040593          	mv	a1,s0
    54b8:	000a8513          	mv	a0,s5
    54bc:	ffffe097          	auipc	ra,0xffffe
    54c0:	54c080e7          	jalr	1356(ra) # 3a08 <_open_directory>
    54c4:	f00518e3          	bnez	a0,53d4 <fl_fopen+0x288>
    54c8:	dc1ff06f          	j	5288 <fl_fopen+0x13c>
    54cc:	00b00613          	li	a2,11
    54d0:	00410593          	addi	a1,sp,4
    54d4:	000b8513          	mv	a0,s7
    54d8:	ffffc097          	auipc	ra,0xffffc
    54dc:	5ac080e7          	jalr	1452(ra) # 1a84 <memcpy>
    54e0:	f69ff06f          	j	5448 <fl_fopen+0x2fc>
    54e4:	fff00793          	li	a5,-1
    54e8:	00042623          	sw	zero,12(s0)
    54ec:	00042423          	sw	zero,8(s0)
    54f0:	42f42823          	sw	a5,1072(s0)
    54f4:	42042a23          	sw	zero,1076(s0)
    54f8:	00042823          	sw	zero,16(s0)
    54fc:	22f42423          	sw	a5,552(s0)
    5500:	22f42623          	sw	a5,556(s0)
    5504:	c6c98513          	addi	a0,s3,-916
    5508:	ffffe097          	auipc	ra,0xffffe
    550c:	054080e7          	jalr	84(ra) # 355c <fatfs_fat_purge>
    5510:	d89ff06f          	j	5298 <fl_fopen+0x14c>
    5514:	000d0513          	mv	a0,s10
    5518:	ffffe097          	auipc	ra,0xffffe
    551c:	69c080e7          	jalr	1692(ra) # 3bb4 <_open_file>
    5520:	00050413          	mv	s0,a0
    5524:	e80412e3          	bnez	s0,53a8 <fl_fopen+0x25c>
    5528:	d89ff06f          	j	52b0 <fl_fopen+0x164>
    552c:	00000413          	li	s0,0
    5530:	d91ff06f          	j	52c0 <fl_fopen+0x174>

00005534 <cmd16>:
    5534:	02000050 00001500                       P.......

0000553c <acmd41>:
    553c:	00004069 00000100                       i@......

00005544 <cmd55>:
    5544:	00000077 00000100                       w.......

0000554c <cmd8>:
    554c:	01000048 000087aa                       H.......

00005554 <cmd0>:
    5554:	00000040 00009500                       @.......

0000555c <AUDIO>:
    555c:	00018000                                ....

00005560 <DISPLAY>:
    5560:	00014000                                .@..

00005564 <BUTTONS>:
    5564:	00010100                                ....

00005568 <SDCARD>:
    5568:	00010080                                ....

0000556c <OLED_RST>:
    556c:	00010010                                ....

00005570 <OLED>:
    5570:	00010008                                ....

00005574 <LEDS>:
    5574:	00010004 73756170 61722e65 00000077     ....pause.raw...
    5584:	7761722e 7761722e 00000000 7761722e     .raw.raw.....raw
    5594:	00000000 00006272 0000002f 0000002e     ....rb../.......
    55a4:	00002e2e 203d3d3d 3d207325 0a0a3d3d     ....=== %s ===..
    55b4:	00000000 5249445b 7325205d 0000000a     ....[DIR] %s....
    55c4:	444e535b 7325205d 0000000a 64697628     [SND] %s....(vid
    55d4:	000a2965 69647541 6e69206f 756f7274     e)..Audio introu
    55e4:	6c626176 250a3a65 00000a73 7561702f     vable:.%s.../pau
    55f4:	722e6573 00007761 33323130 37363534     se.raw..01234567
    5604:	42413938 46454443 00000000 5f544146     89ABCDEF....FAT_
    5614:	203a5346 6f727245 6f632072 20646c75     FS: Error could 
    5624:	20746f6e 64616f6c 54414620 74656420     not load FAT det
    5634:	736c6961 64252820 0a0d2129 00000000     ails (%d)!......

00005644 <font>:
    5644:	00000000 00002f00 00030000 14000003     ...../..........
    5654:	143e143e 3a2b6a2e 08122600 171c3224     >.>..j+:.&..$2..
    5664:	03003415 00000000 0000211e 001e2100     .4.......!...!..
    5674:	08220000 0822081c 0000081c 00002040     .."...".....@ ..
    5684:	00080800 00200000 20000000 02040810     ...... .... ....
    5694:	3f21213f 003f0100 253d0000 25002725     ?!!?..?...=%%'.%
    56a4:	003f2525 3f040407 25252700 253f003d     %%?....?.'%%=.?%
    56b4:	01003d25 00030539 3f25253f 25252700     %=..9...?%%?.'%%
    56c4:	0028003f 40000000 00000028 00110a04     ?.(....@(.......
    56d4:	00141400 0a110000 01000004 0007052d     ............-...
    56e4:	253d213f 09093f1f 253f003f 3f003c27     ?!=%.?..?.?%'<.?
    56f4:	00212121 1e21213f 25253f00 053f0025     !!!.?!!..?%%%.?.
    5704:	3f000505 003d2521 3f04043f 213f2100     ...?!%=.?..?.!?!
    5714:	20380000 3f013f21 003b0404 2020203f     ..8 !?.?..;.?   
    5724:	3f013f00 023f3f01 3f003f04 003f2121     .?.?.??..?.?!!?.
    5734:	0f09093f 31213f00 093f003f 27002f39     ?....?!1?.?.9/.'
    5744:	003d2525 013f0101 20203f01 100f003f     %%=...?..?  ?...
    5754:	3f001f30 3f203f20 3b04043b 38080f00     0..? ? ?;..;...8
    5764:	2931000f 3f002325 00000021 04081020     ..1)%#.?!... ...
    5774:	003f2102 01020000 20000201 00000020     .!?........  ...
    5784:	00000201 24243800 243f003c 3c003c24     .....8$$<.?$$<.<
    5794:	00242424 3f24243c 2c2c3c00 3f04002c     $$$.<$$?.<,,,..?
    57a4:	bc000005 00fca4a4 3c04043f 00003d00     ........?..<.=..
    57b4:	fd800000 3f000000 00340808 0000003f     .......?..4.?...
    57c4:	3c043c00 043c3c04 3c003c04 003c2424     .<.<.<<..<.<$$<.
    57d4:	3c2424fc 24243c00 083c00fc 2c000004     .$$<.<$$..<....,
    57e4:	003c2c2c 00243f04 20203c00 100c003c     ,,<..?$..<  <...
    57f4:	3c001c30 3c203c20 34080834 a0a0bc00     0..< < <4..4....
    5804:	342400fc 0400242c 0000213f 0000003f     ..$4,$..?!..?...
    5814:	043f2100 02010000 00000102 00000000     .!?.............
    5824:	00000001 00000003 00000005 00000007     ................
    5834:	00000009 0000000e 00000010 00000012     ................
    5844:	00000014 00000016 00000018 0000001c     ................
    5854:	0000001e                                ....

00005858 <silence_init.1>:
    5858:	00000000                                ....

0000585c <selected>:
    585c:	00000000                                ....

00005860 <scroll>:
    5860:	00000000                                ....

00005864 <total_count>:
    5864:	00000000                                ....

00005868 <view_count>:
    5868:	00000000                                ....

0000586c <vu_level>:
    586c:	00000000                                ....

00005870 <vol_led_blocks_left>:
    5870:	00000000                                ....

00005874 <pause_loaded>:
    5874:	00000000                                ....

00005878 <sdcard_while_loading_callback>:
    5878:	00000000                                ....

0000587c <back_color>:
	...

0000587d <front_color>:
    587d:	                                         ...

00005880 <cursor_y>:
    5880:	00000000                                ....

00005884 <cursor_x>:
    5884:	00000000                                ....

00005888 <f_putchar>:
    5888:	00000000                                ....

0000588c <_free_file_list>:
	...

00005894 <_open_file_list>:
	...

0000589c <_filelib_valid>:
    589c:	00000000                                ....

000058a0 <_filelib_init>:
    58a0:	00000000                                ....
