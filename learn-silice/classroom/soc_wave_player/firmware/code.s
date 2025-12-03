
code.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
       0:	00010137          	lui	sp,0x10
       4:	00000097          	auipc	ra,0x0
       8:	018080e7          	jalr	24(ra) # 1c <main>
       c:	00000317          	auipc	t1,0x0
      10:	00830067          	jr	8(t1) # 14 <exit>

00000014 <exit>:
      14:	00000000          	.word	0x00000000
      18:	00008067          	ret

0000001c <main>:
      1c:	000017b7          	lui	a5,0x1
      20:	db010113          	addi	sp,sp,-592 # fdb0 <_files+0xb420>
      24:	00004737          	lui	a4,0x4
      28:	ce078793          	addi	a5,a5,-800 # ce0 <display_putchar>
      2c:	24112623          	sw	ra,588(sp)
      30:	30f72623          	sw	a5,780(a4) # 430c <f_putchar>
      34:	24912223          	sw	s1,580(sp)
      38:	25212023          	sw	s2,576(sp)
      3c:	24812423          	sw	s0,584(sp)
      40:	23312e23          	sw	s3,572(sp)
      44:	23412c23          	sw	s4,568(sp)
      48:	23512a23          	sw	s5,564(sp)
      4c:	23612823          	sw	s6,560(sp)
      50:	23712623          	sw	s7,556(sp)
      54:	23812423          	sw	s8,552(sp)
      58:	23912223          	sw	s9,548(sp)
      5c:	23a12023          	sw	s10,544(sp)
      60:	21b12e23          	sw	s11,540(sp)
      64:	00001097          	auipc	ra,0x1
      68:	ba4080e7          	jalr	-1116(ra) # c08 <oled_init>
      6c:	00001097          	auipc	ra,0x1
      70:	ba8080e7          	jalr	-1112(ra) # c14 <oled_fullscreen>
      74:	00001097          	auipc	ra,0x1
      78:	c38080e7          	jalr	-968(ra) # cac <display_framebuffer>
      7c:	00004637          	lui	a2,0x4
      80:	00000593          	li	a1,0
      84:	00001097          	auipc	ra,0x1
      88:	9c8080e7          	jalr	-1592(ra) # a4c <memset>
      8c:	00001097          	auipc	ra,0x1
      90:	d6c080e7          	jalr	-660(ra) # df8 <display_refresh>
      94:	00000593          	li	a1,0
      98:	00000513          	li	a0,0
      9c:	00001097          	auipc	ra,0x1
      a0:	c1c080e7          	jalr	-996(ra) # cb8 <display_set_cursor>
      a4:	00000593          	li	a1,0
      a8:	0ff00513          	li	a0,255
      ac:	00001097          	auipc	ra,0x1
      b0:	c20080e7          	jalr	-992(ra) # ccc <display_set_front_back_color>
      b4:	00004537          	lui	a0,0x4
      b8:	03450513          	addi	a0,a0,52 # 4034 <LEDS+0x4>
      bc:	00001097          	auipc	ra,0x1
      c0:	ea8080e7          	jalr	-344(ra) # f64 <printf>
      c4:	00001937          	lui	s2,0x1
      c8:	000014b7          	lui	s1,0x1
      cc:	00001097          	auipc	ra,0x1
      d0:	d2c080e7          	jalr	-724(ra) # df8 <display_refresh>
      d4:	99090913          	addi	s2,s2,-1648 # 990 <sdcard_writesector>
      d8:	00000097          	auipc	ra,0x0
      dc:	714080e7          	jalr	1812(ra) # 7ec <sdcard_init>
      e0:	93c48493          	addi	s1,s1,-1732 # 93c <sdcard_readsector>
      e4:	00001097          	auipc	ra,0x1
      e8:	450080e7          	jalr	1104(ra) # 1534 <fl_init>
      ec:	00090593          	mv	a1,s2
      f0:	00048513          	mv	a0,s1
      f4:	00002097          	auipc	ra,0x2
      f8:	23c080e7          	jalr	572(ra) # 2330 <fl_attach_media>
      fc:	00050413          	mv	s0,a0
     100:	fe0516e3          	bnez	a0,ec <main+0xd0>
     104:	00004537          	lui	a0,0x4
     108:	04050513          	addi	a0,a0,64 # 4040 <LEDS+0x10>
     10c:	00001097          	auipc	ra,0x1
     110:	e58080e7          	jalr	-424(ra) # f64 <printf>
     114:	00001097          	auipc	ra,0x1
     118:	ce4080e7          	jalr	-796(ra) # df8 <display_refresh>
     11c:	00004937          	lui	s2,0x4
     120:	00004537          	lui	a0,0x4
     124:	04890593          	addi	a1,s2,72 # 4048 <LEDS+0x18>
     128:	04c50513          	addi	a0,a0,76 # 404c <LEDS+0x1c>
     12c:	00004097          	auipc	ra,0x4
     130:	adc080e7          	jalr	-1316(ra) # 3c08 <fl_fopen>
     134:	00050493          	mv	s1,a0
     138:	08051463          	bnez	a0,1c0 <main+0x1a4>
     13c:	00004537          	lui	a0,0x4
     140:	05c50513          	addi	a0,a0,92 # 405c <LEDS+0x2c>
     144:	00001097          	auipc	ra,0x1
     148:	e20080e7          	jalr	-480(ra) # f64 <printf>
     14c:	00001097          	auipc	ra,0x1
     150:	cac080e7          	jalr	-852(ra) # df8 <display_refresh>
     154:	00004537          	lui	a0,0x4
     158:	04890593          	addi	a1,s2,72
     15c:	08050513          	addi	a0,a0,128 # 4080 <LEDS+0x50>
     160:	00004097          	auipc	ra,0x4
     164:	aa8080e7          	jalr	-1368(ra) # 3c08 <fl_fopen>
     168:	00050d93          	mv	s11,a0
     16c:	0a051063          	bnez	a0,20c <main+0x1f0>
     170:	00004537          	lui	a0,0x4
     174:	08c50513          	addi	a0,a0,140 # 408c <LEDS+0x5c>
     178:	00001097          	auipc	ra,0x1
     17c:	dec080e7          	jalr	-532(ra) # f64 <printf>
     180:	24812403          	lw	s0,584(sp)
     184:	24c12083          	lw	ra,588(sp)
     188:	24412483          	lw	s1,580(sp)
     18c:	24012903          	lw	s2,576(sp)
     190:	23c12983          	lw	s3,572(sp)
     194:	23812a03          	lw	s4,568(sp)
     198:	23412a83          	lw	s5,564(sp)
     19c:	23012b03          	lw	s6,560(sp)
     1a0:	22c12b83          	lw	s7,556(sp)
     1a4:	22812c03          	lw	s8,552(sp)
     1a8:	22412c83          	lw	s9,548(sp)
     1ac:	22012d03          	lw	s10,544(sp)
     1b0:	21c12d83          	lw	s11,540(sp)
     1b4:	25010113          	addi	sp,sp,592
     1b8:	00001317          	auipc	t1,0x1
     1bc:	c4030067          	jr	-960(t1) # df8 <display_refresh>
     1c0:	00004537          	lui	a0,0x4
     1c4:	07050513          	addi	a0,a0,112 # 4070 <LEDS+0x40>
     1c8:	00001097          	auipc	ra,0x1
     1cc:	d9c080e7          	jalr	-612(ra) # f64 <printf>
     1d0:	00001097          	auipc	ra,0x1
     1d4:	c28080e7          	jalr	-984(ra) # df8 <display_refresh>
     1d8:	00001097          	auipc	ra,0x1
     1dc:	ad4080e7          	jalr	-1324(ra) # cac <display_framebuffer>
     1e0:	00048693          	mv	a3,s1
     1e4:	00004637          	lui	a2,0x4
     1e8:	00100593          	li	a1,1
     1ec:	00003097          	auipc	ra,0x3
     1f0:	418080e7          	jalr	1048(ra) # 3604 <fl_fread>
     1f4:	00001097          	auipc	ra,0x1
     1f8:	c04080e7          	jalr	-1020(ra) # df8 <display_refresh>
     1fc:	00048513          	mv	a0,s1
     200:	00003097          	auipc	ra,0x3
     204:	328080e7          	jalr	808(ra) # 3528 <fl_fclose>
     208:	f4dff06f          	j	154 <main+0x138>
     20c:	0ff00593          	li	a1,255
     210:	00000513          	li	a0,0
     214:	00001097          	auipc	ra,0x1
     218:	ab8080e7          	jalr	-1352(ra) # ccc <display_set_front_back_color>
     21c:	00001097          	auipc	ra,0x1
     220:	bdc080e7          	jalr	-1060(ra) # df8 <display_refresh>
     224:	00000593          	li	a1,0
     228:	0ff00513          	li	a0,255
     22c:	00001097          	auipc	ra,0x1
     230:	aa0080e7          	jalr	-1376(ra) # ccc <display_set_front_back_color>
     234:	00001097          	auipc	ra,0x1
     238:	bc4080e7          	jalr	-1084(ra) # df8 <display_refresh>
     23c:	00004737          	lui	a4,0x4
     240:	02072703          	lw	a4,32(a4) # 4020 <BUTTONS>
     244:	00000a13          	li	s4,0
     248:	00000793          	li	a5,0
     24c:	00e12423          	sw	a4,8(sp)
     250:	00004737          	lui	a4,0x4
     254:	01872983          	lw	s3,24(a4) # 4018 <AUDIO>
     258:	00004737          	lui	a4,0x4
     25c:	03072703          	lw	a4,48(a4) # 4030 <LEDS>
     260:	00100b13          	li	s6,1
     264:	08000493          	li	s1,128
     268:	20000a93          	li	s5,512
     26c:	00e12623          	sw	a4,12(sp)
     270:	00812703          	lw	a4,8(sp)
     274:	fff7c793          	not	a5,a5
     278:	00072903          	lw	s2,0(a4)
     27c:	02097713          	andi	a4,s2,32
     280:	00e03733          	snez	a4,a4
     284:	40e484b3          	sub	s1,s1,a4
     288:	0127f7b3          	and	a5,a5,s2
     28c:	04097713          	andi	a4,s2,64
     290:	00e03733          	snez	a4,a4
     294:	0027f793          	andi	a5,a5,2
     298:	00e484b3          	add	s1,s1,a4
     29c:	00078463          	beqz	a5,2a4 <main+0x288>
     2a0:	00144413          	xori	s0,s0,1
     2a4:	02040863          	beqz	s0,2d4 <main+0x2b8>
     2a8:	0009ab83          	lw	s7,0(s3)
     2ac:	000045b7          	lui	a1,0x4
     2b0:	20000613          	li	a2,512
     2b4:	32858593          	addi	a1,a1,808 # 4328 <zeros.0>
     2b8:	000b8513          	mv	a0,s7
     2bc:	00000097          	auipc	ra,0x0
     2c0:	7ac080e7          	jalr	1964(ra) # a68 <memcpy>
     2c4:	0009a783          	lw	a5,0(s3)
     2c8:	fefb8ee3          	beq	s7,a5,2c4 <main+0x2a8>
     2cc:	00090793          	mv	a5,s2
     2d0:	fa1ff06f          	j	270 <main+0x254>
     2d4:	000d8693          	mv	a3,s11
     2d8:	20000613          	li	a2,512
     2dc:	00100593          	li	a1,1
     2e0:	01010513          	addi	a0,sp,16
     2e4:	0009ac03          	lw	s8,0(s3)
     2e8:	00003097          	auipc	ra,0x3
     2ec:	31c080e7          	jalr	796(ra) # 3604 <fl_fread>
     2f0:	00050b93          	mv	s7,a0
     2f4:	01010c93          	addi	s9,sp,16
     2f8:	00000d13          	li	s10,0
     2fc:	057d4a63          	blt	s10,s7,350 <main+0x334>
     300:	000b8613          	mv	a2,s7
     304:	01010593          	addi	a1,sp,16
     308:	000c0513          	mv	a0,s8
     30c:	00000097          	auipc	ra,0x0
     310:	75c080e7          	jalr	1884(ra) # a68 <memcpy>
     314:	075b9463          	bne	s7,s5,37c <main+0x360>
     318:	0009a783          	lw	a5,0(s3)
     31c:	fefc0ee3          	beq	s8,a5,318 <main+0x2fc>
     320:	f80b0793          	addi	a5,s6,-128
     324:	fffb0713          	addi	a4,s6,-1
     328:	00173713          	seqz	a4,a4
     32c:	0017b793          	seqz	a5,a5
     330:	00e7e7b3          	or	a5,a5,a4
     334:	00fa4733          	xor	a4,s4,a5
     338:	02fa0e63          	beq	s4,a5,374 <main+0x358>
     33c:	001b1b13          	slli	s6,s6,0x1
     340:	00c12783          	lw	a5,12(sp)
     344:	00070a13          	mv	s4,a4
     348:	0167a023          	sw	s6,0(a5)
     34c:	f81ff06f          	j	2cc <main+0x2b0>
     350:	000cc503          	lbu	a0,0(s9)
     354:	00048593          	mv	a1,s1
     358:	001d0d13          	addi	s10,s10,1
     35c:	00001097          	auipc	ra,0x1
     360:	d44080e7          	jalr	-700(ra) # 10a0 <__mulsi3>
     364:	40855513          	srai	a0,a0,0x8
     368:	00ac8023          	sb	a0,0(s9)
     36c:	001c8c93          	addi	s9,s9,1
     370:	f8dff06f          	j	2fc <main+0x2e0>
     374:	401b5b13          	srai	s6,s6,0x1
     378:	fc9ff06f          	j	340 <main+0x324>
     37c:	24812403          	lw	s0,584(sp)
     380:	24c12083          	lw	ra,588(sp)
     384:	24412483          	lw	s1,580(sp)
     388:	24012903          	lw	s2,576(sp)
     38c:	23c12983          	lw	s3,572(sp)
     390:	23812a03          	lw	s4,568(sp)
     394:	23412a83          	lw	s5,564(sp)
     398:	23012b03          	lw	s6,560(sp)
     39c:	22c12b83          	lw	s7,556(sp)
     3a0:	22812c03          	lw	s8,552(sp)
     3a4:	22412c83          	lw	s9,548(sp)
     3a8:	22012d03          	lw	s10,544(sp)
     3ac:	000d8513          	mv	a0,s11
     3b0:	21c12d83          	lw	s11,540(sp)
     3b4:	25010113          	addi	sp,sp,592
     3b8:	00003317          	auipc	t1,0x3
     3bc:	17030067          	jr	368(t1) # 3528 <fl_fclose>

000003c0 <pause>:
     3c0:	c0002773          	rdcycle	a4
     3c4:	c00027f3          	rdcycle	a5
     3c8:	40e787b3          	sub	a5,a5,a4
     3cc:	fea7ece3          	bltu	a5,a0,3c4 <pause+0x4>
     3d0:	00008067          	ret

000003d4 <sdcard_idle>:
     3d4:	00008067          	ret

000003d8 <sdcard_select>:
     3d8:	000047b7          	lui	a5,0x4
     3dc:	0247a783          	lw	a5,36(a5) # 4024 <SDCARD>
     3e0:	00200713          	li	a4,2
     3e4:	00e7a023          	sw	a4,0(a5)
     3e8:	00008067          	ret

000003ec <sdcard_ponder>:
     3ec:	000046b7          	lui	a3,0x4
     3f0:	0246a683          	lw	a3,36(a3) # 4024 <SDCARD>
     3f4:	01000793          	li	a5,16
     3f8:	00000713          	li	a4,0
     3fc:	00676613          	ori	a2,a4,6
     400:	00c6a023          	sw	a2,0(a3)
     404:	00174713          	xori	a4,a4,1
     408:	00000013          	nop
     40c:	fff78793          	addi	a5,a5,-1
     410:	fe0796e3          	bnez	a5,3fc <sdcard_ponder+0x10>
     414:	00008067          	ret

00000418 <sdcard_unselect>:
     418:	000047b7          	lui	a5,0x4
     41c:	0247a783          	lw	a5,36(a5) # 4024 <SDCARD>
     420:	00600713          	li	a4,6
     424:	00e7a023          	sw	a4,0(a5)
     428:	00008067          	ret

0000042c <sdcard_send>:
     42c:	000047b7          	lui	a5,0x4
     430:	0247a783          	lw	a5,36(a5) # 4024 <SDCARD>
     434:	00655713          	srli	a4,a0,0x6
     438:	00277713          	andi	a4,a4,2
     43c:	00e7a023          	sw	a4,0(a5)
     440:	00176713          	ori	a4,a4,1
     444:	00e7a023          	sw	a4,0(a5)
     448:	00555713          	srli	a4,a0,0x5
     44c:	00277713          	andi	a4,a4,2
     450:	00e7a023          	sw	a4,0(a5)
     454:	00176713          	ori	a4,a4,1
     458:	00e7a023          	sw	a4,0(a5)
     45c:	00455713          	srli	a4,a0,0x4
     460:	00277713          	andi	a4,a4,2
     464:	00e7a023          	sw	a4,0(a5)
     468:	00176713          	ori	a4,a4,1
     46c:	00e7a023          	sw	a4,0(a5)
     470:	00355713          	srli	a4,a0,0x3
     474:	00277713          	andi	a4,a4,2
     478:	00e7a023          	sw	a4,0(a5)
     47c:	00176713          	ori	a4,a4,1
     480:	00e7a023          	sw	a4,0(a5)
     484:	00255713          	srli	a4,a0,0x2
     488:	00277713          	andi	a4,a4,2
     48c:	00e7a023          	sw	a4,0(a5)
     490:	00176713          	ori	a4,a4,1
     494:	00e7a023          	sw	a4,0(a5)
     498:	00155713          	srli	a4,a0,0x1
     49c:	00277713          	andi	a4,a4,2
     4a0:	00e7a023          	sw	a4,0(a5)
     4a4:	00176713          	ori	a4,a4,1
     4a8:	00e7a023          	sw	a4,0(a5)
     4ac:	00257713          	andi	a4,a0,2
     4b0:	00e7a023          	sw	a4,0(a5)
     4b4:	00151513          	slli	a0,a0,0x1
     4b8:	00176713          	ori	a4,a4,1
     4bc:	00e7a023          	sw	a4,0(a5)
     4c0:	00257513          	andi	a0,a0,2
     4c4:	00a7a023          	sw	a0,0(a5)
     4c8:	00156513          	ori	a0,a0,1
     4cc:	00a7a023          	sw	a0,0(a5)
     4d0:	00200713          	li	a4,2
     4d4:	00e7a023          	sw	a4,0(a5)
     4d8:	000047b7          	lui	a5,0x4
     4dc:	2fc7a783          	lw	a5,764(a5) # 42fc <sdcard_while_loading_callback>
     4e0:	00078067          	jr	a5

000004e4 <sdcard_read>:
     4e4:	fd010113          	addi	sp,sp,-48
     4e8:	fff50793          	addi	a5,a0,-1
     4ec:	03212023          	sw	s2,32(sp)
     4f0:	00100913          	li	s2,1
     4f4:	00f91933          	sll	s2,s2,a5
     4f8:	000047b7          	lui	a5,0x4
     4fc:	01312e23          	sw	s3,28(sp)
     500:	0247a983          	lw	s3,36(a5) # 4024 <SDCARD>
     504:	02812423          	sw	s0,40(sp)
     508:	02912223          	sw	s1,36(sp)
     50c:	01412c23          	sw	s4,24(sp)
     510:	01512a23          	sw	s5,20(sp)
     514:	01612823          	sw	s6,16(sp)
     518:	02112623          	sw	ra,44(sp)
     51c:	0ff00413          	li	s0,255
     520:	00000493          	li	s1,0
     524:	00300a13          	li	s4,3
     528:	00200a93          	li	s5,2
     52c:	00004b37          	lui	s6,0x4
     530:	02058c63          	beqz	a1,568 <sdcard_read+0x84>
     534:	012477b3          	and	a5,s0,s2
     538:	02079a63          	bnez	a5,56c <sdcard_read+0x88>
     53c:	02c12083          	lw	ra,44(sp)
     540:	0ff47513          	zext.b	a0,s0
     544:	02812403          	lw	s0,40(sp)
     548:	02412483          	lw	s1,36(sp)
     54c:	02012903          	lw	s2,32(sp)
     550:	01c12983          	lw	s3,28(sp)
     554:	01812a03          	lw	s4,24(sp)
     558:	01412a83          	lw	s5,20(sp)
     55c:	01012b03          	lw	s6,16(sp)
     560:	03010113          	addi	sp,sp,48
     564:	00008067          	ret
     568:	fca4dae3          	bge	s1,a0,53c <sdcard_read+0x58>
     56c:	0149a023          	sw	s4,0(s3)
     570:	0159a023          	sw	s5,0(s3)
     574:	0009a783          	lw	a5,0(s3)
     578:	00141413          	slli	s0,s0,0x1
     57c:	00b12623          	sw	a1,12(sp)
     580:	00f46433          	or	s0,s0,a5
     584:	2fcb2783          	lw	a5,764(s6) # 42fc <sdcard_while_loading_callback>
     588:	00a12423          	sw	a0,8(sp)
     58c:	00148493          	addi	s1,s1,1
     590:	000780e7          	jalr	a5
     594:	00c12583          	lw	a1,12(sp)
     598:	00812503          	lw	a0,8(sp)
     59c:	f95ff06f          	j	530 <sdcard_read+0x4c>

000005a0 <sdcard_get>:
     5a0:	fe010113          	addi	sp,sp,-32
     5a4:	00112e23          	sw	ra,28(sp)
     5a8:	00812c23          	sw	s0,24(sp)
     5ac:	00912a23          	sw	s1,20(sp)
     5b0:	00050413          	mv	s0,a0
     5b4:	00b12623          	sw	a1,12(sp)
     5b8:	00000097          	auipc	ra,0x0
     5bc:	e20080e7          	jalr	-480(ra) # 3d8 <sdcard_select>
     5c0:	00c12583          	lw	a1,12(sp)
     5c4:	00040513          	mv	a0,s0
     5c8:	00100493          	li	s1,1
     5cc:	00000097          	auipc	ra,0x0
     5d0:	f18080e7          	jalr	-232(ra) # 4e4 <sdcard_read>
     5d4:	00345413          	srli	s0,s0,0x3
     5d8:	0284c463          	blt	s1,s0,600 <sdcard_get+0x60>
     5dc:	00a12623          	sw	a0,12(sp)
     5e0:	00000097          	auipc	ra,0x0
     5e4:	e38080e7          	jalr	-456(ra) # 418 <sdcard_unselect>
     5e8:	01c12083          	lw	ra,28(sp)
     5ec:	01812403          	lw	s0,24(sp)
     5f0:	00c12503          	lw	a0,12(sp)
     5f4:	01412483          	lw	s1,20(sp)
     5f8:	02010113          	addi	sp,sp,32
     5fc:	00008067          	ret
     600:	00000593          	li	a1,0
     604:	00800513          	li	a0,8
     608:	00000097          	auipc	ra,0x0
     60c:	edc080e7          	jalr	-292(ra) # 4e4 <sdcard_read>
     610:	00148493          	addi	s1,s1,1
     614:	fc5ff06f          	j	5d8 <sdcard_get+0x38>

00000618 <sdcard_cmd>:
     618:	ff010113          	addi	sp,sp,-16
     61c:	00812423          	sw	s0,8(sp)
     620:	00912223          	sw	s1,4(sp)
     624:	01212023          	sw	s2,0(sp)
     628:	00112623          	sw	ra,12(sp)
     62c:	00050913          	mv	s2,a0
     630:	00000413          	li	s0,0
     634:	00000097          	auipc	ra,0x0
     638:	da4080e7          	jalr	-604(ra) # 3d8 <sdcard_select>
     63c:	00600493          	li	s1,6
     640:	008907b3          	add	a5,s2,s0
     644:	0007c503          	lbu	a0,0(a5)
     648:	00140413          	addi	s0,s0,1
     64c:	00000097          	auipc	ra,0x0
     650:	de0080e7          	jalr	-544(ra) # 42c <sdcard_send>
     654:	fe9416e3          	bne	s0,s1,640 <sdcard_cmd+0x28>
     658:	00812403          	lw	s0,8(sp)
     65c:	00c12083          	lw	ra,12(sp)
     660:	00412483          	lw	s1,4(sp)
     664:	00012903          	lw	s2,0(sp)
     668:	01010113          	addi	sp,sp,16
     66c:	00000317          	auipc	t1,0x0
     670:	dac30067          	jr	-596(t1) # 418 <sdcard_unselect>

00000674 <sdcard_start_sector>:
     674:	ff010113          	addi	sp,sp,-16
     678:	00112623          	sw	ra,12(sp)
     67c:	00812423          	sw	s0,8(sp)
     680:	00050413          	mv	s0,a0
     684:	00000097          	auipc	ra,0x0
     688:	d54080e7          	jalr	-684(ra) # 3d8 <sdcard_select>
     68c:	05100513          	li	a0,81
     690:	00000097          	auipc	ra,0x0
     694:	d9c080e7          	jalr	-612(ra) # 42c <sdcard_send>
     698:	01845513          	srli	a0,s0,0x18
     69c:	00000097          	auipc	ra,0x0
     6a0:	d90080e7          	jalr	-624(ra) # 42c <sdcard_send>
     6a4:	41045513          	srai	a0,s0,0x10
     6a8:	0ff57513          	zext.b	a0,a0
     6ac:	00000097          	auipc	ra,0x0
     6b0:	d80080e7          	jalr	-640(ra) # 42c <sdcard_send>
     6b4:	40845513          	srai	a0,s0,0x8
     6b8:	0ff57513          	zext.b	a0,a0
     6bc:	00000097          	auipc	ra,0x0
     6c0:	d70080e7          	jalr	-656(ra) # 42c <sdcard_send>
     6c4:	0ff47513          	zext.b	a0,s0
     6c8:	00000097          	auipc	ra,0x0
     6cc:	d64080e7          	jalr	-668(ra) # 42c <sdcard_send>
     6d0:	05500513          	li	a0,85
     6d4:	00000097          	auipc	ra,0x0
     6d8:	d58080e7          	jalr	-680(ra) # 42c <sdcard_send>
     6dc:	00000097          	auipc	ra,0x0
     6e0:	d3c080e7          	jalr	-708(ra) # 418 <sdcard_unselect>
     6e4:	00812403          	lw	s0,8(sp)
     6e8:	00c12083          	lw	ra,12(sp)
     6ec:	00100593          	li	a1,1
     6f0:	00800513          	li	a0,8
     6f4:	01010113          	addi	sp,sp,16
     6f8:	00000317          	auipc	t1,0x0
     6fc:	ea830067          	jr	-344(t1) # 5a0 <sdcard_get>

00000700 <sdcard_read_sector>:
     700:	ff010113          	addi	sp,sp,-16
     704:	00812423          	sw	s0,8(sp)
     708:	00112623          	sw	ra,12(sp)
     70c:	00912223          	sw	s1,4(sp)
     710:	01212023          	sw	s2,0(sp)
     714:	00058413          	mv	s0,a1
     718:	00000097          	auipc	ra,0x0
     71c:	f5c080e7          	jalr	-164(ra) # 674 <sdcard_start_sector>
     720:	04051863          	bnez	a0,770 <sdcard_read_sector+0x70>
     724:	00100593          	li	a1,1
     728:	00058513          	mv	a0,a1
     72c:	00000097          	auipc	ra,0x0
     730:	e74080e7          	jalr	-396(ra) # 5a0 <sdcard_get>
     734:	00000493          	li	s1,0
     738:	20000913          	li	s2,512
     73c:	00000593          	li	a1,0
     740:	00800513          	li	a0,8
     744:	00000097          	auipc	ra,0x0
     748:	e5c080e7          	jalr	-420(ra) # 5a0 <sdcard_get>
     74c:	009407b3          	add	a5,s0,s1
     750:	00a78023          	sb	a0,0(a5)
     754:	00148493          	addi	s1,s1,1
     758:	ff2492e3          	bne	s1,s2,73c <sdcard_read_sector+0x3c>
     75c:	00100593          	li	a1,1
     760:	01000513          	li	a0,16
     764:	20040413          	addi	s0,s0,512
     768:	00000097          	auipc	ra,0x0
     76c:	e38080e7          	jalr	-456(ra) # 5a0 <sdcard_get>
     770:	00c12083          	lw	ra,12(sp)
     774:	00040513          	mv	a0,s0
     778:	00812403          	lw	s0,8(sp)
     77c:	00412483          	lw	s1,4(sp)
     780:	00012903          	lw	s2,0(sp)
     784:	01010113          	addi	sp,sp,16
     788:	00008067          	ret

0000078c <sdcard_preinit>:
     78c:	ff010113          	addi	sp,sp,-16
     790:	000047b7          	lui	a5,0x4
     794:	00812423          	sw	s0,8(sp)
     798:	0247a403          	lw	s0,36(a5) # 4024 <SDCARD>
     79c:	00112623          	sw	ra,12(sp)
     7a0:	00600793          	li	a5,6
     7a4:	01313537          	lui	a0,0x1313
     7a8:	00f42023          	sw	a5,0(s0)
     7ac:	d0050513          	addi	a0,a0,-768 # 1312d00 <__stacktop+0x1302d00>
     7b0:	00000097          	auipc	ra,0x0
     7b4:	c10080e7          	jalr	-1008(ra) # 3c0 <pause>
     7b8:	0a000793          	li	a5,160
     7bc:	00000713          	li	a4,0
     7c0:	00676693          	ori	a3,a4,6
     7c4:	00d42023          	sw	a3,0(s0)
     7c8:	fff78793          	addi	a5,a5,-1
     7cc:	00174713          	xori	a4,a4,1
     7d0:	fe0798e3          	bnez	a5,7c0 <sdcard_preinit+0x34>
     7d4:	00600793          	li	a5,6
     7d8:	00c12083          	lw	ra,12(sp)
     7dc:	00f42023          	sw	a5,0(s0)
     7e0:	00812403          	lw	s0,8(sp)
     7e4:	01010113          	addi	sp,sp,16
     7e8:	00008067          	ret

000007ec <sdcard_init>:
     7ec:	000007b7          	lui	a5,0x0
     7f0:	3d478793          	addi	a5,a5,980 # 3d4 <sdcard_idle>
     7f4:	00004737          	lui	a4,0x4
     7f8:	fe010113          	addi	sp,sp,-32
     7fc:	2ef72e23          	sw	a5,764(a4) # 42fc <sdcard_while_loading_callback>
     800:	000047b7          	lui	a5,0x4
     804:	00812c23          	sw	s0,24(sp)
     808:	00912a23          	sw	s1,20(sp)
     80c:	00112e23          	sw	ra,28(sp)
     810:	01078493          	addi	s1,a5,16 # 4010 <cmd0>
     814:	0ff00413          	li	s0,255
     818:	00000097          	auipc	ra,0x0
     81c:	f74080e7          	jalr	-140(ra) # 78c <sdcard_preinit>
     820:	00048513          	mv	a0,s1
     824:	00000097          	auipc	ra,0x0
     828:	df4080e7          	jalr	-524(ra) # 618 <sdcard_cmd>
     82c:	00100593          	li	a1,1
     830:	00800513          	li	a0,8
     834:	00000097          	auipc	ra,0x0
     838:	d6c080e7          	jalr	-660(ra) # 5a0 <sdcard_get>
     83c:	00a12623          	sw	a0,12(sp)
     840:	00000097          	auipc	ra,0x0
     844:	bac080e7          	jalr	-1108(ra) # 3ec <sdcard_ponder>
     848:	00c12503          	lw	a0,12(sp)
     84c:	00851c63          	bne	a0,s0,864 <sdcard_init+0x78>
     850:	01313537          	lui	a0,0x1313
     854:	d0050513          	addi	a0,a0,-768 # 1312d00 <__stacktop+0x1302d00>
     858:	00000097          	auipc	ra,0x0
     85c:	b68080e7          	jalr	-1176(ra) # 3c0 <pause>
     860:	fb9ff06f          	j	818 <sdcard_init+0x2c>
     864:	00004537          	lui	a0,0x4
     868:	00850513          	addi	a0,a0,8 # 4008 <cmd8>
     86c:	00000097          	auipc	ra,0x0
     870:	dac080e7          	jalr	-596(ra) # 618 <sdcard_cmd>
     874:	00100593          	li	a1,1
     878:	02800513          	li	a0,40
     87c:	00000097          	auipc	ra,0x0
     880:	d24080e7          	jalr	-732(ra) # 5a0 <sdcard_get>
     884:	00000097          	auipc	ra,0x0
     888:	b68080e7          	jalr	-1176(ra) # 3ec <sdcard_ponder>
     88c:	000047b7          	lui	a5,0x4
     890:	00078413          	mv	s0,a5
     894:	000047b7          	lui	a5,0x4
     898:	ff878493          	addi	s1,a5,-8 # 3ff8 <acmd41>
     89c:	00040513          	mv	a0,s0
     8a0:	00000097          	auipc	ra,0x0
     8a4:	d78080e7          	jalr	-648(ra) # 618 <sdcard_cmd>
     8a8:	00100593          	li	a1,1
     8ac:	00800513          	li	a0,8
     8b0:	00000097          	auipc	ra,0x0
     8b4:	cf0080e7          	jalr	-784(ra) # 5a0 <sdcard_get>
     8b8:	00000097          	auipc	ra,0x0
     8bc:	b34080e7          	jalr	-1228(ra) # 3ec <sdcard_ponder>
     8c0:	00048513          	mv	a0,s1
     8c4:	00000097          	auipc	ra,0x0
     8c8:	d54080e7          	jalr	-684(ra) # 618 <sdcard_cmd>
     8cc:	00100593          	li	a1,1
     8d0:	00800513          	li	a0,8
     8d4:	00000097          	auipc	ra,0x0
     8d8:	ccc080e7          	jalr	-820(ra) # 5a0 <sdcard_get>
     8dc:	00a12623          	sw	a0,12(sp)
     8e0:	00000097          	auipc	ra,0x0
     8e4:	b0c080e7          	jalr	-1268(ra) # 3ec <sdcard_ponder>
     8e8:	00c12503          	lw	a0,12(sp)
     8ec:	00050c63          	beqz	a0,904 <sdcard_init+0x118>
     8f0:	001e8537          	lui	a0,0x1e8
     8f4:	48050513          	addi	a0,a0,1152 # 1e8480 <__stacktop+0x1d8480>
     8f8:	00000097          	auipc	ra,0x0
     8fc:	ac8080e7          	jalr	-1336(ra) # 3c0 <pause>
     900:	f9dff06f          	j	89c <sdcard_init+0xb0>
     904:	00004537          	lui	a0,0x4
     908:	ff050513          	addi	a0,a0,-16 # 3ff0 <cmd16>
     90c:	00000097          	auipc	ra,0x0
     910:	d0c080e7          	jalr	-756(ra) # 618 <sdcard_cmd>
     914:	00100593          	li	a1,1
     918:	00800513          	li	a0,8
     91c:	00000097          	auipc	ra,0x0
     920:	c84080e7          	jalr	-892(ra) # 5a0 <sdcard_get>
     924:	01812403          	lw	s0,24(sp)
     928:	01c12083          	lw	ra,28(sp)
     92c:	01412483          	lw	s1,20(sp)
     930:	02010113          	addi	sp,sp,32
     934:	00000317          	auipc	t1,0x0
     938:	ab830067          	jr	-1352(t1) # 3ec <sdcard_ponder>

0000093c <sdcard_readsector>:
     93c:	04060663          	beqz	a2,988 <sdcard_readsector+0x4c>
     940:	ff010113          	addi	sp,sp,-16
     944:	00812423          	sw	s0,8(sp)
     948:	00912223          	sw	s1,4(sp)
     94c:	00112623          	sw	ra,12(sp)
     950:	00050413          	mv	s0,a0
     954:	00a604b3          	add	s1,a2,a0
     958:	00040513          	mv	a0,s0
     95c:	00000097          	auipc	ra,0x0
     960:	da4080e7          	jalr	-604(ra) # 700 <sdcard_read_sector>
     964:	00140413          	addi	s0,s0,1
     968:	00050593          	mv	a1,a0
     96c:	fe9416e3          	bne	s0,s1,958 <sdcard_readsector+0x1c>
     970:	00c12083          	lw	ra,12(sp)
     974:	00812403          	lw	s0,8(sp)
     978:	00412483          	lw	s1,4(sp)
     97c:	00100513          	li	a0,1
     980:	01010113          	addi	sp,sp,16
     984:	00008067          	ret
     988:	00000513          	li	a0,0
     98c:	00008067          	ret

00000990 <sdcard_writesector>:
     990:	00000513          	li	a0,0
     994:	00008067          	ret

00000998 <__divsi3>:
     998:	06054063          	bltz	a0,9f8 <__umodsi3+0x10>
     99c:	0605c663          	bltz	a1,a08 <__umodsi3+0x20>

000009a0 <__udivsi3>:
     9a0:	00058613          	mv	a2,a1
     9a4:	00050593          	mv	a1,a0
     9a8:	fff00513          	li	a0,-1
     9ac:	02060c63          	beqz	a2,9e4 <__udivsi3+0x44>
     9b0:	00100693          	li	a3,1
     9b4:	00b67a63          	bgeu	a2,a1,9c8 <__udivsi3+0x28>
     9b8:	00c05863          	blez	a2,9c8 <__udivsi3+0x28>
     9bc:	00161613          	slli	a2,a2,0x1
     9c0:	00169693          	slli	a3,a3,0x1
     9c4:	feb66ae3          	bltu	a2,a1,9b8 <__udivsi3+0x18>
     9c8:	00000513          	li	a0,0
     9cc:	00c5e663          	bltu	a1,a2,9d8 <__udivsi3+0x38>
     9d0:	40c585b3          	sub	a1,a1,a2
     9d4:	00d56533          	or	a0,a0,a3
     9d8:	0016d693          	srli	a3,a3,0x1
     9dc:	00165613          	srli	a2,a2,0x1
     9e0:	fe0696e3          	bnez	a3,9cc <__udivsi3+0x2c>
     9e4:	00008067          	ret

000009e8 <__umodsi3>:
     9e8:	00008293          	mv	t0,ra
     9ec:	fb5ff0ef          	jal	9a0 <__udivsi3>
     9f0:	00058513          	mv	a0,a1
     9f4:	00028067          	jr	t0
     9f8:	40a00533          	neg	a0,a0
     9fc:	0005d863          	bgez	a1,a0c <__umodsi3+0x24>
     a00:	40b005b3          	neg	a1,a1
     a04:	f95ff06f          	j	998 <__divsi3>
     a08:	40b005b3          	neg	a1,a1
     a0c:	00008293          	mv	t0,ra
     a10:	f89ff0ef          	jal	998 <__divsi3>
     a14:	40a00533          	neg	a0,a0
     a18:	00028067          	jr	t0

00000a1c <__modsi3>:
     a1c:	00008293          	mv	t0,ra
     a20:	0005ca63          	bltz	a1,a34 <__modsi3+0x18>
     a24:	00054c63          	bltz	a0,a3c <__modsi3+0x20>
     a28:	f79ff0ef          	jal	9a0 <__udivsi3>
     a2c:	00058513          	mv	a0,a1
     a30:	00028067          	jr	t0
     a34:	40b005b3          	neg	a1,a1
     a38:	fe0558e3          	bgez	a0,a28 <__modsi3+0xc>
     a3c:	40a00533          	neg	a0,a0
     a40:	f61ff0ef          	jal	9a0 <__udivsi3>
     a44:	40b00533          	neg	a0,a1
     a48:	00028067          	jr	t0

00000a4c <memset>:
     a4c:	00c50633          	add	a2,a0,a2
     a50:	00050793          	mv	a5,a0
     a54:	00c79463          	bne	a5,a2,a5c <memset+0x10>
     a58:	00008067          	ret
     a5c:	00178793          	addi	a5,a5,1
     a60:	feb78fa3          	sb	a1,-1(a5)
     a64:	ff1ff06f          	j	a54 <memset+0x8>

00000a68 <memcpy>:
     a68:	00000793          	li	a5,0
     a6c:	00c79463          	bne	a5,a2,a74 <memcpy+0xc>
     a70:	00008067          	ret
     a74:	00f58733          	add	a4,a1,a5
     a78:	00074683          	lbu	a3,0(a4)
     a7c:	00f50733          	add	a4,a0,a5
     a80:	00178793          	addi	a5,a5,1
     a84:	00d70023          	sb	a3,0(a4)
     a88:	fe5ff06f          	j	a6c <memcpy+0x4>

00000a8c <strlen>:
     a8c:	00000793          	li	a5,0
     a90:	00f50733          	add	a4,a0,a5
     a94:	00074703          	lbu	a4,0(a4)
     a98:	00071663          	bnez	a4,aa4 <strlen+0x18>
     a9c:	00078513          	mv	a0,a5
     aa0:	00008067          	ret
     aa4:	00178793          	addi	a5,a5,1
     aa8:	fe9ff06f          	j	a90 <strlen+0x4>

00000aac <strncmp>:
     aac:	00000793          	li	a5,0
     ab0:	00c79663          	bne	a5,a2,abc <strncmp+0x10>
     ab4:	00000513          	li	a0,0
     ab8:	00008067          	ret
     abc:	00f50733          	add	a4,a0,a5
     ac0:	00074683          	lbu	a3,0(a4)
     ac4:	00f58733          	add	a4,a1,a5
     ac8:	00074703          	lbu	a4,0(a4)
     acc:	00e6e863          	bltu	a3,a4,adc <strncmp+0x30>
     ad0:	00d76a63          	bltu	a4,a3,ae4 <strncmp+0x38>
     ad4:	00178793          	addi	a5,a5,1
     ad8:	fd9ff06f          	j	ab0 <strncmp+0x4>
     adc:	fff00513          	li	a0,-1
     ae0:	00008067          	ret
     ae4:	00100513          	li	a0,1
     ae8:	00008067          	ret

00000aec <oled_wait>:
     aec:	00000013          	nop
     af0:	00000013          	nop
     af4:	00000013          	nop
     af8:	00000013          	nop
     afc:	00000013          	nop
     b00:	00000013          	nop
     b04:	00000013          	nop
     b08:	00008067          	ret

00000b0c <oled_init_mode>:
     b0c:	000047b7          	lui	a5,0x4
     b10:	0287a703          	lw	a4,40(a5) # 4028 <OLED_RST>
     b14:	fe010113          	addi	sp,sp,-32
     b18:	00112e23          	sw	ra,28(sp)
     b1c:	00812c23          	sw	s0,24(sp)
     b20:	00072023          	sw	zero,0(a4)
     b24:	00040737          	lui	a4,0x40
     b28:	00000013          	nop
     b2c:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
     b30:	fe071ce3          	bnez	a4,b28 <oled_init_mode+0x1c>
     b34:	0287a703          	lw	a4,40(a5)
     b38:	00100693          	li	a3,1
     b3c:	00d72023          	sw	a3,0(a4)
     b40:	00040737          	lui	a4,0x40
     b44:	00000013          	nop
     b48:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
     b4c:	fe071ce3          	bnez	a4,b44 <oled_init_mode+0x38>
     b50:	0287a783          	lw	a5,40(a5)
     b54:	0007a023          	sw	zero,0(a5)
     b58:	000407b7          	lui	a5,0x40
     b5c:	00000013          	nop
     b60:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
     b64:	fe079ce3          	bnez	a5,b5c <oled_init_mode+0x50>
     b68:	00004737          	lui	a4,0x4
     b6c:	02c72783          	lw	a5,44(a4) # 402c <OLED>
     b70:	2af00693          	li	a3,687
     b74:	00d7a023          	sw	a3,0(a5)
     b78:	000407b7          	lui	a5,0x40
     b7c:	00000013          	nop
     b80:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
     b84:	fe079ce3          	bnez	a5,b7c <oled_init_mode+0x70>
     b88:	02c72403          	lw	s0,44(a4)
     b8c:	2a000793          	li	a5,672
     b90:	00a12623          	sw	a0,12(sp)
     b94:	00f42023          	sw	a5,0(s0)
     b98:	00000097          	auipc	ra,0x0
     b9c:	f54080e7          	jalr	-172(ra) # aec <oled_wait>
     ba0:	00c12503          	lw	a0,12(sp)
     ba4:	4a000793          	li	a5,1184
     ba8:	00050463          	beqz	a0,bb0 <oled_init_mode+0xa4>
     bac:	42000793          	li	a5,1056
     bb0:	00f42023          	sw	a5,0(s0)
     bb4:	00000097          	auipc	ra,0x0
     bb8:	f38080e7          	jalr	-200(ra) # aec <oled_wait>
     bbc:	2fd00793          	li	a5,765
     bc0:	00f42023          	sw	a5,0(s0)
     bc4:	00000097          	auipc	ra,0x0
     bc8:	f28080e7          	jalr	-216(ra) # aec <oled_wait>
     bcc:	4b100793          	li	a5,1201
     bd0:	00f42023          	sw	a5,0(s0)
     bd4:	00000097          	auipc	ra,0x0
     bd8:	f18080e7          	jalr	-232(ra) # aec <oled_wait>
     bdc:	2a200793          	li	a5,674
     be0:	00f42023          	sw	a5,0(s0)
     be4:	00000097          	auipc	ra,0x0
     be8:	f08080e7          	jalr	-248(ra) # aec <oled_wait>
     bec:	40000793          	li	a5,1024
     bf0:	00f42023          	sw	a5,0(s0)
     bf4:	01812403          	lw	s0,24(sp)
     bf8:	01c12083          	lw	ra,28(sp)
     bfc:	02010113          	addi	sp,sp,32
     c00:	00000317          	auipc	t1,0x0
     c04:	eec30067          	jr	-276(t1) # aec <oled_wait>

00000c08 <oled_init>:
     c08:	00000513          	li	a0,0
     c0c:	00000317          	auipc	t1,0x0
     c10:	f0030067          	jr	-256(t1) # b0c <oled_init_mode>

00000c14 <oled_fullscreen>:
     c14:	ff010113          	addi	sp,sp,-16
     c18:	000047b7          	lui	a5,0x4
     c1c:	00812423          	sw	s0,8(sp)
     c20:	02c7a403          	lw	s0,44(a5) # 402c <OLED>
     c24:	00112623          	sw	ra,12(sp)
     c28:	00912223          	sw	s1,4(sp)
     c2c:	01212023          	sw	s2,0(sp)
     c30:	21500793          	li	a5,533
     c34:	00f42023          	sw	a5,0(s0)
     c38:	40000913          	li	s2,1024
     c3c:	00000097          	auipc	ra,0x0
     c40:	eb0080e7          	jalr	-336(ra) # aec <oled_wait>
     c44:	47f00493          	li	s1,1151
     c48:	01242023          	sw	s2,0(s0)
     c4c:	00000097          	auipc	ra,0x0
     c50:	ea0080e7          	jalr	-352(ra) # aec <oled_wait>
     c54:	00942023          	sw	s1,0(s0)
     c58:	00000097          	auipc	ra,0x0
     c5c:	e94080e7          	jalr	-364(ra) # aec <oled_wait>
     c60:	27500793          	li	a5,629
     c64:	00f42023          	sw	a5,0(s0)
     c68:	00000097          	auipc	ra,0x0
     c6c:	e84080e7          	jalr	-380(ra) # aec <oled_wait>
     c70:	01242023          	sw	s2,0(s0)
     c74:	00000097          	auipc	ra,0x0
     c78:	e78080e7          	jalr	-392(ra) # aec <oled_wait>
     c7c:	00942023          	sw	s1,0(s0)
     c80:	00000097          	auipc	ra,0x0
     c84:	e6c080e7          	jalr	-404(ra) # aec <oled_wait>
     c88:	25c00793          	li	a5,604
     c8c:	00f42023          	sw	a5,0(s0)
     c90:	00812403          	lw	s0,8(sp)
     c94:	00c12083          	lw	ra,12(sp)
     c98:	00412483          	lw	s1,4(sp)
     c9c:	00012903          	lw	s2,0(sp)
     ca0:	01010113          	addi	sp,sp,16
     ca4:	00000317          	auipc	t1,0x0
     ca8:	e4830067          	jr	-440(t1) # aec <oled_wait>

00000cac <display_framebuffer>:
     cac:	000047b7          	lui	a5,0x4
     cb0:	01c7a503          	lw	a0,28(a5) # 401c <DISPLAY>
     cb4:	00008067          	ret

00000cb8 <display_set_cursor>:
     cb8:	000047b7          	lui	a5,0x4
     cbc:	30a7a423          	sw	a0,776(a5) # 4308 <cursor_x>
     cc0:	000047b7          	lui	a5,0x4
     cc4:	30b7a223          	sw	a1,772(a5) # 4304 <cursor_y>
     cc8:	00008067          	ret

00000ccc <display_set_front_back_color>:
     ccc:	000047b7          	lui	a5,0x4
     cd0:	30a780a3          	sb	a0,769(a5) # 4301 <front_color>
     cd4:	000047b7          	lui	a5,0x4
     cd8:	30b78023          	sb	a1,768(a5) # 4300 <back_color>
     cdc:	00008067          	ret

00000ce0 <display_putchar>:
     ce0:	00a00793          	li	a5,10
     ce4:	00004737          	lui	a4,0x4
     ce8:	02f51663          	bne	a0,a5,d14 <display_putchar+0x34>
     cec:	30072423          	sw	zero,776(a4) # 4308 <cursor_x>
     cf0:	00004737          	lui	a4,0x4
     cf4:	30472783          	lw	a5,772(a4) # 4304 <cursor_y>
     cf8:	00878793          	addi	a5,a5,8
     cfc:	30f72223          	sw	a5,772(a4)
     d00:	07f00713          	li	a4,127
     d04:	00f75663          	bge	a4,a5,d10 <display_putchar+0x30>
     d08:	000047b7          	lui	a5,0x4
     d0c:	3007a223          	sw	zero,772(a5) # 4304 <cursor_y>
     d10:	00008067          	ret
     d14:	ff010113          	addi	sp,sp,-16
     d18:	00812623          	sw	s0,12(sp)
     d1c:	01f00793          	li	a5,31
     d20:	08a7d663          	bge	a5,a0,dac <display_putchar+0xcc>
     d24:	000047b7          	lui	a5,0x4
     d28:	01c7ae83          	lw	t4,28(a5) # 401c <DISPLAY>
     d2c:	000046b7          	lui	a3,0x4
     d30:	00251793          	slli	a5,a0,0x2
     d34:	0e868693          	addi	a3,a3,232 # 40e8 <font>
     d38:	00a787b3          	add	a5,a5,a0
     d3c:	00d78533          	add	a0,a5,a3
     d40:	00100e13          	li	t3,1
     d44:	00000693          	li	a3,0
     d48:	000043b7          	lui	t2,0x4
     d4c:	00004437          	lui	s0,0x4
     d50:	00004f37          	lui	t5,0x4
     d54:	00500f93          	li	t6,5
     d58:	00800293          	li	t0,8
     d5c:	00de1333          	sll	t1,t3,a3
     d60:	00050593          	mv	a1,a0
     d64:	00000613          	li	a2,0
     d68:	f605c783          	lbu	a5,-160(a1)
     d6c:	0067f7b3          	and	a5,a5,t1
     d70:	04078a63          	beqz	a5,dc4 <display_putchar+0xe4>
     d74:	30144883          	lbu	a7,769(s0) # 4301 <front_color>
     d78:	30872783          	lw	a5,776(a4)
     d7c:	304f2803          	lw	a6,772(t5) # 4304 <cursor_y>
     d80:	00158593          	addi	a1,a1,1
     d84:	00f607b3          	add	a5,a2,a5
     d88:	00779793          	slli	a5,a5,0x7
     d8c:	01068833          	add	a6,a3,a6
     d90:	010787b3          	add	a5,a5,a6
     d94:	00fe87b3          	add	a5,t4,a5
     d98:	01178023          	sb	a7,0(a5)
     d9c:	00160613          	addi	a2,a2,1 # 4001 <cmd55+0x1>
     da0:	fdf614e3          	bne	a2,t6,d68 <display_putchar+0x88>
     da4:	00168693          	addi	a3,a3,1
     da8:	fa569ae3          	bne	a3,t0,d5c <display_putchar+0x7c>
     dac:	30872783          	lw	a5,776(a4)
     db0:	07f00693          	li	a3,127
     db4:	00578793          	addi	a5,a5,5
     db8:	00f6ca63          	blt	a3,a5,dcc <display_putchar+0xec>
     dbc:	30f72423          	sw	a5,776(a4)
     dc0:	02c0006f          	j	dec <display_putchar+0x10c>
     dc4:	3003c883          	lbu	a7,768(t2) # 4300 <back_color>
     dc8:	fb1ff06f          	j	d78 <display_putchar+0x98>
     dcc:	30072423          	sw	zero,776(a4)
     dd0:	00004737          	lui	a4,0x4
     dd4:	30472783          	lw	a5,772(a4) # 4304 <cursor_y>
     dd8:	00878793          	addi	a5,a5,8
     ddc:	30f72223          	sw	a5,772(a4)
     de0:	00f6d663          	bge	a3,a5,dec <display_putchar+0x10c>
     de4:	000047b7          	lui	a5,0x4
     de8:	3007a223          	sw	zero,772(a5) # 4304 <cursor_y>
     dec:	00c12403          	lw	s0,12(sp)
     df0:	01010113          	addi	sp,sp,16
     df4:	00008067          	ret

00000df8 <display_refresh>:
     df8:	00008067          	ret

00000dfc <print_string>:
     dfc:	ff010113          	addi	sp,sp,-16
     e00:	00812423          	sw	s0,8(sp)
     e04:	00912223          	sw	s1,4(sp)
     e08:	00112623          	sw	ra,12(sp)
     e0c:	00050413          	mv	s0,a0
     e10:	000044b7          	lui	s1,0x4
     e14:	00044503          	lbu	a0,0(s0)
     e18:	00051c63          	bnez	a0,e30 <print_string+0x34>
     e1c:	00c12083          	lw	ra,12(sp)
     e20:	00812403          	lw	s0,8(sp)
     e24:	00412483          	lw	s1,4(sp)
     e28:	01010113          	addi	sp,sp,16
     e2c:	00008067          	ret
     e30:	30c4a783          	lw	a5,780(s1) # 430c <f_putchar>
     e34:	00140413          	addi	s0,s0,1
     e38:	000780e7          	jalr	a5
     e3c:	fd9ff06f          	j	e14 <print_string+0x18>

00000e40 <print_dec>:
     e40:	ef010113          	addi	sp,sp,-272
     e44:	10812423          	sw	s0,264(sp)
     e48:	10912223          	sw	s1,260(sp)
     e4c:	10112623          	sw	ra,268(sp)
     e50:	11212023          	sw	s2,256(sp)
     e54:	00050413          	mv	s0,a0
     e58:	000044b7          	lui	s1,0x4
     e5c:	08045063          	bgez	s0,edc <print_dec+0x9c>
     e60:	30c4a783          	lw	a5,780(s1) # 430c <f_putchar>
     e64:	02d00513          	li	a0,45
     e68:	40800433          	neg	s0,s0
     e6c:	000780e7          	jalr	a5
     e70:	fedff06f          	j	e5c <print_dec+0x1c>
     e74:	00040513          	mv	a0,s0
     e78:	00a00593          	li	a1,10
     e7c:	00000097          	auipc	ra,0x0
     e80:	b1c080e7          	jalr	-1252(ra) # 998 <__divsi3>
     e84:	00251793          	slli	a5,a0,0x2
     e88:	00f507b3          	add	a5,a0,a5
     e8c:	00179793          	slli	a5,a5,0x1
     e90:	40f40433          	sub	s0,s0,a5
     e94:	00148493          	addi	s1,s1,1
     e98:	fe848fa3          	sb	s0,-1(s1)
     e9c:	00050413          	mv	s0,a0
     ea0:	fc041ae3          	bnez	s0,e74 <print_dec+0x34>
     ea4:	fd2488e3          	beq	s1,s2,e74 <print_dec+0x34>
     ea8:	00004437          	lui	s0,0x4
     eac:	fff4c503          	lbu	a0,-1(s1)
     eb0:	30c42783          	lw	a5,780(s0) # 430c <f_putchar>
     eb4:	fff48493          	addi	s1,s1,-1
     eb8:	03050513          	addi	a0,a0,48
     ebc:	000780e7          	jalr	a5
     ec0:	ff2496e3          	bne	s1,s2,eac <print_dec+0x6c>
     ec4:	10c12083          	lw	ra,268(sp)
     ec8:	10812403          	lw	s0,264(sp)
     ecc:	10412483          	lw	s1,260(sp)
     ed0:	10012903          	lw	s2,256(sp)
     ed4:	11010113          	addi	sp,sp,272
     ed8:	00008067          	ret
     edc:	00010493          	mv	s1,sp
     ee0:	00010913          	mv	s2,sp
     ee4:	fbdff06f          	j	ea0 <print_dec+0x60>

00000ee8 <print_hex_digits>:
     ee8:	fe010113          	addi	sp,sp,-32
     eec:	00812c23          	sw	s0,24(sp)
     ef0:	00912a23          	sw	s1,20(sp)
     ef4:	fff58413          	addi	s0,a1,-1
     ef8:	000044b7          	lui	s1,0x4
     efc:	01212823          	sw	s2,16(sp)
     f00:	01312623          	sw	s3,12(sp)
     f04:	00112e23          	sw	ra,28(sp)
     f08:	00050993          	mv	s3,a0
     f0c:	00241413          	slli	s0,s0,0x2
     f10:	0a048493          	addi	s1,s1,160 # 40a0 <LEDS+0x70>
     f14:	00004937          	lui	s2,0x4
     f18:	02045063          	bgez	s0,f38 <print_hex_digits+0x50>
     f1c:	01c12083          	lw	ra,28(sp)
     f20:	01812403          	lw	s0,24(sp)
     f24:	01412483          	lw	s1,20(sp)
     f28:	01012903          	lw	s2,16(sp)
     f2c:	00c12983          	lw	s3,12(sp)
     f30:	02010113          	addi	sp,sp,32
     f34:	00008067          	ret
     f38:	0089d7b3          	srl	a5,s3,s0
     f3c:	00f7f793          	andi	a5,a5,15
     f40:	00f487b3          	add	a5,s1,a5
     f44:	30c92703          	lw	a4,780(s2) # 430c <f_putchar>
     f48:	0007c503          	lbu	a0,0(a5)
     f4c:	ffc40413          	addi	s0,s0,-4
     f50:	000700e7          	jalr	a4
     f54:	fc5ff06f          	j	f18 <print_hex_digits+0x30>

00000f58 <print_hex>:
     f58:	00800593          	li	a1,8
     f5c:	00000317          	auipc	t1,0x0
     f60:	f8c30067          	jr	-116(t1) # ee8 <print_hex_digits>

00000f64 <printf>:
     f64:	fa010113          	addi	sp,sp,-96
     f68:	04f12a23          	sw	a5,84(sp)
     f6c:	04410793          	addi	a5,sp,68
     f70:	02812c23          	sw	s0,56(sp)
     f74:	02912a23          	sw	s1,52(sp)
     f78:	03212823          	sw	s2,48(sp)
     f7c:	03312623          	sw	s3,44(sp)
     f80:	03412423          	sw	s4,40(sp)
     f84:	03512223          	sw	s5,36(sp)
     f88:	03612023          	sw	s6,32(sp)
     f8c:	02112e23          	sw	ra,60(sp)
     f90:	01712e23          	sw	s7,28(sp)
     f94:	00050413          	mv	s0,a0
     f98:	04b12223          	sw	a1,68(sp)
     f9c:	04c12423          	sw	a2,72(sp)
     fa0:	04d12623          	sw	a3,76(sp)
     fa4:	04e12823          	sw	a4,80(sp)
     fa8:	05012c23          	sw	a6,88(sp)
     fac:	05112e23          	sw	a7,92(sp)
     fb0:	00f12623          	sw	a5,12(sp)
     fb4:	02500913          	li	s2,37
     fb8:	000044b7          	lui	s1,0x4
     fbc:	07300993          	li	s3,115
     fc0:	07800a13          	li	s4,120
     fc4:	06400a93          	li	s5,100
     fc8:	06300b13          	li	s6,99
     fcc:	00044503          	lbu	a0,0(s0)
     fd0:	02051863          	bnez	a0,1000 <printf+0x9c>
     fd4:	03c12083          	lw	ra,60(sp)
     fd8:	03812403          	lw	s0,56(sp)
     fdc:	03412483          	lw	s1,52(sp)
     fe0:	03012903          	lw	s2,48(sp)
     fe4:	02c12983          	lw	s3,44(sp)
     fe8:	02812a03          	lw	s4,40(sp)
     fec:	02412a83          	lw	s5,36(sp)
     ff0:	02012b03          	lw	s6,32(sp)
     ff4:	01c12b83          	lw	s7,28(sp)
     ff8:	06010113          	addi	sp,sp,96
     ffc:	00008067          	ret
    1000:	09251a63          	bne	a0,s2,1094 <printf+0x130>
    1004:	00144503          	lbu	a0,1(s0)
    1008:	00140b93          	addi	s7,s0,1
    100c:	03351463          	bne	a0,s3,1034 <printf+0xd0>
    1010:	00c12783          	lw	a5,12(sp)
    1014:	0007a503          	lw	a0,0(a5)
    1018:	00478713          	addi	a4,a5,4
    101c:	00e12623          	sw	a4,12(sp)
    1020:	00000097          	auipc	ra,0x0
    1024:	ddc080e7          	jalr	-548(ra) # dfc <print_string>
    1028:	000b8413          	mv	s0,s7
    102c:	00140413          	addi	s0,s0,1
    1030:	f9dff06f          	j	fcc <printf+0x68>
    1034:	03451063          	bne	a0,s4,1054 <printf+0xf0>
    1038:	00c12783          	lw	a5,12(sp)
    103c:	0007a503          	lw	a0,0(a5)
    1040:	00478713          	addi	a4,a5,4
    1044:	00e12623          	sw	a4,12(sp)
    1048:	00000097          	auipc	ra,0x0
    104c:	f10080e7          	jalr	-240(ra) # f58 <print_hex>
    1050:	fd9ff06f          	j	1028 <printf+0xc4>
    1054:	03551063          	bne	a0,s5,1074 <printf+0x110>
    1058:	00c12783          	lw	a5,12(sp)
    105c:	0007a503          	lw	a0,0(a5)
    1060:	00478713          	addi	a4,a5,4
    1064:	00e12623          	sw	a4,12(sp)
    1068:	00000097          	auipc	ra,0x0
    106c:	dd8080e7          	jalr	-552(ra) # e40 <print_dec>
    1070:	fb9ff06f          	j	1028 <printf+0xc4>
    1074:	30c4a783          	lw	a5,780(s1) # 430c <f_putchar>
    1078:	01651a63          	bne	a0,s6,108c <printf+0x128>
    107c:	00c12703          	lw	a4,12(sp)
    1080:	00072503          	lw	a0,0(a4)
    1084:	00470693          	addi	a3,a4,4
    1088:	00d12623          	sw	a3,12(sp)
    108c:	000780e7          	jalr	a5
    1090:	f99ff06f          	j	1028 <printf+0xc4>
    1094:	30c4a783          	lw	a5,780(s1)
    1098:	000780e7          	jalr	a5
    109c:	f91ff06f          	j	102c <printf+0xc8>

000010a0 <__mulsi3>:
    10a0:	00050793          	mv	a5,a0
    10a4:	00000513          	li	a0,0
    10a8:	00079463          	bnez	a5,10b0 <__mulsi3+0x10>
    10ac:	00008067          	ret
    10b0:	01f79693          	slli	a3,a5,0x1f
    10b4:	41f6d713          	srai	a4,a3,0x1f
    10b8:	00b77733          	and	a4,a4,a1
    10bc:	00e50533          	add	a0,a0,a4
    10c0:	0017d793          	srli	a5,a5,0x1
    10c4:	00159593          	slli	a1,a1,0x1
    10c8:	fe1ff06f          	j	10a8 <__mulsi3+0x8>

000010cc <fat_list_insert_last>:
    10cc:	00452783          	lw	a5,4(a0)
    10d0:	04079263          	bnez	a5,1114 <fat_list_insert_last+0x48>
    10d4:	00052783          	lw	a5,0(a0)
    10d8:	00079c63          	bnez	a5,10f0 <fat_list_insert_last+0x24>
    10dc:	00b52023          	sw	a1,0(a0)
    10e0:	00b52223          	sw	a1,4(a0)
    10e4:	0005a023          	sw	zero,0(a1)
    10e8:	0005a223          	sw	zero,4(a1)
    10ec:	00008067          	ret
    10f0:	0007a703          	lw	a4,0(a5)
    10f4:	00f5a223          	sw	a5,4(a1)
    10f8:	00e5a023          	sw	a4,0(a1)
    10fc:	00071863          	bnez	a4,110c <fat_list_insert_last+0x40>
    1100:	00b52023          	sw	a1,0(a0)
    1104:	00b7a023          	sw	a1,0(a5)
    1108:	00008067          	ret
    110c:	00b72223          	sw	a1,4(a4)
    1110:	ff5ff06f          	j	1104 <fat_list_insert_last+0x38>
    1114:	0047a703          	lw	a4,4(a5)
    1118:	00f5a023          	sw	a5,0(a1)
    111c:	00e5a223          	sw	a4,4(a1)
    1120:	00071863          	bnez	a4,1130 <fat_list_insert_last+0x64>
    1124:	00b52223          	sw	a1,4(a0)
    1128:	00b7a223          	sw	a1,4(a5)
    112c:	00008067          	ret
    1130:	00b72023          	sw	a1,0(a4)
    1134:	ff5ff06f          	j	1128 <fat_list_insert_last+0x5c>

00001138 <FileString_StrCmpNoCase>:
    1138:	00050e93          	mv	t4,a0
    113c:	00000793          	li	a5,0
    1140:	01900e13          	li	t3,25
    1144:	00c79663          	bne	a5,a2,1150 <FileString_StrCmpNoCase+0x18>
    1148:	00000513          	li	a0,0
    114c:	00008067          	ret
    1150:	00fe8733          	add	a4,t4,a5
    1154:	00074803          	lbu	a6,0(a4)
    1158:	00f58733          	add	a4,a1,a5
    115c:	00074883          	lbu	a7,0(a4)
    1160:	fbf80713          	addi	a4,a6,-65
    1164:	0ff77713          	zext.b	a4,a4
    1168:	00080693          	mv	a3,a6
    116c:	00ee6663          	bltu	t3,a4,1178 <FileString_StrCmpNoCase+0x40>
    1170:	02080693          	addi	a3,a6,32
    1174:	0ff6f693          	zext.b	a3,a3
    1178:	fbf88313          	addi	t1,a7,-65
    117c:	0ff37313          	zext.b	t1,t1
    1180:	00088713          	mv	a4,a7
    1184:	006e6663          	bltu	t3,t1,1190 <FileString_StrCmpNoCase+0x58>
    1188:	02088713          	addi	a4,a7,32
    118c:	0ff77713          	zext.b	a4,a4
    1190:	40e68533          	sub	a0,a3,a4
    1194:	00e69863          	bne	a3,a4,11a4 <FileString_StrCmpNoCase+0x6c>
    1198:	00178793          	addi	a5,a5,1
    119c:	00088463          	beqz	a7,11a4 <FileString_StrCmpNoCase+0x6c>
    11a0:	fa0812e3          	bnez	a6,1144 <FileString_StrCmpNoCase+0xc>
    11a4:	00008067          	ret

000011a8 <FileString_GetExtension>:
    11a8:	00050793          	mv	a5,a0
    11ac:	fff00713          	li	a4,-1
    11b0:	02e00613          	li	a2,46
    11b4:	0007c683          	lbu	a3,0(a5)
    11b8:	00069663          	bnez	a3,11c4 <FileString_GetExtension+0x1c>
    11bc:	00070513          	mv	a0,a4
    11c0:	00008067          	ret
    11c4:	00c69463          	bne	a3,a2,11cc <FileString_GetExtension+0x24>
    11c8:	40a78733          	sub	a4,a5,a0
    11cc:	00178793          	addi	a5,a5,1
    11d0:	fe5ff06f          	j	11b4 <FileString_GetExtension+0xc>

000011d4 <fatfs_fat_writeback>:
    11d4:	00059e63          	bnez	a1,11f0 <fatfs_fat_writeback+0x1c>
    11d8:	00000513          	li	a0,0
    11dc:	00008067          	ret
    11e0:	00000513          	li	a0,0
    11e4:	01c12083          	lw	ra,28(sp)
    11e8:	02010113          	addi	sp,sp,32
    11ec:	00008067          	ret
    11f0:	2045a783          	lw	a5,516(a1)
    11f4:	04078e63          	beqz	a5,1250 <fatfs_fat_writeback+0x7c>
    11f8:	03852683          	lw	a3,56(a0)
    11fc:	00050793          	mv	a5,a0
    1200:	04068663          	beqz	a3,124c <fatfs_fat_writeback+0x78>
    1204:	0147a703          	lw	a4,20(a5)
    1208:	2005a503          	lw	a0,512(a1)
    120c:	0207a803          	lw	a6,32(a5)
    1210:	00100613          	li	a2,1
    1214:	fe010113          	addi	sp,sp,-32
    1218:	40e607b3          	sub	a5,a2,a4
    121c:	00112e23          	sw	ra,28(sp)
    1220:	00a787b3          	add	a5,a5,a0
    1224:	00f87663          	bgeu	a6,a5,1230 <fatfs_fat_writeback+0x5c>
    1228:	01070733          	add	a4,a4,a6
    122c:	40a70633          	sub	a2,a4,a0
    1230:	00b12623          	sw	a1,12(sp)
    1234:	000680e7          	jalr	a3
    1238:	fa0504e3          	beqz	a0,11e0 <fatfs_fat_writeback+0xc>
    123c:	00c12583          	lw	a1,12(sp)
    1240:	00100513          	li	a0,1
    1244:	2005a223          	sw	zero,516(a1)
    1248:	f9dff06f          	j	11e4 <fatfs_fat_writeback+0x10>
    124c:	2005a223          	sw	zero,516(a1)
    1250:	00100513          	li	a0,1
    1254:	00008067          	ret

00001258 <fatfs_fat_read_sector>:
    1258:	fe010113          	addi	sp,sp,-32
    125c:	01212823          	sw	s2,16(sp)
    1260:	25452903          	lw	s2,596(a0)
    1264:	00812c23          	sw	s0,24(sp)
    1268:	00112e23          	sw	ra,28(sp)
    126c:	00912a23          	sw	s1,20(sp)
    1270:	01312623          	sw	s3,12(sp)
    1274:	00000413          	li	s0,0
    1278:	04091463          	bnez	s2,12c0 <fatfs_fat_read_sector+0x68>
    127c:	25452783          	lw	a5,596(a0)
    1280:	00058493          	mv	s1,a1
    1284:	00050993          	mv	s3,a0
    1288:	20f42623          	sw	a5,524(s0)
    128c:	20442783          	lw	a5,516(s0)
    1290:	24852a23          	sw	s0,596(a0)
    1294:	08079863          	bnez	a5,1324 <fatfs_fat_read_sector+0xcc>
    1298:	0349a783          	lw	a5,52(s3)
    129c:	20942023          	sw	s1,512(s0)
    12a0:	00100613          	li	a2,1
    12a4:	00040593          	mv	a1,s0
    12a8:	00048513          	mv	a0,s1
    12ac:	000780e7          	jalr	a5
    12b0:	08051463          	bnez	a0,1338 <fatfs_fat_read_sector+0xe0>
    12b4:	fff00793          	li	a5,-1
    12b8:	20f42023          	sw	a5,512(s0)
    12bc:	0480006f          	j	1304 <fatfs_fat_read_sector+0xac>
    12c0:	20092783          	lw	a5,512(s2)
    12c4:	00f5e663          	bltu	a1,a5,12d0 <fatfs_fat_read_sector+0x78>
    12c8:	00178713          	addi	a4,a5,1
    12cc:	02e5e463          	bltu	a1,a4,12f4 <fatfs_fat_read_sector+0x9c>
    12d0:	20c92783          	lw	a5,524(s2)
    12d4:	00079663          	bnez	a5,12e0 <fatfs_fat_read_sector+0x88>
    12d8:	00040a63          	beqz	s0,12ec <fatfs_fat_read_sector+0x94>
    12dc:	20042623          	sw	zero,524(s0)
    12e0:	00090413          	mv	s0,s2
    12e4:	20c92903          	lw	s2,524(s2)
    12e8:	f91ff06f          	j	1278 <fatfs_fat_read_sector+0x20>
    12ec:	24052a23          	sw	zero,596(a0)
    12f0:	ff1ff06f          	j	12e0 <fatfs_fat_read_sector+0x88>
    12f4:	40f585b3          	sub	a1,a1,a5
    12f8:	00959593          	slli	a1,a1,0x9
    12fc:	00b905b3          	add	a1,s2,a1
    1300:	20b92423          	sw	a1,520(s2)
    1304:	01c12083          	lw	ra,28(sp)
    1308:	01812403          	lw	s0,24(sp)
    130c:	01412483          	lw	s1,20(sp)
    1310:	00c12983          	lw	s3,12(sp)
    1314:	00090513          	mv	a0,s2
    1318:	01012903          	lw	s2,16(sp)
    131c:	02010113          	addi	sp,sp,32
    1320:	00008067          	ret
    1324:	00040593          	mv	a1,s0
    1328:	00000097          	auipc	ra,0x0
    132c:	eac080e7          	jalr	-340(ra) # 11d4 <fatfs_fat_writeback>
    1330:	f60514e3          	bnez	a0,1298 <fatfs_fat_read_sector+0x40>
    1334:	fd1ff06f          	j	1304 <fatfs_fat_read_sector+0xac>
    1338:	20842423          	sw	s0,520(s0)
    133c:	00040913          	mv	s2,s0
    1340:	fc5ff06f          	j	1304 <fatfs_fat_read_sector+0xac>

00001344 <_allocate_file>:
    1344:	000047b7          	lui	a5,0x4
    1348:	31078793          	addi	a5,a5,784 # 4310 <_free_file_list>
    134c:	0007a583          	lw	a1,0(a5)
    1350:	06058263          	beqz	a1,13b4 <_allocate_file+0x70>
    1354:	0005a703          	lw	a4,0(a1)
    1358:	fe010113          	addi	sp,sp,-32
    135c:	00112e23          	sw	ra,28(sp)
    1360:	0045a683          	lw	a3,4(a1)
    1364:	04071063          	bnez	a4,13a4 <_allocate_file+0x60>
    1368:	00d7a023          	sw	a3,0(a5)
    136c:	0045a683          	lw	a3,4(a1)
    1370:	02069e63          	bnez	a3,13ac <_allocate_file+0x68>
    1374:	00e7a223          	sw	a4,4(a5)
    1378:	00004537          	lui	a0,0x4
    137c:	31850513          	addi	a0,a0,792 # 4318 <_open_file_list>
    1380:	00b12623          	sw	a1,12(sp)
    1384:	00000097          	auipc	ra,0x0
    1388:	d48080e7          	jalr	-696(ra) # 10cc <fat_list_insert_last>
    138c:	00c12583          	lw	a1,12(sp)
    1390:	01c12083          	lw	ra,28(sp)
    1394:	bc458593          	addi	a1,a1,-1084
    1398:	00058513          	mv	a0,a1
    139c:	02010113          	addi	sp,sp,32
    13a0:	00008067          	ret
    13a4:	00d72223          	sw	a3,4(a4)
    13a8:	fc5ff06f          	j	136c <_allocate_file+0x28>
    13ac:	00e6a023          	sw	a4,0(a3)
    13b0:	fc9ff06f          	j	1378 <_allocate_file+0x34>
    13b4:	00058513          	mv	a0,a1
    13b8:	00008067          	ret

000013bc <_free_file>:
    13bc:	43c52783          	lw	a5,1084(a0)
    13c0:	44052703          	lw	a4,1088(a0)
    13c4:	43c50593          	addi	a1,a0,1084
    13c8:	02079663          	bnez	a5,13f4 <_free_file+0x38>
    13cc:	000046b7          	lui	a3,0x4
    13d0:	30e6ac23          	sw	a4,792(a3) # 4318 <_open_file_list>
    13d4:	44052703          	lw	a4,1088(a0)
    13d8:	02071263          	bnez	a4,13fc <_free_file+0x40>
    13dc:	00004737          	lui	a4,0x4
    13e0:	30f72e23          	sw	a5,796(a4) # 431c <_open_file_list+0x4>
    13e4:	00004537          	lui	a0,0x4
    13e8:	31050513          	addi	a0,a0,784 # 4310 <_free_file_list>
    13ec:	00000317          	auipc	t1,0x0
    13f0:	ce030067          	jr	-800(t1) # 10cc <fat_list_insert_last>
    13f4:	00e7a223          	sw	a4,4(a5)
    13f8:	fddff06f          	j	13d4 <_free_file+0x18>
    13fc:	00f72023          	sw	a5,0(a4)
    1400:	fe5ff06f          	j	13e4 <_free_file+0x28>

00001404 <fatfs_lba_of_cluster>:
    1404:	ff010113          	addi	sp,sp,-16
    1408:	00812423          	sw	s0,8(sp)
    140c:	00112623          	sw	ra,12(sp)
    1410:	00050413          	mv	s0,a0
    1414:	ffe58513          	addi	a0,a1,-2
    1418:	00044583          	lbu	a1,0(s0)
    141c:	00000097          	auipc	ra,0x0
    1420:	c84080e7          	jalr	-892(ra) # 10a0 <__mulsi3>
    1424:	00442783          	lw	a5,4(s0)
    1428:	00f50533          	add	a0,a0,a5
    142c:	03042783          	lw	a5,48(s0)
    1430:	00079863          	bnez	a5,1440 <fatfs_lba_of_cluster+0x3c>
    1434:	02845783          	lhu	a5,40(s0)
    1438:	4047d793          	srai	a5,a5,0x4
    143c:	00f50533          	add	a0,a0,a5
    1440:	00c12083          	lw	ra,12(sp)
    1444:	00812403          	lw	s0,8(sp)
    1448:	01010113          	addi	sp,sp,16
    144c:	00008067          	ret

00001450 <fatfs_sector_read>:
    1450:	03452783          	lw	a5,52(a0)
    1454:	00058713          	mv	a4,a1
    1458:	00070513          	mv	a0,a4
    145c:	00060593          	mv	a1,a2
    1460:	00068613          	mv	a2,a3
    1464:	00078067          	jr	a5

00001468 <fatfs_sector_write>:
    1468:	03852783          	lw	a5,56(a0)
    146c:	00058713          	mv	a4,a1
    1470:	00070513          	mv	a0,a4
    1474:	00060593          	mv	a1,a2
    1478:	00068613          	mv	a2,a3
    147c:	00078067          	jr	a5

00001480 <fatfs_write_sector>:
    1480:	03852703          	lw	a4,56(a0)
    1484:	0a070463          	beqz	a4,152c <fatfs_write_sector+0xac>
    1488:	03052883          	lw	a7,48(a0)
    148c:	00050793          	mv	a5,a0
    1490:	0115e833          	or	a6,a1,a7
    1494:	02081e63          	bnez	a6,14d0 <fatfs_write_sector+0x50>
    1498:	01052583          	lw	a1,16(a0)
    149c:	08b67863          	bgeu	a2,a1,152c <fatfs_write_sector+0xac>
    14a0:	01c52503          	lw	a0,28(a0)
    14a4:	00c7a583          	lw	a1,12(a5)
    14a8:	00b50533          	add	a0,a0,a1
    14ac:	00c50533          	add	a0,a0,a2
    14b0:	00068863          	beqz	a3,14c0 <fatfs_write_sector+0x40>
    14b4:	00100613          	li	a2,1
    14b8:	00068593          	mv	a1,a3
    14bc:	00070067          	jr	a4
    14c0:	24a7a223          	sw	a0,580(a5)
    14c4:	00100613          	li	a2,1
    14c8:	04478593          	addi	a1,a5,68
    14cc:	ff1ff06f          	j	14bc <fatfs_write_sector+0x3c>
    14d0:	fe010113          	addi	sp,sp,-32
    14d4:	00e12623          	sw	a4,12(sp)
    14d8:	00d12423          	sw	a3,8(sp)
    14dc:	00c12223          	sw	a2,4(sp)
    14e0:	00112e23          	sw	ra,28(sp)
    14e4:	00a12023          	sw	a0,0(sp)
    14e8:	00000097          	auipc	ra,0x0
    14ec:	f1c080e7          	jalr	-228(ra) # 1404 <fatfs_lba_of_cluster>
    14f0:	00412603          	lw	a2,4(sp)
    14f4:	00812683          	lw	a3,8(sp)
    14f8:	00012783          	lw	a5,0(sp)
    14fc:	00c12703          	lw	a4,12(sp)
    1500:	00a60533          	add	a0,a2,a0
    1504:	00068c63          	beqz	a3,151c <fatfs_write_sector+0x9c>
    1508:	00100613          	li	a2,1
    150c:	00068593          	mv	a1,a3
    1510:	01c12083          	lw	ra,28(sp)
    1514:	02010113          	addi	sp,sp,32
    1518:	fa5ff06f          	j	14bc <fatfs_write_sector+0x3c>
    151c:	24a7a223          	sw	a0,580(a5)
    1520:	00100613          	li	a2,1
    1524:	04478593          	addi	a1,a5,68
    1528:	fe9ff06f          	j	1510 <fatfs_write_sector+0x90>
    152c:	00000513          	li	a0,0
    1530:	00008067          	ret

00001534 <fl_init>:
    1534:	ff010113          	addi	sp,sp,-16
    1538:	00004537          	lui	a0,0x4
    153c:	000047b7          	lui	a5,0x4
    1540:	000055b7          	lui	a1,0x5
    1544:	00112623          	sw	ra,12(sp)
    1548:	31050513          	addi	a0,a0,784 # 4310 <_free_file_list>
    154c:	31878793          	addi	a5,a5,792 # 4318 <_open_file_list>
    1550:	dcc58593          	addi	a1,a1,-564 # 4dcc <_files+0x43c>
    1554:	00052223          	sw	zero,4(a0)
    1558:	00052023          	sw	zero,0(a0)
    155c:	0007a223          	sw	zero,4(a5)
    1560:	0007a023          	sw	zero,0(a5)
    1564:	00000097          	auipc	ra,0x0
    1568:	b68080e7          	jalr	-1176(ra) # 10cc <fat_list_insert_last>
    156c:	000047b7          	lui	a5,0x4
    1570:	000055b7          	lui	a1,0x5
    1574:	31078513          	addi	a0,a5,784 # 4310 <_free_file_list>
    1578:	21058593          	addi	a1,a1,528 # 5210 <_files+0x880>
    157c:	00000097          	auipc	ra,0x0
    1580:	b50080e7          	jalr	-1200(ra) # 10cc <fat_list_insert_last>
    1584:	00c12083          	lw	ra,12(sp)
    1588:	000047b7          	lui	a5,0x4
    158c:	00100713          	li	a4,1
    1590:	32e7a223          	sw	a4,804(a5) # 4324 <_filelib_init>
    1594:	01010113          	addi	sp,sp,16
    1598:	00008067          	ret

0000159c <fatfs_lfn_cache_entry>:
    159c:	0005c783          	lbu	a5,0(a1)
    15a0:	01300693          	li	a3,19
    15a4:	01f7f793          	andi	a5,a5,31
    15a8:	fff78713          	addi	a4,a5,-1
    15ac:	0ff77613          	zext.b	a2,a4
    15b0:	0ac6ea63          	bltu	a3,a2,1664 <fatfs_lfn_cache_entry+0xc8>
    15b4:	10554683          	lbu	a3,261(a0)
    15b8:	00069463          	bnez	a3,15c0 <fatfs_lfn_cache_entry+0x24>
    15bc:	10f502a3          	sb	a5,261(a0)
    15c0:	00171793          	slli	a5,a4,0x1
    15c4:	00e787b3          	add	a5,a5,a4
    15c8:	0015c683          	lbu	a3,1(a1)
    15cc:	00279793          	slli	a5,a5,0x2
    15d0:	00e787b3          	add	a5,a5,a4
    15d4:	00f50533          	add	a0,a0,a5
    15d8:	00d50023          	sb	a3,0(a0)
    15dc:	0035c783          	lbu	a5,3(a1)
    15e0:	0ff00713          	li	a4,255
    15e4:	02000693          	li	a3,32
    15e8:	00f500a3          	sb	a5,1(a0)
    15ec:	0055c783          	lbu	a5,5(a1)
    15f0:	00f50123          	sb	a5,2(a0)
    15f4:	0075c783          	lbu	a5,7(a1)
    15f8:	00f501a3          	sb	a5,3(a0)
    15fc:	0095c783          	lbu	a5,9(a1)
    1600:	00f50223          	sb	a5,4(a0)
    1604:	00e5c783          	lbu	a5,14(a1)
    1608:	00f502a3          	sb	a5,5(a0)
    160c:	0105c783          	lbu	a5,16(a1)
    1610:	00f50323          	sb	a5,6(a0)
    1614:	0125c783          	lbu	a5,18(a1)
    1618:	00f503a3          	sb	a5,7(a0)
    161c:	0145c783          	lbu	a5,20(a1)
    1620:	00f50423          	sb	a5,8(a0)
    1624:	0165c783          	lbu	a5,22(a1)
    1628:	00f504a3          	sb	a5,9(a0)
    162c:	0185c783          	lbu	a5,24(a1)
    1630:	00f50523          	sb	a5,10(a0)
    1634:	01c5c783          	lbu	a5,28(a1)
    1638:	00f505a3          	sb	a5,11(a0)
    163c:	01e5c783          	lbu	a5,30(a1)
    1640:	00f50623          	sb	a5,12(a0)
    1644:	00d00793          	li	a5,13
    1648:	00054603          	lbu	a2,0(a0)
    164c:	00e61463          	bne	a2,a4,1654 <fatfs_lfn_cache_entry+0xb8>
    1650:	00d50023          	sb	a3,0(a0)
    1654:	fff78793          	addi	a5,a5,-1
    1658:	0ff7f793          	zext.b	a5,a5
    165c:	00150513          	addi	a0,a0,1
    1660:	fe0794e3          	bnez	a5,1648 <fatfs_lfn_cache_entry+0xac>
    1664:	00008067          	ret

00001668 <fatfs_lfn_cache_get>:
    1668:	10554703          	lbu	a4,261(a0)
    166c:	01400793          	li	a5,20
    1670:	00f71663          	bne	a4,a5,167c <fatfs_lfn_cache_get+0x14>
    1674:	10050223          	sb	zero,260(a0)
    1678:	00008067          	ret
    167c:	02070063          	beqz	a4,169c <fatfs_lfn_cache_get+0x34>
    1680:	00171793          	slli	a5,a4,0x1
    1684:	00e787b3          	add	a5,a5,a4
    1688:	00279793          	slli	a5,a5,0x2
    168c:	00e787b3          	add	a5,a5,a4
    1690:	00f507b3          	add	a5,a0,a5
    1694:	00078023          	sb	zero,0(a5)
    1698:	00008067          	ret
    169c:	00050023          	sb	zero,0(a0)
    16a0:	00008067          	ret

000016a4 <fatfs_entry_lfn_text>:
    16a4:	00b54503          	lbu	a0,11(a0)
    16a8:	00f57513          	andi	a0,a0,15
    16ac:	ff150513          	addi	a0,a0,-15
    16b0:	00153513          	seqz	a0,a0
    16b4:	00008067          	ret

000016b8 <fatfs_entry_lfn_invalid>:
    16b8:	00054783          	lbu	a5,0(a0)
    16bc:	f1b78713          	addi	a4,a5,-229
    16c0:	02070263          	beqz	a4,16e4 <fatfs_entry_lfn_invalid+0x2c>
    16c4:	02078063          	beqz	a5,16e4 <fatfs_entry_lfn_invalid+0x2c>
    16c8:	00b54783          	lbu	a5,11(a0)
    16cc:	00800713          	li	a4,8
    16d0:	00100513          	li	a0,1
    16d4:	00e78a63          	beq	a5,a4,16e8 <fatfs_entry_lfn_invalid+0x30>
    16d8:	0067f793          	andi	a5,a5,6
    16dc:	00f03533          	snez	a0,a5
    16e0:	00008067          	ret
    16e4:	00100513          	li	a0,1
    16e8:	00008067          	ret

000016ec <fatfs_entry_lfn_exists>:
    16ec:	00b5c783          	lbu	a5,11(a1)
    16f0:	00f00713          	li	a4,15
    16f4:	04e78063          	beq	a5,a4,1734 <fatfs_entry_lfn_exists+0x48>
    16f8:	0005c683          	lbu	a3,0(a1)
    16fc:	f1b68713          	addi	a4,a3,-229
    1700:	00e03733          	snez	a4,a4
    1704:	00d036b3          	snez	a3,a3
    1708:	00d77733          	and	a4,a4,a3
    170c:	02070463          	beqz	a4,1734 <fatfs_entry_lfn_exists+0x48>
    1710:	ff878713          	addi	a4,a5,-8
    1714:	02070063          	beqz	a4,1734 <fatfs_entry_lfn_exists+0x48>
    1718:	0067f713          	andi	a4,a5,6
    171c:	00000793          	li	a5,0
    1720:	00071663          	bnez	a4,172c <fatfs_entry_lfn_exists+0x40>
    1724:	10554783          	lbu	a5,261(a0)
    1728:	00f037b3          	snez	a5,a5
    172c:	00078513          	mv	a0,a5
    1730:	00008067          	ret
    1734:	00000793          	li	a5,0
    1738:	ff5ff06f          	j	172c <fatfs_entry_lfn_exists+0x40>

0000173c <fatfs_entry_sfn_only>:
    173c:	00b54783          	lbu	a5,11(a0)
    1740:	00f00713          	li	a4,15
    1744:	02e78863          	beq	a5,a4,1774 <fatfs_entry_sfn_only+0x38>
    1748:	00054683          	lbu	a3,0(a0)
    174c:	f1b68713          	addi	a4,a3,-229
    1750:	00e03733          	snez	a4,a4
    1754:	00d036b3          	snez	a3,a3
    1758:	00d77733          	and	a4,a4,a3
    175c:	00070c63          	beqz	a4,1774 <fatfs_entry_sfn_only+0x38>
    1760:	ff878713          	addi	a4,a5,-8
    1764:	00070863          	beqz	a4,1774 <fatfs_entry_sfn_only+0x38>
    1768:	0067f513          	andi	a0,a5,6
    176c:	00153513          	seqz	a0,a0
    1770:	00008067          	ret
    1774:	00000513          	li	a0,0
    1778:	00008067          	ret

0000177c <fatfs_lfn_entries_required>:
    177c:	ff010113          	addi	sp,sp,-16
    1780:	00112623          	sw	ra,12(sp)
    1784:	fffff097          	auipc	ra,0xfffff
    1788:	308080e7          	jalr	776(ra) # a8c <strlen>
    178c:	00050a63          	beqz	a0,17a0 <fatfs_lfn_entries_required+0x24>
    1790:	00d00593          	li	a1,13
    1794:	00c50513          	addi	a0,a0,12
    1798:	fffff097          	auipc	ra,0xfffff
    179c:	200080e7          	jalr	512(ra) # 998 <__divsi3>
    17a0:	00c12083          	lw	ra,12(sp)
    17a4:	01010113          	addi	sp,sp,16
    17a8:	00008067          	ret

000017ac <fatfs_filename_to_lfn>:
    17ac:	f9010113          	addi	sp,sp,-112
    17b0:	06812423          	sw	s0,104(sp)
    17b4:	00058413          	mv	s0,a1
    17b8:	000045b7          	lui	a1,0x4
    17bc:	2c858593          	addi	a1,a1,712 # 42c8 <font+0x1e0>
    17c0:	06912223          	sw	s1,100(sp)
    17c4:	05312e23          	sw	s3,92(sp)
    17c8:	00060493          	mv	s1,a2
    17cc:	00050993          	mv	s3,a0
    17d0:	03400613          	li	a2,52
    17d4:	01c10513          	addi	a0,sp,28
    17d8:	00d12623          	sw	a3,12(sp)
    17dc:	06112623          	sw	ra,108(sp)
    17e0:	07212023          	sw	s2,96(sp)
    17e4:	05412c23          	sw	s4,88(sp)
    17e8:	fffff097          	auipc	ra,0xfffff
    17ec:	280080e7          	jalr	640(ra) # a68 <memcpy>
    17f0:	00098513          	mv	a0,s3
    17f4:	fffff097          	auipc	ra,0xfffff
    17f8:	298080e7          	jalr	664(ra) # a8c <strlen>
    17fc:	00050913          	mv	s2,a0
    1800:	00098513          	mv	a0,s3
    1804:	00000097          	auipc	ra,0x0
    1808:	f78080e7          	jalr	-136(ra) # 177c <fatfs_lfn_entries_required>
    180c:	00050a13          	mv	s4,a0
    1810:	02000613          	li	a2,32
    1814:	00000593          	li	a1,0
    1818:	00040513          	mv	a0,s0
    181c:	fffff097          	auipc	ra,0xfffff
    1820:	230080e7          	jalr	560(ra) # a4c <memset>
    1824:	fffa0713          	addi	a4,s4,-1
    1828:	00c12683          	lw	a3,12(sp)
    182c:	00148793          	addi	a5,s1,1
    1830:	00971463          	bne	a4,s1,1838 <fatfs_filename_to_lfn+0x8c>
    1834:	0407e793          	ori	a5,a5,64
    1838:	00149613          	slli	a2,s1,0x1
    183c:	00960633          	add	a2,a2,s1
    1840:	00f40023          	sb	a5,0(s0)
    1844:	00261613          	slli	a2,a2,0x2
    1848:	00f00793          	li	a5,15
    184c:	00f405a3          	sb	a5,11(s0)
    1850:	00d406a3          	sb	a3,13(s0)
    1854:	01c10793          	addi	a5,sp,28
    1858:	00960633          	add	a2,a2,s1
    185c:	fff00693          	li	a3,-1
    1860:	0007a703          	lw	a4,0(a5)
    1864:	00e40733          	add	a4,s0,a4
    1868:	05265063          	bge	a2,s2,18a8 <fatfs_filename_to_lfn+0xfc>
    186c:	00c985b3          	add	a1,s3,a2
    1870:	0005c583          	lbu	a1,0(a1)
    1874:	00b70023          	sb	a1,0(a4)
    1878:	00478793          	addi	a5,a5,4
    187c:	05010713          	addi	a4,sp,80
    1880:	00160613          	addi	a2,a2,1
    1884:	fce79ee3          	bne	a5,a4,1860 <fatfs_filename_to_lfn+0xb4>
    1888:	06c12083          	lw	ra,108(sp)
    188c:	06812403          	lw	s0,104(sp)
    1890:	06412483          	lw	s1,100(sp)
    1894:	06012903          	lw	s2,96(sp)
    1898:	05c12983          	lw	s3,92(sp)
    189c:	05812a03          	lw	s4,88(sp)
    18a0:	07010113          	addi	sp,sp,112
    18a4:	00008067          	ret
    18a8:	01261663          	bne	a2,s2,18b4 <fatfs_filename_to_lfn+0x108>
    18ac:	00070023          	sb	zero,0(a4)
    18b0:	fc9ff06f          	j	1878 <fatfs_filename_to_lfn+0xcc>
    18b4:	00d70023          	sb	a3,0(a4)
    18b8:	00d700a3          	sb	a3,1(a4)
    18bc:	fbdff06f          	j	1878 <fatfs_filename_to_lfn+0xcc>

000018c0 <fatfs_sfn_create_entry>:
    18c0:	00000793          	li	a5,0
    18c4:	00b00813          	li	a6,11
    18c8:	00f508b3          	add	a7,a0,a5
    18cc:	0008c303          	lbu	t1,0(a7)
    18d0:	00f688b3          	add	a7,a3,a5
    18d4:	00178793          	addi	a5,a5,1
    18d8:	00688023          	sb	t1,0(a7)
    18dc:	ff0796e3          	bne	a5,a6,18c8 <fatfs_sfn_create_entry+0x8>
    18e0:	00e03733          	snez	a4,a4
    18e4:	40e00733          	neg	a4,a4
    18e8:	02000793          	li	a5,32
    18ec:	ff077713          	andi	a4,a4,-16
    18f0:	00f70733          	add	a4,a4,a5
    18f4:	00f68823          	sb	a5,16(a3)
    18f8:	00f68923          	sb	a5,18(a3)
    18fc:	00f68c23          	sb	a5,24(a3)
    1900:	01065793          	srli	a5,a2,0x10
    1904:	00f68a23          	sb	a5,20(a3)
    1908:	01865793          	srli	a5,a2,0x18
    190c:	00f68aa3          	sb	a5,21(a3)
    1910:	0085d793          	srli	a5,a1,0x8
    1914:	00c68d23          	sb	a2,26(a3)
    1918:	00b68e23          	sb	a1,28(a3)
    191c:	00865613          	srli	a2,a2,0x8
    1920:	00f68ea3          	sb	a5,29(a3)
    1924:	0105d793          	srli	a5,a1,0x10
    1928:	0185d593          	srli	a1,a1,0x18
    192c:	000686a3          	sb	zero,13(a3)
    1930:	00068723          	sb	zero,14(a3)
    1934:	000687a3          	sb	zero,15(a3)
    1938:	000688a3          	sb	zero,17(a3)
    193c:	000689a3          	sb	zero,19(a3)
    1940:	00068b23          	sb	zero,22(a3)
    1944:	00068ba3          	sb	zero,23(a3)
    1948:	00068ca3          	sb	zero,25(a3)
    194c:	00e685a3          	sb	a4,11(a3)
    1950:	00068623          	sb	zero,12(a3)
    1954:	00c68da3          	sb	a2,27(a3)
    1958:	00f68f23          	sb	a5,30(a3)
    195c:	00b68fa3          	sb	a1,31(a3)
    1960:	00008067          	ret

00001964 <fatfs_lfn_create_sfn>:
    1964:	fd010113          	addi	sp,sp,-48
    1968:	02912223          	sw	s1,36(sp)
    196c:	00050493          	mv	s1,a0
    1970:	00058513          	mv	a0,a1
    1974:	02812423          	sw	s0,40(sp)
    1978:	01312e23          	sw	s3,28(sp)
    197c:	00058413          	mv	s0,a1
    1980:	02112623          	sw	ra,44(sp)
    1984:	03212023          	sw	s2,32(sp)
    1988:	fffff097          	auipc	ra,0xfffff
    198c:	104080e7          	jalr	260(ra) # a8c <strlen>
    1990:	00044783          	lbu	a5,0(s0)
    1994:	02e00993          	li	s3,46
    1998:	15378063          	beq	a5,s3,1ad8 <fatfs_lfn_create_sfn+0x174>
    199c:	00b00613          	li	a2,11
    19a0:	02000593          	li	a1,32
    19a4:	00050913          	mv	s2,a0
    19a8:	00048513          	mv	a0,s1
    19ac:	fffff097          	auipc	ra,0xfffff
    19b0:	0a0080e7          	jalr	160(ra) # a4c <memset>
    19b4:	00300613          	li	a2,3
    19b8:	02000593          	li	a1,32
    19bc:	00c10513          	addi	a0,sp,12
    19c0:	fffff097          	auipc	ra,0xfffff
    19c4:	08c080e7          	jalr	140(ra) # a4c <memset>
    19c8:	fff00793          	li	a5,-1
    19cc:	00000713          	li	a4,0
    19d0:	0d274263          	blt	a4,s2,1a94 <fatfs_lfn_create_sfn+0x130>
    19d4:	fff00713          	li	a4,-1
    19d8:	0ee78863          	beq	a5,a4,1ac8 <fatfs_lfn_create_sfn+0x164>
    19dc:	00178713          	addi	a4,a5,1
    19e0:	00c10693          	addi	a3,sp,12
    19e4:	00478613          	addi	a2,a5,4
    19e8:	0ce61263          	bne	a2,a4,1aac <fatfs_lfn_create_sfn+0x148>
    19ec:	00000613          	li	a2,0
    19f0:	00000693          	li	a3,0
    19f4:	01900813          	li	a6,25
    19f8:	00800893          	li	a7,8
    19fc:	02f6de63          	bge	a3,a5,1a38 <fatfs_lfn_create_sfn+0xd4>
    1a00:	00d40733          	add	a4,s0,a3
    1a04:	00074703          	lbu	a4,0(a4)
    1a08:	fe070513          	addi	a0,a4,-32
    1a0c:	0c050263          	beqz	a0,1ad0 <fatfs_lfn_create_sfn+0x16c>
    1a10:	fd270593          	addi	a1,a4,-46
    1a14:	0a058e63          	beqz	a1,1ad0 <fatfs_lfn_create_sfn+0x16c>
    1a18:	f9f70593          	addi	a1,a4,-97
    1a1c:	0ff5f593          	zext.b	a1,a1
    1a20:	00c48333          	add	t1,s1,a2
    1a24:	00160613          	addi	a2,a2,1
    1a28:	00b86463          	bltu	a6,a1,1a30 <fatfs_lfn_create_sfn+0xcc>
    1a2c:	0ff57713          	zext.b	a4,a0
    1a30:	00e30023          	sb	a4,0(t1)
    1a34:	09161e63          	bne	a2,a7,1ad0 <fatfs_lfn_create_sfn+0x16c>
    1a38:	00c10793          	addi	a5,sp,12
    1a3c:	00800693          	li	a3,8
    1a40:	01900513          	li	a0,25
    1a44:	00b00593          	li	a1,11
    1a48:	0007c703          	lbu	a4,0(a5)
    1a4c:	f9f70613          	addi	a2,a4,-97
    1a50:	0ff67613          	zext.b	a2,a2
    1a54:	00c56663          	bltu	a0,a2,1a60 <fatfs_lfn_create_sfn+0xfc>
    1a58:	fe070713          	addi	a4,a4,-32
    1a5c:	0ff77713          	zext.b	a4,a4
    1a60:	00d48633          	add	a2,s1,a3
    1a64:	00e60023          	sb	a4,0(a2)
    1a68:	00168693          	addi	a3,a3,1
    1a6c:	00178793          	addi	a5,a5,1
    1a70:	fcb69ce3          	bne	a3,a1,1a48 <fatfs_lfn_create_sfn+0xe4>
    1a74:	00100513          	li	a0,1
    1a78:	02c12083          	lw	ra,44(sp)
    1a7c:	02812403          	lw	s0,40(sp)
    1a80:	02412483          	lw	s1,36(sp)
    1a84:	02012903          	lw	s2,32(sp)
    1a88:	01c12983          	lw	s3,28(sp)
    1a8c:	03010113          	addi	sp,sp,48
    1a90:	00008067          	ret
    1a94:	00e406b3          	add	a3,s0,a4
    1a98:	0006c683          	lbu	a3,0(a3)
    1a9c:	01369463          	bne	a3,s3,1aa4 <fatfs_lfn_create_sfn+0x140>
    1aa0:	00070793          	mv	a5,a4
    1aa4:	00170713          	addi	a4,a4,1
    1aa8:	f29ff06f          	j	19d0 <fatfs_lfn_create_sfn+0x6c>
    1aac:	01275863          	bge	a4,s2,1abc <fatfs_lfn_create_sfn+0x158>
    1ab0:	00e405b3          	add	a1,s0,a4
    1ab4:	0005c583          	lbu	a1,0(a1)
    1ab8:	00b68023          	sb	a1,0(a3)
    1abc:	00170713          	addi	a4,a4,1
    1ac0:	00168693          	addi	a3,a3,1
    1ac4:	f25ff06f          	j	19e8 <fatfs_lfn_create_sfn+0x84>
    1ac8:	00090793          	mv	a5,s2
    1acc:	f21ff06f          	j	19ec <fatfs_lfn_create_sfn+0x88>
    1ad0:	00168693          	addi	a3,a3,1
    1ad4:	f29ff06f          	j	19fc <fatfs_lfn_create_sfn+0x98>
    1ad8:	00000513          	li	a0,0
    1adc:	f9dff06f          	j	1a78 <fatfs_lfn_create_sfn+0x114>

00001ae0 <fatfs_lfn_generate_tail>:
    1ae0:	000187b7          	lui	a5,0x18
    1ae4:	69f78793          	addi	a5,a5,1695 # 1869f <__stacktop+0x869f>
    1ae8:	16c7e463          	bltu	a5,a2,1c50 <fatfs_lfn_generate_tail+0x170>
    1aec:	fa010113          	addi	sp,sp,-96
    1af0:	04812c23          	sw	s0,88(sp)
    1af4:	04912a23          	sw	s1,84(sp)
    1af8:	03712e23          	sw	s7,60(sp)
    1afc:	00060413          	mv	s0,a2
    1b00:	00058b93          	mv	s7,a1
    1b04:	00c00613          	li	a2,12
    1b08:	00000593          	li	a1,0
    1b0c:	00050493          	mv	s1,a0
    1b10:	00410513          	addi	a0,sp,4
    1b14:	04112e23          	sw	ra,92(sp)
    1b18:	05312623          	sw	s3,76(sp)
    1b1c:	05412423          	sw	s4,72(sp)
    1b20:	05612023          	sw	s6,64(sp)
    1b24:	05212823          	sw	s2,80(sp)
    1b28:	05512223          	sw	s5,68(sp)
    1b2c:	fffff097          	auipc	ra,0xfffff
    1b30:	f20080e7          	jalr	-224(ra) # a4c <memset>
    1b34:	000045b7          	lui	a1,0x4
    1b38:	07e00793          	li	a5,126
    1b3c:	01100613          	li	a2,17
    1b40:	0a058593          	addi	a1,a1,160 # 40a0 <LEDS+0x70>
    1b44:	01c10513          	addi	a0,sp,28
    1b48:	01010993          	addi	s3,sp,16
    1b4c:	00f10223          	sb	a5,4(sp)
    1b50:	00098a13          	mv	s4,s3
    1b54:	fffff097          	auipc	ra,0xfffff
    1b58:	f14080e7          	jalr	-236(ra) # a68 <memcpy>
    1b5c:	00900b13          	li	s6,9
    1b60:	00a00593          	li	a1,10
    1b64:	00040513          	mv	a0,s0
    1b68:	fffff097          	auipc	ra,0xfffff
    1b6c:	e80080e7          	jalr	-384(ra) # 9e8 <__umodsi3>
    1b70:	03050793          	addi	a5,a0,48
    1b74:	00278533          	add	a0,a5,sp
    1b78:	fec54783          	lbu	a5,-20(a0)
    1b7c:	00098913          	mv	s2,s3
    1b80:	00040513          	mv	a0,s0
    1b84:	00a00593          	li	a1,10
    1b88:	00f98023          	sb	a5,0(s3)
    1b8c:	00040a93          	mv	s5,s0
    1b90:	fffff097          	auipc	ra,0xfffff
    1b94:	e10080e7          	jalr	-496(ra) # 9a0 <__udivsi3>
    1b98:	00198993          	addi	s3,s3,1
    1b9c:	00050413          	mv	s0,a0
    1ba0:	fd5b60e3          	bltu	s6,s5,1b60 <fatfs_lfn_generate_tail+0x80>
    1ba4:	00098023          	sb	zero,0(s3)
    1ba8:	00410713          	addi	a4,sp,4
    1bac:	00090793          	mv	a5,s2
    1bb0:	0947f663          	bgeu	a5,s4,1c3c <fatfs_lfn_generate_tail+0x15c>
    1bb4:	00f10713          	addi	a4,sp,15
    1bb8:	00000793          	li	a5,0
    1bbc:	00e96663          	bltu	s2,a4,1bc8 <fatfs_lfn_generate_tail+0xe8>
    1bc0:	41490933          	sub	s2,s2,s4
    1bc4:	00190793          	addi	a5,s2,1
    1bc8:	03078793          	addi	a5,a5,48
    1bcc:	002787b3          	add	a5,a5,sp
    1bd0:	000b8593          	mv	a1,s7
    1bd4:	fc078aa3          	sb	zero,-43(a5)
    1bd8:	00b00613          	li	a2,11
    1bdc:	00048513          	mv	a0,s1
    1be0:	fffff097          	auipc	ra,0xfffff
    1be4:	e88080e7          	jalr	-376(ra) # a68 <memcpy>
    1be8:	00410513          	addi	a0,sp,4
    1bec:	fffff097          	auipc	ra,0xfffff
    1bf0:	ea0080e7          	jalr	-352(ra) # a8c <strlen>
    1bf4:	40a484b3          	sub	s1,s1,a0
    1bf8:	00050613          	mv	a2,a0
    1bfc:	00410593          	addi	a1,sp,4
    1c00:	00848513          	addi	a0,s1,8
    1c04:	fffff097          	auipc	ra,0xfffff
    1c08:	e64080e7          	jalr	-412(ra) # a68 <memcpy>
    1c0c:	05c12083          	lw	ra,92(sp)
    1c10:	05812403          	lw	s0,88(sp)
    1c14:	05412483          	lw	s1,84(sp)
    1c18:	05012903          	lw	s2,80(sp)
    1c1c:	04c12983          	lw	s3,76(sp)
    1c20:	04812a03          	lw	s4,72(sp)
    1c24:	04412a83          	lw	s5,68(sp)
    1c28:	04012b03          	lw	s6,64(sp)
    1c2c:	03c12b83          	lw	s7,60(sp)
    1c30:	00100513          	li	a0,1
    1c34:	06010113          	addi	sp,sp,96
    1c38:	00008067          	ret
    1c3c:	0007c683          	lbu	a3,0(a5)
    1c40:	00170713          	addi	a4,a4,1
    1c44:	fff78793          	addi	a5,a5,-1
    1c48:	00d70023          	sb	a3,0(a4)
    1c4c:	f65ff06f          	j	1bb0 <fatfs_lfn_generate_tail+0xd0>
    1c50:	00000513          	li	a0,0
    1c54:	00008067          	ret

00001c58 <fatfs_total_path_levels>:
    1c58:	fff00793          	li	a5,-1
    1c5c:	06050263          	beqz	a0,1cc0 <fatfs_total_path_levels+0x68>
    1c60:	00054703          	lbu	a4,0(a0)
    1c64:	02f00793          	li	a5,47
    1c68:	00f71863          	bne	a4,a5,1c78 <fatfs_total_path_levels+0x20>
    1c6c:	00150513          	addi	a0,a0,1
    1c70:	00000793          	li	a5,0
    1c74:	0400006f          	j	1cb4 <fatfs_total_path_levels+0x5c>
    1c78:	00154703          	lbu	a4,1(a0)
    1c7c:	03a00793          	li	a5,58
    1c80:	00f70a63          	beq	a4,a5,1c94 <fatfs_total_path_levels+0x3c>
    1c84:	00254683          	lbu	a3,2(a0)
    1c88:	05c00713          	li	a4,92
    1c8c:	fff00793          	li	a5,-1
    1c90:	02e69863          	bne	a3,a4,1cc0 <fatfs_total_path_levels+0x68>
    1c94:	00350513          	addi	a0,a0,3
    1c98:	05c00713          	li	a4,92
    1c9c:	fd5ff06f          	j	1c70 <fatfs_total_path_levels+0x18>
    1ca0:	00150513          	addi	a0,a0,1
    1ca4:	00e68663          	beq	a3,a4,1cb0 <fatfs_total_path_levels+0x58>
    1ca8:	00054683          	lbu	a3,0(a0)
    1cac:	fe069ae3          	bnez	a3,1ca0 <fatfs_total_path_levels+0x48>
    1cb0:	00178793          	addi	a5,a5,1
    1cb4:	00054683          	lbu	a3,0(a0)
    1cb8:	fe0698e3          	bnez	a3,1ca8 <fatfs_total_path_levels+0x50>
    1cbc:	fff78793          	addi	a5,a5,-1
    1cc0:	00078513          	mv	a0,a5
    1cc4:	00008067          	ret

00001cc8 <fatfs_get_substring>:
    1cc8:	0cd05e63          	blez	a3,1da4 <fatfs_get_substring+0xdc>
    1ccc:	0c050c63          	beqz	a0,1da4 <fatfs_get_substring+0xdc>
    1cd0:	fe010113          	addi	sp,sp,-32
    1cd4:	00812c23          	sw	s0,24(sp)
    1cd8:	00112e23          	sw	ra,28(sp)
    1cdc:	00912a23          	sw	s1,20(sp)
    1ce0:	00054483          	lbu	s1,0(a0)
    1ce4:	02f00793          	li	a5,47
    1ce8:	00150413          	addi	s0,a0,1
    1cec:	02f48463          	beq	s1,a5,1d14 <fatfs_get_substring+0x4c>
    1cf0:	00154703          	lbu	a4,1(a0)
    1cf4:	03a00793          	li	a5,58
    1cf8:	00f70a63          	beq	a4,a5,1d0c <fatfs_get_substring+0x44>
    1cfc:	00254803          	lbu	a6,2(a0)
    1d00:	05c00713          	li	a4,92
    1d04:	fff00793          	li	a5,-1
    1d08:	04e81c63          	bne	a6,a4,1d60 <fatfs_get_substring+0x98>
    1d0c:	00350413          	addi	s0,a0,3
    1d10:	05c00493          	li	s1,92
    1d14:	00040513          	mv	a0,s0
    1d18:	00d12623          	sw	a3,12(sp)
    1d1c:	00c12423          	sw	a2,8(sp)
    1d20:	00b12223          	sw	a1,4(sp)
    1d24:	fffff097          	auipc	ra,0xfffff
    1d28:	d68080e7          	jalr	-664(ra) # a8c <strlen>
    1d2c:	00c12683          	lw	a3,12(sp)
    1d30:	00412583          	lw	a1,4(sp)
    1d34:	00812603          	lw	a2,8(sp)
    1d38:	00000713          	li	a4,0
    1d3c:	00000813          	li	a6,0
    1d40:	00000793          	li	a5,0
    1d44:	fff68693          	addi	a3,a3,-1
    1d48:	00e608b3          	add	a7,a2,a4
    1d4c:	02a7c663          	blt	a5,a0,1d78 <fatfs_get_substring+0xb0>
    1d50:	00088023          	sb	zero,0(a7)
    1d54:	00064783          	lbu	a5,0(a2)
    1d58:	0017b793          	seqz	a5,a5
    1d5c:	40f007b3          	neg	a5,a5
    1d60:	01c12083          	lw	ra,28(sp)
    1d64:	01812403          	lw	s0,24(sp)
    1d68:	01412483          	lw	s1,20(sp)
    1d6c:	00078513          	mv	a0,a5
    1d70:	02010113          	addi	sp,sp,32
    1d74:	00008067          	ret
    1d78:	00f40333          	add	t1,s0,a5
    1d7c:	00034303          	lbu	t1,0(t1)
    1d80:	00931863          	bne	t1,s1,1d90 <fatfs_get_substring+0xc8>
    1d84:	00180813          	addi	a6,a6,1
    1d88:	00178793          	addi	a5,a5,1
    1d8c:	fbdff06f          	j	1d48 <fatfs_get_substring+0x80>
    1d90:	feb81ce3          	bne	a6,a1,1d88 <fatfs_get_substring+0xc0>
    1d94:	fed75ae3          	bge	a4,a3,1d88 <fatfs_get_substring+0xc0>
    1d98:	00170713          	addi	a4,a4,1
    1d9c:	00688023          	sb	t1,0(a7)
    1da0:	fe9ff06f          	j	1d88 <fatfs_get_substring+0xc0>
    1da4:	fff00793          	li	a5,-1
    1da8:	00078513          	mv	a0,a5
    1dac:	00008067          	ret

00001db0 <fatfs_split_path>:
    1db0:	fd010113          	addi	sp,sp,-48
    1db4:	02912223          	sw	s1,36(sp)
    1db8:	03212023          	sw	s2,32(sp)
    1dbc:	01312e23          	sw	s3,28(sp)
    1dc0:	01412c23          	sw	s4,24(sp)
    1dc4:	02112623          	sw	ra,44(sp)
    1dc8:	02812423          	sw	s0,40(sp)
    1dcc:	01512a23          	sw	s5,20(sp)
    1dd0:	00050993          	mv	s3,a0
    1dd4:	00058493          	mv	s1,a1
    1dd8:	00060913          	mv	s2,a2
    1ddc:	00068a13          	mv	s4,a3
    1de0:	00e12623          	sw	a4,12(sp)
    1de4:	00000097          	auipc	ra,0x0
    1de8:	e74080e7          	jalr	-396(ra) # 1c58 <fatfs_total_path_levels>
    1dec:	fff00793          	li	a5,-1
    1df0:	02f51863          	bne	a0,a5,1e20 <fatfs_split_path+0x70>
    1df4:	fff00413          	li	s0,-1
    1df8:	02c12083          	lw	ra,44(sp)
    1dfc:	00040513          	mv	a0,s0
    1e00:	02812403          	lw	s0,40(sp)
    1e04:	02412483          	lw	s1,36(sp)
    1e08:	02012903          	lw	s2,32(sp)
    1e0c:	01c12983          	lw	s3,28(sp)
    1e10:	01812a03          	lw	s4,24(sp)
    1e14:	01412a83          	lw	s5,20(sp)
    1e18:	03010113          	addi	sp,sp,48
    1e1c:	00008067          	ret
    1e20:	00c12683          	lw	a3,12(sp)
    1e24:	00050593          	mv	a1,a0
    1e28:	00a12623          	sw	a0,12(sp)
    1e2c:	000a0613          	mv	a2,s4
    1e30:	00098513          	mv	a0,s3
    1e34:	00000097          	auipc	ra,0x0
    1e38:	e94080e7          	jalr	-364(ra) # 1cc8 <fatfs_get_substring>
    1e3c:	00050413          	mv	s0,a0
    1e40:	fa051ae3          	bnez	a0,1df4 <fatfs_split_path+0x44>
    1e44:	00c12583          	lw	a1,12(sp)
    1e48:	00059663          	bnez	a1,1e54 <fatfs_split_path+0xa4>
    1e4c:	00048023          	sb	zero,0(s1)
    1e50:	fa9ff06f          	j	1df8 <fatfs_split_path+0x48>
    1e54:	00098513          	mv	a0,s3
    1e58:	fffff097          	auipc	ra,0xfffff
    1e5c:	c34080e7          	jalr	-972(ra) # a8c <strlen>
    1e60:	00050a93          	mv	s5,a0
    1e64:	000a0513          	mv	a0,s4
    1e68:	fffff097          	auipc	ra,0xfffff
    1e6c:	c24080e7          	jalr	-988(ra) # a8c <strlen>
    1e70:	40aa8633          	sub	a2,s5,a0
    1e74:	00c95463          	bge	s2,a2,1e7c <fatfs_split_path+0xcc>
    1e78:	00090613          	mv	a2,s2
    1e7c:	00048513          	mv	a0,s1
    1e80:	00098593          	mv	a1,s3
    1e84:	00c12623          	sw	a2,12(sp)
    1e88:	fffff097          	auipc	ra,0xfffff
    1e8c:	be0080e7          	jalr	-1056(ra) # a68 <memcpy>
    1e90:	00c12603          	lw	a2,12(sp)
    1e94:	00c484b3          	add	s1,s1,a2
    1e98:	fe048fa3          	sb	zero,-1(s1)
    1e9c:	f5dff06f          	j	1df8 <fatfs_split_path+0x48>

00001ea0 <fatfs_compare_names>:
    1ea0:	fd010113          	addi	sp,sp,-48
    1ea4:	02112623          	sw	ra,44(sp)
    1ea8:	03212023          	sw	s2,32(sp)
    1eac:	01312e23          	sw	s3,28(sp)
    1eb0:	01412c23          	sw	s4,24(sp)
    1eb4:	01512a23          	sw	s5,20(sp)
    1eb8:	00058a13          	mv	s4,a1
    1ebc:	02812423          	sw	s0,40(sp)
    1ec0:	02912223          	sw	s1,36(sp)
    1ec4:	01612823          	sw	s6,16(sp)
    1ec8:	01712623          	sw	s7,12(sp)
    1ecc:	01812423          	sw	s8,8(sp)
    1ed0:	00050a93          	mv	s5,a0
    1ed4:	fffff097          	auipc	ra,0xfffff
    1ed8:	2d4080e7          	jalr	724(ra) # 11a8 <FileString_GetExtension>
    1edc:	00050993          	mv	s3,a0
    1ee0:	000a0513          	mv	a0,s4
    1ee4:	fffff097          	auipc	ra,0xfffff
    1ee8:	2c4080e7          	jalr	708(ra) # 11a8 <FileString_GetExtension>
    1eec:	fff00793          	li	a5,-1
    1ef0:	00050913          	mv	s2,a0
    1ef4:	02f99e63          	bne	s3,a5,1f30 <fatfs_compare_names+0x90>
    1ef8:	0f350063          	beq	a0,s3,1fd8 <fatfs_compare_names+0x138>
    1efc:	00000513          	li	a0,0
    1f00:	02c12083          	lw	ra,44(sp)
    1f04:	02812403          	lw	s0,40(sp)
    1f08:	02412483          	lw	s1,36(sp)
    1f0c:	02012903          	lw	s2,32(sp)
    1f10:	01c12983          	lw	s3,28(sp)
    1f14:	01812a03          	lw	s4,24(sp)
    1f18:	01412a83          	lw	s5,20(sp)
    1f1c:	01012b03          	lw	s6,16(sp)
    1f20:	00c12b83          	lw	s7,12(sp)
    1f24:	00812c03          	lw	s8,8(sp)
    1f28:	03010113          	addi	sp,sp,48
    1f2c:	00008067          	ret
    1f30:	fcf506e3          	beq	a0,a5,1efc <fatfs_compare_names+0x5c>
    1f34:	00198793          	addi	a5,s3,1
    1f38:	00fa8b33          	add	s6,s5,a5
    1f3c:	00050413          	mv	s0,a0
    1f40:	00150793          	addi	a5,a0,1
    1f44:	000b0513          	mv	a0,s6
    1f48:	00fa0bb3          	add	s7,s4,a5
    1f4c:	fffff097          	auipc	ra,0xfffff
    1f50:	b40080e7          	jalr	-1216(ra) # a8c <strlen>
    1f54:	00050c13          	mv	s8,a0
    1f58:	000b8513          	mv	a0,s7
    1f5c:	00098493          	mv	s1,s3
    1f60:	fffff097          	auipc	ra,0xfffff
    1f64:	b2c080e7          	jalr	-1236(ra) # a8c <strlen>
    1f68:	f8ac1ae3          	bne	s8,a0,1efc <fatfs_compare_names+0x5c>
    1f6c:	000b0513          	mv	a0,s6
    1f70:	fffff097          	auipc	ra,0xfffff
    1f74:	b1c080e7          	jalr	-1252(ra) # a8c <strlen>
    1f78:	00050613          	mv	a2,a0
    1f7c:	000b8593          	mv	a1,s7
    1f80:	000b0513          	mv	a0,s6
    1f84:	fffff097          	auipc	ra,0xfffff
    1f88:	1b4080e7          	jalr	436(ra) # 1138 <FileString_StrCmpNoCase>
    1f8c:	f60518e3          	bnez	a0,1efc <fatfs_compare_names+0x5c>
    1f90:	fff48793          	addi	a5,s1,-1
    1f94:	00fa87b3          	add	a5,s5,a5
    1f98:	41378733          	sub	a4,a5,s3
    1f9c:	02000693          	li	a3,32
    1fa0:	06e79263          	bne	a5,a4,2004 <fatfs_compare_names+0x164>
    1fa4:	fff40793          	addi	a5,s0,-1
    1fa8:	00fa07b3          	add	a5,s4,a5
    1fac:	41278733          	sub	a4,a5,s2
    1fb0:	02000693          	li	a3,32
    1fb4:	06e79263          	bne	a5,a4,2018 <fatfs_compare_names+0x178>
    1fb8:	f53912e3          	bne	s2,s3,1efc <fatfs_compare_names+0x5c>
    1fbc:	00090613          	mv	a2,s2
    1fc0:	000a0593          	mv	a1,s4
    1fc4:	000a8513          	mv	a0,s5
    1fc8:	fffff097          	auipc	ra,0xfffff
    1fcc:	170080e7          	jalr	368(ra) # 1138 <FileString_StrCmpNoCase>
    1fd0:	00153513          	seqz	a0,a0
    1fd4:	f2dff06f          	j	1f00 <fatfs_compare_names+0x60>
    1fd8:	000a8513          	mv	a0,s5
    1fdc:	fffff097          	auipc	ra,0xfffff
    1fe0:	ab0080e7          	jalr	-1360(ra) # a8c <strlen>
    1fe4:	00050493          	mv	s1,a0
    1fe8:	00050993          	mv	s3,a0
    1fec:	000a0513          	mv	a0,s4
    1ff0:	fffff097          	auipc	ra,0xfffff
    1ff4:	a9c080e7          	jalr	-1380(ra) # a8c <strlen>
    1ff8:	00050413          	mv	s0,a0
    1ffc:	00050913          	mv	s2,a0
    2000:	f91ff06f          	j	1f90 <fatfs_compare_names+0xf0>
    2004:	0007c603          	lbu	a2,0(a5)
    2008:	f8d61ee3          	bne	a2,a3,1fa4 <fatfs_compare_names+0x104>
    200c:	415789b3          	sub	s3,a5,s5
    2010:	fff78793          	addi	a5,a5,-1
    2014:	f8dff06f          	j	1fa0 <fatfs_compare_names+0x100>
    2018:	0007c603          	lbu	a2,0(a5)
    201c:	f8d61ee3          	bne	a2,a3,1fb8 <fatfs_compare_names+0x118>
    2020:	41478933          	sub	s2,a5,s4
    2024:	fff78793          	addi	a5,a5,-1
    2028:	f8dff06f          	j	1fb4 <fatfs_compare_names+0x114>

0000202c <_check_file_open>:
    202c:	fe010113          	addi	sp,sp,-32
    2030:	000047b7          	lui	a5,0x4
    2034:	00812c23          	sw	s0,24(sp)
    2038:	3187a403          	lw	s0,792(a5) # 4318 <_open_file_list>
    203c:	00912a23          	sw	s1,20(sp)
    2040:	00112e23          	sw	ra,28(sp)
    2044:	01212823          	sw	s2,16(sp)
    2048:	01312623          	sw	s3,12(sp)
    204c:	00050493          	mv	s1,a0
    2050:	00041663          	bnez	s0,205c <_check_file_open+0x30>
    2054:	00000513          	li	a0,0
    2058:	03c0006f          	j	2094 <_check_file_open+0x68>
    205c:	bc440793          	addi	a5,s0,-1084
    2060:	00f49663          	bne	s1,a5,206c <_check_file_open+0x40>
    2064:	00442403          	lw	s0,4(s0)
    2068:	fe9ff06f          	j	2050 <_check_file_open+0x24>
    206c:	01448593          	addi	a1,s1,20
    2070:	bd840513          	addi	a0,s0,-1064
    2074:	00000097          	auipc	ra,0x0
    2078:	e2c080e7          	jalr	-468(ra) # 1ea0 <fatfs_compare_names>
    207c:	fe0504e3          	beqz	a0,2064 <_check_file_open+0x38>
    2080:	11848593          	addi	a1,s1,280
    2084:	cdc40513          	addi	a0,s0,-804
    2088:	00000097          	auipc	ra,0x0
    208c:	e18080e7          	jalr	-488(ra) # 1ea0 <fatfs_compare_names>
    2090:	fc050ae3          	beqz	a0,2064 <_check_file_open+0x38>
    2094:	01c12083          	lw	ra,28(sp)
    2098:	01812403          	lw	s0,24(sp)
    209c:	01412483          	lw	s1,20(sp)
    20a0:	01012903          	lw	s2,16(sp)
    20a4:	00c12983          	lw	s3,12(sp)
    20a8:	02010113          	addi	sp,sp,32
    20ac:	00008067          	ret

000020b0 <fatfs_fat_init>:
    20b0:	ff010113          	addi	sp,sp,-16
    20b4:	00812423          	sw	s0,8(sp)
    20b8:	00912223          	sw	s1,4(sp)
    20bc:	00112623          	sw	ra,12(sp)
    20c0:	fff00793          	li	a5,-1
    20c4:	25850493          	addi	s1,a0,600
    20c8:	00050413          	mv	s0,a0
    20cc:	44f52c23          	sw	a5,1112(a0)
    20d0:	24052a23          	sw	zero,596(a0)
    20d4:	44052e23          	sw	zero,1116(a0)
    20d8:	20000613          	li	a2,512
    20dc:	00048513          	mv	a0,s1
    20e0:	00000593          	li	a1,0
    20e4:	fffff097          	auipc	ra,0xfffff
    20e8:	968080e7          	jalr	-1688(ra) # a4c <memset>
    20ec:	25442783          	lw	a5,596(s0)
    20f0:	00c12083          	lw	ra,12(sp)
    20f4:	24942a23          	sw	s1,596(s0)
    20f8:	46042023          	sw	zero,1120(s0)
    20fc:	46f42223          	sw	a5,1124(s0)
    2100:	00812403          	lw	s0,8(sp)
    2104:	00412483          	lw	s1,4(sp)
    2108:	01010113          	addi	sp,sp,16
    210c:	00008067          	ret

00002110 <fatfs_init>:
    2110:	fd010113          	addi	sp,sp,-48
    2114:	02812423          	sw	s0,40(sp)
    2118:	02112623          	sw	ra,44(sp)
    211c:	02912223          	sw	s1,36(sp)
    2120:	03212023          	sw	s2,32(sp)
    2124:	01312e23          	sw	s3,28(sp)
    2128:	fff00793          	li	a5,-1
    212c:	24f52223          	sw	a5,580(a0)
    2130:	24052423          	sw	zero,584(a0)
    2134:	02052223          	sw	zero,36(a0)
    2138:	00050413          	mv	s0,a0
    213c:	00000097          	auipc	ra,0x0
    2140:	f74080e7          	jalr	-140(ra) # 20b0 <fatfs_fat_init>
    2144:	03442783          	lw	a5,52(s0)
    2148:	02079463          	bnez	a5,2170 <fatfs_init+0x60>
    214c:	fff00713          	li	a4,-1
    2150:	02c12083          	lw	ra,44(sp)
    2154:	02812403          	lw	s0,40(sp)
    2158:	02412483          	lw	s1,36(sp)
    215c:	02012903          	lw	s2,32(sp)
    2160:	01c12983          	lw	s3,28(sp)
    2164:	00070513          	mv	a0,a4
    2168:	03010113          	addi	sp,sp,48
    216c:	00008067          	ret
    2170:	04440593          	addi	a1,s0,68
    2174:	00100613          	li	a2,1
    2178:	00000513          	li	a0,0
    217c:	00b12623          	sw	a1,12(sp)
    2180:	000780e7          	jalr	a5
    2184:	fc0504e3          	beqz	a0,214c <fatfs_init+0x3c>
    2188:	24244703          	lbu	a4,578(s0)
    218c:	05500793          	li	a5,85
    2190:	00c12583          	lw	a1,12(sp)
    2194:	00f70663          	beq	a4,a5,21a0 <fatfs_init+0x90>
    2198:	ffd00713          	li	a4,-3
    219c:	fb5ff06f          	j	2150 <fatfs_init+0x40>
    21a0:	24344703          	lbu	a4,579(s0)
    21a4:	0aa00793          	li	a5,170
    21a8:	fef718e3          	bne	a4,a5,2198 <fatfs_init+0x88>
    21ac:	20644783          	lbu	a5,518(s0)
    21b0:	00600713          	li	a4,6
    21b4:	02f76463          	bltu	a4,a5,21dc <fatfs_init+0xcc>
    21b8:	00400713          	li	a4,4
    21bc:	00f76663          	bltu	a4,a5,21c8 <fatfs_init+0xb8>
    21c0:	00000513          	li	a0,0
    21c4:	02078663          	beqz	a5,21f0 <fatfs_init+0xe0>
    21c8:	20c45503          	lhu	a0,524(s0)
    21cc:	20a45783          	lhu	a5,522(s0)
    21d0:	01051513          	slli	a0,a0,0x10
    21d4:	00f56533          	or	a0,a0,a5
    21d8:	0180006f          	j	21f0 <fatfs_init+0xe0>
    21dc:	00c00713          	li	a4,12
    21e0:	12f76663          	bltu	a4,a5,230c <fatfs_init+0x1fc>
    21e4:	00a00713          	li	a4,10
    21e8:	00000513          	li	a0,0
    21ec:	fcf76ee3          	bltu	a4,a5,21c8 <fatfs_init+0xb8>
    21f0:	03442783          	lw	a5,52(s0)
    21f4:	00a42e23          	sw	a0,28(s0)
    21f8:	00100613          	li	a2,1
    21fc:	000780e7          	jalr	a5
    2200:	f40506e3          	beqz	a0,214c <fatfs_init+0x3c>
    2204:	05044783          	lbu	a5,80(s0)
    2208:	04f44703          	lbu	a4,79(s0)
    220c:	20000693          	li	a3,512
    2210:	00879793          	slli	a5,a5,0x8
    2214:	00e7e7b3          	or	a5,a5,a4
    2218:	ffe00713          	li	a4,-2
    221c:	f2d79ae3          	bne	a5,a3,2150 <fatfs_init+0x40>
    2220:	05644483          	lbu	s1,86(s0)
    2224:	05544783          	lbu	a5,85(s0)
    2228:	05144983          	lbu	s3,81(s0)
    222c:	00849493          	slli	s1,s1,0x8
    2230:	05a45583          	lhu	a1,90(s0)
    2234:	00f4e4b3          	or	s1,s1,a5
    2238:	01340023          	sb	s3,0(s0)
    223c:	02941423          	sh	s1,40(s0)
    2240:	05245903          	lhu	s2,82(s0)
    2244:	05444503          	lbu	a0,84(s0)
    2248:	00059463          	bnez	a1,2250 <fatfs_init+0x140>
    224c:	06842583          	lw	a1,104(s0)
    2250:	07042783          	lw	a5,112(s0)
    2254:	02b42023          	sw	a1,32(s0)
    2258:	00549493          	slli	s1,s1,0x5
    225c:	00f42423          	sw	a5,8(s0)
    2260:	07445783          	lhu	a5,116(s0)
    2264:	1ff48493          	addi	s1,s1,511
    2268:	4094d493          	srai	s1,s1,0x9
    226c:	00f41c23          	sh	a5,24(s0)
    2270:	fffff097          	auipc	ra,0xfffff
    2274:	e30080e7          	jalr	-464(ra) # 10a0 <__mulsi3>
    2278:	00a907b3          	add	a5,s2,a0
    227c:	00f42623          	sw	a5,12(s0)
    2280:	01c42783          	lw	a5,28(s0)
    2284:	24245703          	lhu	a4,578(s0)
    2288:	00942823          	sw	s1,16(s0)
    228c:	00f907b3          	add	a5,s2,a5
    2290:	00f42a23          	sw	a5,20(s0)
    2294:	00f507b3          	add	a5,a0,a5
    2298:	00f42223          	sw	a5,4(s0)
    229c:	0000b7b7          	lui	a5,0xb
    22a0:	a5578793          	addi	a5,a5,-1451 # aa55 <_files+0x60c5>
    22a4:	eef71ae3          	bne	a4,a5,2198 <fatfs_init+0x88>
    22a8:	05844783          	lbu	a5,88(s0)
    22ac:	05744703          	lbu	a4,87(s0)
    22b0:	00879793          	slli	a5,a5,0x8
    22b4:	00e7e7b3          	or	a5,a5,a4
    22b8:	00079463          	bnez	a5,22c0 <fatfs_init+0x1b0>
    22bc:	06442783          	lw	a5,100(s0)
    22c0:	ffb00713          	li	a4,-5
    22c4:	e80986e3          	beqz	s3,2150 <fatfs_init+0x40>
    22c8:	00990933          	add	s2,s2,s1
    22cc:	00a90533          	add	a0,s2,a0
    22d0:	40a78533          	sub	a0,a5,a0
    22d4:	00098593          	mv	a1,s3
    22d8:	ffffe097          	auipc	ra,0xffffe
    22dc:	6c8080e7          	jalr	1736(ra) # 9a0 <__udivsi3>
    22e0:	000017b7          	lui	a5,0x1
    22e4:	ff478793          	addi	a5,a5,-12 # ff4 <printf+0x90>
    22e8:	ffb00713          	li	a4,-5
    22ec:	e6a7f2e3          	bgeu	a5,a0,2150 <fatfs_init+0x40>
    22f0:	000107b7          	lui	a5,0x10
    22f4:	ff478793          	addi	a5,a5,-12 # fff4 <_files+0xb664>
    22f8:	02a7e663          	bltu	a5,a0,2324 <fatfs_init+0x214>
    22fc:	00042423          	sw	zero,8(s0)
    2300:	02042823          	sw	zero,48(s0)
    2304:	00000713          	li	a4,0
    2308:	e49ff06f          	j	2150 <fatfs_init+0x40>
    230c:	ff278793          	addi	a5,a5,-14
    2310:	0ff7f793          	zext.b	a5,a5
    2314:	00100713          	li	a4,1
    2318:	00000513          	li	a0,0
    231c:	eaf776e3          	bgeu	a4,a5,21c8 <fatfs_init+0xb8>
    2320:	ed1ff06f          	j	21f0 <fatfs_init+0xe0>
    2324:	00100793          	li	a5,1
    2328:	02f42823          	sw	a5,48(s0)
    232c:	fd9ff06f          	j	2304 <fatfs_init+0x1f4>

00002330 <fl_attach_media>:
    2330:	000047b7          	lui	a5,0x4
    2334:	3247a783          	lw	a5,804(a5) # 4324 <_filelib_init>
    2338:	fe010113          	addi	sp,sp,-32
    233c:	00812c23          	sw	s0,24(sp)
    2340:	00112e23          	sw	ra,28(sp)
    2344:	00050413          	mv	s0,a0
    2348:	00079a63          	bnez	a5,235c <fl_attach_media+0x2c>
    234c:	00b12623          	sw	a1,12(sp)
    2350:	fffff097          	auipc	ra,0xfffff
    2354:	1e4080e7          	jalr	484(ra) # 1534 <fl_init>
    2358:	00c12583          	lw	a1,12(sp)
    235c:	000047b7          	lui	a5,0x4
    2360:	52878513          	addi	a0,a5,1320 # 4528 <_fs>
    2364:	02b52c23          	sw	a1,56(a0)
    2368:	02852a23          	sw	s0,52(a0)
    236c:	00000097          	auipc	ra,0x0
    2370:	da4080e7          	jalr	-604(ra) # 2110 <fatfs_init>
    2374:	00050593          	mv	a1,a0
    2378:	02050863          	beqz	a0,23a8 <fl_attach_media+0x78>
    237c:	00a12623          	sw	a0,12(sp)
    2380:	00004537          	lui	a0,0x4
    2384:	0b450513          	addi	a0,a0,180 # 40b4 <LEDS+0x84>
    2388:	fffff097          	auipc	ra,0xfffff
    238c:	bdc080e7          	jalr	-1060(ra) # f64 <printf>
    2390:	00c12583          	lw	a1,12(sp)
    2394:	01c12083          	lw	ra,28(sp)
    2398:	01812403          	lw	s0,24(sp)
    239c:	00058513          	mv	a0,a1
    23a0:	02010113          	addi	sp,sp,32
    23a4:	00008067          	ret
    23a8:	000047b7          	lui	a5,0x4
    23ac:	00100713          	li	a4,1
    23b0:	32e7a023          	sw	a4,800(a5) # 4320 <_filelib_valid>
    23b4:	fe1ff06f          	j	2394 <fl_attach_media+0x64>

000023b8 <fatfs_fat_purge>:
    23b8:	25452583          	lw	a1,596(a0)
    23bc:	fe010113          	addi	sp,sp,-32
    23c0:	00812c23          	sw	s0,24(sp)
    23c4:	00112e23          	sw	ra,28(sp)
    23c8:	00050413          	mv	s0,a0
    23cc:	00059663          	bnez	a1,23d8 <fatfs_fat_purge+0x20>
    23d0:	00100513          	li	a0,1
    23d4:	02c0006f          	j	2400 <fatfs_fat_purge+0x48>
    23d8:	2045a783          	lw	a5,516(a1)
    23dc:	00079663          	bnez	a5,23e8 <fatfs_fat_purge+0x30>
    23e0:	20c5a583          	lw	a1,524(a1)
    23e4:	fe9ff06f          	j	23cc <fatfs_fat_purge+0x14>
    23e8:	00040513          	mv	a0,s0
    23ec:	00b12623          	sw	a1,12(sp)
    23f0:	fffff097          	auipc	ra,0xfffff
    23f4:	de4080e7          	jalr	-540(ra) # 11d4 <fatfs_fat_writeback>
    23f8:	00c12583          	lw	a1,12(sp)
    23fc:	fe0512e3          	bnez	a0,23e0 <fatfs_fat_purge+0x28>
    2400:	01c12083          	lw	ra,28(sp)
    2404:	01812403          	lw	s0,24(sp)
    2408:	02010113          	addi	sp,sp,32
    240c:	00008067          	ret

00002410 <fatfs_find_next_cluster>:
    2410:	ff010113          	addi	sp,sp,-16
    2414:	00812423          	sw	s0,8(sp)
    2418:	01212023          	sw	s2,0(sp)
    241c:	00112623          	sw	ra,12(sp)
    2420:	00912223          	sw	s1,4(sp)
    2424:	00050913          	mv	s2,a0
    2428:	00200413          	li	s0,2
    242c:	00058463          	beqz	a1,2434 <fatfs_find_next_cluster+0x24>
    2430:	00058413          	mv	s0,a1
    2434:	03092783          	lw	a5,48(s2)
    2438:	00745493          	srli	s1,s0,0x7
    243c:	00079463          	bnez	a5,2444 <fatfs_find_next_cluster+0x34>
    2440:	00845493          	srli	s1,s0,0x8
    2444:	01492583          	lw	a1,20(s2)
    2448:	00090513          	mv	a0,s2
    244c:	00b485b3          	add	a1,s1,a1
    2450:	fffff097          	auipc	ra,0xfffff
    2454:	e08080e7          	jalr	-504(ra) # 1258 <fatfs_fat_read_sector>
    2458:	00050793          	mv	a5,a0
    245c:	fff00513          	li	a0,-1
    2460:	04078863          	beqz	a5,24b0 <fatfs_find_next_cluster+0xa0>
    2464:	03092703          	lw	a4,48(s2)
    2468:	2087a783          	lw	a5,520(a5)
    246c:	04071e63          	bnez	a4,24c8 <fatfs_find_next_cluster+0xb8>
    2470:	00849493          	slli	s1,s1,0x8
    2474:	40940433          	sub	s0,s0,s1
    2478:	00141413          	slli	s0,s0,0x1
    247c:	01041413          	slli	s0,s0,0x10
    2480:	01045413          	srli	s0,s0,0x10
    2484:	008787b3          	add	a5,a5,s0
    2488:	0017c503          	lbu	a0,1(a5)
    248c:	0007c783          	lbu	a5,0(a5)
    2490:	00851513          	slli	a0,a0,0x8
    2494:	00f50533          	add	a0,a0,a5
    2498:	ffff07b7          	lui	a5,0xffff0
    249c:	00878793          	addi	a5,a5,8 # ffff0008 <__stacktop+0xfffe0008>
    24a0:	00f507b3          	add	a5,a0,a5
    24a4:	00700713          	li	a4,7
    24a8:	00f76463          	bltu	a4,a5,24b0 <fatfs_find_next_cluster+0xa0>
    24ac:	fff00513          	li	a0,-1
    24b0:	00c12083          	lw	ra,12(sp)
    24b4:	00812403          	lw	s0,8(sp)
    24b8:	00412483          	lw	s1,4(sp)
    24bc:	00012903          	lw	s2,0(sp)
    24c0:	01010113          	addi	sp,sp,16
    24c4:	00008067          	ret
    24c8:	00749493          	slli	s1,s1,0x7
    24cc:	40940433          	sub	s0,s0,s1
    24d0:	00241413          	slli	s0,s0,0x2
    24d4:	01041413          	slli	s0,s0,0x10
    24d8:	01045413          	srli	s0,s0,0x10
    24dc:	008787b3          	add	a5,a5,s0
    24e0:	0037c503          	lbu	a0,3(a5)
    24e4:	0027c703          	lbu	a4,2(a5)
    24e8:	01851513          	slli	a0,a0,0x18
    24ec:	01071713          	slli	a4,a4,0x10
    24f0:	00e50533          	add	a0,a0,a4
    24f4:	0007c703          	lbu	a4,0(a5)
    24f8:	0017c783          	lbu	a5,1(a5)
    24fc:	00e50533          	add	a0,a0,a4
    2500:	00879793          	slli	a5,a5,0x8
    2504:	00f50533          	add	a0,a0,a5
    2508:	00451513          	slli	a0,a0,0x4
    250c:	00455513          	srli	a0,a0,0x4
    2510:	f00007b7          	lui	a5,0xf0000
    2514:	f89ff06f          	j	249c <fatfs_find_next_cluster+0x8c>

00002518 <fatfs_sector_reader>:
    2518:	03052783          	lw	a5,48(a0)
    251c:	fe010113          	addi	sp,sp,-32
    2520:	00812c23          	sw	s0,24(sp)
    2524:	01212823          	sw	s2,16(sp)
    2528:	01512223          	sw	s5,4(sp)
    252c:	00112e23          	sw	ra,28(sp)
    2530:	00912a23          	sw	s1,20(sp)
    2534:	01312623          	sw	s3,12(sp)
    2538:	01412423          	sw	s4,8(sp)
    253c:	01612023          	sw	s6,0(sp)
    2540:	00f5e7b3          	or	a5,a1,a5
    2544:	00050413          	mv	s0,a0
    2548:	00060913          	mv	s2,a2
    254c:	00068a93          	mv	s5,a3
    2550:	08079063          	bnez	a5,25d0 <fatfs_sector_reader+0xb8>
    2554:	01052783          	lw	a5,16(a0)
    2558:	02f66863          	bltu	a2,a5,2588 <fatfs_sector_reader+0x70>
    255c:	00000513          	li	a0,0
    2560:	01c12083          	lw	ra,28(sp)
    2564:	01812403          	lw	s0,24(sp)
    2568:	01412483          	lw	s1,20(sp)
    256c:	01012903          	lw	s2,16(sp)
    2570:	00c12983          	lw	s3,12(sp)
    2574:	00812a03          	lw	s4,8(sp)
    2578:	00412a83          	lw	s5,4(sp)
    257c:	00012b03          	lw	s6,0(sp)
    2580:	02010113          	addi	sp,sp,32
    2584:	00008067          	ret
    2588:	01c52503          	lw	a0,28(a0)
    258c:	00c42783          	lw	a5,12(s0)
    2590:	00f50533          	add	a0,a0,a5
    2594:	01250533          	add	a0,a0,s2
    2598:	0a0a8663          	beqz	s5,2644 <fatfs_sector_reader+0x12c>
    259c:	03442783          	lw	a5,52(s0)
    25a0:	00100613          	li	a2,1
    25a4:	000a8593          	mv	a1,s5
    25a8:	01812403          	lw	s0,24(sp)
    25ac:	01c12083          	lw	ra,28(sp)
    25b0:	01412483          	lw	s1,20(sp)
    25b4:	01012903          	lw	s2,16(sp)
    25b8:	00c12983          	lw	s3,12(sp)
    25bc:	00812a03          	lw	s4,8(sp)
    25c0:	00412a83          	lw	s5,4(sp)
    25c4:	00012b03          	lw	s6,0(sp)
    25c8:	02010113          	addi	sp,sp,32
    25cc:	00078067          	jr	a5 # f0000000 <__stacktop+0xefff0000>
    25d0:	00054783          	lbu	a5,0(a0)
    25d4:	00058493          	mv	s1,a1
    25d8:	00060513          	mv	a0,a2
    25dc:	00078593          	mv	a1,a5
    25e0:	00078a13          	mv	s4,a5
    25e4:	ffffe097          	auipc	ra,0xffffe
    25e8:	3bc080e7          	jalr	956(ra) # 9a0 <__udivsi3>
    25ec:	00050b13          	mv	s6,a0
    25f0:	00000993          	li	s3,0
    25f4:	03699a63          	bne	s3,s6,2628 <fatfs_sector_reader+0x110>
    25f8:	fff00793          	li	a5,-1
    25fc:	f6f480e3          	beq	s1,a5,255c <fatfs_sector_reader+0x44>
    2600:	000a0593          	mv	a1,s4
    2604:	00090513          	mv	a0,s2
    2608:	ffffe097          	auipc	ra,0xffffe
    260c:	3e0080e7          	jalr	992(ra) # 9e8 <__umodsi3>
    2610:	00050913          	mv	s2,a0
    2614:	00048593          	mv	a1,s1
    2618:	00040513          	mv	a0,s0
    261c:	fffff097          	auipc	ra,0xfffff
    2620:	de8080e7          	jalr	-536(ra) # 1404 <fatfs_lba_of_cluster>
    2624:	f71ff06f          	j	2594 <fatfs_sector_reader+0x7c>
    2628:	00048593          	mv	a1,s1
    262c:	00040513          	mv	a0,s0
    2630:	00000097          	auipc	ra,0x0
    2634:	de0080e7          	jalr	-544(ra) # 2410 <fatfs_find_next_cluster>
    2638:	00050493          	mv	s1,a0
    263c:	00198993          	addi	s3,s3,1
    2640:	fb5ff06f          	j	25f4 <fatfs_sector_reader+0xdc>
    2644:	24442783          	lw	a5,580(s0)
    2648:	00a78c63          	beq	a5,a0,2660 <fatfs_sector_reader+0x148>
    264c:	03442783          	lw	a5,52(s0)
    2650:	24a42223          	sw	a0,580(s0)
    2654:	00100613          	li	a2,1
    2658:	04440593          	addi	a1,s0,68
    265c:	f4dff06f          	j	25a8 <fatfs_sector_reader+0x90>
    2660:	00100513          	li	a0,1
    2664:	efdff06f          	j	2560 <fatfs_sector_reader+0x48>

00002668 <fatfs_get_file_entry>:
    2668:	eb010113          	addi	sp,sp,-336
    266c:	14812423          	sw	s0,328(sp)
    2670:	14912223          	sw	s1,324(sp)
    2674:	13312e23          	sw	s3,316(sp)
    2678:	13712623          	sw	s7,300(sp)
    267c:	13812423          	sw	s8,296(sp)
    2680:	13912223          	sw	s9,292(sp)
    2684:	14112623          	sw	ra,332(sp)
    2688:	15212023          	sw	s2,320(sp)
    268c:	13412c23          	sw	s4,312(sp)
    2690:	13512a23          	sw	s5,308(sp)
    2694:	13612823          	sw	s6,304(sp)
    2698:	00050993          	mv	s3,a0
    269c:	00058c93          	mv	s9,a1
    26a0:	00060b93          	mv	s7,a2
    26a4:	00068c13          	mv	s8,a3
    26a8:	10010ea3          	sb	zero,285(sp)
    26ac:	01810413          	addi	s0,sp,24
    26b0:	11c10493          	addi	s1,sp,284
    26b4:	00040513          	mv	a0,s0
    26b8:	00d00613          	li	a2,13
    26bc:	00000593          	li	a1,0
    26c0:	00d40413          	addi	s0,s0,13
    26c4:	ffffe097          	auipc	ra,0xffffe
    26c8:	388080e7          	jalr	904(ra) # a4c <memset>
    26cc:	fe9414e3          	bne	s0,s1,26b4 <fatfs_get_file_entry+0x4c>
    26d0:	00000493          	li	s1,0
    26d4:	24498a13          	addi	s4,s3,580
    26d8:	00810913          	addi	s2,sp,8
    26dc:	00800a93          	li	s5,8
    26e0:	02e00b13          	li	s6,46
    26e4:	00000693          	li	a3,0
    26e8:	00048613          	mv	a2,s1
    26ec:	000c8593          	mv	a1,s9
    26f0:	00098513          	mv	a0,s3
    26f4:	00000097          	auipc	ra,0x0
    26f8:	e24080e7          	jalr	-476(ra) # 2518 <fatfs_sector_reader>
    26fc:	08050c63          	beqz	a0,2794 <fatfs_get_file_entry+0x12c>
    2700:	00148493          	addi	s1,s1,1
    2704:	04498413          	addi	s0,s3,68
    2708:	00040513          	mv	a0,s0
    270c:	fffff097          	auipc	ra,0xfffff
    2710:	f98080e7          	jalr	-104(ra) # 16a4 <fatfs_entry_lfn_text>
    2714:	02050063          	beqz	a0,2734 <fatfs_get_file_entry+0xcc>
    2718:	00040593          	mv	a1,s0
    271c:	01810513          	addi	a0,sp,24
    2720:	fffff097          	auipc	ra,0xfffff
    2724:	e7c080e7          	jalr	-388(ra) # 159c <fatfs_lfn_cache_entry>
    2728:	02040413          	addi	s0,s0,32
    272c:	fd441ee3          	bne	s0,s4,2708 <fatfs_get_file_entry+0xa0>
    2730:	fb5ff06f          	j	26e4 <fatfs_get_file_entry+0x7c>
    2734:	00040513          	mv	a0,s0
    2738:	fffff097          	auipc	ra,0xfffff
    273c:	f80080e7          	jalr	-128(ra) # 16b8 <fatfs_entry_lfn_invalid>
    2740:	00050663          	beqz	a0,274c <fatfs_get_file_entry+0xe4>
    2744:	10010ea3          	sb	zero,285(sp)
    2748:	fe1ff06f          	j	2728 <fatfs_get_file_entry+0xc0>
    274c:	00040593          	mv	a1,s0
    2750:	01810513          	addi	a0,sp,24
    2754:	fffff097          	auipc	ra,0xfffff
    2758:	f98080e7          	jalr	-104(ra) # 16ec <fatfs_entry_lfn_exists>
    275c:	06050663          	beqz	a0,27c8 <fatfs_get_file_entry+0x160>
    2760:	01810513          	addi	a0,sp,24
    2764:	fffff097          	auipc	ra,0xfffff
    2768:	f04080e7          	jalr	-252(ra) # 1668 <fatfs_lfn_cache_get>
    276c:	000b8593          	mv	a1,s7
    2770:	fffff097          	auipc	ra,0xfffff
    2774:	730080e7          	jalr	1840(ra) # 1ea0 <fatfs_compare_names>
    2778:	fc0506e3          	beqz	a0,2744 <fatfs_get_file_entry+0xdc>
    277c:	02000613          	li	a2,32
    2780:	00040593          	mv	a1,s0
    2784:	000c0513          	mv	a0,s8
    2788:	ffffe097          	auipc	ra,0xffffe
    278c:	2e0080e7          	jalr	736(ra) # a68 <memcpy>
    2790:	00100513          	li	a0,1
    2794:	14c12083          	lw	ra,332(sp)
    2798:	14812403          	lw	s0,328(sp)
    279c:	14412483          	lw	s1,324(sp)
    27a0:	14012903          	lw	s2,320(sp)
    27a4:	13c12983          	lw	s3,316(sp)
    27a8:	13812a03          	lw	s4,312(sp)
    27ac:	13412a83          	lw	s5,308(sp)
    27b0:	13012b03          	lw	s6,304(sp)
    27b4:	12c12b83          	lw	s7,300(sp)
    27b8:	12812c03          	lw	s8,296(sp)
    27bc:	12412c83          	lw	s9,292(sp)
    27c0:	15010113          	addi	sp,sp,336
    27c4:	00008067          	ret
    27c8:	00040513          	mv	a0,s0
    27cc:	fffff097          	auipc	ra,0xfffff
    27d0:	f70080e7          	jalr	-144(ra) # 173c <fatfs_entry_sfn_only>
    27d4:	f4050ae3          	beqz	a0,2728 <fatfs_get_file_entry+0xc0>
    27d8:	00d00613          	li	a2,13
    27dc:	00000593          	li	a1,0
    27e0:	00090513          	mv	a0,s2
    27e4:	ffffe097          	auipc	ra,0xffffe
    27e8:	268080e7          	jalr	616(ra) # a4c <memset>
    27ec:	00000793          	li	a5,0
    27f0:	00f406b3          	add	a3,s0,a5
    27f4:	0006c683          	lbu	a3,0(a3)
    27f8:	00f90733          	add	a4,s2,a5
    27fc:	00178793          	addi	a5,a5,1
    2800:	00d70023          	sb	a3,0(a4)
    2804:	ff5796e3          	bne	a5,s5,27f0 <fatfs_get_file_entry+0x188>
    2808:	00844703          	lbu	a4,8(s0)
    280c:	00944783          	lbu	a5,9(s0)
    2810:	00a44683          	lbu	a3,10(s0)
    2814:	00e108a3          	sb	a4,17(sp)
    2818:	00f10923          	sb	a5,18(sp)
    281c:	fe070713          	addi	a4,a4,-32
    2820:	fe078793          	addi	a5,a5,-32
    2824:	00f037b3          	snez	a5,a5
    2828:	00e03733          	snez	a4,a4
    282c:	00d109a3          	sb	a3,19(sp)
    2830:	00e7e7b3          	or	a5,a5,a4
    2834:	00079863          	bnez	a5,2844 <fatfs_get_file_entry+0x1dc>
    2838:	fe068693          	addi	a3,a3,-32
    283c:	02000793          	li	a5,32
    2840:	00068a63          	beqz	a3,2854 <fatfs_get_file_entry+0x1ec>
    2844:	00814703          	lbu	a4,8(sp)
    2848:	02e00793          	li	a5,46
    284c:	01671463          	bne	a4,s6,2854 <fatfs_get_file_entry+0x1ec>
    2850:	02000793          	li	a5,32
    2854:	00f10823          	sb	a5,16(sp)
    2858:	000b8593          	mv	a1,s7
    285c:	00090513          	mv	a0,s2
    2860:	f11ff06f          	j	2770 <fatfs_get_file_entry+0x108>

00002864 <_open_directory>:
    2864:	eb010113          	addi	sp,sp,-336
    2868:	15212023          	sw	s2,320(sp)
    286c:	00004937          	lui	s2,0x4
    2870:	52890913          	addi	s2,s2,1320 # 4528 <_fs>
    2874:	14812423          	sw	s0,328(sp)
    2878:	00892403          	lw	s0,8(s2)
    287c:	14912223          	sw	s1,324(sp)
    2880:	13312e23          	sw	s3,316(sp)
    2884:	13412c23          	sw	s4,312(sp)
    2888:	13512a23          	sw	s5,308(sp)
    288c:	13612823          	sw	s6,304(sp)
    2890:	14112623          	sw	ra,332(sp)
    2894:	00050a13          	mv	s4,a0
    2898:	00058a93          	mv	s5,a1
    289c:	fffff097          	auipc	ra,0xfffff
    28a0:	3bc080e7          	jalr	956(ra) # 1c58 <fatfs_total_path_levels>
    28a4:	00050b13          	mv	s6,a0
    28a8:	00000493          	li	s1,0
    28ac:	fff00993          	li	s3,-1
    28b0:	009b5863          	bge	s6,s1,28c0 <_open_directory+0x5c>
    28b4:	008aa023          	sw	s0,0(s5)
    28b8:	00100513          	li	a0,1
    28bc:	0240006f          	j	28e0 <_open_directory+0x7c>
    28c0:	10400693          	li	a3,260
    28c4:	02c10613          	addi	a2,sp,44
    28c8:	00048593          	mv	a1,s1
    28cc:	000a0513          	mv	a0,s4
    28d0:	fffff097          	auipc	ra,0xfffff
    28d4:	3f8080e7          	jalr	1016(ra) # 1cc8 <fatfs_get_substring>
    28d8:	03351863          	bne	a0,s3,2908 <_open_directory+0xa4>
    28dc:	00000513          	li	a0,0
    28e0:	14c12083          	lw	ra,332(sp)
    28e4:	14812403          	lw	s0,328(sp)
    28e8:	14412483          	lw	s1,324(sp)
    28ec:	14012903          	lw	s2,320(sp)
    28f0:	13c12983          	lw	s3,316(sp)
    28f4:	13812a03          	lw	s4,312(sp)
    28f8:	13412a83          	lw	s5,308(sp)
    28fc:	13012b03          	lw	s6,304(sp)
    2900:	15010113          	addi	sp,sp,336
    2904:	00008067          	ret
    2908:	00c10693          	addi	a3,sp,12
    290c:	02c10613          	addi	a2,sp,44
    2910:	00040593          	mv	a1,s0
    2914:	00090513          	mv	a0,s2
    2918:	00000097          	auipc	ra,0x0
    291c:	d50080e7          	jalr	-688(ra) # 2668 <fatfs_get_file_entry>
    2920:	fa050ee3          	beqz	a0,28dc <_open_directory+0x78>
    2924:	01714783          	lbu	a5,23(sp)
    2928:	0107f793          	andi	a5,a5,16
    292c:	fa0788e3          	beqz	a5,28dc <_open_directory+0x78>
    2930:	02015403          	lhu	s0,32(sp)
    2934:	02615783          	lhu	a5,38(sp)
    2938:	00148493          	addi	s1,s1,1
    293c:	01041413          	slli	s0,s0,0x10
    2940:	00f40433          	add	s0,s0,a5
    2944:	f6dff06f          	j	28b0 <_open_directory+0x4c>

00002948 <_open_file>:
    2948:	fc010113          	addi	sp,sp,-64
    294c:	03312623          	sw	s3,44(sp)
    2950:	02112e23          	sw	ra,60(sp)
    2954:	02812c23          	sw	s0,56(sp)
    2958:	02912a23          	sw	s1,52(sp)
    295c:	03212823          	sw	s2,48(sp)
    2960:	00050993          	mv	s3,a0
    2964:	fffff097          	auipc	ra,0xfffff
    2968:	9e0080e7          	jalr	-1568(ra) # 1344 <_allocate_file>
    296c:	06050463          	beqz	a0,29d4 <_open_file+0x8c>
    2970:	01450913          	addi	s2,a0,20
    2974:	00050413          	mv	s0,a0
    2978:	10400613          	li	a2,260
    297c:	00000593          	li	a1,0
    2980:	00090513          	mv	a0,s2
    2984:	ffffe097          	auipc	ra,0xffffe
    2988:	0c8080e7          	jalr	200(ra) # a4c <memset>
    298c:	11840493          	addi	s1,s0,280
    2990:	10400613          	li	a2,260
    2994:	00000593          	li	a1,0
    2998:	00048513          	mv	a0,s1
    299c:	ffffe097          	auipc	ra,0xffffe
    29a0:	0b0080e7          	jalr	176(ra) # a4c <memset>
    29a4:	10400713          	li	a4,260
    29a8:	00048693          	mv	a3,s1
    29ac:	00070613          	mv	a2,a4
    29b0:	00090593          	mv	a1,s2
    29b4:	00098513          	mv	a0,s3
    29b8:	fffff097          	auipc	ra,0xfffff
    29bc:	3f8080e7          	jalr	1016(ra) # 1db0 <fatfs_split_path>
    29c0:	fff00793          	li	a5,-1
    29c4:	02f51a63          	bne	a0,a5,29f8 <_open_file+0xb0>
    29c8:	00040513          	mv	a0,s0
    29cc:	fffff097          	auipc	ra,0xfffff
    29d0:	9f0080e7          	jalr	-1552(ra) # 13bc <_free_file>
    29d4:	00000413          	li	s0,0
    29d8:	03c12083          	lw	ra,60(sp)
    29dc:	00040513          	mv	a0,s0
    29e0:	03812403          	lw	s0,56(sp)
    29e4:	03412483          	lw	s1,52(sp)
    29e8:	03012903          	lw	s2,48(sp)
    29ec:	02c12983          	lw	s3,44(sp)
    29f0:	04010113          	addi	sp,sp,64
    29f4:	00008067          	ret
    29f8:	00040513          	mv	a0,s0
    29fc:	fffff097          	auipc	ra,0xfffff
    2a00:	630080e7          	jalr	1584(ra) # 202c <_check_file_open>
    2a04:	fc0512e3          	bnez	a0,29c8 <_open_file+0x80>
    2a08:	01444783          	lbu	a5,20(s0)
    2a0c:	08079c63          	bnez	a5,2aa4 <_open_file+0x15c>
    2a10:	000047b7          	lui	a5,0x4
    2a14:	5307a783          	lw	a5,1328(a5) # 4530 <_fs+0x8>
    2a18:	00f42023          	sw	a5,0(s0)
    2a1c:	00042583          	lw	a1,0(s0)
    2a20:	00048613          	mv	a2,s1
    2a24:	000044b7          	lui	s1,0x4
    2a28:	00010693          	mv	a3,sp
    2a2c:	52848513          	addi	a0,s1,1320 # 4528 <_fs>
    2a30:	00000097          	auipc	ra,0x0
    2a34:	c38080e7          	jalr	-968(ra) # 2668 <fatfs_get_file_entry>
    2a38:	f80508e3          	beqz	a0,29c8 <_open_file+0x80>
    2a3c:	00b14783          	lbu	a5,11(sp)
    2a40:	0207f793          	andi	a5,a5,32
    2a44:	f80782e3          	beqz	a5,29c8 <_open_file+0x80>
    2a48:	00b00613          	li	a2,11
    2a4c:	00010593          	mv	a1,sp
    2a50:	21c40513          	addi	a0,s0,540
    2a54:	ffffe097          	auipc	ra,0xffffe
    2a58:	014080e7          	jalr	20(ra) # a68 <memcpy>
    2a5c:	01c12783          	lw	a5,28(sp)
    2a60:	01a15703          	lhu	a4,26(sp)
    2a64:	00042423          	sw	zero,8(s0)
    2a68:	00f42623          	sw	a5,12(s0)
    2a6c:	01415783          	lhu	a5,20(sp)
    2a70:	42042a23          	sw	zero,1076(s0)
    2a74:	00042823          	sw	zero,16(s0)
    2a78:	01079793          	slli	a5,a5,0x10
    2a7c:	00e787b3          	add	a5,a5,a4
    2a80:	00f42223          	sw	a5,4(s0)
    2a84:	fff00793          	li	a5,-1
    2a88:	42f42823          	sw	a5,1072(s0)
    2a8c:	22f42423          	sw	a5,552(s0)
    2a90:	22f42623          	sw	a5,556(s0)
    2a94:	52848513          	addi	a0,s1,1320
    2a98:	00000097          	auipc	ra,0x0
    2a9c:	920080e7          	jalr	-1760(ra) # 23b8 <fatfs_fat_purge>
    2aa0:	f39ff06f          	j	29d8 <_open_file+0x90>
    2aa4:	00040593          	mv	a1,s0
    2aa8:	00090513          	mv	a0,s2
    2aac:	00000097          	auipc	ra,0x0
    2ab0:	db8080e7          	jalr	-584(ra) # 2864 <_open_directory>
    2ab4:	f60514e3          	bnez	a0,2a1c <_open_file+0xd4>
    2ab8:	f11ff06f          	j	29c8 <_open_file+0x80>

00002abc <fatfs_sfn_exists>:
    2abc:	fe010113          	addi	sp,sp,-32
    2ac0:	01212823          	sw	s2,16(sp)
    2ac4:	01312623          	sw	s3,12(sp)
    2ac8:	01412423          	sw	s4,8(sp)
    2acc:	01512223          	sw	s5,4(sp)
    2ad0:	01612023          	sw	s6,0(sp)
    2ad4:	00112e23          	sw	ra,28(sp)
    2ad8:	00812c23          	sw	s0,24(sp)
    2adc:	00912a23          	sw	s1,20(sp)
    2ae0:	00050993          	mv	s3,a0
    2ae4:	00058a93          	mv	s5,a1
    2ae8:	00060b13          	mv	s6,a2
    2aec:	00000913          	li	s2,0
    2af0:	24450a13          	addi	s4,a0,580
    2af4:	00000693          	li	a3,0
    2af8:	00090613          	mv	a2,s2
    2afc:	000a8593          	mv	a1,s5
    2b00:	00098513          	mv	a0,s3
    2b04:	00000097          	auipc	ra,0x0
    2b08:	a14080e7          	jalr	-1516(ra) # 2518 <fatfs_sector_reader>
    2b0c:	00050413          	mv	s0,a0
    2b10:	06050263          	beqz	a0,2b74 <fatfs_sfn_exists+0xb8>
    2b14:	00190913          	addi	s2,s2,1
    2b18:	04498493          	addi	s1,s3,68
    2b1c:	00048513          	mv	a0,s1
    2b20:	fffff097          	auipc	ra,0xfffff
    2b24:	b84080e7          	jalr	-1148(ra) # 16a4 <fatfs_entry_lfn_text>
    2b28:	00050863          	beqz	a0,2b38 <fatfs_sfn_exists+0x7c>
    2b2c:	02048493          	addi	s1,s1,32
    2b30:	ff4496e3          	bne	s1,s4,2b1c <fatfs_sfn_exists+0x60>
    2b34:	fc1ff06f          	j	2af4 <fatfs_sfn_exists+0x38>
    2b38:	00048513          	mv	a0,s1
    2b3c:	fffff097          	auipc	ra,0xfffff
    2b40:	b7c080e7          	jalr	-1156(ra) # 16b8 <fatfs_entry_lfn_invalid>
    2b44:	fe0514e3          	bnez	a0,2b2c <fatfs_sfn_exists+0x70>
    2b48:	00048513          	mv	a0,s1
    2b4c:	fffff097          	auipc	ra,0xfffff
    2b50:	bf0080e7          	jalr	-1040(ra) # 173c <fatfs_entry_sfn_only>
    2b54:	00050413          	mv	s0,a0
    2b58:	fc050ae3          	beqz	a0,2b2c <fatfs_sfn_exists+0x70>
    2b5c:	00b00613          	li	a2,11
    2b60:	000b0593          	mv	a1,s6
    2b64:	00048513          	mv	a0,s1
    2b68:	ffffe097          	auipc	ra,0xffffe
    2b6c:	f44080e7          	jalr	-188(ra) # aac <strncmp>
    2b70:	fa051ee3          	bnez	a0,2b2c <fatfs_sfn_exists+0x70>
    2b74:	01c12083          	lw	ra,28(sp)
    2b78:	00040513          	mv	a0,s0
    2b7c:	01812403          	lw	s0,24(sp)
    2b80:	01412483          	lw	s1,20(sp)
    2b84:	01012903          	lw	s2,16(sp)
    2b88:	00c12983          	lw	s3,12(sp)
    2b8c:	00812a03          	lw	s4,8(sp)
    2b90:	00412a83          	lw	s5,4(sp)
    2b94:	00012b03          	lw	s6,0(sp)
    2b98:	02010113          	addi	sp,sp,32
    2b9c:	00008067          	ret

00002ba0 <fatfs_update_file_length>:
    2ba0:	03852783          	lw	a5,56(a0)
    2ba4:	14078e63          	beqz	a5,2d00 <fatfs_update_file_length+0x160>
    2ba8:	fd010113          	addi	sp,sp,-48
    2bac:	02912223          	sw	s1,36(sp)
    2bb0:	03212023          	sw	s2,32(sp)
    2bb4:	01312e23          	sw	s3,28(sp)
    2bb8:	01412c23          	sw	s4,24(sp)
    2bbc:	01612823          	sw	s6,16(sp)
    2bc0:	01712623          	sw	s7,12(sp)
    2bc4:	02112623          	sw	ra,44(sp)
    2bc8:	02812423          	sw	s0,40(sp)
    2bcc:	01512a23          	sw	s5,20(sp)
    2bd0:	00068913          	mv	s2,a3
    2bd4:	00060b93          	mv	s7,a2
    2bd8:	00058b13          	mv	s6,a1
    2bdc:	00050493          	mv	s1,a0
    2be0:	00000993          	li	s3,0
    2be4:	24450a13          	addi	s4,a0,580
    2be8:	00000693          	li	a3,0
    2bec:	00098613          	mv	a2,s3
    2bf0:	000b0593          	mv	a1,s6
    2bf4:	00048513          	mv	a0,s1
    2bf8:	00000097          	auipc	ra,0x0
    2bfc:	920080e7          	jalr	-1760(ra) # 2518 <fatfs_sector_reader>
    2c00:	0c050863          	beqz	a0,2cd0 <fatfs_update_file_length+0x130>
    2c04:	04448413          	addi	s0,s1,68
    2c08:	00198993          	addi	s3,s3,1
    2c0c:	00040a93          	mv	s5,s0
    2c10:	00040513          	mv	a0,s0
    2c14:	fffff097          	auipc	ra,0xfffff
    2c18:	a90080e7          	jalr	-1392(ra) # 16a4 <fatfs_entry_lfn_text>
    2c1c:	0a051463          	bnez	a0,2cc4 <fatfs_update_file_length+0x124>
    2c20:	00040513          	mv	a0,s0
    2c24:	fffff097          	auipc	ra,0xfffff
    2c28:	a94080e7          	jalr	-1388(ra) # 16b8 <fatfs_entry_lfn_invalid>
    2c2c:	08051c63          	bnez	a0,2cc4 <fatfs_update_file_length+0x124>
    2c30:	00040513          	mv	a0,s0
    2c34:	fffff097          	auipc	ra,0xfffff
    2c38:	b08080e7          	jalr	-1272(ra) # 173c <fatfs_entry_sfn_only>
    2c3c:	08050463          	beqz	a0,2cc4 <fatfs_update_file_length+0x124>
    2c40:	00b00613          	li	a2,11
    2c44:	000b8593          	mv	a1,s7
    2c48:	00040513          	mv	a0,s0
    2c4c:	ffffe097          	auipc	ra,0xffffe
    2c50:	e60080e7          	jalr	-416(ra) # aac <strncmp>
    2c54:	06051863          	bnez	a0,2cc4 <fatfs_update_file_length+0x124>
    2c58:	00895793          	srli	a5,s2,0x8
    2c5c:	01240e23          	sb	s2,28(s0)
    2c60:	00f40ea3          	sb	a5,29(s0)
    2c64:	01095793          	srli	a5,s2,0x10
    2c68:	01895913          	srli	s2,s2,0x18
    2c6c:	00f40f23          	sb	a5,30(s0)
    2c70:	01240fa3          	sb	s2,31(s0)
    2c74:	00040593          	mv	a1,s0
    2c78:	02000613          	li	a2,32
    2c7c:	00040513          	mv	a0,s0
    2c80:	ffffe097          	auipc	ra,0xffffe
    2c84:	de8080e7          	jalr	-536(ra) # a68 <memcpy>
    2c88:	02812403          	lw	s0,40(sp)
    2c8c:	0384a783          	lw	a5,56(s1)
    2c90:	2444a503          	lw	a0,580(s1)
    2c94:	02c12083          	lw	ra,44(sp)
    2c98:	02412483          	lw	s1,36(sp)
    2c9c:	02012903          	lw	s2,32(sp)
    2ca0:	01c12983          	lw	s3,28(sp)
    2ca4:	01812a03          	lw	s4,24(sp)
    2ca8:	01012b03          	lw	s6,16(sp)
    2cac:	00c12b83          	lw	s7,12(sp)
    2cb0:	000a8593          	mv	a1,s5
    2cb4:	01412a83          	lw	s5,20(sp)
    2cb8:	00100613          	li	a2,1
    2cbc:	03010113          	addi	sp,sp,48
    2cc0:	00078067          	jr	a5
    2cc4:	02040413          	addi	s0,s0,32
    2cc8:	f54414e3          	bne	s0,s4,2c10 <fatfs_update_file_length+0x70>
    2ccc:	f1dff06f          	j	2be8 <fatfs_update_file_length+0x48>
    2cd0:	02c12083          	lw	ra,44(sp)
    2cd4:	02812403          	lw	s0,40(sp)
    2cd8:	02412483          	lw	s1,36(sp)
    2cdc:	02012903          	lw	s2,32(sp)
    2ce0:	01c12983          	lw	s3,28(sp)
    2ce4:	01812a03          	lw	s4,24(sp)
    2ce8:	01412a83          	lw	s5,20(sp)
    2cec:	01012b03          	lw	s6,16(sp)
    2cf0:	00c12b83          	lw	s7,12(sp)
    2cf4:	00000513          	li	a0,0
    2cf8:	03010113          	addi	sp,sp,48
    2cfc:	00008067          	ret
    2d00:	00000513          	li	a0,0
    2d04:	00008067          	ret

00002d08 <_read_sectors>:
    2d08:	fd010113          	addi	sp,sp,-48
    2d0c:	01512a23          	sw	s5,20(sp)
    2d10:	00004ab7          	lui	s5,0x4
    2d14:	01312e23          	sw	s3,28(sp)
    2d18:	528ac983          	lbu	s3,1320(s5) # 4528 <_fs>
    2d1c:	01612823          	sw	s6,16(sp)
    2d20:	00058b13          	mv	s6,a1
    2d24:	02912223          	sw	s1,36(sp)
    2d28:	00098593          	mv	a1,s3
    2d2c:	00050493          	mv	s1,a0
    2d30:	000b0513          	mv	a0,s6
    2d34:	02112623          	sw	ra,44(sp)
    2d38:	02812423          	sw	s0,40(sp)
    2d3c:	01412c23          	sw	s4,24(sp)
    2d40:	00068413          	mv	s0,a3
    2d44:	01712623          	sw	s7,12(sp)
    2d48:	01812423          	sw	s8,8(sp)
    2d4c:	03212023          	sw	s2,32(sp)
    2d50:	00060c13          	mv	s8,a2
    2d54:	ffffe097          	auipc	ra,0xffffe
    2d58:	c4c080e7          	jalr	-948(ra) # 9a0 <__udivsi3>
    2d5c:	00050a13          	mv	s4,a0
    2d60:	00098593          	mv	a1,s3
    2d64:	000b0513          	mv	a0,s6
    2d68:	ffffe097          	auipc	ra,0xffffe
    2d6c:	c80080e7          	jalr	-896(ra) # 9e8 <__umodsi3>
    2d70:	00a407b3          	add	a5,s0,a0
    2d74:	00050b93          	mv	s7,a0
    2d78:	00f9fe63          	bgeu	s3,a5,2d94 <_read_sectors+0x8c>
    2d7c:	000a0593          	mv	a1,s4
    2d80:	00098513          	mv	a0,s3
    2d84:	ffffe097          	auipc	ra,0xffffe
    2d88:	31c080e7          	jalr	796(ra) # 10a0 <__mulsi3>
    2d8c:	416987b3          	sub	a5,s3,s6
    2d90:	00f50433          	add	s0,a0,a5
    2d94:	2284a903          	lw	s2,552(s1)
    2d98:	07491863          	bne	s2,s4,2e08 <_read_sectors+0x100>
    2d9c:	22c4a583          	lw	a1,556(s1)
    2da0:	fff00793          	li	a5,-1
    2da4:	02f58663          	beq	a1,a5,2dd0 <_read_sectors+0xc8>
    2da8:	528a8513          	addi	a0,s5,1320
    2dac:	ffffe097          	auipc	ra,0xffffe
    2db0:	658080e7          	jalr	1624(ra) # 1404 <fatfs_lba_of_cluster>
    2db4:	017505b3          	add	a1,a0,s7
    2db8:	00040693          	mv	a3,s0
    2dbc:	000c0613          	mv	a2,s8
    2dc0:	528a8513          	addi	a0,s5,1320
    2dc4:	ffffe097          	auipc	ra,0xffffe
    2dc8:	68c080e7          	jalr	1676(ra) # 1450 <fatfs_sector_read>
    2dcc:	00051463          	bnez	a0,2dd4 <_read_sectors+0xcc>
    2dd0:	00000413          	li	s0,0
    2dd4:	02c12083          	lw	ra,44(sp)
    2dd8:	00040513          	mv	a0,s0
    2ddc:	02812403          	lw	s0,40(sp)
    2de0:	02412483          	lw	s1,36(sp)
    2de4:	02012903          	lw	s2,32(sp)
    2de8:	01c12983          	lw	s3,28(sp)
    2dec:	01812a03          	lw	s4,24(sp)
    2df0:	01412a83          	lw	s5,20(sp)
    2df4:	01012b03          	lw	s6,16(sp)
    2df8:	00c12b83          	lw	s7,12(sp)
    2dfc:	00812c03          	lw	s8,8(sp)
    2e00:	03010113          	addi	sp,sp,48
    2e04:	00008067          	ret
    2e08:	033b6463          	bltu	s6,s3,2e30 <_read_sectors+0x128>
    2e0c:	00190793          	addi	a5,s2,1
    2e10:	03479063          	bne	a5,s4,2e30 <_read_sectors+0x128>
    2e14:	22c4a583          	lw	a1,556(s1)
    2e18:	03496263          	bltu	s2,s4,2e3c <_read_sectors+0x134>
    2e1c:	fff00793          	li	a5,-1
    2e20:	faf588e3          	beq	a1,a5,2dd0 <_read_sectors+0xc8>
    2e24:	22b4a623          	sw	a1,556(s1)
    2e28:	2344a423          	sw	s4,552(s1)
    2e2c:	f7dff06f          	j	2da8 <_read_sectors+0xa0>
    2e30:	0044a583          	lw	a1,4(s1)
    2e34:	00000913          	li	s2,0
    2e38:	fe1ff06f          	j	2e18 <_read_sectors+0x110>
    2e3c:	528a8513          	addi	a0,s5,1320
    2e40:	fffff097          	auipc	ra,0xfffff
    2e44:	5d0080e7          	jalr	1488(ra) # 2410 <fatfs_find_next_cluster>
    2e48:	00050593          	mv	a1,a0
    2e4c:	00190913          	addi	s2,s2,1
    2e50:	fc9ff06f          	j	2e18 <_read_sectors+0x110>

00002e54 <fatfs_set_fs_info_next_free_cluster>:
    2e54:	03052783          	lw	a5,48(a0)
    2e58:	0a078463          	beqz	a5,2f00 <fatfs_set_fs_info_next_free_cluster+0xac>
    2e5c:	fe010113          	addi	sp,sp,-32
    2e60:	01c52783          	lw	a5,28(a0)
    2e64:	00912a23          	sw	s1,20(sp)
    2e68:	00058493          	mv	s1,a1
    2e6c:	01855583          	lhu	a1,24(a0)
    2e70:	00812c23          	sw	s0,24(sp)
    2e74:	00112e23          	sw	ra,28(sp)
    2e78:	00f585b3          	add	a1,a1,a5
    2e7c:	00050413          	mv	s0,a0
    2e80:	ffffe097          	auipc	ra,0xffffe
    2e84:	3d8080e7          	jalr	984(ra) # 1258 <fatfs_fat_read_sector>
    2e88:	00050593          	mv	a1,a0
    2e8c:	06050063          	beqz	a0,2eec <fatfs_set_fs_info_next_free_cluster+0x98>
    2e90:	20852783          	lw	a5,520(a0)
    2e94:	0084d713          	srli	a4,s1,0x8
    2e98:	00100613          	li	a2,1
    2e9c:	1e978623          	sb	s1,492(a5)
    2ea0:	20852783          	lw	a5,520(a0)
    2ea4:	1ee786a3          	sb	a4,493(a5)
    2ea8:	20852783          	lw	a5,520(a0)
    2eac:	0104d713          	srli	a4,s1,0x10
    2eb0:	1ee78723          	sb	a4,494(a5)
    2eb4:	20852783          	lw	a5,520(a0)
    2eb8:	0184d713          	srli	a4,s1,0x18
    2ebc:	1ee787a3          	sb	a4,495(a5)
    2ec0:	03842783          	lw	a5,56(s0)
    2ec4:	20c52223          	sw	a2,516(a0)
    2ec8:	02942223          	sw	s1,36(s0)
    2ecc:	00078a63          	beqz	a5,2ee0 <fatfs_set_fs_info_next_free_cluster+0x8c>
    2ed0:	20052503          	lw	a0,512(a0)
    2ed4:	00b12623          	sw	a1,12(sp)
    2ed8:	000780e7          	jalr	a5
    2edc:	00c12583          	lw	a1,12(sp)
    2ee0:	fff00793          	li	a5,-1
    2ee4:	20f5a023          	sw	a5,512(a1)
    2ee8:	2005a223          	sw	zero,516(a1)
    2eec:	01c12083          	lw	ra,28(sp)
    2ef0:	01812403          	lw	s0,24(sp)
    2ef4:	01412483          	lw	s1,20(sp)
    2ef8:	02010113          	addi	sp,sp,32
    2efc:	00008067          	ret
    2f00:	00008067          	ret

00002f04 <fatfs_find_blank_cluster>:
    2f04:	fd010113          	addi	sp,sp,-48
    2f08:	01312e23          	sw	s3,28(sp)
    2f0c:	100009b7          	lui	s3,0x10000
    2f10:	02912223          	sw	s1,36(sp)
    2f14:	03212023          	sw	s2,32(sp)
    2f18:	02112623          	sw	ra,44(sp)
    2f1c:	02812423          	sw	s0,40(sp)
    2f20:	00050913          	mv	s2,a0
    2f24:	00058493          	mv	s1,a1
    2f28:	fff98993          	addi	s3,s3,-1 # fffffff <__stacktop+0xffeffff>
    2f2c:	03092783          	lw	a5,48(s2)
    2f30:	0074d413          	srli	s0,s1,0x7
    2f34:	00079463          	bnez	a5,2f3c <fatfs_find_blank_cluster+0x38>
    2f38:	0084d413          	srli	s0,s1,0x8
    2f3c:	02092783          	lw	a5,32(s2)
    2f40:	0cf47863          	bgeu	s0,a5,3010 <fatfs_find_blank_cluster+0x10c>
    2f44:	01492583          	lw	a1,20(s2)
    2f48:	00090513          	mv	a0,s2
    2f4c:	00c12623          	sw	a2,12(sp)
    2f50:	00b405b3          	add	a1,s0,a1
    2f54:	ffffe097          	auipc	ra,0xffffe
    2f58:	304080e7          	jalr	772(ra) # 1258 <fatfs_fat_read_sector>
    2f5c:	0a050a63          	beqz	a0,3010 <fatfs_find_blank_cluster+0x10c>
    2f60:	03092783          	lw	a5,48(s2)
    2f64:	20852703          	lw	a4,520(a0)
    2f68:	00c12603          	lw	a2,12(sp)
    2f6c:	04079a63          	bnez	a5,2fc0 <fatfs_find_blank_cluster+0xbc>
    2f70:	00841413          	slli	s0,s0,0x8
    2f74:	40848433          	sub	s0,s1,s0
    2f78:	00141413          	slli	s0,s0,0x1
    2f7c:	01041413          	slli	s0,s0,0x10
    2f80:	01045413          	srli	s0,s0,0x10
    2f84:	00870733          	add	a4,a4,s0
    2f88:	00174783          	lbu	a5,1(a4)
    2f8c:	00074703          	lbu	a4,0(a4)
    2f90:	00879793          	slli	a5,a5,0x8
    2f94:	00e787b3          	add	a5,a5,a4
    2f98:	06079863          	bnez	a5,3008 <fatfs_find_blank_cluster+0x104>
    2f9c:	00962023          	sw	s1,0(a2)
    2fa0:	00100513          	li	a0,1
    2fa4:	02c12083          	lw	ra,44(sp)
    2fa8:	02812403          	lw	s0,40(sp)
    2fac:	02412483          	lw	s1,36(sp)
    2fb0:	02012903          	lw	s2,32(sp)
    2fb4:	01c12983          	lw	s3,28(sp)
    2fb8:	03010113          	addi	sp,sp,48
    2fbc:	00008067          	ret
    2fc0:	00741413          	slli	s0,s0,0x7
    2fc4:	40848433          	sub	s0,s1,s0
    2fc8:	00241413          	slli	s0,s0,0x2
    2fcc:	01041413          	slli	s0,s0,0x10
    2fd0:	01045413          	srli	s0,s0,0x10
    2fd4:	00870733          	add	a4,a4,s0
    2fd8:	00374783          	lbu	a5,3(a4)
    2fdc:	00274683          	lbu	a3,2(a4)
    2fe0:	01879793          	slli	a5,a5,0x18
    2fe4:	01069693          	slli	a3,a3,0x10
    2fe8:	00d787b3          	add	a5,a5,a3
    2fec:	00074683          	lbu	a3,0(a4)
    2ff0:	00174703          	lbu	a4,1(a4)
    2ff4:	00d787b3          	add	a5,a5,a3
    2ff8:	00871713          	slli	a4,a4,0x8
    2ffc:	00e787b3          	add	a5,a5,a4
    3000:	0137f7b3          	and	a5,a5,s3
    3004:	f95ff06f          	j	2f98 <fatfs_find_blank_cluster+0x94>
    3008:	00148493          	addi	s1,s1,1
    300c:	f21ff06f          	j	2f2c <fatfs_find_blank_cluster+0x28>
    3010:	00000513          	li	a0,0
    3014:	f91ff06f          	j	2fa4 <fatfs_find_blank_cluster+0xa0>

00003018 <fatfs_fat_set_cluster>:
    3018:	03052783          	lw	a5,48(a0)
    301c:	fe010113          	addi	sp,sp,-32
    3020:	00812c23          	sw	s0,24(sp)
    3024:	00912a23          	sw	s1,20(sp)
    3028:	01212823          	sw	s2,16(sp)
    302c:	00112e23          	sw	ra,28(sp)
    3030:	00050913          	mv	s2,a0
    3034:	00058413          	mv	s0,a1
    3038:	0085d493          	srli	s1,a1,0x8
    303c:	00078463          	beqz	a5,3044 <fatfs_fat_set_cluster+0x2c>
    3040:	0075d493          	srli	s1,a1,0x7
    3044:	01492583          	lw	a1,20(s2)
    3048:	00090513          	mv	a0,s2
    304c:	00c12623          	sw	a2,12(sp)
    3050:	00b485b3          	add	a1,s1,a1
    3054:	ffffe097          	auipc	ra,0xffffe
    3058:	204080e7          	jalr	516(ra) # 1258 <fatfs_fat_read_sector>
    305c:	00050793          	mv	a5,a0
    3060:	00000513          	li	a0,0
    3064:	04078663          	beqz	a5,30b0 <fatfs_fat_set_cluster+0x98>
    3068:	03092683          	lw	a3,48(s2)
    306c:	2087a703          	lw	a4,520(a5)
    3070:	00c12603          	lw	a2,12(sp)
    3074:	04069a63          	bnez	a3,30c8 <fatfs_fat_set_cluster+0xb0>
    3078:	00849493          	slli	s1,s1,0x8
    307c:	40940433          	sub	s0,s0,s1
    3080:	00141413          	slli	s0,s0,0x1
    3084:	01041413          	slli	s0,s0,0x10
    3088:	01045413          	srli	s0,s0,0x10
    308c:	00870733          	add	a4,a4,s0
    3090:	00c70023          	sb	a2,0(a4)
    3094:	2087a703          	lw	a4,520(a5)
    3098:	00865613          	srli	a2,a2,0x8
    309c:	00870733          	add	a4,a4,s0
    30a0:	00c700a3          	sb	a2,1(a4)
    30a4:	00100713          	li	a4,1
    30a8:	20e7a223          	sw	a4,516(a5)
    30ac:	00100513          	li	a0,1
    30b0:	01c12083          	lw	ra,28(sp)
    30b4:	01812403          	lw	s0,24(sp)
    30b8:	01412483          	lw	s1,20(sp)
    30bc:	01012903          	lw	s2,16(sp)
    30c0:	02010113          	addi	sp,sp,32
    30c4:	00008067          	ret
    30c8:	00749493          	slli	s1,s1,0x7
    30cc:	40940433          	sub	s0,s0,s1
    30d0:	00241413          	slli	s0,s0,0x2
    30d4:	01041413          	slli	s0,s0,0x10
    30d8:	01045413          	srli	s0,s0,0x10
    30dc:	00870733          	add	a4,a4,s0
    30e0:	00c70023          	sb	a2,0(a4)
    30e4:	2087a703          	lw	a4,520(a5)
    30e8:	00865693          	srli	a3,a2,0x8
    30ec:	00870733          	add	a4,a4,s0
    30f0:	00d700a3          	sb	a3,1(a4)
    30f4:	2087a703          	lw	a4,520(a5)
    30f8:	01065693          	srli	a3,a2,0x10
    30fc:	01865613          	srli	a2,a2,0x18
    3100:	00870733          	add	a4,a4,s0
    3104:	00d70123          	sb	a3,2(a4)
    3108:	2087a703          	lw	a4,520(a5)
    310c:	00870733          	add	a4,a4,s0
    3110:	00c701a3          	sb	a2,3(a4)
    3114:	f91ff06f          	j	30a4 <fatfs_fat_set_cluster+0x8c>

00003118 <fatfs_free_cluster_chain>:
    3118:	fe010113          	addi	sp,sp,-32
    311c:	00812c23          	sw	s0,24(sp)
    3120:	00912a23          	sw	s1,20(sp)
    3124:	00112e23          	sw	ra,28(sp)
    3128:	01212823          	sw	s2,16(sp)
    312c:	00050493          	mv	s1,a0
    3130:	ffd00413          	li	s0,-3
    3134:	fff58793          	addi	a5,a1,-1
    3138:	02f47063          	bgeu	s0,a5,3158 <fatfs_free_cluster_chain+0x40>
    313c:	01c12083          	lw	ra,28(sp)
    3140:	01812403          	lw	s0,24(sp)
    3144:	01412483          	lw	s1,20(sp)
    3148:	01012903          	lw	s2,16(sp)
    314c:	00100513          	li	a0,1
    3150:	02010113          	addi	sp,sp,32
    3154:	00008067          	ret
    3158:	00048513          	mv	a0,s1
    315c:	00b12623          	sw	a1,12(sp)
    3160:	fffff097          	auipc	ra,0xfffff
    3164:	2b0080e7          	jalr	688(ra) # 2410 <fatfs_find_next_cluster>
    3168:	00c12583          	lw	a1,12(sp)
    316c:	00050913          	mv	s2,a0
    3170:	00000613          	li	a2,0
    3174:	00048513          	mv	a0,s1
    3178:	00000097          	auipc	ra,0x0
    317c:	ea0080e7          	jalr	-352(ra) # 3018 <fatfs_fat_set_cluster>
    3180:	00090593          	mv	a1,s2
    3184:	fb1ff06f          	j	3134 <fatfs_free_cluster_chain+0x1c>

00003188 <fatfs_fat_add_cluster_to_chain>:
    3188:	fd010113          	addi	sp,sp,-48
    318c:	02912223          	sw	s1,36(sp)
    3190:	02112623          	sw	ra,44(sp)
    3194:	02812423          	sw	s0,40(sp)
    3198:	03212023          	sw	s2,32(sp)
    319c:	01312e23          	sw	s3,28(sp)
    31a0:	fff00493          	li	s1,-1
    31a4:	02959263          	bne	a1,s1,31c8 <fatfs_fat_add_cluster_to_chain+0x40>
    31a8:	00000513          	li	a0,0
    31ac:	02c12083          	lw	ra,44(sp)
    31b0:	02812403          	lw	s0,40(sp)
    31b4:	02412483          	lw	s1,36(sp)
    31b8:	02012903          	lw	s2,32(sp)
    31bc:	01c12983          	lw	s3,28(sp)
    31c0:	03010113          	addi	sp,sp,48
    31c4:	00008067          	ret
    31c8:	00050913          	mv	s2,a0
    31cc:	00058413          	mv	s0,a1
    31d0:	00060993          	mv	s3,a2
    31d4:	00040593          	mv	a1,s0
    31d8:	00090513          	mv	a0,s2
    31dc:	00812623          	sw	s0,12(sp)
    31e0:	fffff097          	auipc	ra,0xfffff
    31e4:	230080e7          	jalr	560(ra) # 2410 <fatfs_find_next_cluster>
    31e8:	00050413          	mv	s0,a0
    31ec:	fa050ee3          	beqz	a0,31a8 <fatfs_fat_add_cluster_to_chain+0x20>
    31f0:	00c12583          	lw	a1,12(sp)
    31f4:	fe9510e3          	bne	a0,s1,31d4 <fatfs_fat_add_cluster_to_chain+0x4c>
    31f8:	00098613          	mv	a2,s3
    31fc:	00090513          	mv	a0,s2
    3200:	00000097          	auipc	ra,0x0
    3204:	e18080e7          	jalr	-488(ra) # 3018 <fatfs_fat_set_cluster>
    3208:	00040613          	mv	a2,s0
    320c:	00098593          	mv	a1,s3
    3210:	00090513          	mv	a0,s2
    3214:	00000097          	auipc	ra,0x0
    3218:	e04080e7          	jalr	-508(ra) # 3018 <fatfs_fat_set_cluster>
    321c:	00100513          	li	a0,1
    3220:	f8dff06f          	j	31ac <fatfs_fat_add_cluster_to_chain+0x24>

00003224 <fatfs_add_free_space>:
    3224:	02452783          	lw	a5,36(a0)
    3228:	fd010113          	addi	sp,sp,-48
    322c:	02812423          	sw	s0,40(sp)
    3230:	01312e23          	sw	s3,28(sp)
    3234:	01412c23          	sw	s4,24(sp)
    3238:	0005a983          	lw	s3,0(a1)
    323c:	01512a23          	sw	s5,20(sp)
    3240:	00058a13          	mv	s4,a1
    3244:	02112623          	sw	ra,44(sp)
    3248:	02912223          	sw	s1,36(sp)
    324c:	03212023          	sw	s2,32(sp)
    3250:	fff00593          	li	a1,-1
    3254:	00050413          	mv	s0,a0
    3258:	00060a93          	mv	s5,a2
    325c:	00b78663          	beq	a5,a1,3268 <fatfs_add_free_space+0x44>
    3260:	00000097          	auipc	ra,0x0
    3264:	bf4080e7          	jalr	-1036(ra) # 2e54 <fatfs_set_fs_info_next_free_cluster>
    3268:	00000493          	li	s1,0
    326c:	03549663          	bne	s1,s5,3298 <fatfs_add_free_space+0x74>
    3270:	00100513          	li	a0,1
    3274:	02c12083          	lw	ra,44(sp)
    3278:	02812403          	lw	s0,40(sp)
    327c:	02412483          	lw	s1,36(sp)
    3280:	02012903          	lw	s2,32(sp)
    3284:	01c12983          	lw	s3,28(sp)
    3288:	01812a03          	lw	s4,24(sp)
    328c:	01412a83          	lw	s5,20(sp)
    3290:	03010113          	addi	sp,sp,48
    3294:	00008067          	ret
    3298:	00842583          	lw	a1,8(s0)
    329c:	00c10613          	addi	a2,sp,12
    32a0:	00040513          	mv	a0,s0
    32a4:	00000097          	auipc	ra,0x0
    32a8:	c60080e7          	jalr	-928(ra) # 2f04 <fatfs_find_blank_cluster>
    32ac:	fc0504e3          	beqz	a0,3274 <fatfs_add_free_space+0x50>
    32b0:	00c12903          	lw	s2,12(sp)
    32b4:	00098593          	mv	a1,s3
    32b8:	00040513          	mv	a0,s0
    32bc:	00090613          	mv	a2,s2
    32c0:	00000097          	auipc	ra,0x0
    32c4:	d58080e7          	jalr	-680(ra) # 3018 <fatfs_fat_set_cluster>
    32c8:	fff00613          	li	a2,-1
    32cc:	00090593          	mv	a1,s2
    32d0:	00040513          	mv	a0,s0
    32d4:	00000097          	auipc	ra,0x0
    32d8:	d44080e7          	jalr	-700(ra) # 3018 <fatfs_fat_set_cluster>
    32dc:	00049463          	bnez	s1,32e4 <fatfs_add_free_space+0xc0>
    32e0:	012a2023          	sw	s2,0(s4)
    32e4:	00148493          	addi	s1,s1,1
    32e8:	00090993          	mv	s3,s2
    32ec:	f81ff06f          	j	326c <fatfs_add_free_space+0x48>

000032f0 <_write_sectors>:
    32f0:	fb010113          	addi	sp,sp,-80
    32f4:	03512a23          	sw	s5,52(sp)
    32f8:	00004ab7          	lui	s5,0x4
    32fc:	04112623          	sw	ra,76(sp)
    3300:	04812423          	sw	s0,72(sp)
    3304:	04912223          	sw	s1,68(sp)
    3308:	03412c23          	sw	s4,56(sp)
    330c:	03612823          	sw	s6,48(sp)
    3310:	03712623          	sw	s7,44(sp)
    3314:	03812423          	sw	s8,40(sp)
    3318:	03912223          	sw	s9,36(sp)
    331c:	03a12023          	sw	s10,32(sp)
    3320:	05212023          	sw	s2,64(sp)
    3324:	03312e23          	sw	s3,60(sp)
    3328:	528a8b93          	addi	s7,s5,1320 # 4528 <_fs>
    332c:	000bc983          	lbu	s3,0(s7)
    3330:	00058b13          	mv	s6,a1
    3334:	fff00793          	li	a5,-1
    3338:	00098593          	mv	a1,s3
    333c:	00050493          	mv	s1,a0
    3340:	000b0513          	mv	a0,s6
    3344:	00068c13          	mv	s8,a3
    3348:	00f12e23          	sw	a5,28(sp)
    334c:	00060d13          	mv	s10,a2
    3350:	ffffd097          	auipc	ra,0xffffd
    3354:	650080e7          	jalr	1616(ra) # 9a0 <__udivsi3>
    3358:	00050a13          	mv	s4,a0
    335c:	00098593          	mv	a1,s3
    3360:	000b0513          	mv	a0,s6
    3364:	ffffd097          	auipc	ra,0xffffd
    3368:	684080e7          	jalr	1668(ra) # 9e8 <__umodsi3>
    336c:	00ac07b3          	add	a5,s8,a0
    3370:	00050c93          	mv	s9,a0
    3374:	000c0413          	mv	s0,s8
    3378:	00f9fe63          	bgeu	s3,a5,3394 <_write_sectors+0xa4>
    337c:	000a0593          	mv	a1,s4
    3380:	00098513          	mv	a0,s3
    3384:	ffffe097          	auipc	ra,0xffffe
    3388:	d1c080e7          	jalr	-740(ra) # 10a0 <__mulsi3>
    338c:	416987b3          	sub	a5,s3,s6
    3390:	00f50433          	add	s0,a0,a5
    3394:	2284a903          	lw	s2,552(s1)
    3398:	03491a63          	bne	s2,s4,33cc <_write_sectors+0xdc>
    339c:	22c4a583          	lw	a1,556(s1)
    33a0:	528a8513          	addi	a0,s5,1320
    33a4:	ffffe097          	auipc	ra,0xffffe
    33a8:	060080e7          	jalr	96(ra) # 1404 <fatfs_lba_of_cluster>
    33ac:	019505b3          	add	a1,a0,s9
    33b0:	00040693          	mv	a3,s0
    33b4:	000d0613          	mv	a2,s10
    33b8:	528a8513          	addi	a0,s5,1320
    33bc:	ffffe097          	auipc	ra,0xffffe
    33c0:	0ac080e7          	jalr	172(ra) # 1468 <fatfs_sector_write>
    33c4:	04050a63          	beqz	a0,3418 <_write_sectors+0x128>
    33c8:	0540006f          	j	341c <_write_sectors+0x12c>
    33cc:	093b6663          	bltu	s6,s3,3458 <_write_sectors+0x168>
    33d0:	00190793          	addi	a5,s2,1
    33d4:	09479263          	bne	a5,s4,3458 <_write_sectors+0x168>
    33d8:	22c4a583          	lw	a1,556(s1)
    33dc:	fff00b13          	li	s6,-1
    33e0:	09496263          	bltu	s2,s4,3464 <_write_sectors+0x174>
    33e4:	fff00793          	li	a5,-1
    33e8:	0af59463          	bne	a1,a5,3490 <_write_sectors+0x1a0>
    33ec:	000bc583          	lbu	a1,0(s7)
    33f0:	fff58513          	addi	a0,a1,-1
    33f4:	01850533          	add	a0,a0,s8
    33f8:	ffffd097          	auipc	ra,0xffffd
    33fc:	5a8080e7          	jalr	1448(ra) # 9a0 <__udivsi3>
    3400:	00050613          	mv	a2,a0
    3404:	01c10593          	addi	a1,sp,28
    3408:	000b8513          	mv	a0,s7
    340c:	00000097          	auipc	ra,0x0
    3410:	e18080e7          	jalr	-488(ra) # 3224 <fatfs_add_free_space>
    3414:	06051c63          	bnez	a0,348c <_write_sectors+0x19c>
    3418:	00000413          	li	s0,0
    341c:	04c12083          	lw	ra,76(sp)
    3420:	00040513          	mv	a0,s0
    3424:	04812403          	lw	s0,72(sp)
    3428:	04412483          	lw	s1,68(sp)
    342c:	04012903          	lw	s2,64(sp)
    3430:	03c12983          	lw	s3,60(sp)
    3434:	03812a03          	lw	s4,56(sp)
    3438:	03412a83          	lw	s5,52(sp)
    343c:	03012b03          	lw	s6,48(sp)
    3440:	02c12b83          	lw	s7,44(sp)
    3444:	02812c03          	lw	s8,40(sp)
    3448:	02412c83          	lw	s9,36(sp)
    344c:	02012d03          	lw	s10,32(sp)
    3450:	05010113          	addi	sp,sp,80
    3454:	00008067          	ret
    3458:	0044a583          	lw	a1,4(s1)
    345c:	00000913          	li	s2,0
    3460:	f7dff06f          	j	33dc <_write_sectors+0xec>
    3464:	528a8513          	addi	a0,s5,1320
    3468:	00b12623          	sw	a1,12(sp)
    346c:	fffff097          	auipc	ra,0xfffff
    3470:	fa4080e7          	jalr	-92(ra) # 2410 <fatfs_find_next_cluster>
    3474:	00c12583          	lw	a1,12(sp)
    3478:	00b12e23          	sw	a1,28(sp)
    347c:	f76508e3          	beq	a0,s6,33ec <_write_sectors+0xfc>
    3480:	00190913          	addi	s2,s2,1
    3484:	00050593          	mv	a1,a0
    3488:	f59ff06f          	j	33e0 <_write_sectors+0xf0>
    348c:	01c12583          	lw	a1,28(sp)
    3490:	22b4a623          	sw	a1,556(s1)
    3494:	2344a423          	sw	s4,552(s1)
    3498:	f09ff06f          	j	33a0 <_write_sectors+0xb0>

0000349c <fl_fflush>:
    349c:	000047b7          	lui	a5,0x4
    34a0:	3247a783          	lw	a5,804(a5) # 4324 <_filelib_init>
    34a4:	ff010113          	addi	sp,sp,-16
    34a8:	00812423          	sw	s0,8(sp)
    34ac:	00112623          	sw	ra,12(sp)
    34b0:	00912223          	sw	s1,4(sp)
    34b4:	00050413          	mv	s0,a0
    34b8:	00079663          	bnez	a5,34c4 <fl_fflush+0x28>
    34bc:	ffffe097          	auipc	ra,0xffffe
    34c0:	078080e7          	jalr	120(ra) # 1534 <fl_init>
    34c4:	04040663          	beqz	s0,3510 <fl_fflush+0x74>
    34c8:	000044b7          	lui	s1,0x4
    34cc:	52848493          	addi	s1,s1,1320 # 4528 <_fs>
    34d0:	03c4a783          	lw	a5,60(s1)
    34d4:	00078463          	beqz	a5,34dc <fl_fflush+0x40>
    34d8:	000780e7          	jalr	a5
    34dc:	43442783          	lw	a5,1076(s0)
    34e0:	02078263          	beqz	a5,3504 <fl_fflush+0x68>
    34e4:	43042583          	lw	a1,1072(s0)
    34e8:	00100693          	li	a3,1
    34ec:	23040613          	addi	a2,s0,560
    34f0:	00040513          	mv	a0,s0
    34f4:	00000097          	auipc	ra,0x0
    34f8:	dfc080e7          	jalr	-516(ra) # 32f0 <_write_sectors>
    34fc:	00050463          	beqz	a0,3504 <fl_fflush+0x68>
    3500:	42042a23          	sw	zero,1076(s0)
    3504:	0404a783          	lw	a5,64(s1)
    3508:	00078463          	beqz	a5,3510 <fl_fflush+0x74>
    350c:	000780e7          	jalr	a5
    3510:	00c12083          	lw	ra,12(sp)
    3514:	00812403          	lw	s0,8(sp)
    3518:	00412483          	lw	s1,4(sp)
    351c:	00000513          	li	a0,0
    3520:	01010113          	addi	sp,sp,16
    3524:	00008067          	ret

00003528 <fl_fclose>:
    3528:	000047b7          	lui	a5,0x4
    352c:	3247a783          	lw	a5,804(a5) # 4324 <_filelib_init>
    3530:	ff010113          	addi	sp,sp,-16
    3534:	00812423          	sw	s0,8(sp)
    3538:	00112623          	sw	ra,12(sp)
    353c:	00912223          	sw	s1,4(sp)
    3540:	01212023          	sw	s2,0(sp)
    3544:	00050413          	mv	s0,a0
    3548:	00079663          	bnez	a5,3554 <fl_fclose+0x2c>
    354c:	ffffe097          	auipc	ra,0xffffe
    3550:	fe8080e7          	jalr	-24(ra) # 1534 <fl_init>
    3554:	08040c63          	beqz	s0,35ec <fl_fclose+0xc4>
    3558:	000044b7          	lui	s1,0x4
    355c:	52848913          	addi	s2,s1,1320 # 4528 <_fs>
    3560:	03c92783          	lw	a5,60(s2)
    3564:	00078463          	beqz	a5,356c <fl_fclose+0x44>
    3568:	000780e7          	jalr	a5
    356c:	00040513          	mv	a0,s0
    3570:	00000097          	auipc	ra,0x0
    3574:	f2c080e7          	jalr	-212(ra) # 349c <fl_fflush>
    3578:	01042783          	lw	a5,16(s0)
    357c:	00078e63          	beqz	a5,3598 <fl_fclose+0x70>
    3580:	00c42683          	lw	a3,12(s0)
    3584:	00042583          	lw	a1,0(s0)
    3588:	21c40613          	addi	a2,s0,540
    358c:	52848513          	addi	a0,s1,1320
    3590:	fffff097          	auipc	ra,0xfffff
    3594:	610080e7          	jalr	1552(ra) # 2ba0 <fatfs_update_file_length>
    3598:	fff00793          	li	a5,-1
    359c:	42f42823          	sw	a5,1072(s0)
    35a0:	00040513          	mv	a0,s0
    35a4:	00042423          	sw	zero,8(s0)
    35a8:	00042623          	sw	zero,12(s0)
    35ac:	00042223          	sw	zero,4(s0)
    35b0:	42042a23          	sw	zero,1076(s0)
    35b4:	00042823          	sw	zero,16(s0)
    35b8:	ffffe097          	auipc	ra,0xffffe
    35bc:	e04080e7          	jalr	-508(ra) # 13bc <_free_file>
    35c0:	52848513          	addi	a0,s1,1320
    35c4:	fffff097          	auipc	ra,0xfffff
    35c8:	df4080e7          	jalr	-524(ra) # 23b8 <fatfs_fat_purge>
    35cc:	04092783          	lw	a5,64(s2)
    35d0:	00078e63          	beqz	a5,35ec <fl_fclose+0xc4>
    35d4:	00812403          	lw	s0,8(sp)
    35d8:	00c12083          	lw	ra,12(sp)
    35dc:	00412483          	lw	s1,4(sp)
    35e0:	00012903          	lw	s2,0(sp)
    35e4:	01010113          	addi	sp,sp,16
    35e8:	00078067          	jr	a5
    35ec:	00c12083          	lw	ra,12(sp)
    35f0:	00812403          	lw	s0,8(sp)
    35f4:	00412483          	lw	s1,4(sp)
    35f8:	00012903          	lw	s2,0(sp)
    35fc:	01010113          	addi	sp,sp,16
    3600:	00008067          	ret

00003604 <fl_fread>:
    3604:	000047b7          	lui	a5,0x4
    3608:	3247a783          	lw	a5,804(a5) # 4324 <_filelib_init>
    360c:	fc010113          	addi	sp,sp,-64
    3610:	02812c23          	sw	s0,56(sp)
    3614:	03512223          	sw	s5,36(sp)
    3618:	02112e23          	sw	ra,60(sp)
    361c:	02912a23          	sw	s1,52(sp)
    3620:	03212823          	sw	s2,48(sp)
    3624:	03312623          	sw	s3,44(sp)
    3628:	03412423          	sw	s4,40(sp)
    362c:	03612023          	sw	s6,32(sp)
    3630:	01712e23          	sw	s7,28(sp)
    3634:	01812c23          	sw	s8,24(sp)
    3638:	01912a23          	sw	s9,20(sp)
    363c:	00050a93          	mv	s5,a0
    3640:	00068413          	mv	s0,a3
    3644:	00058513          	mv	a0,a1
    3648:	00079e63          	bnez	a5,3664 <fl_fread+0x60>
    364c:	00c12623          	sw	a2,12(sp)
    3650:	00b12423          	sw	a1,8(sp)
    3654:	ffffe097          	auipc	ra,0xffffe
    3658:	ee0080e7          	jalr	-288(ra) # 1534 <fl_init>
    365c:	00c12603          	lw	a2,12(sp)
    3660:	00812503          	lw	a0,8(sp)
    3664:	14040e63          	beqz	s0,37c0 <fl_fread+0x1bc>
    3668:	140a8c63          	beqz	s5,37c0 <fl_fread+0x1bc>
    366c:	43844783          	lbu	a5,1080(s0)
    3670:	fff00493          	li	s1,-1
    3674:	0017f793          	andi	a5,a5,1
    3678:	04078863          	beqz	a5,36c8 <fl_fread+0xc4>
    367c:	00060593          	mv	a1,a2
    3680:	ffffe097          	auipc	ra,0xffffe
    3684:	a20080e7          	jalr	-1504(ra) # 10a0 <__mulsi3>
    3688:	00050493          	mv	s1,a0
    368c:	02050e63          	beqz	a0,36c8 <fl_fread+0xc4>
    3690:	00842583          	lw	a1,8(s0)
    3694:	00c42783          	lw	a5,12(s0)
    3698:	12f5f463          	bgeu	a1,a5,37c0 <fl_fread+0x1bc>
    369c:	00b50733          	add	a4,a0,a1
    36a0:	00e7f463          	bgeu	a5,a4,36a8 <fl_fread+0xa4>
    36a4:	40b784b3          	sub	s1,a5,a1
    36a8:	0095da13          	srli	s4,a1,0x9
    36ac:	1ff5f913          	andi	s2,a1,511
    36b0:	00000993          	li	s3,0
    36b4:	23040b13          	addi	s6,s0,560
    36b8:	20000b93          	li	s7,512
    36bc:	1ff00c13          	li	s8,511
    36c0:	0499c063          	blt	s3,s1,3700 <fl_fread+0xfc>
    36c4:	00098493          	mv	s1,s3
    36c8:	03c12083          	lw	ra,60(sp)
    36cc:	03812403          	lw	s0,56(sp)
    36d0:	03012903          	lw	s2,48(sp)
    36d4:	02c12983          	lw	s3,44(sp)
    36d8:	02812a03          	lw	s4,40(sp)
    36dc:	02412a83          	lw	s5,36(sp)
    36e0:	02012b03          	lw	s6,32(sp)
    36e4:	01c12b83          	lw	s7,28(sp)
    36e8:	01812c03          	lw	s8,24(sp)
    36ec:	01412c83          	lw	s9,20(sp)
    36f0:	00048513          	mv	a0,s1
    36f4:	03412483          	lw	s1,52(sp)
    36f8:	04010113          	addi	sp,sp,64
    36fc:	00008067          	ret
    3700:	04091663          	bnez	s2,374c <fl_fread+0x148>
    3704:	413486b3          	sub	a3,s1,s3
    3708:	04dc5263          	bge	s8,a3,374c <fl_fread+0x148>
    370c:	4096d693          	srai	a3,a3,0x9
    3710:	013a8633          	add	a2,s5,s3
    3714:	000a0593          	mv	a1,s4
    3718:	00040513          	mv	a0,s0
    371c:	fffff097          	auipc	ra,0xfffff
    3720:	5ec080e7          	jalr	1516(ra) # 2d08 <_read_sectors>
    3724:	fa0500e3          	beqz	a0,36c4 <fl_fread+0xc0>
    3728:	00951c93          	slli	s9,a0,0x9
    372c:	000c8613          	mv	a2,s9
    3730:	00aa0a33          	add	s4,s4,a0
    3734:	00842783          	lw	a5,8(s0)
    3738:	00c989b3          	add	s3,s3,a2
    373c:	00000913          	li	s2,0
    3740:	019787b3          	add	a5,a5,s9
    3744:	00f42423          	sw	a5,8(s0)
    3748:	f79ff06f          	j	36c0 <fl_fread+0xbc>
    374c:	43042783          	lw	a5,1072(s0)
    3750:	03478e63          	beq	a5,s4,378c <fl_fread+0x188>
    3754:	43442783          	lw	a5,1076(s0)
    3758:	00078863          	beqz	a5,3768 <fl_fread+0x164>
    375c:	00040513          	mv	a0,s0
    3760:	00000097          	auipc	ra,0x0
    3764:	d3c080e7          	jalr	-708(ra) # 349c <fl_fflush>
    3768:	00100693          	li	a3,1
    376c:	000b0613          	mv	a2,s6
    3770:	000a0593          	mv	a1,s4
    3774:	00040513          	mv	a0,s0
    3778:	fffff097          	auipc	ra,0xfffff
    377c:	590080e7          	jalr	1424(ra) # 2d08 <_read_sectors>
    3780:	f40502e3          	beqz	a0,36c4 <fl_fread+0xc0>
    3784:	43442823          	sw	s4,1072(s0)
    3788:	42042a23          	sw	zero,1076(s0)
    378c:	412b87b3          	sub	a5,s7,s2
    3790:	41348633          	sub	a2,s1,s3
    3794:	00c7d463          	bge	a5,a2,379c <fl_fread+0x198>
    3798:	00078613          	mv	a2,a5
    379c:	012b05b3          	add	a1,s6,s2
    37a0:	013a8533          	add	a0,s5,s3
    37a4:	00060c93          	mv	s9,a2
    37a8:	00c12423          	sw	a2,8(sp)
    37ac:	ffffd097          	auipc	ra,0xffffd
    37b0:	2bc080e7          	jalr	700(ra) # a68 <memcpy>
    37b4:	00812603          	lw	a2,8(sp)
    37b8:	001a0a13          	addi	s4,s4,1
    37bc:	f79ff06f          	j	3734 <fl_fread+0x130>
    37c0:	fff00493          	li	s1,-1
    37c4:	f05ff06f          	j	36c8 <fl_fread+0xc4>

000037c8 <fatfs_allocate_free_space>:
    37c8:	fd010113          	addi	sp,sp,-48
    37cc:	02112623          	sw	ra,44(sp)
    37d0:	02812423          	sw	s0,40(sp)
    37d4:	02912223          	sw	s1,36(sp)
    37d8:	03212023          	sw	s2,32(sp)
    37dc:	01312e23          	sw	s3,28(sp)
    37e0:	01412c23          	sw	s4,24(sp)
    37e4:	01512a23          	sw	s5,20(sp)
    37e8:	02069863          	bnez	a3,3818 <fatfs_allocate_free_space+0x50>
    37ec:	00000413          	li	s0,0
    37f0:	02c12083          	lw	ra,44(sp)
    37f4:	00040513          	mv	a0,s0
    37f8:	02812403          	lw	s0,40(sp)
    37fc:	02412483          	lw	s1,36(sp)
    3800:	02012903          	lw	s2,32(sp)
    3804:	01c12983          	lw	s3,28(sp)
    3808:	01812a03          	lw	s4,24(sp)
    380c:	01412a83          	lw	s5,20(sp)
    3810:	03010113          	addi	sp,sp,48
    3814:	00008067          	ret
    3818:	02452783          	lw	a5,36(a0)
    381c:	00058a13          	mv	s4,a1
    3820:	fff00593          	li	a1,-1
    3824:	00050493          	mv	s1,a0
    3828:	00068913          	mv	s2,a3
    382c:	00060993          	mv	s3,a2
    3830:	00b78663          	beq	a5,a1,383c <fatfs_allocate_free_space+0x74>
    3834:	fffff097          	auipc	ra,0xfffff
    3838:	620080e7          	jalr	1568(ra) # 2e54 <fatfs_set_fs_info_next_free_cluster>
    383c:	0004c783          	lbu	a5,0(s1)
    3840:	00090513          	mv	a0,s2
    3844:	00979a93          	slli	s5,a5,0x9
    3848:	000a8593          	mv	a1,s5
    384c:	ffffd097          	auipc	ra,0xffffd
    3850:	154080e7          	jalr	340(ra) # 9a0 <__udivsi3>
    3854:	00050413          	mv	s0,a0
    3858:	00050593          	mv	a1,a0
    385c:	000a8513          	mv	a0,s5
    3860:	ffffe097          	auipc	ra,0xffffe
    3864:	840080e7          	jalr	-1984(ra) # 10a0 <__mulsi3>
    3868:	41250533          	sub	a0,a0,s2
    386c:	00a03533          	snez	a0,a0
    3870:	00a40933          	add	s2,s0,a0
    3874:	040a0463          	beqz	s4,38bc <fatfs_allocate_free_space+0xf4>
    3878:	0084a583          	lw	a1,8(s1)
    387c:	00c10613          	addi	a2,sp,12
    3880:	00048513          	mv	a0,s1
    3884:	fffff097          	auipc	ra,0xfffff
    3888:	680080e7          	jalr	1664(ra) # 2f04 <fatfs_find_blank_cluster>
    388c:	00050413          	mv	s0,a0
    3890:	f4050ee3          	beqz	a0,37ec <fatfs_allocate_free_space+0x24>
    3894:	00100793          	li	a5,1
    3898:	02f91663          	bne	s2,a5,38c4 <fatfs_allocate_free_space+0xfc>
    389c:	00c12903          	lw	s2,12(sp)
    38a0:	fff00613          	li	a2,-1
    38a4:	00048513          	mv	a0,s1
    38a8:	00090593          	mv	a1,s2
    38ac:	fffff097          	auipc	ra,0xfffff
    38b0:	76c080e7          	jalr	1900(ra) # 3018 <fatfs_fat_set_cluster>
    38b4:	0129a023          	sw	s2,0(s3)
    38b8:	f39ff06f          	j	37f0 <fatfs_allocate_free_space+0x28>
    38bc:	0009a783          	lw	a5,0(s3)
    38c0:	00f12623          	sw	a5,12(sp)
    38c4:	00090613          	mv	a2,s2
    38c8:	00c10593          	addi	a1,sp,12
    38cc:	00048513          	mv	a0,s1
    38d0:	00000097          	auipc	ra,0x0
    38d4:	954080e7          	jalr	-1708(ra) # 3224 <fatfs_add_free_space>
    38d8:	00050413          	mv	s0,a0
    38dc:	f15ff06f          	j	37f0 <fatfs_allocate_free_space+0x28>

000038e0 <fatfs_add_file_entry>:
    38e0:	03852883          	lw	a7,56(a0)
    38e4:	30088e63          	beqz	a7,3c00 <fatfs_add_file_entry+0x320>
    38e8:	f8010113          	addi	sp,sp,-128
    38ec:	06812c23          	sw	s0,120(sp)
    38f0:	00050413          	mv	s0,a0
    38f4:	00060513          	mv	a0,a2
    38f8:	06912a23          	sw	s1,116(sp)
    38fc:	07512223          	sw	s5,100(sp)
    3900:	00f12c23          	sw	a5,24(sp)
    3904:	00e12a23          	sw	a4,20(sp)
    3908:	06112e23          	sw	ra,124(sp)
    390c:	07212823          	sw	s2,112(sp)
    3910:	07312623          	sw	s3,108(sp)
    3914:	07412423          	sw	s4,104(sp)
    3918:	07612023          	sw	s6,96(sp)
    391c:	05712e23          	sw	s7,92(sp)
    3920:	05812c23          	sw	s8,88(sp)
    3924:	05912a23          	sw	s9,84(sp)
    3928:	05a12823          	sw	s10,80(sp)
    392c:	05b12623          	sw	s11,76(sp)
    3930:	01012e23          	sw	a6,28(sp)
    3934:	00068a93          	mv	s5,a3
    3938:	00c12823          	sw	a2,16(sp)
    393c:	00b12423          	sw	a1,8(sp)
    3940:	ffffe097          	auipc	ra,0xffffe
    3944:	e3c080e7          	jalr	-452(ra) # 177c <fatfs_lfn_entries_required>
    3948:	00150713          	addi	a4,a0,1
    394c:	00100793          	li	a5,1
    3950:	00050493          	mv	s1,a0
    3954:	2ae7f263          	bgeu	a5,a4,3bf8 <fatfs_add_file_entry+0x318>
    3958:	00000a13          	li	s4,0
    395c:	00000993          	li	s3,0
    3960:	00000913          	li	s2,0
    3964:	00000c93          	li	s9,0
    3968:	00000b13          	li	s6,0
    396c:	01000c13          	li	s8,16
    3970:	00812583          	lw	a1,8(sp)
    3974:	00000693          	li	a3,0
    3978:	000b0613          	mv	a2,s6
    397c:	00040513          	mv	a0,s0
    3980:	000b0b93          	mv	s7,s6
    3984:	fffff097          	auipc	ra,0xfffff
    3988:	b94080e7          	jalr	-1132(ra) # 2518 <fatfs_sector_reader>
    398c:	18050463          	beqz	a0,3b14 <fatfs_add_file_entry+0x234>
    3990:	001b0b13          	addi	s6,s6,1
    3994:	04440793          	addi	a5,s0,68
    3998:	000c8d13          	mv	s10,s9
    399c:	00000d93          	li	s11,0
    39a0:	00078513          	mv	a0,a5
    39a4:	00f12623          	sw	a5,12(sp)
    39a8:	ffffe097          	auipc	ra,0xffffe
    39ac:	cfc080e7          	jalr	-772(ra) # 16a4 <fatfs_entry_lfn_text>
    39b0:	00c12783          	lw	a5,12(sp)
    39b4:	00050c93          	mv	s9,a0
    39b8:	02050c63          	beqz	a0,39f0 <fatfs_add_file_entry+0x110>
    39bc:	020d0463          	beqz	s10,39e4 <fatfs_add_file_entry+0x104>
    39c0:	00090c93          	mv	s9,s2
    39c4:	000c8913          	mv	s2,s9
    39c8:	001d0c93          	addi	s9,s10,1
    39cc:	001d8d93          	addi	s11,s11,1
    39d0:	0ffdfd93          	zext.b	s11,s11
    39d4:	02078793          	addi	a5,a5,32
    39d8:	f98d8ce3          	beq	s11,s8,3970 <fatfs_add_file_entry+0x90>
    39dc:	000c8d13          	mv	s10,s9
    39e0:	fc1ff06f          	j	39a0 <fatfs_add_file_entry+0xc0>
    39e4:	000d8a13          	mv	s4,s11
    39e8:	000b8993          	mv	s3,s7
    39ec:	fd9ff06f          	j	39c4 <fatfs_add_file_entry+0xe4>
    39f0:	0007c683          	lbu	a3,0(a5)
    39f4:	0e500713          	li	a4,229
    39f8:	10e69863          	bne	a3,a4,3b08 <fatfs_add_file_entry+0x228>
    39fc:	000d1863          	bnez	s10,3a0c <fatfs_add_file_entry+0x12c>
    3a00:	000d8a13          	mv	s4,s11
    3a04:	000b8993          	mv	s3,s7
    3a08:	00100913          	li	s2,1
    3a0c:	fa9d4ee3          	blt	s10,s1,39c8 <fatfs_add_file_entry+0xe8>
    3a10:	00ba8693          	addi	a3,s5,11
    3a14:	000a8713          	mv	a4,s5
    3a18:	00000913          	li	s2,0
    3a1c:	00074603          	lbu	a2,0(a4)
    3a20:	00195793          	srli	a5,s2,0x1
    3a24:	00791913          	slli	s2,s2,0x7
    3a28:	012787b3          	add	a5,a5,s2
    3a2c:	00170713          	addi	a4,a4,1
    3a30:	00c787b3          	add	a5,a5,a2
    3a34:	0ff7f913          	zext.b	s2,a5
    3a38:	fed712e3          	bne	a4,a3,3a1c <fatfs_add_file_entry+0x13c>
    3a3c:	00098b13          	mv	s6,s3
    3a40:	00000d13          	li	s10,0
    3a44:	01000b93          	li	s7,16
    3a48:	00812583          	lw	a1,8(sp)
    3a4c:	00000693          	li	a3,0
    3a50:	000b0613          	mv	a2,s6
    3a54:	00040513          	mv	a0,s0
    3a58:	fffff097          	auipc	ra,0xfffff
    3a5c:	ac0080e7          	jalr	-1344(ra) # 2518 <fatfs_sector_reader>
    3a60:	18050c63          	beqz	a0,3bf8 <fatfs_add_file_entry+0x318>
    3a64:	04440c93          	addi	s9,s0,68
    3a68:	413b0db3          	sub	s11,s6,s3
    3a6c:	00000793          	li	a5,0
    3a70:	00000c13          	li	s8,0
    3a74:	01912623          	sw	s9,12(sp)
    3a78:	000d1663          	bnez	s10,3a84 <fatfs_add_file_entry+0x1a4>
    3a7c:	154c1863          	bne	s8,s4,3bcc <fatfs_add_file_entry+0x2ec>
    3a80:	140d9663          	bnez	s11,3bcc <fatfs_add_file_entry+0x2ec>
    3a84:	12049263          	bnez	s1,3ba8 <fatfs_add_file_entry+0x2c8>
    3a88:	01c12703          	lw	a4,28(sp)
    3a8c:	01412603          	lw	a2,20(sp)
    3a90:	01812583          	lw	a1,24(sp)
    3a94:	02010693          	addi	a3,sp,32
    3a98:	000a8513          	mv	a0,s5
    3a9c:	ffffe097          	auipc	ra,0xffffe
    3aa0:	e24080e7          	jalr	-476(ra) # 18c0 <fatfs_sfn_create_entry>
    3aa4:	02000613          	li	a2,32
    3aa8:	00c105b3          	add	a1,sp,a2
    3aac:	000c8513          	mv	a0,s9
    3ab0:	ffffd097          	auipc	ra,0xffffd
    3ab4:	fb8080e7          	jalr	-72(ra) # a68 <memcpy>
    3ab8:	03842783          	lw	a5,56(s0)
    3abc:	00c12583          	lw	a1,12(sp)
    3ac0:	24442503          	lw	a0,580(s0)
    3ac4:	00100613          	li	a2,1
    3ac8:	000780e7          	jalr	a5
    3acc:	07c12083          	lw	ra,124(sp)
    3ad0:	07812403          	lw	s0,120(sp)
    3ad4:	07412483          	lw	s1,116(sp)
    3ad8:	07012903          	lw	s2,112(sp)
    3adc:	06c12983          	lw	s3,108(sp)
    3ae0:	06812a03          	lw	s4,104(sp)
    3ae4:	06412a83          	lw	s5,100(sp)
    3ae8:	06012b03          	lw	s6,96(sp)
    3aec:	05c12b83          	lw	s7,92(sp)
    3af0:	05812c03          	lw	s8,88(sp)
    3af4:	05412c83          	lw	s9,84(sp)
    3af8:	05012d03          	lw	s10,80(sp)
    3afc:	04c12d83          	lw	s11,76(sp)
    3b00:	08010113          	addi	sp,sp,128
    3b04:	00008067          	ret
    3b08:	ee068ae3          	beqz	a3,39fc <fatfs_add_file_entry+0x11c>
    3b0c:	00000913          	li	s2,0
    3b10:	ebdff06f          	j	39cc <fatfs_add_file_entry+0xec>
    3b14:	00842583          	lw	a1,8(s0)
    3b18:	02010613          	addi	a2,sp,32
    3b1c:	00040513          	mv	a0,s0
    3b20:	fffff097          	auipc	ra,0xfffff
    3b24:	3e4080e7          	jalr	996(ra) # 2f04 <fatfs_find_blank_cluster>
    3b28:	0c050863          	beqz	a0,3bf8 <fatfs_add_file_entry+0x318>
    3b2c:	02012b83          	lw	s7,32(sp)
    3b30:	00812583          	lw	a1,8(sp)
    3b34:	00040513          	mv	a0,s0
    3b38:	000b8613          	mv	a2,s7
    3b3c:	fffff097          	auipc	ra,0xfffff
    3b40:	64c080e7          	jalr	1612(ra) # 3188 <fatfs_fat_add_cluster_to_chain>
    3b44:	0a050a63          	beqz	a0,3bf8 <fatfs_add_file_entry+0x318>
    3b48:	20000613          	li	a2,512
    3b4c:	00000593          	li	a1,0
    3b50:	04440513          	addi	a0,s0,68
    3b54:	ffffd097          	auipc	ra,0xffffd
    3b58:	ef8080e7          	jalr	-264(ra) # a4c <memset>
    3b5c:	00000c13          	li	s8,0
    3b60:	00044783          	lbu	a5,0(s0)
    3b64:	00fc6a63          	bltu	s8,a5,3b78 <fatfs_add_file_entry+0x298>
    3b68:	ea0914e3          	bnez	s2,3a10 <fatfs_add_file_entry+0x130>
    3b6c:	000b0993          	mv	s3,s6
    3b70:	00000a13          	li	s4,0
    3b74:	e9dff06f          	j	3a10 <fatfs_add_file_entry+0x130>
    3b78:	00000693          	li	a3,0
    3b7c:	000c0613          	mv	a2,s8
    3b80:	000b8593          	mv	a1,s7
    3b84:	00040513          	mv	a0,s0
    3b88:	ffffe097          	auipc	ra,0xffffe
    3b8c:	8f8080e7          	jalr	-1800(ra) # 1480 <fatfs_write_sector>
    3b90:	06050463          	beqz	a0,3bf8 <fatfs_add_file_entry+0x318>
    3b94:	001c0c13          	addi	s8,s8,1
    3b98:	0ffc7c13          	zext.b	s8,s8
    3b9c:	fc5ff06f          	j	3b60 <fatfs_add_file_entry+0x280>
    3ba0:	001b0b13          	addi	s6,s6,1
    3ba4:	ea5ff06f          	j	3a48 <fatfs_add_file_entry+0x168>
    3ba8:	01012503          	lw	a0,16(sp)
    3bac:	fff48493          	addi	s1,s1,-1
    3bb0:	00090693          	mv	a3,s2
    3bb4:	00048613          	mv	a2,s1
    3bb8:	000c8593          	mv	a1,s9
    3bbc:	ffffe097          	auipc	ra,0xffffe
    3bc0:	bf0080e7          	jalr	-1040(ra) # 17ac <fatfs_filename_to_lfn>
    3bc4:	00100d13          	li	s10,1
    3bc8:	000d0793          	mv	a5,s10
    3bcc:	001c0c13          	addi	s8,s8,1
    3bd0:	0ffc7c13          	zext.b	s8,s8
    3bd4:	020c8c93          	addi	s9,s9,32
    3bd8:	eb7c10e3          	bne	s8,s7,3a78 <fatfs_add_file_entry+0x198>
    3bdc:	fc0782e3          	beqz	a5,3ba0 <fatfs_add_file_entry+0x2c0>
    3be0:	03842783          	lw	a5,56(s0)
    3be4:	00c12583          	lw	a1,12(sp)
    3be8:	24442503          	lw	a0,580(s0)
    3bec:	00100613          	li	a2,1
    3bf0:	000780e7          	jalr	a5
    3bf4:	fa0516e3          	bnez	a0,3ba0 <fatfs_add_file_entry+0x2c0>
    3bf8:	00000513          	li	a0,0
    3bfc:	ed1ff06f          	j	3acc <fatfs_add_file_entry+0x1ec>
    3c00:	00000513          	li	a0,0
    3c04:	00008067          	ret

00003c08 <fl_fopen>:
    3c08:	000047b7          	lui	a5,0x4
    3c0c:	3247a783          	lw	a5,804(a5) # 4324 <_filelib_init>
    3c10:	fa010113          	addi	sp,sp,-96
    3c14:	05212823          	sw	s2,80(sp)
    3c18:	03a12823          	sw	s10,48(sp)
    3c1c:	04112e23          	sw	ra,92(sp)
    3c20:	04812c23          	sw	s0,88(sp)
    3c24:	04912a23          	sw	s1,84(sp)
    3c28:	05312623          	sw	s3,76(sp)
    3c2c:	05412423          	sw	s4,72(sp)
    3c30:	05512223          	sw	s5,68(sp)
    3c34:	05612023          	sw	s6,64(sp)
    3c38:	03712e23          	sw	s7,60(sp)
    3c3c:	03812c23          	sw	s8,56(sp)
    3c40:	03912a23          	sw	s9,52(sp)
    3c44:	00050d13          	mv	s10,a0
    3c48:	00058913          	mv	s2,a1
    3c4c:	00079663          	bnez	a5,3c58 <fl_fopen+0x50>
    3c50:	ffffe097          	auipc	ra,0xffffe
    3c54:	8e4080e7          	jalr	-1820(ra) # 1534 <fl_init>
    3c58:	000047b7          	lui	a5,0x4
    3c5c:	3207a783          	lw	a5,800(a5) # 4320 <_filelib_valid>
    3c60:	00193713          	seqz	a4,s2
    3c64:	0017b793          	seqz	a5,a5
    3c68:	00e7e7b3          	or	a5,a5,a4
    3c6c:	36079e63          	bnez	a5,3fe8 <fl_fopen+0x3e0>
    3c70:	360d0c63          	beqz	s10,3fe8 <fl_fopen+0x3e0>
    3c74:	00000493          	li	s1,0
    3c78:	00000413          	li	s0,0
    3c7c:	05700993          	li	s3,87
    3c80:	07200a13          	li	s4,114
    3c84:	07700b13          	li	s6,119
    3c88:	06100b93          	li	s7,97
    3c8c:	06200c13          	li	s8,98
    3c90:	04100a93          	li	s5,65
    3c94:	04200c93          	li	s9,66
    3c98:	00090513          	mv	a0,s2
    3c9c:	ffffd097          	auipc	ra,0xffffd
    3ca0:	df0080e7          	jalr	-528(ra) # a8c <strlen>
    3ca4:	10a44a63          	blt	s0,a0,3db8 <fl_fopen+0x1b0>
    3ca8:	000049b7          	lui	s3,0x4
    3cac:	52898a13          	addi	s4,s3,1320 # 4528 <_fs>
    3cb0:	038a2783          	lw	a5,56(s4)
    3cb4:	00079463          	bnez	a5,3cbc <fl_fopen+0xb4>
    3cb8:	fd94f493          	andi	s1,s1,-39
    3cbc:	03ca2783          	lw	a5,60(s4)
    3cc0:	00078463          	beqz	a5,3cc8 <fl_fopen+0xc0>
    3cc4:	000780e7          	jalr	a5
    3cc8:	0014f793          	andi	a5,s1,1
    3ccc:	18079263          	bnez	a5,3e50 <fl_fopen+0x248>
    3cd0:	0204f793          	andi	a5,s1,32
    3cd4:	08078c63          	beqz	a5,3d6c <fl_fopen+0x164>
    3cd8:	038a2783          	lw	a5,56(s4)
    3cdc:	06078a63          	beqz	a5,3d50 <fl_fopen+0x148>
    3ce0:	ffffd097          	auipc	ra,0xffffd
    3ce4:	664080e7          	jalr	1636(ra) # 1344 <_allocate_file>
    3ce8:	00050413          	mv	s0,a0
    3cec:	06050263          	beqz	a0,3d50 <fl_fopen+0x148>
    3cf0:	01450a93          	addi	s5,a0,20
    3cf4:	10400613          	li	a2,260
    3cf8:	00000593          	li	a1,0
    3cfc:	000a8513          	mv	a0,s5
    3d00:	ffffd097          	auipc	ra,0xffffd
    3d04:	d4c080e7          	jalr	-692(ra) # a4c <memset>
    3d08:	11840b13          	addi	s6,s0,280
    3d0c:	10400613          	li	a2,260
    3d10:	00000593          	li	a1,0
    3d14:	000b0513          	mv	a0,s6
    3d18:	ffffd097          	auipc	ra,0xffffd
    3d1c:	d34080e7          	jalr	-716(ra) # a4c <memset>
    3d20:	10400713          	li	a4,260
    3d24:	000b0693          	mv	a3,s6
    3d28:	00070613          	mv	a2,a4
    3d2c:	000a8593          	mv	a1,s5
    3d30:	000d0513          	mv	a0,s10
    3d34:	ffffe097          	auipc	ra,0xffffe
    3d38:	07c080e7          	jalr	124(ra) # 1db0 <fatfs_split_path>
    3d3c:	fff00793          	li	a5,-1
    3d40:	12f51663          	bne	a0,a5,3e6c <fl_fopen+0x264>
    3d44:	00040513          	mv	a0,s0
    3d48:	ffffd097          	auipc	ra,0xffffd
    3d4c:	674080e7          	jalr	1652(ra) # 13bc <_free_file>
    3d50:	00000413          	li	s0,0
    3d54:	0214f793          	andi	a5,s1,33
    3d58:	02000713          	li	a4,32
    3d5c:	28e79263          	bne	a5,a4,3fe0 <fl_fopen+0x3d8>
    3d60:	10041263          	bnez	s0,3e64 <fl_fopen+0x25c>
    3d64:	0064f793          	andi	a5,s1,6
    3d68:	26079463          	bnez	a5,3fd0 <fl_fopen+0x3c8>
    3d6c:	00000413          	li	s0,0
    3d70:	040a2783          	lw	a5,64(s4)
    3d74:	00078463          	beqz	a5,3d7c <fl_fopen+0x174>
    3d78:	000780e7          	jalr	a5
    3d7c:	05c12083          	lw	ra,92(sp)
    3d80:	00040513          	mv	a0,s0
    3d84:	05812403          	lw	s0,88(sp)
    3d88:	05412483          	lw	s1,84(sp)
    3d8c:	05012903          	lw	s2,80(sp)
    3d90:	04c12983          	lw	s3,76(sp)
    3d94:	04812a03          	lw	s4,72(sp)
    3d98:	04412a83          	lw	s5,68(sp)
    3d9c:	04012b03          	lw	s6,64(sp)
    3da0:	03c12b83          	lw	s7,60(sp)
    3da4:	03812c03          	lw	s8,56(sp)
    3da8:	03412c83          	lw	s9,52(sp)
    3dac:	03012d03          	lw	s10,48(sp)
    3db0:	06010113          	addi	sp,sp,96
    3db4:	00008067          	ret
    3db8:	008907b3          	add	a5,s2,s0
    3dbc:	0007c783          	lbu	a5,0(a5)
    3dc0:	05378863          	beq	a5,s3,3e10 <fl_fopen+0x208>
    3dc4:	02f9e863          	bltu	s3,a5,3df4 <fl_fopen+0x1ec>
    3dc8:	05578863          	beq	a5,s5,3e18 <fl_fopen+0x210>
    3dcc:	00faea63          	bltu	s5,a5,3de0 <fl_fopen+0x1d8>
    3dd0:	02b00713          	li	a4,43
    3dd4:	04e78663          	beq	a5,a4,3e20 <fl_fopen+0x218>
    3dd8:	00140413          	addi	s0,s0,1
    3ddc:	ebdff06f          	j	3c98 <fl_fopen+0x90>
    3de0:	03978263          	beq	a5,s9,3e04 <fl_fopen+0x1fc>
    3de4:	05200713          	li	a4,82
    3de8:	fee798e3          	bne	a5,a4,3dd8 <fl_fopen+0x1d0>
    3dec:	0014e493          	ori	s1,s1,1
    3df0:	fe9ff06f          	j	3dd8 <fl_fopen+0x1d0>
    3df4:	ff478ce3          	beq	a5,s4,3dec <fl_fopen+0x1e4>
    3df8:	00fa6a63          	bltu	s4,a5,3e0c <fl_fopen+0x204>
    3dfc:	01778e63          	beq	a5,s7,3e18 <fl_fopen+0x210>
    3e00:	fd879ce3          	bne	a5,s8,3dd8 <fl_fopen+0x1d0>
    3e04:	0084e493          	ori	s1,s1,8
    3e08:	fd1ff06f          	j	3dd8 <fl_fopen+0x1d0>
    3e0c:	fd6796e3          	bne	a5,s6,3dd8 <fl_fopen+0x1d0>
    3e10:	0324e493          	ori	s1,s1,50
    3e14:	fc5ff06f          	j	3dd8 <fl_fopen+0x1d0>
    3e18:	0264e493          	ori	s1,s1,38
    3e1c:	fbdff06f          	j	3dd8 <fl_fopen+0x1d0>
    3e20:	0014f793          	andi	a5,s1,1
    3e24:	00078663          	beqz	a5,3e30 <fl_fopen+0x228>
    3e28:	0024e493          	ori	s1,s1,2
    3e2c:	fadff06f          	j	3dd8 <fl_fopen+0x1d0>
    3e30:	0024f793          	andi	a5,s1,2
    3e34:	00078663          	beqz	a5,3e40 <fl_fopen+0x238>
    3e38:	0314e493          	ori	s1,s1,49
    3e3c:	f9dff06f          	j	3dd8 <fl_fopen+0x1d0>
    3e40:	0044f793          	andi	a5,s1,4
    3e44:	f8078ae3          	beqz	a5,3dd8 <fl_fopen+0x1d0>
    3e48:	0274e493          	ori	s1,s1,39
    3e4c:	f8dff06f          	j	3dd8 <fl_fopen+0x1d0>
    3e50:	000d0513          	mv	a0,s10
    3e54:	fffff097          	auipc	ra,0xfffff
    3e58:	af4080e7          	jalr	-1292(ra) # 2948 <_open_file>
    3e5c:	00050413          	mv	s0,a0
    3e60:	e60508e3          	beqz	a0,3cd0 <fl_fopen+0xc8>
    3e64:	42940c23          	sb	s1,1080(s0)
    3e68:	f09ff06f          	j	3d70 <fl_fopen+0x168>
    3e6c:	00040513          	mv	a0,s0
    3e70:	ffffe097          	auipc	ra,0xffffe
    3e74:	1bc080e7          	jalr	444(ra) # 202c <_check_file_open>
    3e78:	00050913          	mv	s2,a0
    3e7c:	ec0514e3          	bnez	a0,3d44 <fl_fopen+0x13c>
    3e80:	01444783          	lbu	a5,20(s0)
    3e84:	0e079663          	bnez	a5,3f70 <fl_fopen+0x368>
    3e88:	008a2783          	lw	a5,8(s4)
    3e8c:	00f42023          	sw	a5,0(s0)
    3e90:	00042583          	lw	a1,0(s0)
    3e94:	01010693          	addi	a3,sp,16
    3e98:	000b0613          	mv	a2,s6
    3e9c:	52898513          	addi	a0,s3,1320
    3ea0:	ffffe097          	auipc	ra,0xffffe
    3ea4:	7c8080e7          	jalr	1992(ra) # 2668 <fatfs_get_file_entry>
    3ea8:	00100693          	li	a3,1
    3eac:	e8d50ce3          	beq	a0,a3,3d44 <fl_fopen+0x13c>
    3eb0:	00042223          	sw	zero,4(s0)
    3eb4:	00440613          	addi	a2,s0,4
    3eb8:	00068593          	mv	a1,a3
    3ebc:	52898513          	addi	a0,s3,1320
    3ec0:	00000097          	auipc	ra,0x0
    3ec4:	908080e7          	jalr	-1784(ra) # 37c8 <fatfs_allocate_free_space>
    3ec8:	e6050ee3          	beqz	a0,3d44 <fl_fopen+0x13c>
    3ecc:	00002ab7          	lui	s5,0x2
    3ed0:	21c40b93          	addi	s7,s0,540
    3ed4:	52898c13          	addi	s8,s3,1320
    3ed8:	70fa8a93          	addi	s5,s5,1807 # 270f <fatfs_get_file_entry+0xa7>
    3edc:	000b0593          	mv	a1,s6
    3ee0:	00410513          	addi	a0,sp,4
    3ee4:	ffffe097          	auipc	ra,0xffffe
    3ee8:	a80080e7          	jalr	-1408(ra) # 1964 <fatfs_lfn_create_sfn>
    3eec:	08090e63          	beqz	s2,3f88 <fl_fopen+0x380>
    3ef0:	00090613          	mv	a2,s2
    3ef4:	00410593          	addi	a1,sp,4
    3ef8:	000b8513          	mv	a0,s7
    3efc:	ffffe097          	auipc	ra,0xffffe
    3f00:	be4080e7          	jalr	-1052(ra) # 1ae0 <fatfs_lfn_generate_tail>
    3f04:	00042583          	lw	a1,0(s0)
    3f08:	000b8613          	mv	a2,s7
    3f0c:	000c0513          	mv	a0,s8
    3f10:	fffff097          	auipc	ra,0xfffff
    3f14:	bac080e7          	jalr	-1108(ra) # 2abc <fatfs_sfn_exists>
    3f18:	00050663          	beqz	a0,3f24 <fl_fopen+0x31c>
    3f1c:	00190913          	addi	s2,s2,1
    3f20:	fb591ee3          	bne	s2,s5,3edc <fl_fopen+0x2d4>
    3f24:	00442703          	lw	a4,4(s0)
    3f28:	000027b7          	lui	a5,0x2
    3f2c:	70f78793          	addi	a5,a5,1807 # 270f <fatfs_get_file_entry+0xa7>
    3f30:	00070593          	mv	a1,a4
    3f34:	02f90663          	beq	s2,a5,3f60 <fl_fopen+0x358>
    3f38:	00042583          	lw	a1,0(s0)
    3f3c:	00000813          	li	a6,0
    3f40:	00000793          	li	a5,0
    3f44:	000b8693          	mv	a3,s7
    3f48:	000b0613          	mv	a2,s6
    3f4c:	52898513          	addi	a0,s3,1320
    3f50:	00000097          	auipc	ra,0x0
    3f54:	990080e7          	jalr	-1648(ra) # 38e0 <fatfs_add_file_entry>
    3f58:	04051463          	bnez	a0,3fa0 <fl_fopen+0x398>
    3f5c:	00442583          	lw	a1,4(s0)
    3f60:	52898513          	addi	a0,s3,1320
    3f64:	fffff097          	auipc	ra,0xfffff
    3f68:	1b4080e7          	jalr	436(ra) # 3118 <fatfs_free_cluster_chain>
    3f6c:	dd9ff06f          	j	3d44 <fl_fopen+0x13c>
    3f70:	00040593          	mv	a1,s0
    3f74:	000a8513          	mv	a0,s5
    3f78:	fffff097          	auipc	ra,0xfffff
    3f7c:	8ec080e7          	jalr	-1812(ra) # 2864 <_open_directory>
    3f80:	f00518e3          	bnez	a0,3e90 <fl_fopen+0x288>
    3f84:	dc1ff06f          	j	3d44 <fl_fopen+0x13c>
    3f88:	00b00613          	li	a2,11
    3f8c:	00410593          	addi	a1,sp,4
    3f90:	000b8513          	mv	a0,s7
    3f94:	ffffd097          	auipc	ra,0xffffd
    3f98:	ad4080e7          	jalr	-1324(ra) # a68 <memcpy>
    3f9c:	f69ff06f          	j	3f04 <fl_fopen+0x2fc>
    3fa0:	fff00793          	li	a5,-1
    3fa4:	00042623          	sw	zero,12(s0)
    3fa8:	00042423          	sw	zero,8(s0)
    3fac:	42f42823          	sw	a5,1072(s0)
    3fb0:	42042a23          	sw	zero,1076(s0)
    3fb4:	00042823          	sw	zero,16(s0)
    3fb8:	22f42423          	sw	a5,552(s0)
    3fbc:	22f42623          	sw	a5,556(s0)
    3fc0:	52898513          	addi	a0,s3,1320
    3fc4:	ffffe097          	auipc	ra,0xffffe
    3fc8:	3f4080e7          	jalr	1012(ra) # 23b8 <fatfs_fat_purge>
    3fcc:	d89ff06f          	j	3d54 <fl_fopen+0x14c>
    3fd0:	000d0513          	mv	a0,s10
    3fd4:	fffff097          	auipc	ra,0xfffff
    3fd8:	974080e7          	jalr	-1676(ra) # 2948 <_open_file>
    3fdc:	00050413          	mv	s0,a0
    3fe0:	e80412e3          	bnez	s0,3e64 <fl_fopen+0x25c>
    3fe4:	d89ff06f          	j	3d6c <fl_fopen+0x164>
    3fe8:	00000413          	li	s0,0
    3fec:	d91ff06f          	j	3d7c <fl_fopen+0x174>

00003ff0 <cmd16>:
    3ff0:	02000050 00001500                       P.......

00003ff8 <acmd41>:
    3ff8:	00004069 00000100                       i@......

00004000 <cmd55>:
    4000:	00000077 00000100                       w.......

00004008 <cmd8>:
    4008:	01000048 000087aa                       H.......

00004010 <cmd0>:
    4010:	00000040 00009500                       @.......

00004018 <AUDIO>:
    4018:	00018000                                ....

0000401c <DISPLAY>:
    401c:	00014000                                .@..

00004020 <BUTTONS>:
    4020:	00010100                                ....

00004024 <SDCARD>:
    4024:	00010080                                ....

00004028 <OLED_RST>:
    4028:	00010010                                ....

0000402c <OLED>:
    402c:	00010008                                ....

00004030 <LEDS>:
    4030:	00010004 74696e69 2e2e2e20 00000020     ....init ... ...
    4040:	656e6f64 00000a2e 00006272 73756d2f     done....rb../mus
    4050:	722e6369 722e7761 00007761 2e676d69     ic.raw.raw..img.
    4060:	20776172 20746f6e 6e756f66 000a2e64     raw not found...
    4070:	67616d69 6f662065 2e646e75 0000000a     image found.....
    4080:	73756d2f 722e6369 00007761 656c6966     /music.raw..file
    4090:	746f6e20 756f6620 0a2e646e 00000000      not found......
    40a0:	33323130 37363534 42413938 46454443     0123456789ABCDEF
    40b0:	00000000 5f544146 203a5346 6f727245     ....FAT_FS: Erro
    40c0:	6f632072 20646c75 20746f6e 64616f6c     r could not load
    40d0:	54414620 74656420 736c6961 64252820      FAT details (%d
    40e0:	0a0d2129 00000000                       )!......

000040e8 <font>:
    40e8:	00000000 00002f00 00030000 14000003     ...../..........
    40f8:	143e143e 3a2b6a2e 08122600 171c3224     >.>..j+:.&..$2..
    4108:	03003415 00000000 0000211e 001e2100     .4.......!...!..
    4118:	08220000 0822081c 0000081c 00002040     .."...".....@ ..
    4128:	00080800 00200000 20000000 02040810     ...... .... ....
    4138:	3f21213f 003f0100 253d0000 25002725     ?!!?..?...=%%'.%
    4148:	003f2525 3f040407 25252700 253f003d     %%?....?.'%%=.?%
    4158:	01003d25 00030539 3f25253f 25252700     %=..9...?%%?.'%%
    4168:	0028003f 40000000 00000028 00110a04     ?.(....@(.......
    4178:	00141400 0a110000 01000004 0007052d     ............-...
    4188:	253d213f 09093f1f 253f003f 3f003c27     ?!=%.?..?.?%'<.?
    4198:	00212121 1e21213f 25253f00 053f0025     !!!.?!!..?%%%.?.
    41a8:	3f000505 003d2521 3f04043f 213f2100     ...?!%=.?..?.!?!
    41b8:	20380000 3f013f21 003b0404 2020203f     ..8 !?.?..;.?   
    41c8:	3f013f00 023f3f01 3f003f04 003f2121     .?.?.??..?.?!!?.
    41d8:	0f09093f 31213f00 093f003f 27002f39     ?....?!1?.?.9/.'
    41e8:	003d2525 013f0101 20203f01 100f003f     %%=...?..?  ?...
    41f8:	3f001f30 3f203f20 3b04043b 38080f00     0..? ? ?;..;...8
    4208:	2931000f 3f002325 00000021 04081020     ..1)%#.?!... ...
    4218:	003f2102 01020000 20000201 00000020     .!?........  ...
    4228:	00000201 24243800 243f003c 3c003c24     .....8$$<.?$$<.<
    4238:	00242424 3f24243c 2c2c3c00 3f04002c     $$$.<$$?.<,,,..?
    4248:	bc000005 00fca4a4 3c04043f 00003d00     ........?..<.=..
    4258:	fd800000 3f000000 00340808 0000003f     .......?..4.?...
    4268:	3c043c00 043c3c04 3c003c04 003c2424     .<.<.<<..<.<$$<.
    4278:	3c2424fc 24243c00 083c00fc 2c000004     .$$<.<$$..<....,
    4288:	003c2c2c 00243f04 20203c00 100c003c     ,,<..?$..<  <...
    4298:	3c001c30 3c203c20 34080834 a0a0bc00     0..< < <4..4....
    42a8:	342400fc 0400242c 0000213f 0000003f     ..$4,$..?!..?...
    42b8:	043f2100 02010000 00000102 00000000     .!?.............
    42c8:	00000001 00000003 00000005 00000007     ................
    42d8:	00000009 0000000e 00000010 00000012     ................
    42e8:	00000014 00000016 00000018 0000001c     ................
    42f8:	0000001e                                ....

000042fc <sdcard_while_loading_callback>:
    42fc:	00000000                                ....

00004300 <back_color>:
	...

00004301 <front_color>:
    4301:	                                         ...

00004304 <cursor_y>:
    4304:	00000000                                ....

00004308 <cursor_x>:
    4308:	00000000                                ....

0000430c <f_putchar>:
    430c:	00000000                                ....

00004310 <_free_file_list>:
	...

00004318 <_open_file_list>:
	...

00004320 <_filelib_valid>:
    4320:	00000000                                ....

00004324 <_filelib_init>:
    4324:	00000000                                ....
