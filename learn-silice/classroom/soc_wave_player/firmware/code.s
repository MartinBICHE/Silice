
code.elf:     file format elf32-littleriscv


Disassembly of section .text:

00000000 <_start>:
       0:	00010137          	lui	sp,0x10
       4:	00000097          	auipc	ra,0x0
       8:	184080e7          	jalr	388(ra) # 188 <main>
       c:	00000317          	auipc	t1,0x0
      10:	00830067          	jr	8(t1) # 14 <exit>

00000014 <exit>:
      14:	00000000          	.word	0x00000000
      18:	00008067          	ret

0000001c <draw_pause_icon>:
      1c:	fe010113          	addi	sp,sp,-32 # ffe0 <_files+0x7450>
      20:	00912a23          	sw	s1,20(sp)
      24:	01212823          	sw	s2,16(sp)
      28:	00050493          	mv	s1,a0
      2c:	00058913          	mv	s2,a1
      30:	00004537          	lui	a0,0x4
      34:	000045b7          	lui	a1,0x4
      38:	22858593          	addi	a1,a1,552 # 4228 <LEDS+0x4>
      3c:	22c50513          	addi	a0,a0,556 # 422c <LEDS+0x8>
      40:	00112e23          	sw	ra,28(sp)
      44:	00812c23          	sw	s0,24(sp)
      48:	00004097          	auipc	ra,0x4
      4c:	db4080e7          	jalr	-588(ra) # 3dfc <fl_fopen>
      50:	0a050263          	beqz	a0,f4 <draw_pause_icon+0xd8>
      54:	00004437          	lui	s0,0x4
      58:	00050693          	mv	a3,a0
      5c:	00100593          	li	a1,1
      60:	00004637          	lui	a2,0x4
      64:	00a12623          	sw	a0,12(sp)
      68:	72840513          	addi	a0,s0,1832 # 4728 <pause_buf>
      6c:	00003097          	auipc	ra,0x3
      70:	78c080e7          	jalr	1932(ra) # 37f8 <fl_fread>
      74:	00c12503          	lw	a0,12(sp)
      78:	72840413          	addi	s0,s0,1832
      7c:	00003097          	auipc	ra,0x3
      80:	6a0080e7          	jalr	1696(ra) # 371c <fl_fclose>
      84:	00001097          	auipc	ra,0x1
      88:	e1c080e7          	jalr	-484(ra) # ea0 <display_framebuffer>
      8c:	00791593          	slli	a1,s2,0x7
      90:	00000713          	li	a4,0
      94:	0ff00893          	li	a7,255
      98:	00950533          	add	a0,a0,s1
      9c:	08000313          	li	t1,128
      a0:	00004e37          	lui	t3,0x4
      a4:	00000793          	li	a5,0
      a8:	00870833          	add	a6,a4,s0
      ac:	00b50633          	add	a2,a0,a1
      b0:	00f806b3          	add	a3,a6,a5
      b4:	0006c683          	lbu	a3,0(a3)
      b8:	01168663          	beq	a3,a7,c4 <draw_pause_icon+0xa8>
      bc:	00f60eb3          	add	t4,a2,a5
      c0:	00de8023          	sb	a3,0(t4)
      c4:	00178793          	addi	a5,a5,1
      c8:	fe6794e3          	bne	a5,t1,b0 <draw_pause_icon+0x94>
      cc:	08070713          	addi	a4,a4,128
      d0:	08058593          	addi	a1,a1,128
      d4:	fdc718e3          	bne	a4,t3,a4 <draw_pause_icon+0x88>
      d8:	01812403          	lw	s0,24(sp)
      dc:	01c12083          	lw	ra,28(sp)
      e0:	01412483          	lw	s1,20(sp)
      e4:	01012903          	lw	s2,16(sp)
      e8:	02010113          	addi	sp,sp,32
      ec:	00001317          	auipc	t1,0x1
      f0:	f0030067          	jr	-256(t1) # fec <display_refresh>
      f4:	01c12083          	lw	ra,28(sp)
      f8:	01812403          	lw	s0,24(sp)
      fc:	01412483          	lw	s1,20(sp)
     100:	01012903          	lw	s2,16(sp)
     104:	02010113          	addi	sp,sp,32
     108:	00008067          	ret

0000010c <clear_audio>:
     10c:	fe010113          	addi	sp,sp,-32
     110:	000047b7          	lui	a5,0x4
     114:	00812c23          	sw	s0,24(sp)
     118:	20c7a403          	lw	s0,524(a5) # 420c <AUDIO>
     11c:	00112e23          	sw	ra,28(sp)
     120:	00912a23          	sw	s1,20(sp)
     124:	00042703          	lw	a4,0(s0)
     128:	01212823          	sw	s2,16(sp)
     12c:	01312623          	sw	s3,12(sp)
     130:	00042783          	lw	a5,0(s0)
     134:	fef70ee3          	beq	a4,a5,130 <clear_audio+0x24>
     138:	00200493          	li	s1,2
     13c:	00100993          	li	s3,1
     140:	00042903          	lw	s2,0(s0)
     144:	20000613          	li	a2,512
     148:	00000593          	li	a1,0
     14c:	00090513          	mv	a0,s2
     150:	00001097          	auipc	ra,0x1
     154:	af0080e7          	jalr	-1296(ra) # c40 <memset>
     158:	00042783          	lw	a5,0(s0)
     15c:	fef90ee3          	beq	s2,a5,158 <clear_audio+0x4c>
     160:	03349063          	bne	s1,s3,180 <clear_audio+0x74>
     164:	01c12083          	lw	ra,28(sp)
     168:	01812403          	lw	s0,24(sp)
     16c:	01412483          	lw	s1,20(sp)
     170:	01012903          	lw	s2,16(sp)
     174:	00c12983          	lw	s3,12(sp)
     178:	02010113          	addi	sp,sp,32
     17c:	00008067          	ret
     180:	00100493          	li	s1,1
     184:	fbdff06f          	j	140 <clear_audio+0x34>

00000188 <main>:
     188:	000017b7          	lui	a5,0x1
     18c:	da010113          	addi	sp,sp,-608
     190:	00004737          	lui	a4,0x4
     194:	ed478793          	addi	a5,a5,-300 # ed4 <display_putchar>
     198:	24112e23          	sw	ra,604(sp)
     19c:	50f72623          	sw	a5,1292(a4) # 450c <f_putchar>
     1a0:	24812c23          	sw	s0,600(sp)
     1a4:	24912a23          	sw	s1,596(sp)
     1a8:	25212823          	sw	s2,592(sp)
     1ac:	25312623          	sw	s3,588(sp)
     1b0:	25412423          	sw	s4,584(sp)
     1b4:	25512223          	sw	s5,580(sp)
     1b8:	25612023          	sw	s6,576(sp)
     1bc:	23712e23          	sw	s7,572(sp)
     1c0:	23812c23          	sw	s8,568(sp)
     1c4:	23912a23          	sw	s9,564(sp)
     1c8:	23a12823          	sw	s10,560(sp)
     1cc:	23b12623          	sw	s11,556(sp)
     1d0:	00001097          	auipc	ra,0x1
     1d4:	c2c080e7          	jalr	-980(ra) # dfc <oled_init>
     1d8:	00001097          	auipc	ra,0x1
     1dc:	c30080e7          	jalr	-976(ra) # e08 <oled_fullscreen>
     1e0:	00001097          	auipc	ra,0x1
     1e4:	cc0080e7          	jalr	-832(ra) # ea0 <display_framebuffer>
     1e8:	00004637          	lui	a2,0x4
     1ec:	00000593          	li	a1,0
     1f0:	00001097          	auipc	ra,0x1
     1f4:	a50080e7          	jalr	-1456(ra) # c40 <memset>
     1f8:	00001097          	auipc	ra,0x1
     1fc:	df4080e7          	jalr	-524(ra) # fec <display_refresh>
     200:	00000593          	li	a1,0
     204:	00000513          	li	a0,0
     208:	00001097          	auipc	ra,0x1
     20c:	ca4080e7          	jalr	-860(ra) # eac <display_set_cursor>
     210:	00000593          	li	a1,0
     214:	0ff00513          	li	a0,255
     218:	00001097          	auipc	ra,0x1
     21c:	ca8080e7          	jalr	-856(ra) # ec0 <display_set_front_back_color>
     220:	00004537          	lui	a0,0x4
     224:	23850513          	addi	a0,a0,568 # 4238 <LEDS+0x14>
     228:	00001097          	auipc	ra,0x1
     22c:	f30080e7          	jalr	-208(ra) # 1158 <printf>
     230:	000014b7          	lui	s1,0x1
     234:	00001437          	lui	s0,0x1
     238:	00001097          	auipc	ra,0x1
     23c:	db4080e7          	jalr	-588(ra) # fec <display_refresh>
     240:	b8448493          	addi	s1,s1,-1148 # b84 <sdcard_writesector>
     244:	00000097          	auipc	ra,0x0
     248:	79c080e7          	jalr	1948(ra) # 9e0 <sdcard_init>
     24c:	b3040413          	addi	s0,s0,-1232 # b30 <sdcard_readsector>
     250:	00001097          	auipc	ra,0x1
     254:	4d8080e7          	jalr	1240(ra) # 1728 <fl_init>
     258:	00048593          	mv	a1,s1
     25c:	00040513          	mv	a0,s0
     260:	00002097          	auipc	ra,0x2
     264:	2c4080e7          	jalr	708(ra) # 2524 <fl_attach_media>
     268:	fe0518e3          	bnez	a0,258 <main+0xd0>
     26c:	00004537          	lui	a0,0x4
     270:	24450513          	addi	a0,a0,580 # 4244 <LEDS+0x20>
     274:	00001097          	auipc	ra,0x1
     278:	ee4080e7          	jalr	-284(ra) # 1158 <printf>
     27c:	00001097          	auipc	ra,0x1
     280:	d70080e7          	jalr	-656(ra) # fec <display_refresh>
     284:	00004a37          	lui	s4,0x4
     288:	00004b37          	lui	s6,0x4
     28c:	228a0593          	addi	a1,s4,552 # 4228 <LEDS+0x4>
     290:	24cb0513          	addi	a0,s6,588 # 424c <LEDS+0x28>
     294:	00004097          	auipc	ra,0x4
     298:	b68080e7          	jalr	-1176(ra) # 3dfc <fl_fopen>
     29c:	00050413          	mv	s0,a0
     2a0:	08051463          	bnez	a0,328 <main+0x1a0>
     2a4:	00004537          	lui	a0,0x4
     2a8:	25c50513          	addi	a0,a0,604 # 425c <LEDS+0x38>
     2ac:	00001097          	auipc	ra,0x1
     2b0:	eac080e7          	jalr	-340(ra) # 1158 <printf>
     2b4:	00001097          	auipc	ra,0x1
     2b8:	d38080e7          	jalr	-712(ra) # fec <display_refresh>
     2bc:	00004537          	lui	a0,0x4
     2c0:	228a0593          	addi	a1,s4,552
     2c4:	28050513          	addi	a0,a0,640 # 4280 <LEDS+0x5c>
     2c8:	00004097          	auipc	ra,0x4
     2cc:	b34080e7          	jalr	-1228(ra) # 3dfc <fl_fopen>
     2d0:	00a12623          	sw	a0,12(sp)
     2d4:	0a051063          	bnez	a0,374 <main+0x1ec>
     2d8:	00004537          	lui	a0,0x4
     2dc:	28c50513          	addi	a0,a0,652 # 428c <LEDS+0x68>
     2e0:	00001097          	auipc	ra,0x1
     2e4:	e78080e7          	jalr	-392(ra) # 1158 <printf>
     2e8:	25812403          	lw	s0,600(sp)
     2ec:	25c12083          	lw	ra,604(sp)
     2f0:	25412483          	lw	s1,596(sp)
     2f4:	25012903          	lw	s2,592(sp)
     2f8:	24c12983          	lw	s3,588(sp)
     2fc:	24812a03          	lw	s4,584(sp)
     300:	24412a83          	lw	s5,580(sp)
     304:	24012b03          	lw	s6,576(sp)
     308:	23c12b83          	lw	s7,572(sp)
     30c:	23812c03          	lw	s8,568(sp)
     310:	23412c83          	lw	s9,564(sp)
     314:	23012d03          	lw	s10,560(sp)
     318:	22c12d83          	lw	s11,556(sp)
     31c:	26010113          	addi	sp,sp,608
     320:	00001317          	auipc	t1,0x1
     324:	ccc30067          	jr	-820(t1) # fec <display_refresh>
     328:	00004537          	lui	a0,0x4
     32c:	27050513          	addi	a0,a0,624 # 4270 <LEDS+0x4c>
     330:	00001097          	auipc	ra,0x1
     334:	e28080e7          	jalr	-472(ra) # 1158 <printf>
     338:	00001097          	auipc	ra,0x1
     33c:	cb4080e7          	jalr	-844(ra) # fec <display_refresh>
     340:	00001097          	auipc	ra,0x1
     344:	b60080e7          	jalr	-1184(ra) # ea0 <display_framebuffer>
     348:	00040693          	mv	a3,s0
     34c:	00004637          	lui	a2,0x4
     350:	00100593          	li	a1,1
     354:	00003097          	auipc	ra,0x3
     358:	4a4080e7          	jalr	1188(ra) # 37f8 <fl_fread>
     35c:	00001097          	auipc	ra,0x1
     360:	c90080e7          	jalr	-880(ra) # fec <display_refresh>
     364:	00040513          	mv	a0,s0
     368:	00003097          	auipc	ra,0x3
     36c:	3b4080e7          	jalr	948(ra) # 371c <fl_fclose>
     370:	f4dff06f          	j	2bc <main+0x134>
     374:	0ff00593          	li	a1,255
     378:	00000513          	li	a0,0
     37c:	00001097          	auipc	ra,0x1
     380:	b44080e7          	jalr	-1212(ra) # ec0 <display_set_front_back_color>
     384:	00001097          	auipc	ra,0x1
     388:	c68080e7          	jalr	-920(ra) # fec <display_refresh>
     38c:	00000593          	li	a1,0
     390:	0ff00513          	li	a0,255
     394:	00001097          	auipc	ra,0x1
     398:	b2c080e7          	jalr	-1236(ra) # ec0 <display_set_front_back_color>
     39c:	00001097          	auipc	ra,0x1
     3a0:	c50080e7          	jalr	-944(ra) # fec <display_refresh>
     3a4:	000046b7          	lui	a3,0x4
     3a8:	2146a683          	lw	a3,532(a3) # 4214 <BUTTONS>
     3ac:	00004bb7          	lui	s7,0x4
     3b0:	00100413          	li	s0,1
     3b4:	00d12a23          	sw	a3,20(sp)
     3b8:	20cba683          	lw	a3,524(s7) # 420c <AUDIO>
     3bc:	00000993          	li	s3,0
     3c0:	00000793          	li	a5,0
     3c4:	00d12823          	sw	a3,16(sp)
     3c8:	000046b7          	lui	a3,0x4
     3cc:	2246a683          	lw	a3,548(a3) # 4224 <LEDS>
     3d0:	00000713          	li	a4,0
     3d4:	08000493          	li	s1,128
     3d8:	20000d13          	li	s10,512
     3dc:	00040c13          	mv	s8,s0
     3e0:	00d12c23          	sw	a3,24(sp)
     3e4:	01412683          	lw	a3,20(sp)
     3e8:	fff7c793          	not	a5,a5
     3ec:	0006a903          	lw	s2,0(a3)
     3f0:	02097693          	andi	a3,s2,32
     3f4:	00d036b3          	snez	a3,a3
     3f8:	40d484b3          	sub	s1,s1,a3
     3fc:	0127f7b3          	and	a5,a5,s2
     400:	04097693          	andi	a3,s2,64
     404:	00d036b3          	snez	a3,a3
     408:	0027f793          	andi	a5,a5,2
     40c:	00d484b3          	add	s1,s1,a3
     410:	12078263          	beqz	a5,534 <main+0x3ac>
     414:	05870863          	beq	a4,s8,464 <main+0x2dc>
     418:	00000097          	auipc	ra,0x0
     41c:	cf4080e7          	jalr	-780(ra) # 10c <clear_audio>
     420:	00000593          	li	a1,0
     424:	00000513          	li	a0,0
     428:	00000097          	auipc	ra,0x0
     42c:	bf4080e7          	jalr	-1036(ra) # 1c <draw_pause_icon>
     430:	20cbaa83          	lw	s5,524(s7)
     434:	000045b7          	lui	a1,0x4
     438:	20000613          	li	a2,512
     43c:	000aac83          	lw	s9,0(s5)
     440:	52858593          	addi	a1,a1,1320 # 4528 <zeros.0>
     444:	000c8513          	mv	a0,s9
     448:	00001097          	auipc	ra,0x1
     44c:	814080e7          	jalr	-2028(ra) # c5c <memcpy>
     450:	000aa783          	lw	a5,0(s5)
     454:	fefc8ee3          	beq	s9,a5,450 <main+0x2c8>
     458:	00100713          	li	a4,1
     45c:	00090793          	mv	a5,s2
     460:	f85ff06f          	j	3e4 <main+0x25c>
     464:	228a0593          	addi	a1,s4,552
     468:	24cb0513          	addi	a0,s6,588
     46c:	00004097          	auipc	ra,0x4
     470:	990080e7          	jalr	-1648(ra) # 3dfc <fl_fopen>
     474:	00050a93          	mv	s5,a0
     478:	02050a63          	beqz	a0,4ac <main+0x324>
     47c:	00001097          	auipc	ra,0x1
     480:	a24080e7          	jalr	-1500(ra) # ea0 <display_framebuffer>
     484:	000a8693          	mv	a3,s5
     488:	00004637          	lui	a2,0x4
     48c:	000c0593          	mv	a1,s8
     490:	00003097          	auipc	ra,0x3
     494:	368080e7          	jalr	872(ra) # 37f8 <fl_fread>
     498:	00001097          	auipc	ra,0x1
     49c:	b54080e7          	jalr	-1196(ra) # fec <display_refresh>
     4a0:	000a8513          	mv	a0,s5
     4a4:	00003097          	auipc	ra,0x3
     4a8:	278080e7          	jalr	632(ra) # 371c <fl_fclose>
     4ac:	01012783          	lw	a5,16(sp)
     4b0:	00c12683          	lw	a3,12(sp)
     4b4:	20000613          	li	a2,512
     4b8:	00100593          	li	a1,1
     4bc:	02010513          	addi	a0,sp,32
     4c0:	0007ac83          	lw	s9,0(a5)
     4c4:	00003097          	auipc	ra,0x3
     4c8:	334080e7          	jalr	820(ra) # 37f8 <fl_fread>
     4cc:	00050a93          	mv	s5,a0
     4d0:	02010d93          	addi	s11,sp,32
     4d4:	00000793          	li	a5,0
     4d8:	0757c263          	blt	a5,s5,53c <main+0x3b4>
     4dc:	000a8613          	mv	a2,s5
     4e0:	02010593          	addi	a1,sp,32
     4e4:	000c8513          	mv	a0,s9
     4e8:	00000097          	auipc	ra,0x0
     4ec:	774080e7          	jalr	1908(ra) # c5c <memcpy>
     4f0:	09aa9063          	bne	s5,s10,570 <main+0x3e8>
     4f4:	01012783          	lw	a5,16(sp)
     4f8:	0007a783          	lw	a5,0(a5)
     4fc:	fefc8ce3          	beq	s9,a5,4f4 <main+0x36c>
     500:	f8040793          	addi	a5,s0,-128
     504:	fff40713          	addi	a4,s0,-1
     508:	00173713          	seqz	a4,a4
     50c:	0017b793          	seqz	a5,a5
     510:	00e7e7b3          	or	a5,a5,a4
     514:	00f9c733          	xor	a4,s3,a5
     518:	04f98863          	beq	s3,a5,568 <main+0x3e0>
     51c:	00141413          	slli	s0,s0,0x1
     520:	01812783          	lw	a5,24(sp)
     524:	00070993          	mv	s3,a4
     528:	00000713          	li	a4,0
     52c:	0087a023          	sw	s0,0(a5)
     530:	f2dff06f          	j	45c <main+0x2d4>
     534:	f6070ce3          	beqz	a4,4ac <main+0x324>
     538:	ef9ff06f          	j	430 <main+0x2a8>
     53c:	000dc503          	lbu	a0,0(s11)
     540:	00048593          	mv	a1,s1
     544:	00f12e23          	sw	a5,28(sp)
     548:	00001097          	auipc	ra,0x1
     54c:	d4c080e7          	jalr	-692(ra) # 1294 <__mulsi3>
     550:	01c12783          	lw	a5,28(sp)
     554:	40855513          	srai	a0,a0,0x8
     558:	00ad8023          	sb	a0,0(s11)
     55c:	00178793          	addi	a5,a5,1
     560:	001d8d93          	addi	s11,s11,1
     564:	f75ff06f          	j	4d8 <main+0x350>
     568:	40145413          	srai	s0,s0,0x1
     56c:	fb5ff06f          	j	520 <main+0x398>
     570:	25812403          	lw	s0,600(sp)
     574:	00c12503          	lw	a0,12(sp)
     578:	25c12083          	lw	ra,604(sp)
     57c:	25412483          	lw	s1,596(sp)
     580:	25012903          	lw	s2,592(sp)
     584:	24c12983          	lw	s3,588(sp)
     588:	24812a03          	lw	s4,584(sp)
     58c:	24412a83          	lw	s5,580(sp)
     590:	24012b03          	lw	s6,576(sp)
     594:	23c12b83          	lw	s7,572(sp)
     598:	23812c03          	lw	s8,568(sp)
     59c:	23412c83          	lw	s9,564(sp)
     5a0:	23012d03          	lw	s10,560(sp)
     5a4:	22c12d83          	lw	s11,556(sp)
     5a8:	26010113          	addi	sp,sp,608
     5ac:	00003317          	auipc	t1,0x3
     5b0:	17030067          	jr	368(t1) # 371c <fl_fclose>

000005b4 <pause>:
     5b4:	c0002773          	rdcycle	a4
     5b8:	c00027f3          	rdcycle	a5
     5bc:	40e787b3          	sub	a5,a5,a4
     5c0:	fea7ece3          	bltu	a5,a0,5b8 <pause+0x4>
     5c4:	00008067          	ret

000005c8 <sdcard_idle>:
     5c8:	00008067          	ret

000005cc <sdcard_select>:
     5cc:	000047b7          	lui	a5,0x4
     5d0:	2187a783          	lw	a5,536(a5) # 4218 <SDCARD>
     5d4:	00200713          	li	a4,2
     5d8:	00e7a023          	sw	a4,0(a5)
     5dc:	00008067          	ret

000005e0 <sdcard_ponder>:
     5e0:	000046b7          	lui	a3,0x4
     5e4:	2186a683          	lw	a3,536(a3) # 4218 <SDCARD>
     5e8:	01000793          	li	a5,16
     5ec:	00000713          	li	a4,0
     5f0:	00676613          	ori	a2,a4,6
     5f4:	00c6a023          	sw	a2,0(a3)
     5f8:	00174713          	xori	a4,a4,1
     5fc:	00000013          	nop
     600:	fff78793          	addi	a5,a5,-1
     604:	fe0796e3          	bnez	a5,5f0 <sdcard_ponder+0x10>
     608:	00008067          	ret

0000060c <sdcard_unselect>:
     60c:	000047b7          	lui	a5,0x4
     610:	2187a783          	lw	a5,536(a5) # 4218 <SDCARD>
     614:	00600713          	li	a4,6
     618:	00e7a023          	sw	a4,0(a5)
     61c:	00008067          	ret

00000620 <sdcard_send>:
     620:	000047b7          	lui	a5,0x4
     624:	2187a783          	lw	a5,536(a5) # 4218 <SDCARD>
     628:	00655713          	srli	a4,a0,0x6
     62c:	00277713          	andi	a4,a4,2
     630:	00e7a023          	sw	a4,0(a5)
     634:	00176713          	ori	a4,a4,1
     638:	00e7a023          	sw	a4,0(a5)
     63c:	00555713          	srli	a4,a0,0x5
     640:	00277713          	andi	a4,a4,2
     644:	00e7a023          	sw	a4,0(a5)
     648:	00176713          	ori	a4,a4,1
     64c:	00e7a023          	sw	a4,0(a5)
     650:	00455713          	srli	a4,a0,0x4
     654:	00277713          	andi	a4,a4,2
     658:	00e7a023          	sw	a4,0(a5)
     65c:	00176713          	ori	a4,a4,1
     660:	00e7a023          	sw	a4,0(a5)
     664:	00355713          	srli	a4,a0,0x3
     668:	00277713          	andi	a4,a4,2
     66c:	00e7a023          	sw	a4,0(a5)
     670:	00176713          	ori	a4,a4,1
     674:	00e7a023          	sw	a4,0(a5)
     678:	00255713          	srli	a4,a0,0x2
     67c:	00277713          	andi	a4,a4,2
     680:	00e7a023          	sw	a4,0(a5)
     684:	00176713          	ori	a4,a4,1
     688:	00e7a023          	sw	a4,0(a5)
     68c:	00155713          	srli	a4,a0,0x1
     690:	00277713          	andi	a4,a4,2
     694:	00e7a023          	sw	a4,0(a5)
     698:	00176713          	ori	a4,a4,1
     69c:	00e7a023          	sw	a4,0(a5)
     6a0:	00257713          	andi	a4,a0,2
     6a4:	00e7a023          	sw	a4,0(a5)
     6a8:	00151513          	slli	a0,a0,0x1
     6ac:	00176713          	ori	a4,a4,1
     6b0:	00e7a023          	sw	a4,0(a5)
     6b4:	00257513          	andi	a0,a0,2
     6b8:	00a7a023          	sw	a0,0(a5)
     6bc:	00156513          	ori	a0,a0,1
     6c0:	00a7a023          	sw	a0,0(a5)
     6c4:	00200713          	li	a4,2
     6c8:	00e7a023          	sw	a4,0(a5)
     6cc:	000047b7          	lui	a5,0x4
     6d0:	4fc7a783          	lw	a5,1276(a5) # 44fc <sdcard_while_loading_callback>
     6d4:	00078067          	jr	a5

000006d8 <sdcard_read>:
     6d8:	fd010113          	addi	sp,sp,-48
     6dc:	fff50793          	addi	a5,a0,-1
     6e0:	03212023          	sw	s2,32(sp)
     6e4:	00100913          	li	s2,1
     6e8:	00f91933          	sll	s2,s2,a5
     6ec:	000047b7          	lui	a5,0x4
     6f0:	01312e23          	sw	s3,28(sp)
     6f4:	2187a983          	lw	s3,536(a5) # 4218 <SDCARD>
     6f8:	02812423          	sw	s0,40(sp)
     6fc:	02912223          	sw	s1,36(sp)
     700:	01412c23          	sw	s4,24(sp)
     704:	01512a23          	sw	s5,20(sp)
     708:	01612823          	sw	s6,16(sp)
     70c:	02112623          	sw	ra,44(sp)
     710:	0ff00413          	li	s0,255
     714:	00000493          	li	s1,0
     718:	00300a13          	li	s4,3
     71c:	00200a93          	li	s5,2
     720:	00004b37          	lui	s6,0x4
     724:	02058c63          	beqz	a1,75c <sdcard_read+0x84>
     728:	012477b3          	and	a5,s0,s2
     72c:	02079a63          	bnez	a5,760 <sdcard_read+0x88>
     730:	02c12083          	lw	ra,44(sp)
     734:	0ff47513          	zext.b	a0,s0
     738:	02812403          	lw	s0,40(sp)
     73c:	02412483          	lw	s1,36(sp)
     740:	02012903          	lw	s2,32(sp)
     744:	01c12983          	lw	s3,28(sp)
     748:	01812a03          	lw	s4,24(sp)
     74c:	01412a83          	lw	s5,20(sp)
     750:	01012b03          	lw	s6,16(sp)
     754:	03010113          	addi	sp,sp,48
     758:	00008067          	ret
     75c:	fca4dae3          	bge	s1,a0,730 <sdcard_read+0x58>
     760:	0149a023          	sw	s4,0(s3)
     764:	0159a023          	sw	s5,0(s3)
     768:	0009a783          	lw	a5,0(s3)
     76c:	00141413          	slli	s0,s0,0x1
     770:	00b12623          	sw	a1,12(sp)
     774:	00f46433          	or	s0,s0,a5
     778:	4fcb2783          	lw	a5,1276(s6) # 44fc <sdcard_while_loading_callback>
     77c:	00a12423          	sw	a0,8(sp)
     780:	00148493          	addi	s1,s1,1
     784:	000780e7          	jalr	a5
     788:	00c12583          	lw	a1,12(sp)
     78c:	00812503          	lw	a0,8(sp)
     790:	f95ff06f          	j	724 <sdcard_read+0x4c>

00000794 <sdcard_get>:
     794:	fe010113          	addi	sp,sp,-32
     798:	00112e23          	sw	ra,28(sp)
     79c:	00812c23          	sw	s0,24(sp)
     7a0:	00912a23          	sw	s1,20(sp)
     7a4:	00050413          	mv	s0,a0
     7a8:	00b12623          	sw	a1,12(sp)
     7ac:	00000097          	auipc	ra,0x0
     7b0:	e20080e7          	jalr	-480(ra) # 5cc <sdcard_select>
     7b4:	00c12583          	lw	a1,12(sp)
     7b8:	00040513          	mv	a0,s0
     7bc:	00100493          	li	s1,1
     7c0:	00000097          	auipc	ra,0x0
     7c4:	f18080e7          	jalr	-232(ra) # 6d8 <sdcard_read>
     7c8:	00345413          	srli	s0,s0,0x3
     7cc:	0284c463          	blt	s1,s0,7f4 <sdcard_get+0x60>
     7d0:	00a12623          	sw	a0,12(sp)
     7d4:	00000097          	auipc	ra,0x0
     7d8:	e38080e7          	jalr	-456(ra) # 60c <sdcard_unselect>
     7dc:	01c12083          	lw	ra,28(sp)
     7e0:	01812403          	lw	s0,24(sp)
     7e4:	00c12503          	lw	a0,12(sp)
     7e8:	01412483          	lw	s1,20(sp)
     7ec:	02010113          	addi	sp,sp,32
     7f0:	00008067          	ret
     7f4:	00000593          	li	a1,0
     7f8:	00800513          	li	a0,8
     7fc:	00000097          	auipc	ra,0x0
     800:	edc080e7          	jalr	-292(ra) # 6d8 <sdcard_read>
     804:	00148493          	addi	s1,s1,1
     808:	fc5ff06f          	j	7cc <sdcard_get+0x38>

0000080c <sdcard_cmd>:
     80c:	ff010113          	addi	sp,sp,-16
     810:	00812423          	sw	s0,8(sp)
     814:	00912223          	sw	s1,4(sp)
     818:	01212023          	sw	s2,0(sp)
     81c:	00112623          	sw	ra,12(sp)
     820:	00050913          	mv	s2,a0
     824:	00000413          	li	s0,0
     828:	00000097          	auipc	ra,0x0
     82c:	da4080e7          	jalr	-604(ra) # 5cc <sdcard_select>
     830:	00600493          	li	s1,6
     834:	008907b3          	add	a5,s2,s0
     838:	0007c503          	lbu	a0,0(a5)
     83c:	00140413          	addi	s0,s0,1
     840:	00000097          	auipc	ra,0x0
     844:	de0080e7          	jalr	-544(ra) # 620 <sdcard_send>
     848:	fe9416e3          	bne	s0,s1,834 <sdcard_cmd+0x28>
     84c:	00812403          	lw	s0,8(sp)
     850:	00c12083          	lw	ra,12(sp)
     854:	00412483          	lw	s1,4(sp)
     858:	00012903          	lw	s2,0(sp)
     85c:	01010113          	addi	sp,sp,16
     860:	00000317          	auipc	t1,0x0
     864:	dac30067          	jr	-596(t1) # 60c <sdcard_unselect>

00000868 <sdcard_start_sector>:
     868:	ff010113          	addi	sp,sp,-16
     86c:	00112623          	sw	ra,12(sp)
     870:	00812423          	sw	s0,8(sp)
     874:	00050413          	mv	s0,a0
     878:	00000097          	auipc	ra,0x0
     87c:	d54080e7          	jalr	-684(ra) # 5cc <sdcard_select>
     880:	05100513          	li	a0,81
     884:	00000097          	auipc	ra,0x0
     888:	d9c080e7          	jalr	-612(ra) # 620 <sdcard_send>
     88c:	01845513          	srli	a0,s0,0x18
     890:	00000097          	auipc	ra,0x0
     894:	d90080e7          	jalr	-624(ra) # 620 <sdcard_send>
     898:	41045513          	srai	a0,s0,0x10
     89c:	0ff57513          	zext.b	a0,a0
     8a0:	00000097          	auipc	ra,0x0
     8a4:	d80080e7          	jalr	-640(ra) # 620 <sdcard_send>
     8a8:	40845513          	srai	a0,s0,0x8
     8ac:	0ff57513          	zext.b	a0,a0
     8b0:	00000097          	auipc	ra,0x0
     8b4:	d70080e7          	jalr	-656(ra) # 620 <sdcard_send>
     8b8:	0ff47513          	zext.b	a0,s0
     8bc:	00000097          	auipc	ra,0x0
     8c0:	d64080e7          	jalr	-668(ra) # 620 <sdcard_send>
     8c4:	05500513          	li	a0,85
     8c8:	00000097          	auipc	ra,0x0
     8cc:	d58080e7          	jalr	-680(ra) # 620 <sdcard_send>
     8d0:	00000097          	auipc	ra,0x0
     8d4:	d3c080e7          	jalr	-708(ra) # 60c <sdcard_unselect>
     8d8:	00812403          	lw	s0,8(sp)
     8dc:	00c12083          	lw	ra,12(sp)
     8e0:	00100593          	li	a1,1
     8e4:	00800513          	li	a0,8
     8e8:	01010113          	addi	sp,sp,16
     8ec:	00000317          	auipc	t1,0x0
     8f0:	ea830067          	jr	-344(t1) # 794 <sdcard_get>

000008f4 <sdcard_read_sector>:
     8f4:	ff010113          	addi	sp,sp,-16
     8f8:	00812423          	sw	s0,8(sp)
     8fc:	00112623          	sw	ra,12(sp)
     900:	00912223          	sw	s1,4(sp)
     904:	01212023          	sw	s2,0(sp)
     908:	00058413          	mv	s0,a1
     90c:	00000097          	auipc	ra,0x0
     910:	f5c080e7          	jalr	-164(ra) # 868 <sdcard_start_sector>
     914:	04051863          	bnez	a0,964 <sdcard_read_sector+0x70>
     918:	00100593          	li	a1,1
     91c:	00058513          	mv	a0,a1
     920:	00000097          	auipc	ra,0x0
     924:	e74080e7          	jalr	-396(ra) # 794 <sdcard_get>
     928:	00000493          	li	s1,0
     92c:	20000913          	li	s2,512
     930:	00000593          	li	a1,0
     934:	00800513          	li	a0,8
     938:	00000097          	auipc	ra,0x0
     93c:	e5c080e7          	jalr	-420(ra) # 794 <sdcard_get>
     940:	009407b3          	add	a5,s0,s1
     944:	00a78023          	sb	a0,0(a5)
     948:	00148493          	addi	s1,s1,1
     94c:	ff2492e3          	bne	s1,s2,930 <sdcard_read_sector+0x3c>
     950:	00100593          	li	a1,1
     954:	01000513          	li	a0,16
     958:	20040413          	addi	s0,s0,512
     95c:	00000097          	auipc	ra,0x0
     960:	e38080e7          	jalr	-456(ra) # 794 <sdcard_get>
     964:	00c12083          	lw	ra,12(sp)
     968:	00040513          	mv	a0,s0
     96c:	00812403          	lw	s0,8(sp)
     970:	00412483          	lw	s1,4(sp)
     974:	00012903          	lw	s2,0(sp)
     978:	01010113          	addi	sp,sp,16
     97c:	00008067          	ret

00000980 <sdcard_preinit>:
     980:	ff010113          	addi	sp,sp,-16
     984:	000047b7          	lui	a5,0x4
     988:	00812423          	sw	s0,8(sp)
     98c:	2187a403          	lw	s0,536(a5) # 4218 <SDCARD>
     990:	00112623          	sw	ra,12(sp)
     994:	00600793          	li	a5,6
     998:	01313537          	lui	a0,0x1313
     99c:	00f42023          	sw	a5,0(s0)
     9a0:	d0050513          	addi	a0,a0,-768 # 1312d00 <__stacktop+0x1302d00>
     9a4:	00000097          	auipc	ra,0x0
     9a8:	c10080e7          	jalr	-1008(ra) # 5b4 <pause>
     9ac:	0a000793          	li	a5,160
     9b0:	00000713          	li	a4,0
     9b4:	00676693          	ori	a3,a4,6
     9b8:	00d42023          	sw	a3,0(s0)
     9bc:	fff78793          	addi	a5,a5,-1
     9c0:	00174713          	xori	a4,a4,1
     9c4:	fe0798e3          	bnez	a5,9b4 <sdcard_preinit+0x34>
     9c8:	00600793          	li	a5,6
     9cc:	00c12083          	lw	ra,12(sp)
     9d0:	00f42023          	sw	a5,0(s0)
     9d4:	00812403          	lw	s0,8(sp)
     9d8:	01010113          	addi	sp,sp,16
     9dc:	00008067          	ret

000009e0 <sdcard_init>:
     9e0:	000007b7          	lui	a5,0x0
     9e4:	5c878793          	addi	a5,a5,1480 # 5c8 <sdcard_idle>
     9e8:	00004737          	lui	a4,0x4
     9ec:	fe010113          	addi	sp,sp,-32
     9f0:	4ef72e23          	sw	a5,1276(a4) # 44fc <sdcard_while_loading_callback>
     9f4:	000047b7          	lui	a5,0x4
     9f8:	00812c23          	sw	s0,24(sp)
     9fc:	00912a23          	sw	s1,20(sp)
     a00:	00112e23          	sw	ra,28(sp)
     a04:	20478493          	addi	s1,a5,516 # 4204 <cmd0>
     a08:	0ff00413          	li	s0,255
     a0c:	00000097          	auipc	ra,0x0
     a10:	f74080e7          	jalr	-140(ra) # 980 <sdcard_preinit>
     a14:	00048513          	mv	a0,s1
     a18:	00000097          	auipc	ra,0x0
     a1c:	df4080e7          	jalr	-524(ra) # 80c <sdcard_cmd>
     a20:	00100593          	li	a1,1
     a24:	00800513          	li	a0,8
     a28:	00000097          	auipc	ra,0x0
     a2c:	d6c080e7          	jalr	-660(ra) # 794 <sdcard_get>
     a30:	00a12623          	sw	a0,12(sp)
     a34:	00000097          	auipc	ra,0x0
     a38:	bac080e7          	jalr	-1108(ra) # 5e0 <sdcard_ponder>
     a3c:	00c12503          	lw	a0,12(sp)
     a40:	00851c63          	bne	a0,s0,a58 <sdcard_init+0x78>
     a44:	01313537          	lui	a0,0x1313
     a48:	d0050513          	addi	a0,a0,-768 # 1312d00 <__stacktop+0x1302d00>
     a4c:	00000097          	auipc	ra,0x0
     a50:	b68080e7          	jalr	-1176(ra) # 5b4 <pause>
     a54:	fb9ff06f          	j	a0c <sdcard_init+0x2c>
     a58:	00004537          	lui	a0,0x4
     a5c:	1fc50513          	addi	a0,a0,508 # 41fc <cmd8>
     a60:	00000097          	auipc	ra,0x0
     a64:	dac080e7          	jalr	-596(ra) # 80c <sdcard_cmd>
     a68:	00100593          	li	a1,1
     a6c:	02800513          	li	a0,40
     a70:	00000097          	auipc	ra,0x0
     a74:	d24080e7          	jalr	-732(ra) # 794 <sdcard_get>
     a78:	00000097          	auipc	ra,0x0
     a7c:	b68080e7          	jalr	-1176(ra) # 5e0 <sdcard_ponder>
     a80:	000047b7          	lui	a5,0x4
     a84:	1f478413          	addi	s0,a5,500 # 41f4 <cmd55>
     a88:	000047b7          	lui	a5,0x4
     a8c:	1ec78493          	addi	s1,a5,492 # 41ec <acmd41>
     a90:	00040513          	mv	a0,s0
     a94:	00000097          	auipc	ra,0x0
     a98:	d78080e7          	jalr	-648(ra) # 80c <sdcard_cmd>
     a9c:	00100593          	li	a1,1
     aa0:	00800513          	li	a0,8
     aa4:	00000097          	auipc	ra,0x0
     aa8:	cf0080e7          	jalr	-784(ra) # 794 <sdcard_get>
     aac:	00000097          	auipc	ra,0x0
     ab0:	b34080e7          	jalr	-1228(ra) # 5e0 <sdcard_ponder>
     ab4:	00048513          	mv	a0,s1
     ab8:	00000097          	auipc	ra,0x0
     abc:	d54080e7          	jalr	-684(ra) # 80c <sdcard_cmd>
     ac0:	00100593          	li	a1,1
     ac4:	00800513          	li	a0,8
     ac8:	00000097          	auipc	ra,0x0
     acc:	ccc080e7          	jalr	-820(ra) # 794 <sdcard_get>
     ad0:	00a12623          	sw	a0,12(sp)
     ad4:	00000097          	auipc	ra,0x0
     ad8:	b0c080e7          	jalr	-1268(ra) # 5e0 <sdcard_ponder>
     adc:	00c12503          	lw	a0,12(sp)
     ae0:	00050c63          	beqz	a0,af8 <sdcard_init+0x118>
     ae4:	001e8537          	lui	a0,0x1e8
     ae8:	48050513          	addi	a0,a0,1152 # 1e8480 <__stacktop+0x1d8480>
     aec:	00000097          	auipc	ra,0x0
     af0:	ac8080e7          	jalr	-1336(ra) # 5b4 <pause>
     af4:	f9dff06f          	j	a90 <sdcard_init+0xb0>
     af8:	00004537          	lui	a0,0x4
     afc:	1e450513          	addi	a0,a0,484 # 41e4 <cmd16>
     b00:	00000097          	auipc	ra,0x0
     b04:	d0c080e7          	jalr	-756(ra) # 80c <sdcard_cmd>
     b08:	00100593          	li	a1,1
     b0c:	00800513          	li	a0,8
     b10:	00000097          	auipc	ra,0x0
     b14:	c84080e7          	jalr	-892(ra) # 794 <sdcard_get>
     b18:	01812403          	lw	s0,24(sp)
     b1c:	01c12083          	lw	ra,28(sp)
     b20:	01412483          	lw	s1,20(sp)
     b24:	02010113          	addi	sp,sp,32
     b28:	00000317          	auipc	t1,0x0
     b2c:	ab830067          	jr	-1352(t1) # 5e0 <sdcard_ponder>

00000b30 <sdcard_readsector>:
     b30:	04060663          	beqz	a2,b7c <sdcard_readsector+0x4c>
     b34:	ff010113          	addi	sp,sp,-16
     b38:	00812423          	sw	s0,8(sp)
     b3c:	00912223          	sw	s1,4(sp)
     b40:	00112623          	sw	ra,12(sp)
     b44:	00050413          	mv	s0,a0
     b48:	00a604b3          	add	s1,a2,a0
     b4c:	00040513          	mv	a0,s0
     b50:	00000097          	auipc	ra,0x0
     b54:	da4080e7          	jalr	-604(ra) # 8f4 <sdcard_read_sector>
     b58:	00140413          	addi	s0,s0,1
     b5c:	00050593          	mv	a1,a0
     b60:	fe9416e3          	bne	s0,s1,b4c <sdcard_readsector+0x1c>
     b64:	00c12083          	lw	ra,12(sp)
     b68:	00812403          	lw	s0,8(sp)
     b6c:	00412483          	lw	s1,4(sp)
     b70:	00100513          	li	a0,1
     b74:	01010113          	addi	sp,sp,16
     b78:	00008067          	ret
     b7c:	00000513          	li	a0,0
     b80:	00008067          	ret

00000b84 <sdcard_writesector>:
     b84:	00000513          	li	a0,0
     b88:	00008067          	ret

00000b8c <__divsi3>:
     b8c:	06054063          	bltz	a0,bec <__umodsi3+0x10>
     b90:	0605c663          	bltz	a1,bfc <__umodsi3+0x20>

00000b94 <__udivsi3>:
     b94:	00058613          	mv	a2,a1
     b98:	00050593          	mv	a1,a0
     b9c:	fff00513          	li	a0,-1
     ba0:	02060c63          	beqz	a2,bd8 <__udivsi3+0x44>
     ba4:	00100693          	li	a3,1
     ba8:	00b67a63          	bgeu	a2,a1,bbc <__udivsi3+0x28>
     bac:	00c05863          	blez	a2,bbc <__udivsi3+0x28>
     bb0:	00161613          	slli	a2,a2,0x1
     bb4:	00169693          	slli	a3,a3,0x1
     bb8:	feb66ae3          	bltu	a2,a1,bac <__udivsi3+0x18>
     bbc:	00000513          	li	a0,0
     bc0:	00c5e663          	bltu	a1,a2,bcc <__udivsi3+0x38>
     bc4:	40c585b3          	sub	a1,a1,a2
     bc8:	00d56533          	or	a0,a0,a3
     bcc:	0016d693          	srli	a3,a3,0x1
     bd0:	00165613          	srli	a2,a2,0x1
     bd4:	fe0696e3          	bnez	a3,bc0 <__udivsi3+0x2c>
     bd8:	00008067          	ret

00000bdc <__umodsi3>:
     bdc:	00008293          	mv	t0,ra
     be0:	fb5ff0ef          	jal	b94 <__udivsi3>
     be4:	00058513          	mv	a0,a1
     be8:	00028067          	jr	t0
     bec:	40a00533          	neg	a0,a0
     bf0:	0005d863          	bgez	a1,c00 <__umodsi3+0x24>
     bf4:	40b005b3          	neg	a1,a1
     bf8:	f95ff06f          	j	b8c <__divsi3>
     bfc:	40b005b3          	neg	a1,a1
     c00:	00008293          	mv	t0,ra
     c04:	f89ff0ef          	jal	b8c <__divsi3>
     c08:	40a00533          	neg	a0,a0
     c0c:	00028067          	jr	t0

00000c10 <__modsi3>:
     c10:	00008293          	mv	t0,ra
     c14:	0005ca63          	bltz	a1,c28 <__modsi3+0x18>
     c18:	00054c63          	bltz	a0,c30 <__modsi3+0x20>
     c1c:	f79ff0ef          	jal	b94 <__udivsi3>
     c20:	00058513          	mv	a0,a1
     c24:	00028067          	jr	t0
     c28:	40b005b3          	neg	a1,a1
     c2c:	fe0558e3          	bgez	a0,c1c <__modsi3+0xc>
     c30:	40a00533          	neg	a0,a0
     c34:	f61ff0ef          	jal	b94 <__udivsi3>
     c38:	40b00533          	neg	a0,a1
     c3c:	00028067          	jr	t0

00000c40 <memset>:
     c40:	00c50633          	add	a2,a0,a2
     c44:	00050793          	mv	a5,a0
     c48:	00c79463          	bne	a5,a2,c50 <memset+0x10>
     c4c:	00008067          	ret
     c50:	00178793          	addi	a5,a5,1
     c54:	feb78fa3          	sb	a1,-1(a5)
     c58:	ff1ff06f          	j	c48 <memset+0x8>

00000c5c <memcpy>:
     c5c:	00000793          	li	a5,0
     c60:	00c79463          	bne	a5,a2,c68 <memcpy+0xc>
     c64:	00008067          	ret
     c68:	00f58733          	add	a4,a1,a5
     c6c:	00074683          	lbu	a3,0(a4)
     c70:	00f50733          	add	a4,a0,a5
     c74:	00178793          	addi	a5,a5,1
     c78:	00d70023          	sb	a3,0(a4)
     c7c:	fe5ff06f          	j	c60 <memcpy+0x4>

00000c80 <strlen>:
     c80:	00000793          	li	a5,0
     c84:	00f50733          	add	a4,a0,a5
     c88:	00074703          	lbu	a4,0(a4)
     c8c:	00071663          	bnez	a4,c98 <strlen+0x18>
     c90:	00078513          	mv	a0,a5
     c94:	00008067          	ret
     c98:	00178793          	addi	a5,a5,1
     c9c:	fe9ff06f          	j	c84 <strlen+0x4>

00000ca0 <strncmp>:
     ca0:	00000793          	li	a5,0
     ca4:	00c79663          	bne	a5,a2,cb0 <strncmp+0x10>
     ca8:	00000513          	li	a0,0
     cac:	00008067          	ret
     cb0:	00f50733          	add	a4,a0,a5
     cb4:	00074683          	lbu	a3,0(a4)
     cb8:	00f58733          	add	a4,a1,a5
     cbc:	00074703          	lbu	a4,0(a4)
     cc0:	00e6e863          	bltu	a3,a4,cd0 <strncmp+0x30>
     cc4:	00d76a63          	bltu	a4,a3,cd8 <strncmp+0x38>
     cc8:	00178793          	addi	a5,a5,1
     ccc:	fd9ff06f          	j	ca4 <strncmp+0x4>
     cd0:	fff00513          	li	a0,-1
     cd4:	00008067          	ret
     cd8:	00100513          	li	a0,1
     cdc:	00008067          	ret

00000ce0 <oled_wait>:
     ce0:	00000013          	nop
     ce4:	00000013          	nop
     ce8:	00000013          	nop
     cec:	00000013          	nop
     cf0:	00000013          	nop
     cf4:	00000013          	nop
     cf8:	00000013          	nop
     cfc:	00008067          	ret

00000d00 <oled_init_mode>:
     d00:	000047b7          	lui	a5,0x4
     d04:	21c7a703          	lw	a4,540(a5) # 421c <OLED_RST>
     d08:	fe010113          	addi	sp,sp,-32
     d0c:	00112e23          	sw	ra,28(sp)
     d10:	00812c23          	sw	s0,24(sp)
     d14:	00072023          	sw	zero,0(a4)
     d18:	00040737          	lui	a4,0x40
     d1c:	00000013          	nop
     d20:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
     d24:	fe071ce3          	bnez	a4,d1c <oled_init_mode+0x1c>
     d28:	21c7a703          	lw	a4,540(a5)
     d2c:	00100693          	li	a3,1
     d30:	00d72023          	sw	a3,0(a4)
     d34:	00040737          	lui	a4,0x40
     d38:	00000013          	nop
     d3c:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
     d40:	fe071ce3          	bnez	a4,d38 <oled_init_mode+0x38>
     d44:	21c7a783          	lw	a5,540(a5)
     d48:	0007a023          	sw	zero,0(a5)
     d4c:	000407b7          	lui	a5,0x40
     d50:	00000013          	nop
     d54:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
     d58:	fe079ce3          	bnez	a5,d50 <oled_init_mode+0x50>
     d5c:	00004737          	lui	a4,0x4
     d60:	22072783          	lw	a5,544(a4) # 4220 <OLED>
     d64:	2af00693          	li	a3,687
     d68:	00d7a023          	sw	a3,0(a5)
     d6c:	000407b7          	lui	a5,0x40
     d70:	00000013          	nop
     d74:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
     d78:	fe079ce3          	bnez	a5,d70 <oled_init_mode+0x70>
     d7c:	22072403          	lw	s0,544(a4)
     d80:	2a000793          	li	a5,672
     d84:	00a12623          	sw	a0,12(sp)
     d88:	00f42023          	sw	a5,0(s0)
     d8c:	00000097          	auipc	ra,0x0
     d90:	f54080e7          	jalr	-172(ra) # ce0 <oled_wait>
     d94:	00c12503          	lw	a0,12(sp)
     d98:	4a000793          	li	a5,1184
     d9c:	00050463          	beqz	a0,da4 <oled_init_mode+0xa4>
     da0:	42000793          	li	a5,1056
     da4:	00f42023          	sw	a5,0(s0)
     da8:	00000097          	auipc	ra,0x0
     dac:	f38080e7          	jalr	-200(ra) # ce0 <oled_wait>
     db0:	2fd00793          	li	a5,765
     db4:	00f42023          	sw	a5,0(s0)
     db8:	00000097          	auipc	ra,0x0
     dbc:	f28080e7          	jalr	-216(ra) # ce0 <oled_wait>
     dc0:	4b100793          	li	a5,1201
     dc4:	00f42023          	sw	a5,0(s0)
     dc8:	00000097          	auipc	ra,0x0
     dcc:	f18080e7          	jalr	-232(ra) # ce0 <oled_wait>
     dd0:	2a200793          	li	a5,674
     dd4:	00f42023          	sw	a5,0(s0)
     dd8:	00000097          	auipc	ra,0x0
     ddc:	f08080e7          	jalr	-248(ra) # ce0 <oled_wait>
     de0:	40000793          	li	a5,1024
     de4:	00f42023          	sw	a5,0(s0)
     de8:	01812403          	lw	s0,24(sp)
     dec:	01c12083          	lw	ra,28(sp)
     df0:	02010113          	addi	sp,sp,32
     df4:	00000317          	auipc	t1,0x0
     df8:	eec30067          	jr	-276(t1) # ce0 <oled_wait>

00000dfc <oled_init>:
     dfc:	00000513          	li	a0,0
     e00:	00000317          	auipc	t1,0x0
     e04:	f0030067          	jr	-256(t1) # d00 <oled_init_mode>

00000e08 <oled_fullscreen>:
     e08:	ff010113          	addi	sp,sp,-16
     e0c:	000047b7          	lui	a5,0x4
     e10:	00812423          	sw	s0,8(sp)
     e14:	2207a403          	lw	s0,544(a5) # 4220 <OLED>
     e18:	00112623          	sw	ra,12(sp)
     e1c:	00912223          	sw	s1,4(sp)
     e20:	01212023          	sw	s2,0(sp)
     e24:	21500793          	li	a5,533
     e28:	00f42023          	sw	a5,0(s0)
     e2c:	40000913          	li	s2,1024
     e30:	00000097          	auipc	ra,0x0
     e34:	eb0080e7          	jalr	-336(ra) # ce0 <oled_wait>
     e38:	47f00493          	li	s1,1151
     e3c:	01242023          	sw	s2,0(s0)
     e40:	00000097          	auipc	ra,0x0
     e44:	ea0080e7          	jalr	-352(ra) # ce0 <oled_wait>
     e48:	00942023          	sw	s1,0(s0)
     e4c:	00000097          	auipc	ra,0x0
     e50:	e94080e7          	jalr	-364(ra) # ce0 <oled_wait>
     e54:	27500793          	li	a5,629
     e58:	00f42023          	sw	a5,0(s0)
     e5c:	00000097          	auipc	ra,0x0
     e60:	e84080e7          	jalr	-380(ra) # ce0 <oled_wait>
     e64:	01242023          	sw	s2,0(s0)
     e68:	00000097          	auipc	ra,0x0
     e6c:	e78080e7          	jalr	-392(ra) # ce0 <oled_wait>
     e70:	00942023          	sw	s1,0(s0)
     e74:	00000097          	auipc	ra,0x0
     e78:	e6c080e7          	jalr	-404(ra) # ce0 <oled_wait>
     e7c:	25c00793          	li	a5,604
     e80:	00f42023          	sw	a5,0(s0)
     e84:	00812403          	lw	s0,8(sp)
     e88:	00c12083          	lw	ra,12(sp)
     e8c:	00412483          	lw	s1,4(sp)
     e90:	00012903          	lw	s2,0(sp)
     e94:	01010113          	addi	sp,sp,16
     e98:	00000317          	auipc	t1,0x0
     e9c:	e4830067          	jr	-440(t1) # ce0 <oled_wait>

00000ea0 <display_framebuffer>:
     ea0:	000047b7          	lui	a5,0x4
     ea4:	2107a503          	lw	a0,528(a5) # 4210 <DISPLAY>
     ea8:	00008067          	ret

00000eac <display_set_cursor>:
     eac:	000047b7          	lui	a5,0x4
     eb0:	50a7a423          	sw	a0,1288(a5) # 4508 <cursor_x>
     eb4:	000047b7          	lui	a5,0x4
     eb8:	50b7a223          	sw	a1,1284(a5) # 4504 <cursor_y>
     ebc:	00008067          	ret

00000ec0 <display_set_front_back_color>:
     ec0:	000047b7          	lui	a5,0x4
     ec4:	50a780a3          	sb	a0,1281(a5) # 4501 <front_color>
     ec8:	000047b7          	lui	a5,0x4
     ecc:	50b78023          	sb	a1,1280(a5) # 4500 <back_color>
     ed0:	00008067          	ret

00000ed4 <display_putchar>:
     ed4:	00a00793          	li	a5,10
     ed8:	00004737          	lui	a4,0x4
     edc:	02f51663          	bne	a0,a5,f08 <display_putchar+0x34>
     ee0:	50072423          	sw	zero,1288(a4) # 4508 <cursor_x>
     ee4:	00004737          	lui	a4,0x4
     ee8:	50472783          	lw	a5,1284(a4) # 4504 <cursor_y>
     eec:	00878793          	addi	a5,a5,8
     ef0:	50f72223          	sw	a5,1284(a4)
     ef4:	07f00713          	li	a4,127
     ef8:	00f75663          	bge	a4,a5,f04 <display_putchar+0x30>
     efc:	000047b7          	lui	a5,0x4
     f00:	5007a223          	sw	zero,1284(a5) # 4504 <cursor_y>
     f04:	00008067          	ret
     f08:	ff010113          	addi	sp,sp,-16
     f0c:	00812623          	sw	s0,12(sp)
     f10:	01f00793          	li	a5,31
     f14:	08a7d663          	bge	a5,a0,fa0 <display_putchar+0xcc>
     f18:	000047b7          	lui	a5,0x4
     f1c:	2107ae83          	lw	t4,528(a5) # 4210 <DISPLAY>
     f20:	000046b7          	lui	a3,0x4
     f24:	00251793          	slli	a5,a0,0x2
     f28:	2e868693          	addi	a3,a3,744 # 42e8 <font>
     f2c:	00a787b3          	add	a5,a5,a0
     f30:	00d78533          	add	a0,a5,a3
     f34:	00100e13          	li	t3,1
     f38:	00000693          	li	a3,0
     f3c:	000043b7          	lui	t2,0x4
     f40:	00004437          	lui	s0,0x4
     f44:	00004f37          	lui	t5,0x4
     f48:	00500f93          	li	t6,5
     f4c:	00800293          	li	t0,8
     f50:	00de1333          	sll	t1,t3,a3
     f54:	00050593          	mv	a1,a0
     f58:	00000613          	li	a2,0
     f5c:	f605c783          	lbu	a5,-160(a1)
     f60:	0067f7b3          	and	a5,a5,t1
     f64:	04078a63          	beqz	a5,fb8 <display_putchar+0xe4>
     f68:	50144883          	lbu	a7,1281(s0) # 4501 <front_color>
     f6c:	50872783          	lw	a5,1288(a4)
     f70:	504f2803          	lw	a6,1284(t5) # 4504 <cursor_y>
     f74:	00158593          	addi	a1,a1,1
     f78:	00f607b3          	add	a5,a2,a5
     f7c:	00779793          	slli	a5,a5,0x7
     f80:	01068833          	add	a6,a3,a6
     f84:	010787b3          	add	a5,a5,a6
     f88:	00fe87b3          	add	a5,t4,a5
     f8c:	01178023          	sb	a7,0(a5)
     f90:	00160613          	addi	a2,a2,1 # 4001 <fl_fopen+0x205>
     f94:	fdf614e3          	bne	a2,t6,f5c <display_putchar+0x88>
     f98:	00168693          	addi	a3,a3,1
     f9c:	fa569ae3          	bne	a3,t0,f50 <display_putchar+0x7c>
     fa0:	50872783          	lw	a5,1288(a4)
     fa4:	07f00693          	li	a3,127
     fa8:	00578793          	addi	a5,a5,5
     fac:	00f6ca63          	blt	a3,a5,fc0 <display_putchar+0xec>
     fb0:	50f72423          	sw	a5,1288(a4)
     fb4:	02c0006f          	j	fe0 <display_putchar+0x10c>
     fb8:	5003c883          	lbu	a7,1280(t2) # 4500 <back_color>
     fbc:	fb1ff06f          	j	f6c <display_putchar+0x98>
     fc0:	50072423          	sw	zero,1288(a4)
     fc4:	00004737          	lui	a4,0x4
     fc8:	50472783          	lw	a5,1284(a4) # 4504 <cursor_y>
     fcc:	00878793          	addi	a5,a5,8
     fd0:	50f72223          	sw	a5,1284(a4)
     fd4:	00f6d663          	bge	a3,a5,fe0 <display_putchar+0x10c>
     fd8:	000047b7          	lui	a5,0x4
     fdc:	5007a223          	sw	zero,1284(a5) # 4504 <cursor_y>
     fe0:	00c12403          	lw	s0,12(sp)
     fe4:	01010113          	addi	sp,sp,16
     fe8:	00008067          	ret

00000fec <display_refresh>:
     fec:	00008067          	ret

00000ff0 <print_string>:
     ff0:	ff010113          	addi	sp,sp,-16
     ff4:	00812423          	sw	s0,8(sp)
     ff8:	00912223          	sw	s1,4(sp)
     ffc:	00112623          	sw	ra,12(sp)
    1000:	00050413          	mv	s0,a0
    1004:	000044b7          	lui	s1,0x4
    1008:	00044503          	lbu	a0,0(s0)
    100c:	00051c63          	bnez	a0,1024 <print_string+0x34>
    1010:	00c12083          	lw	ra,12(sp)
    1014:	00812403          	lw	s0,8(sp)
    1018:	00412483          	lw	s1,4(sp)
    101c:	01010113          	addi	sp,sp,16
    1020:	00008067          	ret
    1024:	50c4a783          	lw	a5,1292(s1) # 450c <f_putchar>
    1028:	00140413          	addi	s0,s0,1
    102c:	000780e7          	jalr	a5
    1030:	fd9ff06f          	j	1008 <print_string+0x18>

00001034 <print_dec>:
    1034:	ef010113          	addi	sp,sp,-272
    1038:	10812423          	sw	s0,264(sp)
    103c:	10912223          	sw	s1,260(sp)
    1040:	10112623          	sw	ra,268(sp)
    1044:	11212023          	sw	s2,256(sp)
    1048:	00050413          	mv	s0,a0
    104c:	000044b7          	lui	s1,0x4
    1050:	08045063          	bgez	s0,10d0 <print_dec+0x9c>
    1054:	50c4a783          	lw	a5,1292(s1) # 450c <f_putchar>
    1058:	02d00513          	li	a0,45
    105c:	40800433          	neg	s0,s0
    1060:	000780e7          	jalr	a5
    1064:	fedff06f          	j	1050 <print_dec+0x1c>
    1068:	00040513          	mv	a0,s0
    106c:	00a00593          	li	a1,10
    1070:	00000097          	auipc	ra,0x0
    1074:	b1c080e7          	jalr	-1252(ra) # b8c <__divsi3>
    1078:	00251793          	slli	a5,a0,0x2
    107c:	00f507b3          	add	a5,a0,a5
    1080:	00179793          	slli	a5,a5,0x1
    1084:	40f40433          	sub	s0,s0,a5
    1088:	00148493          	addi	s1,s1,1
    108c:	fe848fa3          	sb	s0,-1(s1)
    1090:	00050413          	mv	s0,a0
    1094:	fc041ae3          	bnez	s0,1068 <print_dec+0x34>
    1098:	fd2488e3          	beq	s1,s2,1068 <print_dec+0x34>
    109c:	00004437          	lui	s0,0x4
    10a0:	fff4c503          	lbu	a0,-1(s1)
    10a4:	50c42783          	lw	a5,1292(s0) # 450c <f_putchar>
    10a8:	fff48493          	addi	s1,s1,-1
    10ac:	03050513          	addi	a0,a0,48
    10b0:	000780e7          	jalr	a5
    10b4:	ff2496e3          	bne	s1,s2,10a0 <print_dec+0x6c>
    10b8:	10c12083          	lw	ra,268(sp)
    10bc:	10812403          	lw	s0,264(sp)
    10c0:	10412483          	lw	s1,260(sp)
    10c4:	10012903          	lw	s2,256(sp)
    10c8:	11010113          	addi	sp,sp,272
    10cc:	00008067          	ret
    10d0:	00010493          	mv	s1,sp
    10d4:	00010913          	mv	s2,sp
    10d8:	fbdff06f          	j	1094 <print_dec+0x60>

000010dc <print_hex_digits>:
    10dc:	fe010113          	addi	sp,sp,-32
    10e0:	00812c23          	sw	s0,24(sp)
    10e4:	00912a23          	sw	s1,20(sp)
    10e8:	fff58413          	addi	s0,a1,-1
    10ec:	000044b7          	lui	s1,0x4
    10f0:	01212823          	sw	s2,16(sp)
    10f4:	01312623          	sw	s3,12(sp)
    10f8:	00112e23          	sw	ra,28(sp)
    10fc:	00050993          	mv	s3,a0
    1100:	00241413          	slli	s0,s0,0x2
    1104:	2a048493          	addi	s1,s1,672 # 42a0 <LEDS+0x7c>
    1108:	00004937          	lui	s2,0x4
    110c:	02045063          	bgez	s0,112c <print_hex_digits+0x50>
    1110:	01c12083          	lw	ra,28(sp)
    1114:	01812403          	lw	s0,24(sp)
    1118:	01412483          	lw	s1,20(sp)
    111c:	01012903          	lw	s2,16(sp)
    1120:	00c12983          	lw	s3,12(sp)
    1124:	02010113          	addi	sp,sp,32
    1128:	00008067          	ret
    112c:	0089d7b3          	srl	a5,s3,s0
    1130:	00f7f793          	andi	a5,a5,15
    1134:	00f487b3          	add	a5,s1,a5
    1138:	50c92703          	lw	a4,1292(s2) # 450c <f_putchar>
    113c:	0007c503          	lbu	a0,0(a5)
    1140:	ffc40413          	addi	s0,s0,-4
    1144:	000700e7          	jalr	a4
    1148:	fc5ff06f          	j	110c <print_hex_digits+0x30>

0000114c <print_hex>:
    114c:	00800593          	li	a1,8
    1150:	00000317          	auipc	t1,0x0
    1154:	f8c30067          	jr	-116(t1) # 10dc <print_hex_digits>

00001158 <printf>:
    1158:	fa010113          	addi	sp,sp,-96
    115c:	04f12a23          	sw	a5,84(sp)
    1160:	04410793          	addi	a5,sp,68
    1164:	02812c23          	sw	s0,56(sp)
    1168:	02912a23          	sw	s1,52(sp)
    116c:	03212823          	sw	s2,48(sp)
    1170:	03312623          	sw	s3,44(sp)
    1174:	03412423          	sw	s4,40(sp)
    1178:	03512223          	sw	s5,36(sp)
    117c:	03612023          	sw	s6,32(sp)
    1180:	02112e23          	sw	ra,60(sp)
    1184:	01712e23          	sw	s7,28(sp)
    1188:	00050413          	mv	s0,a0
    118c:	04b12223          	sw	a1,68(sp)
    1190:	04c12423          	sw	a2,72(sp)
    1194:	04d12623          	sw	a3,76(sp)
    1198:	04e12823          	sw	a4,80(sp)
    119c:	05012c23          	sw	a6,88(sp)
    11a0:	05112e23          	sw	a7,92(sp)
    11a4:	00f12623          	sw	a5,12(sp)
    11a8:	02500913          	li	s2,37
    11ac:	000044b7          	lui	s1,0x4
    11b0:	07300993          	li	s3,115
    11b4:	07800a13          	li	s4,120
    11b8:	06400a93          	li	s5,100
    11bc:	06300b13          	li	s6,99
    11c0:	00044503          	lbu	a0,0(s0)
    11c4:	02051863          	bnez	a0,11f4 <printf+0x9c>
    11c8:	03c12083          	lw	ra,60(sp)
    11cc:	03812403          	lw	s0,56(sp)
    11d0:	03412483          	lw	s1,52(sp)
    11d4:	03012903          	lw	s2,48(sp)
    11d8:	02c12983          	lw	s3,44(sp)
    11dc:	02812a03          	lw	s4,40(sp)
    11e0:	02412a83          	lw	s5,36(sp)
    11e4:	02012b03          	lw	s6,32(sp)
    11e8:	01c12b83          	lw	s7,28(sp)
    11ec:	06010113          	addi	sp,sp,96
    11f0:	00008067          	ret
    11f4:	09251a63          	bne	a0,s2,1288 <printf+0x130>
    11f8:	00144503          	lbu	a0,1(s0)
    11fc:	00140b93          	addi	s7,s0,1
    1200:	03351463          	bne	a0,s3,1228 <printf+0xd0>
    1204:	00c12783          	lw	a5,12(sp)
    1208:	0007a503          	lw	a0,0(a5)
    120c:	00478713          	addi	a4,a5,4
    1210:	00e12623          	sw	a4,12(sp)
    1214:	00000097          	auipc	ra,0x0
    1218:	ddc080e7          	jalr	-548(ra) # ff0 <print_string>
    121c:	000b8413          	mv	s0,s7
    1220:	00140413          	addi	s0,s0,1
    1224:	f9dff06f          	j	11c0 <printf+0x68>
    1228:	03451063          	bne	a0,s4,1248 <printf+0xf0>
    122c:	00c12783          	lw	a5,12(sp)
    1230:	0007a503          	lw	a0,0(a5)
    1234:	00478713          	addi	a4,a5,4
    1238:	00e12623          	sw	a4,12(sp)
    123c:	00000097          	auipc	ra,0x0
    1240:	f10080e7          	jalr	-240(ra) # 114c <print_hex>
    1244:	fd9ff06f          	j	121c <printf+0xc4>
    1248:	03551063          	bne	a0,s5,1268 <printf+0x110>
    124c:	00c12783          	lw	a5,12(sp)
    1250:	0007a503          	lw	a0,0(a5)
    1254:	00478713          	addi	a4,a5,4
    1258:	00e12623          	sw	a4,12(sp)
    125c:	00000097          	auipc	ra,0x0
    1260:	dd8080e7          	jalr	-552(ra) # 1034 <print_dec>
    1264:	fb9ff06f          	j	121c <printf+0xc4>
    1268:	50c4a783          	lw	a5,1292(s1) # 450c <f_putchar>
    126c:	01651a63          	bne	a0,s6,1280 <printf+0x128>
    1270:	00c12703          	lw	a4,12(sp)
    1274:	00072503          	lw	a0,0(a4)
    1278:	00470693          	addi	a3,a4,4
    127c:	00d12623          	sw	a3,12(sp)
    1280:	000780e7          	jalr	a5
    1284:	f99ff06f          	j	121c <printf+0xc4>
    1288:	50c4a783          	lw	a5,1292(s1)
    128c:	000780e7          	jalr	a5
    1290:	f91ff06f          	j	1220 <printf+0xc8>

00001294 <__mulsi3>:
    1294:	00050793          	mv	a5,a0
    1298:	00000513          	li	a0,0
    129c:	00079463          	bnez	a5,12a4 <__mulsi3+0x10>
    12a0:	00008067          	ret
    12a4:	01f79693          	slli	a3,a5,0x1f
    12a8:	41f6d713          	srai	a4,a3,0x1f
    12ac:	00b77733          	and	a4,a4,a1
    12b0:	00e50533          	add	a0,a0,a4
    12b4:	0017d793          	srli	a5,a5,0x1
    12b8:	00159593          	slli	a1,a1,0x1
    12bc:	fe1ff06f          	j	129c <__mulsi3+0x8>

000012c0 <fat_list_insert_last>:
    12c0:	00452783          	lw	a5,4(a0)
    12c4:	04079263          	bnez	a5,1308 <fat_list_insert_last+0x48>
    12c8:	00052783          	lw	a5,0(a0)
    12cc:	00079c63          	bnez	a5,12e4 <fat_list_insert_last+0x24>
    12d0:	00b52023          	sw	a1,0(a0)
    12d4:	00b52223          	sw	a1,4(a0)
    12d8:	0005a023          	sw	zero,0(a1)
    12dc:	0005a223          	sw	zero,4(a1)
    12e0:	00008067          	ret
    12e4:	0007a703          	lw	a4,0(a5)
    12e8:	00f5a223          	sw	a5,4(a1)
    12ec:	00e5a023          	sw	a4,0(a1)
    12f0:	00071863          	bnez	a4,1300 <fat_list_insert_last+0x40>
    12f4:	00b52023          	sw	a1,0(a0)
    12f8:	00b7a023          	sw	a1,0(a5)
    12fc:	00008067          	ret
    1300:	00b72223          	sw	a1,4(a4)
    1304:	ff5ff06f          	j	12f8 <fat_list_insert_last+0x38>
    1308:	0047a703          	lw	a4,4(a5)
    130c:	00f5a023          	sw	a5,0(a1)
    1310:	00e5a223          	sw	a4,4(a1)
    1314:	00071863          	bnez	a4,1324 <fat_list_insert_last+0x64>
    1318:	00b52223          	sw	a1,4(a0)
    131c:	00b7a223          	sw	a1,4(a5)
    1320:	00008067          	ret
    1324:	00b72023          	sw	a1,0(a4)
    1328:	ff5ff06f          	j	131c <fat_list_insert_last+0x5c>

0000132c <FileString_StrCmpNoCase>:
    132c:	00050e93          	mv	t4,a0
    1330:	00000793          	li	a5,0
    1334:	01900e13          	li	t3,25
    1338:	00c79663          	bne	a5,a2,1344 <FileString_StrCmpNoCase+0x18>
    133c:	00000513          	li	a0,0
    1340:	00008067          	ret
    1344:	00fe8733          	add	a4,t4,a5
    1348:	00074803          	lbu	a6,0(a4)
    134c:	00f58733          	add	a4,a1,a5
    1350:	00074883          	lbu	a7,0(a4)
    1354:	fbf80713          	addi	a4,a6,-65
    1358:	0ff77713          	zext.b	a4,a4
    135c:	00080693          	mv	a3,a6
    1360:	00ee6663          	bltu	t3,a4,136c <FileString_StrCmpNoCase+0x40>
    1364:	02080693          	addi	a3,a6,32
    1368:	0ff6f693          	zext.b	a3,a3
    136c:	fbf88313          	addi	t1,a7,-65
    1370:	0ff37313          	zext.b	t1,t1
    1374:	00088713          	mv	a4,a7
    1378:	006e6663          	bltu	t3,t1,1384 <FileString_StrCmpNoCase+0x58>
    137c:	02088713          	addi	a4,a7,32
    1380:	0ff77713          	zext.b	a4,a4
    1384:	40e68533          	sub	a0,a3,a4
    1388:	00e69863          	bne	a3,a4,1398 <FileString_StrCmpNoCase+0x6c>
    138c:	00178793          	addi	a5,a5,1
    1390:	00088463          	beqz	a7,1398 <FileString_StrCmpNoCase+0x6c>
    1394:	fa0812e3          	bnez	a6,1338 <FileString_StrCmpNoCase+0xc>
    1398:	00008067          	ret

0000139c <FileString_GetExtension>:
    139c:	00050793          	mv	a5,a0
    13a0:	fff00713          	li	a4,-1
    13a4:	02e00613          	li	a2,46
    13a8:	0007c683          	lbu	a3,0(a5)
    13ac:	00069663          	bnez	a3,13b8 <FileString_GetExtension+0x1c>
    13b0:	00070513          	mv	a0,a4
    13b4:	00008067          	ret
    13b8:	00c69463          	bne	a3,a2,13c0 <FileString_GetExtension+0x24>
    13bc:	40a78733          	sub	a4,a5,a0
    13c0:	00178793          	addi	a5,a5,1
    13c4:	fe5ff06f          	j	13a8 <FileString_GetExtension+0xc>

000013c8 <fatfs_fat_writeback>:
    13c8:	00059e63          	bnez	a1,13e4 <fatfs_fat_writeback+0x1c>
    13cc:	00000513          	li	a0,0
    13d0:	00008067          	ret
    13d4:	00000513          	li	a0,0
    13d8:	01c12083          	lw	ra,28(sp)
    13dc:	02010113          	addi	sp,sp,32
    13e0:	00008067          	ret
    13e4:	2045a783          	lw	a5,516(a1)
    13e8:	04078e63          	beqz	a5,1444 <fatfs_fat_writeback+0x7c>
    13ec:	03852683          	lw	a3,56(a0)
    13f0:	00050793          	mv	a5,a0
    13f4:	04068663          	beqz	a3,1440 <fatfs_fat_writeback+0x78>
    13f8:	0147a703          	lw	a4,20(a5)
    13fc:	2005a503          	lw	a0,512(a1)
    1400:	0207a803          	lw	a6,32(a5)
    1404:	00100613          	li	a2,1
    1408:	fe010113          	addi	sp,sp,-32
    140c:	40e607b3          	sub	a5,a2,a4
    1410:	00112e23          	sw	ra,28(sp)
    1414:	00a787b3          	add	a5,a5,a0
    1418:	00f87663          	bgeu	a6,a5,1424 <fatfs_fat_writeback+0x5c>
    141c:	01070733          	add	a4,a4,a6
    1420:	40a70633          	sub	a2,a4,a0
    1424:	00b12623          	sw	a1,12(sp)
    1428:	000680e7          	jalr	a3
    142c:	fa0504e3          	beqz	a0,13d4 <fatfs_fat_writeback+0xc>
    1430:	00c12583          	lw	a1,12(sp)
    1434:	00100513          	li	a0,1
    1438:	2005a223          	sw	zero,516(a1)
    143c:	f9dff06f          	j	13d8 <fatfs_fat_writeback+0x10>
    1440:	2005a223          	sw	zero,516(a1)
    1444:	00100513          	li	a0,1
    1448:	00008067          	ret

0000144c <fatfs_fat_read_sector>:
    144c:	fe010113          	addi	sp,sp,-32
    1450:	01212823          	sw	s2,16(sp)
    1454:	25452903          	lw	s2,596(a0)
    1458:	00812c23          	sw	s0,24(sp)
    145c:	00112e23          	sw	ra,28(sp)
    1460:	00912a23          	sw	s1,20(sp)
    1464:	01312623          	sw	s3,12(sp)
    1468:	00000413          	li	s0,0
    146c:	04091463          	bnez	s2,14b4 <fatfs_fat_read_sector+0x68>
    1470:	25452783          	lw	a5,596(a0)
    1474:	00058493          	mv	s1,a1
    1478:	00050993          	mv	s3,a0
    147c:	20f42623          	sw	a5,524(s0)
    1480:	20442783          	lw	a5,516(s0)
    1484:	24852a23          	sw	s0,596(a0)
    1488:	08079863          	bnez	a5,1518 <fatfs_fat_read_sector+0xcc>
    148c:	0349a783          	lw	a5,52(s3)
    1490:	20942023          	sw	s1,512(s0)
    1494:	00100613          	li	a2,1
    1498:	00040593          	mv	a1,s0
    149c:	00048513          	mv	a0,s1
    14a0:	000780e7          	jalr	a5
    14a4:	08051463          	bnez	a0,152c <fatfs_fat_read_sector+0xe0>
    14a8:	fff00793          	li	a5,-1
    14ac:	20f42023          	sw	a5,512(s0)
    14b0:	0480006f          	j	14f8 <fatfs_fat_read_sector+0xac>
    14b4:	20092783          	lw	a5,512(s2)
    14b8:	00f5e663          	bltu	a1,a5,14c4 <fatfs_fat_read_sector+0x78>
    14bc:	00178713          	addi	a4,a5,1
    14c0:	02e5e463          	bltu	a1,a4,14e8 <fatfs_fat_read_sector+0x9c>
    14c4:	20c92783          	lw	a5,524(s2)
    14c8:	00079663          	bnez	a5,14d4 <fatfs_fat_read_sector+0x88>
    14cc:	00040a63          	beqz	s0,14e0 <fatfs_fat_read_sector+0x94>
    14d0:	20042623          	sw	zero,524(s0)
    14d4:	00090413          	mv	s0,s2
    14d8:	20c92903          	lw	s2,524(s2)
    14dc:	f91ff06f          	j	146c <fatfs_fat_read_sector+0x20>
    14e0:	24052a23          	sw	zero,596(a0)
    14e4:	ff1ff06f          	j	14d4 <fatfs_fat_read_sector+0x88>
    14e8:	40f585b3          	sub	a1,a1,a5
    14ec:	00959593          	slli	a1,a1,0x9
    14f0:	00b905b3          	add	a1,s2,a1
    14f4:	20b92423          	sw	a1,520(s2)
    14f8:	01c12083          	lw	ra,28(sp)
    14fc:	01812403          	lw	s0,24(sp)
    1500:	01412483          	lw	s1,20(sp)
    1504:	00c12983          	lw	s3,12(sp)
    1508:	00090513          	mv	a0,s2
    150c:	01012903          	lw	s2,16(sp)
    1510:	02010113          	addi	sp,sp,32
    1514:	00008067          	ret
    1518:	00040593          	mv	a1,s0
    151c:	00000097          	auipc	ra,0x0
    1520:	eac080e7          	jalr	-340(ra) # 13c8 <fatfs_fat_writeback>
    1524:	f60514e3          	bnez	a0,148c <fatfs_fat_read_sector+0x40>
    1528:	fd1ff06f          	j	14f8 <fatfs_fat_read_sector+0xac>
    152c:	20842423          	sw	s0,520(s0)
    1530:	00040913          	mv	s2,s0
    1534:	fc5ff06f          	j	14f8 <fatfs_fat_read_sector+0xac>

00001538 <_allocate_file>:
    1538:	000047b7          	lui	a5,0x4
    153c:	51078793          	addi	a5,a5,1296 # 4510 <_free_file_list>
    1540:	0007a583          	lw	a1,0(a5)
    1544:	06058263          	beqz	a1,15a8 <_allocate_file+0x70>
    1548:	0005a703          	lw	a4,0(a1)
    154c:	fe010113          	addi	sp,sp,-32
    1550:	00112e23          	sw	ra,28(sp)
    1554:	0045a683          	lw	a3,4(a1)
    1558:	04071063          	bnez	a4,1598 <_allocate_file+0x60>
    155c:	00d7a023          	sw	a3,0(a5)
    1560:	0045a683          	lw	a3,4(a1)
    1564:	02069e63          	bnez	a3,15a0 <_allocate_file+0x68>
    1568:	00e7a223          	sw	a4,4(a5)
    156c:	00004537          	lui	a0,0x4
    1570:	51850513          	addi	a0,a0,1304 # 4518 <_open_file_list>
    1574:	00b12623          	sw	a1,12(sp)
    1578:	00000097          	auipc	ra,0x0
    157c:	d48080e7          	jalr	-696(ra) # 12c0 <fat_list_insert_last>
    1580:	00c12583          	lw	a1,12(sp)
    1584:	01c12083          	lw	ra,28(sp)
    1588:	bc458593          	addi	a1,a1,-1084
    158c:	00058513          	mv	a0,a1
    1590:	02010113          	addi	sp,sp,32
    1594:	00008067          	ret
    1598:	00d72223          	sw	a3,4(a4)
    159c:	fc5ff06f          	j	1560 <_allocate_file+0x28>
    15a0:	00e6a023          	sw	a4,0(a3)
    15a4:	fc9ff06f          	j	156c <_allocate_file+0x34>
    15a8:	00058513          	mv	a0,a1
    15ac:	00008067          	ret

000015b0 <_free_file>:
    15b0:	43c52783          	lw	a5,1084(a0)
    15b4:	44052703          	lw	a4,1088(a0)
    15b8:	43c50593          	addi	a1,a0,1084
    15bc:	02079663          	bnez	a5,15e8 <_free_file+0x38>
    15c0:	000046b7          	lui	a3,0x4
    15c4:	50e6ac23          	sw	a4,1304(a3) # 4518 <_open_file_list>
    15c8:	44052703          	lw	a4,1088(a0)
    15cc:	02071263          	bnez	a4,15f0 <_free_file+0x40>
    15d0:	00004737          	lui	a4,0x4
    15d4:	50f72e23          	sw	a5,1308(a4) # 451c <_open_file_list+0x4>
    15d8:	00004537          	lui	a0,0x4
    15dc:	51050513          	addi	a0,a0,1296 # 4510 <_free_file_list>
    15e0:	00000317          	auipc	t1,0x0
    15e4:	ce030067          	jr	-800(t1) # 12c0 <fat_list_insert_last>
    15e8:	00e7a223          	sw	a4,4(a5)
    15ec:	fddff06f          	j	15c8 <_free_file+0x18>
    15f0:	00f72023          	sw	a5,0(a4)
    15f4:	fe5ff06f          	j	15d8 <_free_file+0x28>

000015f8 <fatfs_lba_of_cluster>:
    15f8:	ff010113          	addi	sp,sp,-16
    15fc:	00812423          	sw	s0,8(sp)
    1600:	00112623          	sw	ra,12(sp)
    1604:	00050413          	mv	s0,a0
    1608:	ffe58513          	addi	a0,a1,-2
    160c:	00044583          	lbu	a1,0(s0)
    1610:	00000097          	auipc	ra,0x0
    1614:	c84080e7          	jalr	-892(ra) # 1294 <__mulsi3>
    1618:	00442783          	lw	a5,4(s0)
    161c:	00f50533          	add	a0,a0,a5
    1620:	03042783          	lw	a5,48(s0)
    1624:	00079863          	bnez	a5,1634 <fatfs_lba_of_cluster+0x3c>
    1628:	02845783          	lhu	a5,40(s0)
    162c:	4047d793          	srai	a5,a5,0x4
    1630:	00f50533          	add	a0,a0,a5
    1634:	00c12083          	lw	ra,12(sp)
    1638:	00812403          	lw	s0,8(sp)
    163c:	01010113          	addi	sp,sp,16
    1640:	00008067          	ret

00001644 <fatfs_sector_read>:
    1644:	03452783          	lw	a5,52(a0)
    1648:	00058713          	mv	a4,a1
    164c:	00070513          	mv	a0,a4
    1650:	00060593          	mv	a1,a2
    1654:	00068613          	mv	a2,a3
    1658:	00078067          	jr	a5

0000165c <fatfs_sector_write>:
    165c:	03852783          	lw	a5,56(a0)
    1660:	00058713          	mv	a4,a1
    1664:	00070513          	mv	a0,a4
    1668:	00060593          	mv	a1,a2
    166c:	00068613          	mv	a2,a3
    1670:	00078067          	jr	a5

00001674 <fatfs_write_sector>:
    1674:	03852703          	lw	a4,56(a0)
    1678:	0a070463          	beqz	a4,1720 <fatfs_write_sector+0xac>
    167c:	03052883          	lw	a7,48(a0)
    1680:	00050793          	mv	a5,a0
    1684:	0115e833          	or	a6,a1,a7
    1688:	02081e63          	bnez	a6,16c4 <fatfs_write_sector+0x50>
    168c:	01052583          	lw	a1,16(a0)
    1690:	08b67863          	bgeu	a2,a1,1720 <fatfs_write_sector+0xac>
    1694:	01c52503          	lw	a0,28(a0)
    1698:	00c7a583          	lw	a1,12(a5)
    169c:	00b50533          	add	a0,a0,a1
    16a0:	00c50533          	add	a0,a0,a2
    16a4:	00068863          	beqz	a3,16b4 <fatfs_write_sector+0x40>
    16a8:	00100613          	li	a2,1
    16ac:	00068593          	mv	a1,a3
    16b0:	00070067          	jr	a4
    16b4:	24a7a223          	sw	a0,580(a5)
    16b8:	00100613          	li	a2,1
    16bc:	04478593          	addi	a1,a5,68
    16c0:	ff1ff06f          	j	16b0 <fatfs_write_sector+0x3c>
    16c4:	fe010113          	addi	sp,sp,-32
    16c8:	00e12623          	sw	a4,12(sp)
    16cc:	00d12423          	sw	a3,8(sp)
    16d0:	00c12223          	sw	a2,4(sp)
    16d4:	00112e23          	sw	ra,28(sp)
    16d8:	00a12023          	sw	a0,0(sp)
    16dc:	00000097          	auipc	ra,0x0
    16e0:	f1c080e7          	jalr	-228(ra) # 15f8 <fatfs_lba_of_cluster>
    16e4:	00412603          	lw	a2,4(sp)
    16e8:	00812683          	lw	a3,8(sp)
    16ec:	00012783          	lw	a5,0(sp)
    16f0:	00c12703          	lw	a4,12(sp)
    16f4:	00a60533          	add	a0,a2,a0
    16f8:	00068c63          	beqz	a3,1710 <fatfs_write_sector+0x9c>
    16fc:	00100613          	li	a2,1
    1700:	00068593          	mv	a1,a3
    1704:	01c12083          	lw	ra,28(sp)
    1708:	02010113          	addi	sp,sp,32
    170c:	fa5ff06f          	j	16b0 <fatfs_write_sector+0x3c>
    1710:	24a7a223          	sw	a0,580(a5)
    1714:	00100613          	li	a2,1
    1718:	04478593          	addi	a1,a5,68
    171c:	fe9ff06f          	j	1704 <fatfs_write_sector+0x90>
    1720:	00000513          	li	a0,0
    1724:	00008067          	ret

00001728 <fl_init>:
    1728:	ff010113          	addi	sp,sp,-16
    172c:	00004537          	lui	a0,0x4
    1730:	000047b7          	lui	a5,0x4
    1734:	000095b7          	lui	a1,0x9
    1738:	00112623          	sw	ra,12(sp)
    173c:	51050513          	addi	a0,a0,1296 # 4510 <_free_file_list>
    1740:	51878793          	addi	a5,a5,1304 # 4518 <_open_file_list>
    1744:	fcc58593          	addi	a1,a1,-52 # 8fcc <_files+0x43c>
    1748:	00052223          	sw	zero,4(a0)
    174c:	00052023          	sw	zero,0(a0)
    1750:	0007a223          	sw	zero,4(a5)
    1754:	0007a023          	sw	zero,0(a5)
    1758:	00000097          	auipc	ra,0x0
    175c:	b68080e7          	jalr	-1176(ra) # 12c0 <fat_list_insert_last>
    1760:	000047b7          	lui	a5,0x4
    1764:	000095b7          	lui	a1,0x9
    1768:	51078513          	addi	a0,a5,1296 # 4510 <_free_file_list>
    176c:	41058593          	addi	a1,a1,1040 # 9410 <_files+0x880>
    1770:	00000097          	auipc	ra,0x0
    1774:	b50080e7          	jalr	-1200(ra) # 12c0 <fat_list_insert_last>
    1778:	00c12083          	lw	ra,12(sp)
    177c:	000047b7          	lui	a5,0x4
    1780:	00100713          	li	a4,1
    1784:	52e7a223          	sw	a4,1316(a5) # 4524 <_filelib_init>
    1788:	01010113          	addi	sp,sp,16
    178c:	00008067          	ret

00001790 <fatfs_lfn_cache_entry>:
    1790:	0005c783          	lbu	a5,0(a1)
    1794:	01300693          	li	a3,19
    1798:	01f7f793          	andi	a5,a5,31
    179c:	fff78713          	addi	a4,a5,-1
    17a0:	0ff77613          	zext.b	a2,a4
    17a4:	0ac6ea63          	bltu	a3,a2,1858 <fatfs_lfn_cache_entry+0xc8>
    17a8:	10554683          	lbu	a3,261(a0)
    17ac:	00069463          	bnez	a3,17b4 <fatfs_lfn_cache_entry+0x24>
    17b0:	10f502a3          	sb	a5,261(a0)
    17b4:	00171793          	slli	a5,a4,0x1
    17b8:	00e787b3          	add	a5,a5,a4
    17bc:	0015c683          	lbu	a3,1(a1)
    17c0:	00279793          	slli	a5,a5,0x2
    17c4:	00e787b3          	add	a5,a5,a4
    17c8:	00f50533          	add	a0,a0,a5
    17cc:	00d50023          	sb	a3,0(a0)
    17d0:	0035c783          	lbu	a5,3(a1)
    17d4:	0ff00713          	li	a4,255
    17d8:	02000693          	li	a3,32
    17dc:	00f500a3          	sb	a5,1(a0)
    17e0:	0055c783          	lbu	a5,5(a1)
    17e4:	00f50123          	sb	a5,2(a0)
    17e8:	0075c783          	lbu	a5,7(a1)
    17ec:	00f501a3          	sb	a5,3(a0)
    17f0:	0095c783          	lbu	a5,9(a1)
    17f4:	00f50223          	sb	a5,4(a0)
    17f8:	00e5c783          	lbu	a5,14(a1)
    17fc:	00f502a3          	sb	a5,5(a0)
    1800:	0105c783          	lbu	a5,16(a1)
    1804:	00f50323          	sb	a5,6(a0)
    1808:	0125c783          	lbu	a5,18(a1)
    180c:	00f503a3          	sb	a5,7(a0)
    1810:	0145c783          	lbu	a5,20(a1)
    1814:	00f50423          	sb	a5,8(a0)
    1818:	0165c783          	lbu	a5,22(a1)
    181c:	00f504a3          	sb	a5,9(a0)
    1820:	0185c783          	lbu	a5,24(a1)
    1824:	00f50523          	sb	a5,10(a0)
    1828:	01c5c783          	lbu	a5,28(a1)
    182c:	00f505a3          	sb	a5,11(a0)
    1830:	01e5c783          	lbu	a5,30(a1)
    1834:	00f50623          	sb	a5,12(a0)
    1838:	00d00793          	li	a5,13
    183c:	00054603          	lbu	a2,0(a0)
    1840:	00e61463          	bne	a2,a4,1848 <fatfs_lfn_cache_entry+0xb8>
    1844:	00d50023          	sb	a3,0(a0)
    1848:	fff78793          	addi	a5,a5,-1
    184c:	0ff7f793          	zext.b	a5,a5
    1850:	00150513          	addi	a0,a0,1
    1854:	fe0794e3          	bnez	a5,183c <fatfs_lfn_cache_entry+0xac>
    1858:	00008067          	ret

0000185c <fatfs_lfn_cache_get>:
    185c:	10554703          	lbu	a4,261(a0)
    1860:	01400793          	li	a5,20
    1864:	00f71663          	bne	a4,a5,1870 <fatfs_lfn_cache_get+0x14>
    1868:	10050223          	sb	zero,260(a0)
    186c:	00008067          	ret
    1870:	02070063          	beqz	a4,1890 <fatfs_lfn_cache_get+0x34>
    1874:	00171793          	slli	a5,a4,0x1
    1878:	00e787b3          	add	a5,a5,a4
    187c:	00279793          	slli	a5,a5,0x2
    1880:	00e787b3          	add	a5,a5,a4
    1884:	00f507b3          	add	a5,a0,a5
    1888:	00078023          	sb	zero,0(a5)
    188c:	00008067          	ret
    1890:	00050023          	sb	zero,0(a0)
    1894:	00008067          	ret

00001898 <fatfs_entry_lfn_text>:
    1898:	00b54503          	lbu	a0,11(a0)
    189c:	00f57513          	andi	a0,a0,15
    18a0:	ff150513          	addi	a0,a0,-15
    18a4:	00153513          	seqz	a0,a0
    18a8:	00008067          	ret

000018ac <fatfs_entry_lfn_invalid>:
    18ac:	00054783          	lbu	a5,0(a0)
    18b0:	f1b78713          	addi	a4,a5,-229
    18b4:	02070263          	beqz	a4,18d8 <fatfs_entry_lfn_invalid+0x2c>
    18b8:	02078063          	beqz	a5,18d8 <fatfs_entry_lfn_invalid+0x2c>
    18bc:	00b54783          	lbu	a5,11(a0)
    18c0:	00800713          	li	a4,8
    18c4:	00100513          	li	a0,1
    18c8:	00e78a63          	beq	a5,a4,18dc <fatfs_entry_lfn_invalid+0x30>
    18cc:	0067f793          	andi	a5,a5,6
    18d0:	00f03533          	snez	a0,a5
    18d4:	00008067          	ret
    18d8:	00100513          	li	a0,1
    18dc:	00008067          	ret

000018e0 <fatfs_entry_lfn_exists>:
    18e0:	00b5c783          	lbu	a5,11(a1)
    18e4:	00f00713          	li	a4,15
    18e8:	04e78063          	beq	a5,a4,1928 <fatfs_entry_lfn_exists+0x48>
    18ec:	0005c683          	lbu	a3,0(a1)
    18f0:	f1b68713          	addi	a4,a3,-229
    18f4:	00e03733          	snez	a4,a4
    18f8:	00d036b3          	snez	a3,a3
    18fc:	00d77733          	and	a4,a4,a3
    1900:	02070463          	beqz	a4,1928 <fatfs_entry_lfn_exists+0x48>
    1904:	ff878713          	addi	a4,a5,-8
    1908:	02070063          	beqz	a4,1928 <fatfs_entry_lfn_exists+0x48>
    190c:	0067f713          	andi	a4,a5,6
    1910:	00000793          	li	a5,0
    1914:	00071663          	bnez	a4,1920 <fatfs_entry_lfn_exists+0x40>
    1918:	10554783          	lbu	a5,261(a0)
    191c:	00f037b3          	snez	a5,a5
    1920:	00078513          	mv	a0,a5
    1924:	00008067          	ret
    1928:	00000793          	li	a5,0
    192c:	ff5ff06f          	j	1920 <fatfs_entry_lfn_exists+0x40>

00001930 <fatfs_entry_sfn_only>:
    1930:	00b54783          	lbu	a5,11(a0)
    1934:	00f00713          	li	a4,15
    1938:	02e78863          	beq	a5,a4,1968 <fatfs_entry_sfn_only+0x38>
    193c:	00054683          	lbu	a3,0(a0)
    1940:	f1b68713          	addi	a4,a3,-229
    1944:	00e03733          	snez	a4,a4
    1948:	00d036b3          	snez	a3,a3
    194c:	00d77733          	and	a4,a4,a3
    1950:	00070c63          	beqz	a4,1968 <fatfs_entry_sfn_only+0x38>
    1954:	ff878713          	addi	a4,a5,-8
    1958:	00070863          	beqz	a4,1968 <fatfs_entry_sfn_only+0x38>
    195c:	0067f513          	andi	a0,a5,6
    1960:	00153513          	seqz	a0,a0
    1964:	00008067          	ret
    1968:	00000513          	li	a0,0
    196c:	00008067          	ret

00001970 <fatfs_lfn_entries_required>:
    1970:	ff010113          	addi	sp,sp,-16
    1974:	00112623          	sw	ra,12(sp)
    1978:	fffff097          	auipc	ra,0xfffff
    197c:	308080e7          	jalr	776(ra) # c80 <strlen>
    1980:	00050a63          	beqz	a0,1994 <fatfs_lfn_entries_required+0x24>
    1984:	00d00593          	li	a1,13
    1988:	00c50513          	addi	a0,a0,12
    198c:	fffff097          	auipc	ra,0xfffff
    1990:	200080e7          	jalr	512(ra) # b8c <__divsi3>
    1994:	00c12083          	lw	ra,12(sp)
    1998:	01010113          	addi	sp,sp,16
    199c:	00008067          	ret

000019a0 <fatfs_filename_to_lfn>:
    19a0:	f9010113          	addi	sp,sp,-112
    19a4:	06812423          	sw	s0,104(sp)
    19a8:	00058413          	mv	s0,a1
    19ac:	000045b7          	lui	a1,0x4
    19b0:	4c858593          	addi	a1,a1,1224 # 44c8 <font+0x1e0>
    19b4:	06912223          	sw	s1,100(sp)
    19b8:	05312e23          	sw	s3,92(sp)
    19bc:	00060493          	mv	s1,a2
    19c0:	00050993          	mv	s3,a0
    19c4:	03400613          	li	a2,52
    19c8:	01c10513          	addi	a0,sp,28
    19cc:	00d12623          	sw	a3,12(sp)
    19d0:	06112623          	sw	ra,108(sp)
    19d4:	07212023          	sw	s2,96(sp)
    19d8:	05412c23          	sw	s4,88(sp)
    19dc:	fffff097          	auipc	ra,0xfffff
    19e0:	280080e7          	jalr	640(ra) # c5c <memcpy>
    19e4:	00098513          	mv	a0,s3
    19e8:	fffff097          	auipc	ra,0xfffff
    19ec:	298080e7          	jalr	664(ra) # c80 <strlen>
    19f0:	00050913          	mv	s2,a0
    19f4:	00098513          	mv	a0,s3
    19f8:	00000097          	auipc	ra,0x0
    19fc:	f78080e7          	jalr	-136(ra) # 1970 <fatfs_lfn_entries_required>
    1a00:	00050a13          	mv	s4,a0
    1a04:	02000613          	li	a2,32
    1a08:	00000593          	li	a1,0
    1a0c:	00040513          	mv	a0,s0
    1a10:	fffff097          	auipc	ra,0xfffff
    1a14:	230080e7          	jalr	560(ra) # c40 <memset>
    1a18:	fffa0713          	addi	a4,s4,-1
    1a1c:	00c12683          	lw	a3,12(sp)
    1a20:	00148793          	addi	a5,s1,1
    1a24:	00971463          	bne	a4,s1,1a2c <fatfs_filename_to_lfn+0x8c>
    1a28:	0407e793          	ori	a5,a5,64
    1a2c:	00149613          	slli	a2,s1,0x1
    1a30:	00960633          	add	a2,a2,s1
    1a34:	00f40023          	sb	a5,0(s0)
    1a38:	00261613          	slli	a2,a2,0x2
    1a3c:	00f00793          	li	a5,15
    1a40:	00f405a3          	sb	a5,11(s0)
    1a44:	00d406a3          	sb	a3,13(s0)
    1a48:	01c10793          	addi	a5,sp,28
    1a4c:	00960633          	add	a2,a2,s1
    1a50:	fff00693          	li	a3,-1
    1a54:	0007a703          	lw	a4,0(a5)
    1a58:	00e40733          	add	a4,s0,a4
    1a5c:	05265063          	bge	a2,s2,1a9c <fatfs_filename_to_lfn+0xfc>
    1a60:	00c985b3          	add	a1,s3,a2
    1a64:	0005c583          	lbu	a1,0(a1)
    1a68:	00b70023          	sb	a1,0(a4)
    1a6c:	00478793          	addi	a5,a5,4
    1a70:	05010713          	addi	a4,sp,80
    1a74:	00160613          	addi	a2,a2,1
    1a78:	fce79ee3          	bne	a5,a4,1a54 <fatfs_filename_to_lfn+0xb4>
    1a7c:	06c12083          	lw	ra,108(sp)
    1a80:	06812403          	lw	s0,104(sp)
    1a84:	06412483          	lw	s1,100(sp)
    1a88:	06012903          	lw	s2,96(sp)
    1a8c:	05c12983          	lw	s3,92(sp)
    1a90:	05812a03          	lw	s4,88(sp)
    1a94:	07010113          	addi	sp,sp,112
    1a98:	00008067          	ret
    1a9c:	01261663          	bne	a2,s2,1aa8 <fatfs_filename_to_lfn+0x108>
    1aa0:	00070023          	sb	zero,0(a4)
    1aa4:	fc9ff06f          	j	1a6c <fatfs_filename_to_lfn+0xcc>
    1aa8:	00d70023          	sb	a3,0(a4)
    1aac:	00d700a3          	sb	a3,1(a4)
    1ab0:	fbdff06f          	j	1a6c <fatfs_filename_to_lfn+0xcc>

00001ab4 <fatfs_sfn_create_entry>:
    1ab4:	00000793          	li	a5,0
    1ab8:	00b00813          	li	a6,11
    1abc:	00f508b3          	add	a7,a0,a5
    1ac0:	0008c303          	lbu	t1,0(a7)
    1ac4:	00f688b3          	add	a7,a3,a5
    1ac8:	00178793          	addi	a5,a5,1
    1acc:	00688023          	sb	t1,0(a7)
    1ad0:	ff0796e3          	bne	a5,a6,1abc <fatfs_sfn_create_entry+0x8>
    1ad4:	00e03733          	snez	a4,a4
    1ad8:	40e00733          	neg	a4,a4
    1adc:	02000793          	li	a5,32
    1ae0:	ff077713          	andi	a4,a4,-16
    1ae4:	00f70733          	add	a4,a4,a5
    1ae8:	00f68823          	sb	a5,16(a3)
    1aec:	00f68923          	sb	a5,18(a3)
    1af0:	00f68c23          	sb	a5,24(a3)
    1af4:	01065793          	srli	a5,a2,0x10
    1af8:	00f68a23          	sb	a5,20(a3)
    1afc:	01865793          	srli	a5,a2,0x18
    1b00:	00f68aa3          	sb	a5,21(a3)
    1b04:	0085d793          	srli	a5,a1,0x8
    1b08:	00c68d23          	sb	a2,26(a3)
    1b0c:	00b68e23          	sb	a1,28(a3)
    1b10:	00865613          	srli	a2,a2,0x8
    1b14:	00f68ea3          	sb	a5,29(a3)
    1b18:	0105d793          	srli	a5,a1,0x10
    1b1c:	0185d593          	srli	a1,a1,0x18
    1b20:	000686a3          	sb	zero,13(a3)
    1b24:	00068723          	sb	zero,14(a3)
    1b28:	000687a3          	sb	zero,15(a3)
    1b2c:	000688a3          	sb	zero,17(a3)
    1b30:	000689a3          	sb	zero,19(a3)
    1b34:	00068b23          	sb	zero,22(a3)
    1b38:	00068ba3          	sb	zero,23(a3)
    1b3c:	00068ca3          	sb	zero,25(a3)
    1b40:	00e685a3          	sb	a4,11(a3)
    1b44:	00068623          	sb	zero,12(a3)
    1b48:	00c68da3          	sb	a2,27(a3)
    1b4c:	00f68f23          	sb	a5,30(a3)
    1b50:	00b68fa3          	sb	a1,31(a3)
    1b54:	00008067          	ret

00001b58 <fatfs_lfn_create_sfn>:
    1b58:	fd010113          	addi	sp,sp,-48
    1b5c:	02912223          	sw	s1,36(sp)
    1b60:	00050493          	mv	s1,a0
    1b64:	00058513          	mv	a0,a1
    1b68:	02812423          	sw	s0,40(sp)
    1b6c:	01312e23          	sw	s3,28(sp)
    1b70:	00058413          	mv	s0,a1
    1b74:	02112623          	sw	ra,44(sp)
    1b78:	03212023          	sw	s2,32(sp)
    1b7c:	fffff097          	auipc	ra,0xfffff
    1b80:	104080e7          	jalr	260(ra) # c80 <strlen>
    1b84:	00044783          	lbu	a5,0(s0)
    1b88:	02e00993          	li	s3,46
    1b8c:	15378063          	beq	a5,s3,1ccc <fatfs_lfn_create_sfn+0x174>
    1b90:	00b00613          	li	a2,11
    1b94:	02000593          	li	a1,32
    1b98:	00050913          	mv	s2,a0
    1b9c:	00048513          	mv	a0,s1
    1ba0:	fffff097          	auipc	ra,0xfffff
    1ba4:	0a0080e7          	jalr	160(ra) # c40 <memset>
    1ba8:	00300613          	li	a2,3
    1bac:	02000593          	li	a1,32
    1bb0:	00c10513          	addi	a0,sp,12
    1bb4:	fffff097          	auipc	ra,0xfffff
    1bb8:	08c080e7          	jalr	140(ra) # c40 <memset>
    1bbc:	fff00793          	li	a5,-1
    1bc0:	00000713          	li	a4,0
    1bc4:	0d274263          	blt	a4,s2,1c88 <fatfs_lfn_create_sfn+0x130>
    1bc8:	fff00713          	li	a4,-1
    1bcc:	0ee78863          	beq	a5,a4,1cbc <fatfs_lfn_create_sfn+0x164>
    1bd0:	00178713          	addi	a4,a5,1
    1bd4:	00c10693          	addi	a3,sp,12
    1bd8:	00478613          	addi	a2,a5,4
    1bdc:	0ce61263          	bne	a2,a4,1ca0 <fatfs_lfn_create_sfn+0x148>
    1be0:	00000613          	li	a2,0
    1be4:	00000693          	li	a3,0
    1be8:	01900813          	li	a6,25
    1bec:	00800893          	li	a7,8
    1bf0:	02f6de63          	bge	a3,a5,1c2c <fatfs_lfn_create_sfn+0xd4>
    1bf4:	00d40733          	add	a4,s0,a3
    1bf8:	00074703          	lbu	a4,0(a4)
    1bfc:	fe070513          	addi	a0,a4,-32
    1c00:	0c050263          	beqz	a0,1cc4 <fatfs_lfn_create_sfn+0x16c>
    1c04:	fd270593          	addi	a1,a4,-46
    1c08:	0a058e63          	beqz	a1,1cc4 <fatfs_lfn_create_sfn+0x16c>
    1c0c:	f9f70593          	addi	a1,a4,-97
    1c10:	0ff5f593          	zext.b	a1,a1
    1c14:	00c48333          	add	t1,s1,a2
    1c18:	00160613          	addi	a2,a2,1
    1c1c:	00b86463          	bltu	a6,a1,1c24 <fatfs_lfn_create_sfn+0xcc>
    1c20:	0ff57713          	zext.b	a4,a0
    1c24:	00e30023          	sb	a4,0(t1)
    1c28:	09161e63          	bne	a2,a7,1cc4 <fatfs_lfn_create_sfn+0x16c>
    1c2c:	00c10793          	addi	a5,sp,12
    1c30:	00800693          	li	a3,8
    1c34:	01900513          	li	a0,25
    1c38:	00b00593          	li	a1,11
    1c3c:	0007c703          	lbu	a4,0(a5)
    1c40:	f9f70613          	addi	a2,a4,-97
    1c44:	0ff67613          	zext.b	a2,a2
    1c48:	00c56663          	bltu	a0,a2,1c54 <fatfs_lfn_create_sfn+0xfc>
    1c4c:	fe070713          	addi	a4,a4,-32
    1c50:	0ff77713          	zext.b	a4,a4
    1c54:	00d48633          	add	a2,s1,a3
    1c58:	00e60023          	sb	a4,0(a2)
    1c5c:	00168693          	addi	a3,a3,1
    1c60:	00178793          	addi	a5,a5,1
    1c64:	fcb69ce3          	bne	a3,a1,1c3c <fatfs_lfn_create_sfn+0xe4>
    1c68:	00100513          	li	a0,1
    1c6c:	02c12083          	lw	ra,44(sp)
    1c70:	02812403          	lw	s0,40(sp)
    1c74:	02412483          	lw	s1,36(sp)
    1c78:	02012903          	lw	s2,32(sp)
    1c7c:	01c12983          	lw	s3,28(sp)
    1c80:	03010113          	addi	sp,sp,48
    1c84:	00008067          	ret
    1c88:	00e406b3          	add	a3,s0,a4
    1c8c:	0006c683          	lbu	a3,0(a3)
    1c90:	01369463          	bne	a3,s3,1c98 <fatfs_lfn_create_sfn+0x140>
    1c94:	00070793          	mv	a5,a4
    1c98:	00170713          	addi	a4,a4,1
    1c9c:	f29ff06f          	j	1bc4 <fatfs_lfn_create_sfn+0x6c>
    1ca0:	01275863          	bge	a4,s2,1cb0 <fatfs_lfn_create_sfn+0x158>
    1ca4:	00e405b3          	add	a1,s0,a4
    1ca8:	0005c583          	lbu	a1,0(a1)
    1cac:	00b68023          	sb	a1,0(a3)
    1cb0:	00170713          	addi	a4,a4,1
    1cb4:	00168693          	addi	a3,a3,1
    1cb8:	f25ff06f          	j	1bdc <fatfs_lfn_create_sfn+0x84>
    1cbc:	00090793          	mv	a5,s2
    1cc0:	f21ff06f          	j	1be0 <fatfs_lfn_create_sfn+0x88>
    1cc4:	00168693          	addi	a3,a3,1
    1cc8:	f29ff06f          	j	1bf0 <fatfs_lfn_create_sfn+0x98>
    1ccc:	00000513          	li	a0,0
    1cd0:	f9dff06f          	j	1c6c <fatfs_lfn_create_sfn+0x114>

00001cd4 <fatfs_lfn_generate_tail>:
    1cd4:	000187b7          	lui	a5,0x18
    1cd8:	69f78793          	addi	a5,a5,1695 # 1869f <__stacktop+0x869f>
    1cdc:	16c7e463          	bltu	a5,a2,1e44 <fatfs_lfn_generate_tail+0x170>
    1ce0:	fa010113          	addi	sp,sp,-96
    1ce4:	04812c23          	sw	s0,88(sp)
    1ce8:	04912a23          	sw	s1,84(sp)
    1cec:	03712e23          	sw	s7,60(sp)
    1cf0:	00060413          	mv	s0,a2
    1cf4:	00058b93          	mv	s7,a1
    1cf8:	00c00613          	li	a2,12
    1cfc:	00000593          	li	a1,0
    1d00:	00050493          	mv	s1,a0
    1d04:	00410513          	addi	a0,sp,4
    1d08:	04112e23          	sw	ra,92(sp)
    1d0c:	05312623          	sw	s3,76(sp)
    1d10:	05412423          	sw	s4,72(sp)
    1d14:	05612023          	sw	s6,64(sp)
    1d18:	05212823          	sw	s2,80(sp)
    1d1c:	05512223          	sw	s5,68(sp)
    1d20:	fffff097          	auipc	ra,0xfffff
    1d24:	f20080e7          	jalr	-224(ra) # c40 <memset>
    1d28:	000045b7          	lui	a1,0x4
    1d2c:	07e00793          	li	a5,126
    1d30:	01100613          	li	a2,17
    1d34:	2a058593          	addi	a1,a1,672 # 42a0 <LEDS+0x7c>
    1d38:	01c10513          	addi	a0,sp,28
    1d3c:	01010993          	addi	s3,sp,16
    1d40:	00f10223          	sb	a5,4(sp)
    1d44:	00098a13          	mv	s4,s3
    1d48:	fffff097          	auipc	ra,0xfffff
    1d4c:	f14080e7          	jalr	-236(ra) # c5c <memcpy>
    1d50:	00900b13          	li	s6,9
    1d54:	00a00593          	li	a1,10
    1d58:	00040513          	mv	a0,s0
    1d5c:	fffff097          	auipc	ra,0xfffff
    1d60:	e80080e7          	jalr	-384(ra) # bdc <__umodsi3>
    1d64:	03050793          	addi	a5,a0,48
    1d68:	00278533          	add	a0,a5,sp
    1d6c:	fec54783          	lbu	a5,-20(a0)
    1d70:	00098913          	mv	s2,s3
    1d74:	00040513          	mv	a0,s0
    1d78:	00a00593          	li	a1,10
    1d7c:	00f98023          	sb	a5,0(s3)
    1d80:	00040a93          	mv	s5,s0
    1d84:	fffff097          	auipc	ra,0xfffff
    1d88:	e10080e7          	jalr	-496(ra) # b94 <__udivsi3>
    1d8c:	00198993          	addi	s3,s3,1
    1d90:	00050413          	mv	s0,a0
    1d94:	fd5b60e3          	bltu	s6,s5,1d54 <fatfs_lfn_generate_tail+0x80>
    1d98:	00098023          	sb	zero,0(s3)
    1d9c:	00410713          	addi	a4,sp,4
    1da0:	00090793          	mv	a5,s2
    1da4:	0947f663          	bgeu	a5,s4,1e30 <fatfs_lfn_generate_tail+0x15c>
    1da8:	00f10713          	addi	a4,sp,15
    1dac:	00000793          	li	a5,0
    1db0:	00e96663          	bltu	s2,a4,1dbc <fatfs_lfn_generate_tail+0xe8>
    1db4:	41490933          	sub	s2,s2,s4
    1db8:	00190793          	addi	a5,s2,1
    1dbc:	03078793          	addi	a5,a5,48
    1dc0:	002787b3          	add	a5,a5,sp
    1dc4:	000b8593          	mv	a1,s7
    1dc8:	fc078aa3          	sb	zero,-43(a5)
    1dcc:	00b00613          	li	a2,11
    1dd0:	00048513          	mv	a0,s1
    1dd4:	fffff097          	auipc	ra,0xfffff
    1dd8:	e88080e7          	jalr	-376(ra) # c5c <memcpy>
    1ddc:	00410513          	addi	a0,sp,4
    1de0:	fffff097          	auipc	ra,0xfffff
    1de4:	ea0080e7          	jalr	-352(ra) # c80 <strlen>
    1de8:	40a484b3          	sub	s1,s1,a0
    1dec:	00050613          	mv	a2,a0
    1df0:	00410593          	addi	a1,sp,4
    1df4:	00848513          	addi	a0,s1,8
    1df8:	fffff097          	auipc	ra,0xfffff
    1dfc:	e64080e7          	jalr	-412(ra) # c5c <memcpy>
    1e00:	05c12083          	lw	ra,92(sp)
    1e04:	05812403          	lw	s0,88(sp)
    1e08:	05412483          	lw	s1,84(sp)
    1e0c:	05012903          	lw	s2,80(sp)
    1e10:	04c12983          	lw	s3,76(sp)
    1e14:	04812a03          	lw	s4,72(sp)
    1e18:	04412a83          	lw	s5,68(sp)
    1e1c:	04012b03          	lw	s6,64(sp)
    1e20:	03c12b83          	lw	s7,60(sp)
    1e24:	00100513          	li	a0,1
    1e28:	06010113          	addi	sp,sp,96
    1e2c:	00008067          	ret
    1e30:	0007c683          	lbu	a3,0(a5)
    1e34:	00170713          	addi	a4,a4,1
    1e38:	fff78793          	addi	a5,a5,-1
    1e3c:	00d70023          	sb	a3,0(a4)
    1e40:	f65ff06f          	j	1da4 <fatfs_lfn_generate_tail+0xd0>
    1e44:	00000513          	li	a0,0
    1e48:	00008067          	ret

00001e4c <fatfs_total_path_levels>:
    1e4c:	fff00793          	li	a5,-1
    1e50:	06050263          	beqz	a0,1eb4 <fatfs_total_path_levels+0x68>
    1e54:	00054703          	lbu	a4,0(a0)
    1e58:	02f00793          	li	a5,47
    1e5c:	00f71863          	bne	a4,a5,1e6c <fatfs_total_path_levels+0x20>
    1e60:	00150513          	addi	a0,a0,1
    1e64:	00000793          	li	a5,0
    1e68:	0400006f          	j	1ea8 <fatfs_total_path_levels+0x5c>
    1e6c:	00154703          	lbu	a4,1(a0)
    1e70:	03a00793          	li	a5,58
    1e74:	00f70a63          	beq	a4,a5,1e88 <fatfs_total_path_levels+0x3c>
    1e78:	00254683          	lbu	a3,2(a0)
    1e7c:	05c00713          	li	a4,92
    1e80:	fff00793          	li	a5,-1
    1e84:	02e69863          	bne	a3,a4,1eb4 <fatfs_total_path_levels+0x68>
    1e88:	00350513          	addi	a0,a0,3
    1e8c:	05c00713          	li	a4,92
    1e90:	fd5ff06f          	j	1e64 <fatfs_total_path_levels+0x18>
    1e94:	00150513          	addi	a0,a0,1
    1e98:	00e68663          	beq	a3,a4,1ea4 <fatfs_total_path_levels+0x58>
    1e9c:	00054683          	lbu	a3,0(a0)
    1ea0:	fe069ae3          	bnez	a3,1e94 <fatfs_total_path_levels+0x48>
    1ea4:	00178793          	addi	a5,a5,1
    1ea8:	00054683          	lbu	a3,0(a0)
    1eac:	fe0698e3          	bnez	a3,1e9c <fatfs_total_path_levels+0x50>
    1eb0:	fff78793          	addi	a5,a5,-1
    1eb4:	00078513          	mv	a0,a5
    1eb8:	00008067          	ret

00001ebc <fatfs_get_substring>:
    1ebc:	0cd05e63          	blez	a3,1f98 <fatfs_get_substring+0xdc>
    1ec0:	0c050c63          	beqz	a0,1f98 <fatfs_get_substring+0xdc>
    1ec4:	fe010113          	addi	sp,sp,-32
    1ec8:	00812c23          	sw	s0,24(sp)
    1ecc:	00112e23          	sw	ra,28(sp)
    1ed0:	00912a23          	sw	s1,20(sp)
    1ed4:	00054483          	lbu	s1,0(a0)
    1ed8:	02f00793          	li	a5,47
    1edc:	00150413          	addi	s0,a0,1
    1ee0:	02f48463          	beq	s1,a5,1f08 <fatfs_get_substring+0x4c>
    1ee4:	00154703          	lbu	a4,1(a0)
    1ee8:	03a00793          	li	a5,58
    1eec:	00f70a63          	beq	a4,a5,1f00 <fatfs_get_substring+0x44>
    1ef0:	00254803          	lbu	a6,2(a0)
    1ef4:	05c00713          	li	a4,92
    1ef8:	fff00793          	li	a5,-1
    1efc:	04e81c63          	bne	a6,a4,1f54 <fatfs_get_substring+0x98>
    1f00:	00350413          	addi	s0,a0,3
    1f04:	05c00493          	li	s1,92
    1f08:	00040513          	mv	a0,s0
    1f0c:	00d12623          	sw	a3,12(sp)
    1f10:	00c12423          	sw	a2,8(sp)
    1f14:	00b12223          	sw	a1,4(sp)
    1f18:	fffff097          	auipc	ra,0xfffff
    1f1c:	d68080e7          	jalr	-664(ra) # c80 <strlen>
    1f20:	00c12683          	lw	a3,12(sp)
    1f24:	00412583          	lw	a1,4(sp)
    1f28:	00812603          	lw	a2,8(sp)
    1f2c:	00000713          	li	a4,0
    1f30:	00000813          	li	a6,0
    1f34:	00000793          	li	a5,0
    1f38:	fff68693          	addi	a3,a3,-1
    1f3c:	00e608b3          	add	a7,a2,a4
    1f40:	02a7c663          	blt	a5,a0,1f6c <fatfs_get_substring+0xb0>
    1f44:	00088023          	sb	zero,0(a7)
    1f48:	00064783          	lbu	a5,0(a2)
    1f4c:	0017b793          	seqz	a5,a5
    1f50:	40f007b3          	neg	a5,a5
    1f54:	01c12083          	lw	ra,28(sp)
    1f58:	01812403          	lw	s0,24(sp)
    1f5c:	01412483          	lw	s1,20(sp)
    1f60:	00078513          	mv	a0,a5
    1f64:	02010113          	addi	sp,sp,32
    1f68:	00008067          	ret
    1f6c:	00f40333          	add	t1,s0,a5
    1f70:	00034303          	lbu	t1,0(t1)
    1f74:	00931863          	bne	t1,s1,1f84 <fatfs_get_substring+0xc8>
    1f78:	00180813          	addi	a6,a6,1
    1f7c:	00178793          	addi	a5,a5,1
    1f80:	fbdff06f          	j	1f3c <fatfs_get_substring+0x80>
    1f84:	feb81ce3          	bne	a6,a1,1f7c <fatfs_get_substring+0xc0>
    1f88:	fed75ae3          	bge	a4,a3,1f7c <fatfs_get_substring+0xc0>
    1f8c:	00170713          	addi	a4,a4,1
    1f90:	00688023          	sb	t1,0(a7)
    1f94:	fe9ff06f          	j	1f7c <fatfs_get_substring+0xc0>
    1f98:	fff00793          	li	a5,-1
    1f9c:	00078513          	mv	a0,a5
    1fa0:	00008067          	ret

00001fa4 <fatfs_split_path>:
    1fa4:	fd010113          	addi	sp,sp,-48
    1fa8:	02912223          	sw	s1,36(sp)
    1fac:	03212023          	sw	s2,32(sp)
    1fb0:	01312e23          	sw	s3,28(sp)
    1fb4:	01412c23          	sw	s4,24(sp)
    1fb8:	02112623          	sw	ra,44(sp)
    1fbc:	02812423          	sw	s0,40(sp)
    1fc0:	01512a23          	sw	s5,20(sp)
    1fc4:	00050993          	mv	s3,a0
    1fc8:	00058493          	mv	s1,a1
    1fcc:	00060913          	mv	s2,a2
    1fd0:	00068a13          	mv	s4,a3
    1fd4:	00e12623          	sw	a4,12(sp)
    1fd8:	00000097          	auipc	ra,0x0
    1fdc:	e74080e7          	jalr	-396(ra) # 1e4c <fatfs_total_path_levels>
    1fe0:	fff00793          	li	a5,-1
    1fe4:	02f51863          	bne	a0,a5,2014 <fatfs_split_path+0x70>
    1fe8:	fff00413          	li	s0,-1
    1fec:	02c12083          	lw	ra,44(sp)
    1ff0:	00040513          	mv	a0,s0
    1ff4:	02812403          	lw	s0,40(sp)
    1ff8:	02412483          	lw	s1,36(sp)
    1ffc:	02012903          	lw	s2,32(sp)
    2000:	01c12983          	lw	s3,28(sp)
    2004:	01812a03          	lw	s4,24(sp)
    2008:	01412a83          	lw	s5,20(sp)
    200c:	03010113          	addi	sp,sp,48
    2010:	00008067          	ret
    2014:	00c12683          	lw	a3,12(sp)
    2018:	00050593          	mv	a1,a0
    201c:	00a12623          	sw	a0,12(sp)
    2020:	000a0613          	mv	a2,s4
    2024:	00098513          	mv	a0,s3
    2028:	00000097          	auipc	ra,0x0
    202c:	e94080e7          	jalr	-364(ra) # 1ebc <fatfs_get_substring>
    2030:	00050413          	mv	s0,a0
    2034:	fa051ae3          	bnez	a0,1fe8 <fatfs_split_path+0x44>
    2038:	00c12583          	lw	a1,12(sp)
    203c:	00059663          	bnez	a1,2048 <fatfs_split_path+0xa4>
    2040:	00048023          	sb	zero,0(s1)
    2044:	fa9ff06f          	j	1fec <fatfs_split_path+0x48>
    2048:	00098513          	mv	a0,s3
    204c:	fffff097          	auipc	ra,0xfffff
    2050:	c34080e7          	jalr	-972(ra) # c80 <strlen>
    2054:	00050a93          	mv	s5,a0
    2058:	000a0513          	mv	a0,s4
    205c:	fffff097          	auipc	ra,0xfffff
    2060:	c24080e7          	jalr	-988(ra) # c80 <strlen>
    2064:	40aa8633          	sub	a2,s5,a0
    2068:	00c95463          	bge	s2,a2,2070 <fatfs_split_path+0xcc>
    206c:	00090613          	mv	a2,s2
    2070:	00048513          	mv	a0,s1
    2074:	00098593          	mv	a1,s3
    2078:	00c12623          	sw	a2,12(sp)
    207c:	fffff097          	auipc	ra,0xfffff
    2080:	be0080e7          	jalr	-1056(ra) # c5c <memcpy>
    2084:	00c12603          	lw	a2,12(sp)
    2088:	00c484b3          	add	s1,s1,a2
    208c:	fe048fa3          	sb	zero,-1(s1)
    2090:	f5dff06f          	j	1fec <fatfs_split_path+0x48>

00002094 <fatfs_compare_names>:
    2094:	fd010113          	addi	sp,sp,-48
    2098:	02112623          	sw	ra,44(sp)
    209c:	03212023          	sw	s2,32(sp)
    20a0:	01312e23          	sw	s3,28(sp)
    20a4:	01412c23          	sw	s4,24(sp)
    20a8:	01512a23          	sw	s5,20(sp)
    20ac:	00058a13          	mv	s4,a1
    20b0:	02812423          	sw	s0,40(sp)
    20b4:	02912223          	sw	s1,36(sp)
    20b8:	01612823          	sw	s6,16(sp)
    20bc:	01712623          	sw	s7,12(sp)
    20c0:	01812423          	sw	s8,8(sp)
    20c4:	00050a93          	mv	s5,a0
    20c8:	fffff097          	auipc	ra,0xfffff
    20cc:	2d4080e7          	jalr	724(ra) # 139c <FileString_GetExtension>
    20d0:	00050993          	mv	s3,a0
    20d4:	000a0513          	mv	a0,s4
    20d8:	fffff097          	auipc	ra,0xfffff
    20dc:	2c4080e7          	jalr	708(ra) # 139c <FileString_GetExtension>
    20e0:	fff00793          	li	a5,-1
    20e4:	00050913          	mv	s2,a0
    20e8:	02f99e63          	bne	s3,a5,2124 <fatfs_compare_names+0x90>
    20ec:	0f350063          	beq	a0,s3,21cc <fatfs_compare_names+0x138>
    20f0:	00000513          	li	a0,0
    20f4:	02c12083          	lw	ra,44(sp)
    20f8:	02812403          	lw	s0,40(sp)
    20fc:	02412483          	lw	s1,36(sp)
    2100:	02012903          	lw	s2,32(sp)
    2104:	01c12983          	lw	s3,28(sp)
    2108:	01812a03          	lw	s4,24(sp)
    210c:	01412a83          	lw	s5,20(sp)
    2110:	01012b03          	lw	s6,16(sp)
    2114:	00c12b83          	lw	s7,12(sp)
    2118:	00812c03          	lw	s8,8(sp)
    211c:	03010113          	addi	sp,sp,48
    2120:	00008067          	ret
    2124:	fcf506e3          	beq	a0,a5,20f0 <fatfs_compare_names+0x5c>
    2128:	00198793          	addi	a5,s3,1
    212c:	00fa8b33          	add	s6,s5,a5
    2130:	00050413          	mv	s0,a0
    2134:	00150793          	addi	a5,a0,1
    2138:	000b0513          	mv	a0,s6
    213c:	00fa0bb3          	add	s7,s4,a5
    2140:	fffff097          	auipc	ra,0xfffff
    2144:	b40080e7          	jalr	-1216(ra) # c80 <strlen>
    2148:	00050c13          	mv	s8,a0
    214c:	000b8513          	mv	a0,s7
    2150:	00098493          	mv	s1,s3
    2154:	fffff097          	auipc	ra,0xfffff
    2158:	b2c080e7          	jalr	-1236(ra) # c80 <strlen>
    215c:	f8ac1ae3          	bne	s8,a0,20f0 <fatfs_compare_names+0x5c>
    2160:	000b0513          	mv	a0,s6
    2164:	fffff097          	auipc	ra,0xfffff
    2168:	b1c080e7          	jalr	-1252(ra) # c80 <strlen>
    216c:	00050613          	mv	a2,a0
    2170:	000b8593          	mv	a1,s7
    2174:	000b0513          	mv	a0,s6
    2178:	fffff097          	auipc	ra,0xfffff
    217c:	1b4080e7          	jalr	436(ra) # 132c <FileString_StrCmpNoCase>
    2180:	f60518e3          	bnez	a0,20f0 <fatfs_compare_names+0x5c>
    2184:	fff48793          	addi	a5,s1,-1
    2188:	00fa87b3          	add	a5,s5,a5
    218c:	41378733          	sub	a4,a5,s3
    2190:	02000693          	li	a3,32
    2194:	06e79263          	bne	a5,a4,21f8 <fatfs_compare_names+0x164>
    2198:	fff40793          	addi	a5,s0,-1
    219c:	00fa07b3          	add	a5,s4,a5
    21a0:	41278733          	sub	a4,a5,s2
    21a4:	02000693          	li	a3,32
    21a8:	06e79263          	bne	a5,a4,220c <fatfs_compare_names+0x178>
    21ac:	f53912e3          	bne	s2,s3,20f0 <fatfs_compare_names+0x5c>
    21b0:	00090613          	mv	a2,s2
    21b4:	000a0593          	mv	a1,s4
    21b8:	000a8513          	mv	a0,s5
    21bc:	fffff097          	auipc	ra,0xfffff
    21c0:	170080e7          	jalr	368(ra) # 132c <FileString_StrCmpNoCase>
    21c4:	00153513          	seqz	a0,a0
    21c8:	f2dff06f          	j	20f4 <fatfs_compare_names+0x60>
    21cc:	000a8513          	mv	a0,s5
    21d0:	fffff097          	auipc	ra,0xfffff
    21d4:	ab0080e7          	jalr	-1360(ra) # c80 <strlen>
    21d8:	00050493          	mv	s1,a0
    21dc:	00050993          	mv	s3,a0
    21e0:	000a0513          	mv	a0,s4
    21e4:	fffff097          	auipc	ra,0xfffff
    21e8:	a9c080e7          	jalr	-1380(ra) # c80 <strlen>
    21ec:	00050413          	mv	s0,a0
    21f0:	00050913          	mv	s2,a0
    21f4:	f91ff06f          	j	2184 <fatfs_compare_names+0xf0>
    21f8:	0007c603          	lbu	a2,0(a5)
    21fc:	f8d61ee3          	bne	a2,a3,2198 <fatfs_compare_names+0x104>
    2200:	415789b3          	sub	s3,a5,s5
    2204:	fff78793          	addi	a5,a5,-1
    2208:	f8dff06f          	j	2194 <fatfs_compare_names+0x100>
    220c:	0007c603          	lbu	a2,0(a5)
    2210:	f8d61ee3          	bne	a2,a3,21ac <fatfs_compare_names+0x118>
    2214:	41478933          	sub	s2,a5,s4
    2218:	fff78793          	addi	a5,a5,-1
    221c:	f8dff06f          	j	21a8 <fatfs_compare_names+0x114>

00002220 <_check_file_open>:
    2220:	fe010113          	addi	sp,sp,-32
    2224:	000047b7          	lui	a5,0x4
    2228:	00812c23          	sw	s0,24(sp)
    222c:	5187a403          	lw	s0,1304(a5) # 4518 <_open_file_list>
    2230:	00912a23          	sw	s1,20(sp)
    2234:	00112e23          	sw	ra,28(sp)
    2238:	01212823          	sw	s2,16(sp)
    223c:	01312623          	sw	s3,12(sp)
    2240:	00050493          	mv	s1,a0
    2244:	00041663          	bnez	s0,2250 <_check_file_open+0x30>
    2248:	00000513          	li	a0,0
    224c:	03c0006f          	j	2288 <_check_file_open+0x68>
    2250:	bc440793          	addi	a5,s0,-1084
    2254:	00f49663          	bne	s1,a5,2260 <_check_file_open+0x40>
    2258:	00442403          	lw	s0,4(s0)
    225c:	fe9ff06f          	j	2244 <_check_file_open+0x24>
    2260:	01448593          	addi	a1,s1,20
    2264:	bd840513          	addi	a0,s0,-1064
    2268:	00000097          	auipc	ra,0x0
    226c:	e2c080e7          	jalr	-468(ra) # 2094 <fatfs_compare_names>
    2270:	fe0504e3          	beqz	a0,2258 <_check_file_open+0x38>
    2274:	11848593          	addi	a1,s1,280
    2278:	cdc40513          	addi	a0,s0,-804
    227c:	00000097          	auipc	ra,0x0
    2280:	e18080e7          	jalr	-488(ra) # 2094 <fatfs_compare_names>
    2284:	fc050ae3          	beqz	a0,2258 <_check_file_open+0x38>
    2288:	01c12083          	lw	ra,28(sp)
    228c:	01812403          	lw	s0,24(sp)
    2290:	01412483          	lw	s1,20(sp)
    2294:	01012903          	lw	s2,16(sp)
    2298:	00c12983          	lw	s3,12(sp)
    229c:	02010113          	addi	sp,sp,32
    22a0:	00008067          	ret

000022a4 <fatfs_fat_init>:
    22a4:	ff010113          	addi	sp,sp,-16
    22a8:	00812423          	sw	s0,8(sp)
    22ac:	00912223          	sw	s1,4(sp)
    22b0:	00112623          	sw	ra,12(sp)
    22b4:	fff00793          	li	a5,-1
    22b8:	25850493          	addi	s1,a0,600
    22bc:	00050413          	mv	s0,a0
    22c0:	44f52c23          	sw	a5,1112(a0)
    22c4:	24052a23          	sw	zero,596(a0)
    22c8:	44052e23          	sw	zero,1116(a0)
    22cc:	20000613          	li	a2,512
    22d0:	00048513          	mv	a0,s1
    22d4:	00000593          	li	a1,0
    22d8:	fffff097          	auipc	ra,0xfffff
    22dc:	968080e7          	jalr	-1688(ra) # c40 <memset>
    22e0:	25442783          	lw	a5,596(s0)
    22e4:	00c12083          	lw	ra,12(sp)
    22e8:	24942a23          	sw	s1,596(s0)
    22ec:	46042023          	sw	zero,1120(s0)
    22f0:	46f42223          	sw	a5,1124(s0)
    22f4:	00812403          	lw	s0,8(sp)
    22f8:	00412483          	lw	s1,4(sp)
    22fc:	01010113          	addi	sp,sp,16
    2300:	00008067          	ret

00002304 <fatfs_init>:
    2304:	fd010113          	addi	sp,sp,-48
    2308:	02812423          	sw	s0,40(sp)
    230c:	02112623          	sw	ra,44(sp)
    2310:	02912223          	sw	s1,36(sp)
    2314:	03212023          	sw	s2,32(sp)
    2318:	01312e23          	sw	s3,28(sp)
    231c:	fff00793          	li	a5,-1
    2320:	24f52223          	sw	a5,580(a0)
    2324:	24052423          	sw	zero,584(a0)
    2328:	02052223          	sw	zero,36(a0)
    232c:	00050413          	mv	s0,a0
    2330:	00000097          	auipc	ra,0x0
    2334:	f74080e7          	jalr	-140(ra) # 22a4 <fatfs_fat_init>
    2338:	03442783          	lw	a5,52(s0)
    233c:	02079463          	bnez	a5,2364 <fatfs_init+0x60>
    2340:	fff00713          	li	a4,-1
    2344:	02c12083          	lw	ra,44(sp)
    2348:	02812403          	lw	s0,40(sp)
    234c:	02412483          	lw	s1,36(sp)
    2350:	02012903          	lw	s2,32(sp)
    2354:	01c12983          	lw	s3,28(sp)
    2358:	00070513          	mv	a0,a4
    235c:	03010113          	addi	sp,sp,48
    2360:	00008067          	ret
    2364:	04440593          	addi	a1,s0,68
    2368:	00100613          	li	a2,1
    236c:	00000513          	li	a0,0
    2370:	00b12623          	sw	a1,12(sp)
    2374:	000780e7          	jalr	a5
    2378:	fc0504e3          	beqz	a0,2340 <fatfs_init+0x3c>
    237c:	24244703          	lbu	a4,578(s0)
    2380:	05500793          	li	a5,85
    2384:	00c12583          	lw	a1,12(sp)
    2388:	00f70663          	beq	a4,a5,2394 <fatfs_init+0x90>
    238c:	ffd00713          	li	a4,-3
    2390:	fb5ff06f          	j	2344 <fatfs_init+0x40>
    2394:	24344703          	lbu	a4,579(s0)
    2398:	0aa00793          	li	a5,170
    239c:	fef718e3          	bne	a4,a5,238c <fatfs_init+0x88>
    23a0:	20644783          	lbu	a5,518(s0)
    23a4:	00600713          	li	a4,6
    23a8:	02f76463          	bltu	a4,a5,23d0 <fatfs_init+0xcc>
    23ac:	00400713          	li	a4,4
    23b0:	00f76663          	bltu	a4,a5,23bc <fatfs_init+0xb8>
    23b4:	00000513          	li	a0,0
    23b8:	02078663          	beqz	a5,23e4 <fatfs_init+0xe0>
    23bc:	20c45503          	lhu	a0,524(s0)
    23c0:	20a45783          	lhu	a5,522(s0)
    23c4:	01051513          	slli	a0,a0,0x10
    23c8:	00f56533          	or	a0,a0,a5
    23cc:	0180006f          	j	23e4 <fatfs_init+0xe0>
    23d0:	00c00713          	li	a4,12
    23d4:	12f76663          	bltu	a4,a5,2500 <fatfs_init+0x1fc>
    23d8:	00a00713          	li	a4,10
    23dc:	00000513          	li	a0,0
    23e0:	fcf76ee3          	bltu	a4,a5,23bc <fatfs_init+0xb8>
    23e4:	03442783          	lw	a5,52(s0)
    23e8:	00a42e23          	sw	a0,28(s0)
    23ec:	00100613          	li	a2,1
    23f0:	000780e7          	jalr	a5
    23f4:	f40506e3          	beqz	a0,2340 <fatfs_init+0x3c>
    23f8:	05044783          	lbu	a5,80(s0)
    23fc:	04f44703          	lbu	a4,79(s0)
    2400:	20000693          	li	a3,512
    2404:	00879793          	slli	a5,a5,0x8
    2408:	00e7e7b3          	or	a5,a5,a4
    240c:	ffe00713          	li	a4,-2
    2410:	f2d79ae3          	bne	a5,a3,2344 <fatfs_init+0x40>
    2414:	05644483          	lbu	s1,86(s0)
    2418:	05544783          	lbu	a5,85(s0)
    241c:	05144983          	lbu	s3,81(s0)
    2420:	00849493          	slli	s1,s1,0x8
    2424:	05a45583          	lhu	a1,90(s0)
    2428:	00f4e4b3          	or	s1,s1,a5
    242c:	01340023          	sb	s3,0(s0)
    2430:	02941423          	sh	s1,40(s0)
    2434:	05245903          	lhu	s2,82(s0)
    2438:	05444503          	lbu	a0,84(s0)
    243c:	00059463          	bnez	a1,2444 <fatfs_init+0x140>
    2440:	06842583          	lw	a1,104(s0)
    2444:	07042783          	lw	a5,112(s0)
    2448:	02b42023          	sw	a1,32(s0)
    244c:	00549493          	slli	s1,s1,0x5
    2450:	00f42423          	sw	a5,8(s0)
    2454:	07445783          	lhu	a5,116(s0)
    2458:	1ff48493          	addi	s1,s1,511
    245c:	4094d493          	srai	s1,s1,0x9
    2460:	00f41c23          	sh	a5,24(s0)
    2464:	fffff097          	auipc	ra,0xfffff
    2468:	e30080e7          	jalr	-464(ra) # 1294 <__mulsi3>
    246c:	00a907b3          	add	a5,s2,a0
    2470:	00f42623          	sw	a5,12(s0)
    2474:	01c42783          	lw	a5,28(s0)
    2478:	24245703          	lhu	a4,578(s0)
    247c:	00942823          	sw	s1,16(s0)
    2480:	00f907b3          	add	a5,s2,a5
    2484:	00f42a23          	sw	a5,20(s0)
    2488:	00f507b3          	add	a5,a0,a5
    248c:	00f42223          	sw	a5,4(s0)
    2490:	0000b7b7          	lui	a5,0xb
    2494:	a5578793          	addi	a5,a5,-1451 # aa55 <_files+0x1ec5>
    2498:	eef71ae3          	bne	a4,a5,238c <fatfs_init+0x88>
    249c:	05844783          	lbu	a5,88(s0)
    24a0:	05744703          	lbu	a4,87(s0)
    24a4:	00879793          	slli	a5,a5,0x8
    24a8:	00e7e7b3          	or	a5,a5,a4
    24ac:	00079463          	bnez	a5,24b4 <fatfs_init+0x1b0>
    24b0:	06442783          	lw	a5,100(s0)
    24b4:	ffb00713          	li	a4,-5
    24b8:	e80986e3          	beqz	s3,2344 <fatfs_init+0x40>
    24bc:	00990933          	add	s2,s2,s1
    24c0:	00a90533          	add	a0,s2,a0
    24c4:	40a78533          	sub	a0,a5,a0
    24c8:	00098593          	mv	a1,s3
    24cc:	ffffe097          	auipc	ra,0xffffe
    24d0:	6c8080e7          	jalr	1736(ra) # b94 <__udivsi3>
    24d4:	000017b7          	lui	a5,0x1
    24d8:	ff478793          	addi	a5,a5,-12 # ff4 <print_string+0x4>
    24dc:	ffb00713          	li	a4,-5
    24e0:	e6a7f2e3          	bgeu	a5,a0,2344 <fatfs_init+0x40>
    24e4:	000107b7          	lui	a5,0x10
    24e8:	ff478793          	addi	a5,a5,-12 # fff4 <_files+0x7464>
    24ec:	02a7e663          	bltu	a5,a0,2518 <fatfs_init+0x214>
    24f0:	00042423          	sw	zero,8(s0)
    24f4:	02042823          	sw	zero,48(s0)
    24f8:	00000713          	li	a4,0
    24fc:	e49ff06f          	j	2344 <fatfs_init+0x40>
    2500:	ff278793          	addi	a5,a5,-14
    2504:	0ff7f793          	zext.b	a5,a5
    2508:	00100713          	li	a4,1
    250c:	00000513          	li	a0,0
    2510:	eaf776e3          	bgeu	a4,a5,23bc <fatfs_init+0xb8>
    2514:	ed1ff06f          	j	23e4 <fatfs_init+0xe0>
    2518:	00100793          	li	a5,1
    251c:	02f42823          	sw	a5,48(s0)
    2520:	fd9ff06f          	j	24f8 <fatfs_init+0x1f4>

00002524 <fl_attach_media>:
    2524:	000047b7          	lui	a5,0x4
    2528:	5247a783          	lw	a5,1316(a5) # 4524 <_filelib_init>
    252c:	fe010113          	addi	sp,sp,-32
    2530:	00812c23          	sw	s0,24(sp)
    2534:	00112e23          	sw	ra,28(sp)
    2538:	00050413          	mv	s0,a0
    253c:	00079a63          	bnez	a5,2550 <fl_attach_media+0x2c>
    2540:	00b12623          	sw	a1,12(sp)
    2544:	fffff097          	auipc	ra,0xfffff
    2548:	1e4080e7          	jalr	484(ra) # 1728 <fl_init>
    254c:	00c12583          	lw	a1,12(sp)
    2550:	000087b7          	lui	a5,0x8
    2554:	72878513          	addi	a0,a5,1832 # 8728 <_fs>
    2558:	02b52c23          	sw	a1,56(a0)
    255c:	02852a23          	sw	s0,52(a0)
    2560:	00000097          	auipc	ra,0x0
    2564:	da4080e7          	jalr	-604(ra) # 2304 <fatfs_init>
    2568:	00050593          	mv	a1,a0
    256c:	02050863          	beqz	a0,259c <fl_attach_media+0x78>
    2570:	00a12623          	sw	a0,12(sp)
    2574:	00004537          	lui	a0,0x4
    2578:	2b450513          	addi	a0,a0,692 # 42b4 <LEDS+0x90>
    257c:	fffff097          	auipc	ra,0xfffff
    2580:	bdc080e7          	jalr	-1060(ra) # 1158 <printf>
    2584:	00c12583          	lw	a1,12(sp)
    2588:	01c12083          	lw	ra,28(sp)
    258c:	01812403          	lw	s0,24(sp)
    2590:	00058513          	mv	a0,a1
    2594:	02010113          	addi	sp,sp,32
    2598:	00008067          	ret
    259c:	000047b7          	lui	a5,0x4
    25a0:	00100713          	li	a4,1
    25a4:	52e7a023          	sw	a4,1312(a5) # 4520 <_filelib_valid>
    25a8:	fe1ff06f          	j	2588 <fl_attach_media+0x64>

000025ac <fatfs_fat_purge>:
    25ac:	25452583          	lw	a1,596(a0)
    25b0:	fe010113          	addi	sp,sp,-32
    25b4:	00812c23          	sw	s0,24(sp)
    25b8:	00112e23          	sw	ra,28(sp)
    25bc:	00050413          	mv	s0,a0
    25c0:	00059663          	bnez	a1,25cc <fatfs_fat_purge+0x20>
    25c4:	00100513          	li	a0,1
    25c8:	02c0006f          	j	25f4 <fatfs_fat_purge+0x48>
    25cc:	2045a783          	lw	a5,516(a1)
    25d0:	00079663          	bnez	a5,25dc <fatfs_fat_purge+0x30>
    25d4:	20c5a583          	lw	a1,524(a1)
    25d8:	fe9ff06f          	j	25c0 <fatfs_fat_purge+0x14>
    25dc:	00040513          	mv	a0,s0
    25e0:	00b12623          	sw	a1,12(sp)
    25e4:	fffff097          	auipc	ra,0xfffff
    25e8:	de4080e7          	jalr	-540(ra) # 13c8 <fatfs_fat_writeback>
    25ec:	00c12583          	lw	a1,12(sp)
    25f0:	fe0512e3          	bnez	a0,25d4 <fatfs_fat_purge+0x28>
    25f4:	01c12083          	lw	ra,28(sp)
    25f8:	01812403          	lw	s0,24(sp)
    25fc:	02010113          	addi	sp,sp,32
    2600:	00008067          	ret

00002604 <fatfs_find_next_cluster>:
    2604:	ff010113          	addi	sp,sp,-16
    2608:	00812423          	sw	s0,8(sp)
    260c:	01212023          	sw	s2,0(sp)
    2610:	00112623          	sw	ra,12(sp)
    2614:	00912223          	sw	s1,4(sp)
    2618:	00050913          	mv	s2,a0
    261c:	00200413          	li	s0,2
    2620:	00058463          	beqz	a1,2628 <fatfs_find_next_cluster+0x24>
    2624:	00058413          	mv	s0,a1
    2628:	03092783          	lw	a5,48(s2)
    262c:	00745493          	srli	s1,s0,0x7
    2630:	00079463          	bnez	a5,2638 <fatfs_find_next_cluster+0x34>
    2634:	00845493          	srli	s1,s0,0x8
    2638:	01492583          	lw	a1,20(s2)
    263c:	00090513          	mv	a0,s2
    2640:	00b485b3          	add	a1,s1,a1
    2644:	fffff097          	auipc	ra,0xfffff
    2648:	e08080e7          	jalr	-504(ra) # 144c <fatfs_fat_read_sector>
    264c:	00050793          	mv	a5,a0
    2650:	fff00513          	li	a0,-1
    2654:	04078863          	beqz	a5,26a4 <fatfs_find_next_cluster+0xa0>
    2658:	03092703          	lw	a4,48(s2)
    265c:	2087a783          	lw	a5,520(a5)
    2660:	04071e63          	bnez	a4,26bc <fatfs_find_next_cluster+0xb8>
    2664:	00849493          	slli	s1,s1,0x8
    2668:	40940433          	sub	s0,s0,s1
    266c:	00141413          	slli	s0,s0,0x1
    2670:	01041413          	slli	s0,s0,0x10
    2674:	01045413          	srli	s0,s0,0x10
    2678:	008787b3          	add	a5,a5,s0
    267c:	0017c503          	lbu	a0,1(a5)
    2680:	0007c783          	lbu	a5,0(a5)
    2684:	00851513          	slli	a0,a0,0x8
    2688:	00f50533          	add	a0,a0,a5
    268c:	ffff07b7          	lui	a5,0xffff0
    2690:	00878793          	addi	a5,a5,8 # ffff0008 <__stacktop+0xfffe0008>
    2694:	00f507b3          	add	a5,a0,a5
    2698:	00700713          	li	a4,7
    269c:	00f76463          	bltu	a4,a5,26a4 <fatfs_find_next_cluster+0xa0>
    26a0:	fff00513          	li	a0,-1
    26a4:	00c12083          	lw	ra,12(sp)
    26a8:	00812403          	lw	s0,8(sp)
    26ac:	00412483          	lw	s1,4(sp)
    26b0:	00012903          	lw	s2,0(sp)
    26b4:	01010113          	addi	sp,sp,16
    26b8:	00008067          	ret
    26bc:	00749493          	slli	s1,s1,0x7
    26c0:	40940433          	sub	s0,s0,s1
    26c4:	00241413          	slli	s0,s0,0x2
    26c8:	01041413          	slli	s0,s0,0x10
    26cc:	01045413          	srli	s0,s0,0x10
    26d0:	008787b3          	add	a5,a5,s0
    26d4:	0037c503          	lbu	a0,3(a5)
    26d8:	0027c703          	lbu	a4,2(a5)
    26dc:	01851513          	slli	a0,a0,0x18
    26e0:	01071713          	slli	a4,a4,0x10
    26e4:	00e50533          	add	a0,a0,a4
    26e8:	0007c703          	lbu	a4,0(a5)
    26ec:	0017c783          	lbu	a5,1(a5)
    26f0:	00e50533          	add	a0,a0,a4
    26f4:	00879793          	slli	a5,a5,0x8
    26f8:	00f50533          	add	a0,a0,a5
    26fc:	00451513          	slli	a0,a0,0x4
    2700:	00455513          	srli	a0,a0,0x4
    2704:	f00007b7          	lui	a5,0xf0000
    2708:	f89ff06f          	j	2690 <fatfs_find_next_cluster+0x8c>

0000270c <fatfs_sector_reader>:
    270c:	03052783          	lw	a5,48(a0)
    2710:	fe010113          	addi	sp,sp,-32
    2714:	00812c23          	sw	s0,24(sp)
    2718:	01212823          	sw	s2,16(sp)
    271c:	01512223          	sw	s5,4(sp)
    2720:	00112e23          	sw	ra,28(sp)
    2724:	00912a23          	sw	s1,20(sp)
    2728:	01312623          	sw	s3,12(sp)
    272c:	01412423          	sw	s4,8(sp)
    2730:	01612023          	sw	s6,0(sp)
    2734:	00f5e7b3          	or	a5,a1,a5
    2738:	00050413          	mv	s0,a0
    273c:	00060913          	mv	s2,a2
    2740:	00068a93          	mv	s5,a3
    2744:	08079063          	bnez	a5,27c4 <fatfs_sector_reader+0xb8>
    2748:	01052783          	lw	a5,16(a0)
    274c:	02f66863          	bltu	a2,a5,277c <fatfs_sector_reader+0x70>
    2750:	00000513          	li	a0,0
    2754:	01c12083          	lw	ra,28(sp)
    2758:	01812403          	lw	s0,24(sp)
    275c:	01412483          	lw	s1,20(sp)
    2760:	01012903          	lw	s2,16(sp)
    2764:	00c12983          	lw	s3,12(sp)
    2768:	00812a03          	lw	s4,8(sp)
    276c:	00412a83          	lw	s5,4(sp)
    2770:	00012b03          	lw	s6,0(sp)
    2774:	02010113          	addi	sp,sp,32
    2778:	00008067          	ret
    277c:	01c52503          	lw	a0,28(a0)
    2780:	00c42783          	lw	a5,12(s0)
    2784:	00f50533          	add	a0,a0,a5
    2788:	01250533          	add	a0,a0,s2
    278c:	0a0a8663          	beqz	s5,2838 <fatfs_sector_reader+0x12c>
    2790:	03442783          	lw	a5,52(s0)
    2794:	00100613          	li	a2,1
    2798:	000a8593          	mv	a1,s5
    279c:	01812403          	lw	s0,24(sp)
    27a0:	01c12083          	lw	ra,28(sp)
    27a4:	01412483          	lw	s1,20(sp)
    27a8:	01012903          	lw	s2,16(sp)
    27ac:	00c12983          	lw	s3,12(sp)
    27b0:	00812a03          	lw	s4,8(sp)
    27b4:	00412a83          	lw	s5,4(sp)
    27b8:	00012b03          	lw	s6,0(sp)
    27bc:	02010113          	addi	sp,sp,32
    27c0:	00078067          	jr	a5 # f0000000 <__stacktop+0xefff0000>
    27c4:	00054783          	lbu	a5,0(a0)
    27c8:	00058493          	mv	s1,a1
    27cc:	00060513          	mv	a0,a2
    27d0:	00078593          	mv	a1,a5
    27d4:	00078a13          	mv	s4,a5
    27d8:	ffffe097          	auipc	ra,0xffffe
    27dc:	3bc080e7          	jalr	956(ra) # b94 <__udivsi3>
    27e0:	00050b13          	mv	s6,a0
    27e4:	00000993          	li	s3,0
    27e8:	03699a63          	bne	s3,s6,281c <fatfs_sector_reader+0x110>
    27ec:	fff00793          	li	a5,-1
    27f0:	f6f480e3          	beq	s1,a5,2750 <fatfs_sector_reader+0x44>
    27f4:	000a0593          	mv	a1,s4
    27f8:	00090513          	mv	a0,s2
    27fc:	ffffe097          	auipc	ra,0xffffe
    2800:	3e0080e7          	jalr	992(ra) # bdc <__umodsi3>
    2804:	00050913          	mv	s2,a0
    2808:	00048593          	mv	a1,s1
    280c:	00040513          	mv	a0,s0
    2810:	fffff097          	auipc	ra,0xfffff
    2814:	de8080e7          	jalr	-536(ra) # 15f8 <fatfs_lba_of_cluster>
    2818:	f71ff06f          	j	2788 <fatfs_sector_reader+0x7c>
    281c:	00048593          	mv	a1,s1
    2820:	00040513          	mv	a0,s0
    2824:	00000097          	auipc	ra,0x0
    2828:	de0080e7          	jalr	-544(ra) # 2604 <fatfs_find_next_cluster>
    282c:	00050493          	mv	s1,a0
    2830:	00198993          	addi	s3,s3,1
    2834:	fb5ff06f          	j	27e8 <fatfs_sector_reader+0xdc>
    2838:	24442783          	lw	a5,580(s0)
    283c:	00a78c63          	beq	a5,a0,2854 <fatfs_sector_reader+0x148>
    2840:	03442783          	lw	a5,52(s0)
    2844:	24a42223          	sw	a0,580(s0)
    2848:	00100613          	li	a2,1
    284c:	04440593          	addi	a1,s0,68
    2850:	f4dff06f          	j	279c <fatfs_sector_reader+0x90>
    2854:	00100513          	li	a0,1
    2858:	efdff06f          	j	2754 <fatfs_sector_reader+0x48>

0000285c <fatfs_get_file_entry>:
    285c:	eb010113          	addi	sp,sp,-336
    2860:	14812423          	sw	s0,328(sp)
    2864:	14912223          	sw	s1,324(sp)
    2868:	13312e23          	sw	s3,316(sp)
    286c:	13712623          	sw	s7,300(sp)
    2870:	13812423          	sw	s8,296(sp)
    2874:	13912223          	sw	s9,292(sp)
    2878:	14112623          	sw	ra,332(sp)
    287c:	15212023          	sw	s2,320(sp)
    2880:	13412c23          	sw	s4,312(sp)
    2884:	13512a23          	sw	s5,308(sp)
    2888:	13612823          	sw	s6,304(sp)
    288c:	00050993          	mv	s3,a0
    2890:	00058c93          	mv	s9,a1
    2894:	00060b93          	mv	s7,a2
    2898:	00068c13          	mv	s8,a3
    289c:	10010ea3          	sb	zero,285(sp)
    28a0:	01810413          	addi	s0,sp,24
    28a4:	11c10493          	addi	s1,sp,284
    28a8:	00040513          	mv	a0,s0
    28ac:	00d00613          	li	a2,13
    28b0:	00000593          	li	a1,0
    28b4:	00d40413          	addi	s0,s0,13
    28b8:	ffffe097          	auipc	ra,0xffffe
    28bc:	388080e7          	jalr	904(ra) # c40 <memset>
    28c0:	fe9414e3          	bne	s0,s1,28a8 <fatfs_get_file_entry+0x4c>
    28c4:	00000493          	li	s1,0
    28c8:	24498a13          	addi	s4,s3,580
    28cc:	00810913          	addi	s2,sp,8
    28d0:	00800a93          	li	s5,8
    28d4:	02e00b13          	li	s6,46
    28d8:	00000693          	li	a3,0
    28dc:	00048613          	mv	a2,s1
    28e0:	000c8593          	mv	a1,s9
    28e4:	00098513          	mv	a0,s3
    28e8:	00000097          	auipc	ra,0x0
    28ec:	e24080e7          	jalr	-476(ra) # 270c <fatfs_sector_reader>
    28f0:	08050c63          	beqz	a0,2988 <fatfs_get_file_entry+0x12c>
    28f4:	00148493          	addi	s1,s1,1
    28f8:	04498413          	addi	s0,s3,68
    28fc:	00040513          	mv	a0,s0
    2900:	fffff097          	auipc	ra,0xfffff
    2904:	f98080e7          	jalr	-104(ra) # 1898 <fatfs_entry_lfn_text>
    2908:	02050063          	beqz	a0,2928 <fatfs_get_file_entry+0xcc>
    290c:	00040593          	mv	a1,s0
    2910:	01810513          	addi	a0,sp,24
    2914:	fffff097          	auipc	ra,0xfffff
    2918:	e7c080e7          	jalr	-388(ra) # 1790 <fatfs_lfn_cache_entry>
    291c:	02040413          	addi	s0,s0,32
    2920:	fd441ee3          	bne	s0,s4,28fc <fatfs_get_file_entry+0xa0>
    2924:	fb5ff06f          	j	28d8 <fatfs_get_file_entry+0x7c>
    2928:	00040513          	mv	a0,s0
    292c:	fffff097          	auipc	ra,0xfffff
    2930:	f80080e7          	jalr	-128(ra) # 18ac <fatfs_entry_lfn_invalid>
    2934:	00050663          	beqz	a0,2940 <fatfs_get_file_entry+0xe4>
    2938:	10010ea3          	sb	zero,285(sp)
    293c:	fe1ff06f          	j	291c <fatfs_get_file_entry+0xc0>
    2940:	00040593          	mv	a1,s0
    2944:	01810513          	addi	a0,sp,24
    2948:	fffff097          	auipc	ra,0xfffff
    294c:	f98080e7          	jalr	-104(ra) # 18e0 <fatfs_entry_lfn_exists>
    2950:	06050663          	beqz	a0,29bc <fatfs_get_file_entry+0x160>
    2954:	01810513          	addi	a0,sp,24
    2958:	fffff097          	auipc	ra,0xfffff
    295c:	f04080e7          	jalr	-252(ra) # 185c <fatfs_lfn_cache_get>
    2960:	000b8593          	mv	a1,s7
    2964:	fffff097          	auipc	ra,0xfffff
    2968:	730080e7          	jalr	1840(ra) # 2094 <fatfs_compare_names>
    296c:	fc0506e3          	beqz	a0,2938 <fatfs_get_file_entry+0xdc>
    2970:	02000613          	li	a2,32
    2974:	00040593          	mv	a1,s0
    2978:	000c0513          	mv	a0,s8
    297c:	ffffe097          	auipc	ra,0xffffe
    2980:	2e0080e7          	jalr	736(ra) # c5c <memcpy>
    2984:	00100513          	li	a0,1
    2988:	14c12083          	lw	ra,332(sp)
    298c:	14812403          	lw	s0,328(sp)
    2990:	14412483          	lw	s1,324(sp)
    2994:	14012903          	lw	s2,320(sp)
    2998:	13c12983          	lw	s3,316(sp)
    299c:	13812a03          	lw	s4,312(sp)
    29a0:	13412a83          	lw	s5,308(sp)
    29a4:	13012b03          	lw	s6,304(sp)
    29a8:	12c12b83          	lw	s7,300(sp)
    29ac:	12812c03          	lw	s8,296(sp)
    29b0:	12412c83          	lw	s9,292(sp)
    29b4:	15010113          	addi	sp,sp,336
    29b8:	00008067          	ret
    29bc:	00040513          	mv	a0,s0
    29c0:	fffff097          	auipc	ra,0xfffff
    29c4:	f70080e7          	jalr	-144(ra) # 1930 <fatfs_entry_sfn_only>
    29c8:	f4050ae3          	beqz	a0,291c <fatfs_get_file_entry+0xc0>
    29cc:	00d00613          	li	a2,13
    29d0:	00000593          	li	a1,0
    29d4:	00090513          	mv	a0,s2
    29d8:	ffffe097          	auipc	ra,0xffffe
    29dc:	268080e7          	jalr	616(ra) # c40 <memset>
    29e0:	00000793          	li	a5,0
    29e4:	00f406b3          	add	a3,s0,a5
    29e8:	0006c683          	lbu	a3,0(a3)
    29ec:	00f90733          	add	a4,s2,a5
    29f0:	00178793          	addi	a5,a5,1
    29f4:	00d70023          	sb	a3,0(a4)
    29f8:	ff5796e3          	bne	a5,s5,29e4 <fatfs_get_file_entry+0x188>
    29fc:	00844703          	lbu	a4,8(s0)
    2a00:	00944783          	lbu	a5,9(s0)
    2a04:	00a44683          	lbu	a3,10(s0)
    2a08:	00e108a3          	sb	a4,17(sp)
    2a0c:	00f10923          	sb	a5,18(sp)
    2a10:	fe070713          	addi	a4,a4,-32
    2a14:	fe078793          	addi	a5,a5,-32
    2a18:	00f037b3          	snez	a5,a5
    2a1c:	00e03733          	snez	a4,a4
    2a20:	00d109a3          	sb	a3,19(sp)
    2a24:	00e7e7b3          	or	a5,a5,a4
    2a28:	00079863          	bnez	a5,2a38 <fatfs_get_file_entry+0x1dc>
    2a2c:	fe068693          	addi	a3,a3,-32
    2a30:	02000793          	li	a5,32
    2a34:	00068a63          	beqz	a3,2a48 <fatfs_get_file_entry+0x1ec>
    2a38:	00814703          	lbu	a4,8(sp)
    2a3c:	02e00793          	li	a5,46
    2a40:	01671463          	bne	a4,s6,2a48 <fatfs_get_file_entry+0x1ec>
    2a44:	02000793          	li	a5,32
    2a48:	00f10823          	sb	a5,16(sp)
    2a4c:	000b8593          	mv	a1,s7
    2a50:	00090513          	mv	a0,s2
    2a54:	f11ff06f          	j	2964 <fatfs_get_file_entry+0x108>

00002a58 <_open_directory>:
    2a58:	eb010113          	addi	sp,sp,-336
    2a5c:	15212023          	sw	s2,320(sp)
    2a60:	00008937          	lui	s2,0x8
    2a64:	72890913          	addi	s2,s2,1832 # 8728 <_fs>
    2a68:	14812423          	sw	s0,328(sp)
    2a6c:	00892403          	lw	s0,8(s2)
    2a70:	14912223          	sw	s1,324(sp)
    2a74:	13312e23          	sw	s3,316(sp)
    2a78:	13412c23          	sw	s4,312(sp)
    2a7c:	13512a23          	sw	s5,308(sp)
    2a80:	13612823          	sw	s6,304(sp)
    2a84:	14112623          	sw	ra,332(sp)
    2a88:	00050a13          	mv	s4,a0
    2a8c:	00058a93          	mv	s5,a1
    2a90:	fffff097          	auipc	ra,0xfffff
    2a94:	3bc080e7          	jalr	956(ra) # 1e4c <fatfs_total_path_levels>
    2a98:	00050b13          	mv	s6,a0
    2a9c:	00000493          	li	s1,0
    2aa0:	fff00993          	li	s3,-1
    2aa4:	009b5863          	bge	s6,s1,2ab4 <_open_directory+0x5c>
    2aa8:	008aa023          	sw	s0,0(s5)
    2aac:	00100513          	li	a0,1
    2ab0:	0240006f          	j	2ad4 <_open_directory+0x7c>
    2ab4:	10400693          	li	a3,260
    2ab8:	02c10613          	addi	a2,sp,44
    2abc:	00048593          	mv	a1,s1
    2ac0:	000a0513          	mv	a0,s4
    2ac4:	fffff097          	auipc	ra,0xfffff
    2ac8:	3f8080e7          	jalr	1016(ra) # 1ebc <fatfs_get_substring>
    2acc:	03351863          	bne	a0,s3,2afc <_open_directory+0xa4>
    2ad0:	00000513          	li	a0,0
    2ad4:	14c12083          	lw	ra,332(sp)
    2ad8:	14812403          	lw	s0,328(sp)
    2adc:	14412483          	lw	s1,324(sp)
    2ae0:	14012903          	lw	s2,320(sp)
    2ae4:	13c12983          	lw	s3,316(sp)
    2ae8:	13812a03          	lw	s4,312(sp)
    2aec:	13412a83          	lw	s5,308(sp)
    2af0:	13012b03          	lw	s6,304(sp)
    2af4:	15010113          	addi	sp,sp,336
    2af8:	00008067          	ret
    2afc:	00c10693          	addi	a3,sp,12
    2b00:	02c10613          	addi	a2,sp,44
    2b04:	00040593          	mv	a1,s0
    2b08:	00090513          	mv	a0,s2
    2b0c:	00000097          	auipc	ra,0x0
    2b10:	d50080e7          	jalr	-688(ra) # 285c <fatfs_get_file_entry>
    2b14:	fa050ee3          	beqz	a0,2ad0 <_open_directory+0x78>
    2b18:	01714783          	lbu	a5,23(sp)
    2b1c:	0107f793          	andi	a5,a5,16
    2b20:	fa0788e3          	beqz	a5,2ad0 <_open_directory+0x78>
    2b24:	02015403          	lhu	s0,32(sp)
    2b28:	02615783          	lhu	a5,38(sp)
    2b2c:	00148493          	addi	s1,s1,1
    2b30:	01041413          	slli	s0,s0,0x10
    2b34:	00f40433          	add	s0,s0,a5
    2b38:	f6dff06f          	j	2aa4 <_open_directory+0x4c>

00002b3c <_open_file>:
    2b3c:	fc010113          	addi	sp,sp,-64
    2b40:	03312623          	sw	s3,44(sp)
    2b44:	02112e23          	sw	ra,60(sp)
    2b48:	02812c23          	sw	s0,56(sp)
    2b4c:	02912a23          	sw	s1,52(sp)
    2b50:	03212823          	sw	s2,48(sp)
    2b54:	00050993          	mv	s3,a0
    2b58:	fffff097          	auipc	ra,0xfffff
    2b5c:	9e0080e7          	jalr	-1568(ra) # 1538 <_allocate_file>
    2b60:	06050463          	beqz	a0,2bc8 <_open_file+0x8c>
    2b64:	01450913          	addi	s2,a0,20
    2b68:	00050413          	mv	s0,a0
    2b6c:	10400613          	li	a2,260
    2b70:	00000593          	li	a1,0
    2b74:	00090513          	mv	a0,s2
    2b78:	ffffe097          	auipc	ra,0xffffe
    2b7c:	0c8080e7          	jalr	200(ra) # c40 <memset>
    2b80:	11840493          	addi	s1,s0,280
    2b84:	10400613          	li	a2,260
    2b88:	00000593          	li	a1,0
    2b8c:	00048513          	mv	a0,s1
    2b90:	ffffe097          	auipc	ra,0xffffe
    2b94:	0b0080e7          	jalr	176(ra) # c40 <memset>
    2b98:	10400713          	li	a4,260
    2b9c:	00048693          	mv	a3,s1
    2ba0:	00070613          	mv	a2,a4
    2ba4:	00090593          	mv	a1,s2
    2ba8:	00098513          	mv	a0,s3
    2bac:	fffff097          	auipc	ra,0xfffff
    2bb0:	3f8080e7          	jalr	1016(ra) # 1fa4 <fatfs_split_path>
    2bb4:	fff00793          	li	a5,-1
    2bb8:	02f51a63          	bne	a0,a5,2bec <_open_file+0xb0>
    2bbc:	00040513          	mv	a0,s0
    2bc0:	fffff097          	auipc	ra,0xfffff
    2bc4:	9f0080e7          	jalr	-1552(ra) # 15b0 <_free_file>
    2bc8:	00000413          	li	s0,0
    2bcc:	03c12083          	lw	ra,60(sp)
    2bd0:	00040513          	mv	a0,s0
    2bd4:	03812403          	lw	s0,56(sp)
    2bd8:	03412483          	lw	s1,52(sp)
    2bdc:	03012903          	lw	s2,48(sp)
    2be0:	02c12983          	lw	s3,44(sp)
    2be4:	04010113          	addi	sp,sp,64
    2be8:	00008067          	ret
    2bec:	00040513          	mv	a0,s0
    2bf0:	fffff097          	auipc	ra,0xfffff
    2bf4:	630080e7          	jalr	1584(ra) # 2220 <_check_file_open>
    2bf8:	fc0512e3          	bnez	a0,2bbc <_open_file+0x80>
    2bfc:	01444783          	lbu	a5,20(s0)
    2c00:	08079c63          	bnez	a5,2c98 <_open_file+0x15c>
    2c04:	000087b7          	lui	a5,0x8
    2c08:	7307a783          	lw	a5,1840(a5) # 8730 <_fs+0x8>
    2c0c:	00f42023          	sw	a5,0(s0)
    2c10:	00042583          	lw	a1,0(s0)
    2c14:	00048613          	mv	a2,s1
    2c18:	000084b7          	lui	s1,0x8
    2c1c:	00010693          	mv	a3,sp
    2c20:	72848513          	addi	a0,s1,1832 # 8728 <_fs>
    2c24:	00000097          	auipc	ra,0x0
    2c28:	c38080e7          	jalr	-968(ra) # 285c <fatfs_get_file_entry>
    2c2c:	f80508e3          	beqz	a0,2bbc <_open_file+0x80>
    2c30:	00b14783          	lbu	a5,11(sp)
    2c34:	0207f793          	andi	a5,a5,32
    2c38:	f80782e3          	beqz	a5,2bbc <_open_file+0x80>
    2c3c:	00b00613          	li	a2,11
    2c40:	00010593          	mv	a1,sp
    2c44:	21c40513          	addi	a0,s0,540
    2c48:	ffffe097          	auipc	ra,0xffffe
    2c4c:	014080e7          	jalr	20(ra) # c5c <memcpy>
    2c50:	01c12783          	lw	a5,28(sp)
    2c54:	01a15703          	lhu	a4,26(sp)
    2c58:	00042423          	sw	zero,8(s0)
    2c5c:	00f42623          	sw	a5,12(s0)
    2c60:	01415783          	lhu	a5,20(sp)
    2c64:	42042a23          	sw	zero,1076(s0)
    2c68:	00042823          	sw	zero,16(s0)
    2c6c:	01079793          	slli	a5,a5,0x10
    2c70:	00e787b3          	add	a5,a5,a4
    2c74:	00f42223          	sw	a5,4(s0)
    2c78:	fff00793          	li	a5,-1
    2c7c:	42f42823          	sw	a5,1072(s0)
    2c80:	22f42423          	sw	a5,552(s0)
    2c84:	22f42623          	sw	a5,556(s0)
    2c88:	72848513          	addi	a0,s1,1832
    2c8c:	00000097          	auipc	ra,0x0
    2c90:	920080e7          	jalr	-1760(ra) # 25ac <fatfs_fat_purge>
    2c94:	f39ff06f          	j	2bcc <_open_file+0x90>
    2c98:	00040593          	mv	a1,s0
    2c9c:	00090513          	mv	a0,s2
    2ca0:	00000097          	auipc	ra,0x0
    2ca4:	db8080e7          	jalr	-584(ra) # 2a58 <_open_directory>
    2ca8:	f60514e3          	bnez	a0,2c10 <_open_file+0xd4>
    2cac:	f11ff06f          	j	2bbc <_open_file+0x80>

00002cb0 <fatfs_sfn_exists>:
    2cb0:	fe010113          	addi	sp,sp,-32
    2cb4:	01212823          	sw	s2,16(sp)
    2cb8:	01312623          	sw	s3,12(sp)
    2cbc:	01412423          	sw	s4,8(sp)
    2cc0:	01512223          	sw	s5,4(sp)
    2cc4:	01612023          	sw	s6,0(sp)
    2cc8:	00112e23          	sw	ra,28(sp)
    2ccc:	00812c23          	sw	s0,24(sp)
    2cd0:	00912a23          	sw	s1,20(sp)
    2cd4:	00050993          	mv	s3,a0
    2cd8:	00058a93          	mv	s5,a1
    2cdc:	00060b13          	mv	s6,a2
    2ce0:	00000913          	li	s2,0
    2ce4:	24450a13          	addi	s4,a0,580
    2ce8:	00000693          	li	a3,0
    2cec:	00090613          	mv	a2,s2
    2cf0:	000a8593          	mv	a1,s5
    2cf4:	00098513          	mv	a0,s3
    2cf8:	00000097          	auipc	ra,0x0
    2cfc:	a14080e7          	jalr	-1516(ra) # 270c <fatfs_sector_reader>
    2d00:	00050413          	mv	s0,a0
    2d04:	06050263          	beqz	a0,2d68 <fatfs_sfn_exists+0xb8>
    2d08:	00190913          	addi	s2,s2,1
    2d0c:	04498493          	addi	s1,s3,68
    2d10:	00048513          	mv	a0,s1
    2d14:	fffff097          	auipc	ra,0xfffff
    2d18:	b84080e7          	jalr	-1148(ra) # 1898 <fatfs_entry_lfn_text>
    2d1c:	00050863          	beqz	a0,2d2c <fatfs_sfn_exists+0x7c>
    2d20:	02048493          	addi	s1,s1,32
    2d24:	ff4496e3          	bne	s1,s4,2d10 <fatfs_sfn_exists+0x60>
    2d28:	fc1ff06f          	j	2ce8 <fatfs_sfn_exists+0x38>
    2d2c:	00048513          	mv	a0,s1
    2d30:	fffff097          	auipc	ra,0xfffff
    2d34:	b7c080e7          	jalr	-1156(ra) # 18ac <fatfs_entry_lfn_invalid>
    2d38:	fe0514e3          	bnez	a0,2d20 <fatfs_sfn_exists+0x70>
    2d3c:	00048513          	mv	a0,s1
    2d40:	fffff097          	auipc	ra,0xfffff
    2d44:	bf0080e7          	jalr	-1040(ra) # 1930 <fatfs_entry_sfn_only>
    2d48:	00050413          	mv	s0,a0
    2d4c:	fc050ae3          	beqz	a0,2d20 <fatfs_sfn_exists+0x70>
    2d50:	00b00613          	li	a2,11
    2d54:	000b0593          	mv	a1,s6
    2d58:	00048513          	mv	a0,s1
    2d5c:	ffffe097          	auipc	ra,0xffffe
    2d60:	f44080e7          	jalr	-188(ra) # ca0 <strncmp>
    2d64:	fa051ee3          	bnez	a0,2d20 <fatfs_sfn_exists+0x70>
    2d68:	01c12083          	lw	ra,28(sp)
    2d6c:	00040513          	mv	a0,s0
    2d70:	01812403          	lw	s0,24(sp)
    2d74:	01412483          	lw	s1,20(sp)
    2d78:	01012903          	lw	s2,16(sp)
    2d7c:	00c12983          	lw	s3,12(sp)
    2d80:	00812a03          	lw	s4,8(sp)
    2d84:	00412a83          	lw	s5,4(sp)
    2d88:	00012b03          	lw	s6,0(sp)
    2d8c:	02010113          	addi	sp,sp,32
    2d90:	00008067          	ret

00002d94 <fatfs_update_file_length>:
    2d94:	03852783          	lw	a5,56(a0)
    2d98:	14078e63          	beqz	a5,2ef4 <fatfs_update_file_length+0x160>
    2d9c:	fd010113          	addi	sp,sp,-48
    2da0:	02912223          	sw	s1,36(sp)
    2da4:	03212023          	sw	s2,32(sp)
    2da8:	01312e23          	sw	s3,28(sp)
    2dac:	01412c23          	sw	s4,24(sp)
    2db0:	01612823          	sw	s6,16(sp)
    2db4:	01712623          	sw	s7,12(sp)
    2db8:	02112623          	sw	ra,44(sp)
    2dbc:	02812423          	sw	s0,40(sp)
    2dc0:	01512a23          	sw	s5,20(sp)
    2dc4:	00068913          	mv	s2,a3
    2dc8:	00060b93          	mv	s7,a2
    2dcc:	00058b13          	mv	s6,a1
    2dd0:	00050493          	mv	s1,a0
    2dd4:	00000993          	li	s3,0
    2dd8:	24450a13          	addi	s4,a0,580
    2ddc:	00000693          	li	a3,0
    2de0:	00098613          	mv	a2,s3
    2de4:	000b0593          	mv	a1,s6
    2de8:	00048513          	mv	a0,s1
    2dec:	00000097          	auipc	ra,0x0
    2df0:	920080e7          	jalr	-1760(ra) # 270c <fatfs_sector_reader>
    2df4:	0c050863          	beqz	a0,2ec4 <fatfs_update_file_length+0x130>
    2df8:	04448413          	addi	s0,s1,68
    2dfc:	00198993          	addi	s3,s3,1
    2e00:	00040a93          	mv	s5,s0
    2e04:	00040513          	mv	a0,s0
    2e08:	fffff097          	auipc	ra,0xfffff
    2e0c:	a90080e7          	jalr	-1392(ra) # 1898 <fatfs_entry_lfn_text>
    2e10:	0a051463          	bnez	a0,2eb8 <fatfs_update_file_length+0x124>
    2e14:	00040513          	mv	a0,s0
    2e18:	fffff097          	auipc	ra,0xfffff
    2e1c:	a94080e7          	jalr	-1388(ra) # 18ac <fatfs_entry_lfn_invalid>
    2e20:	08051c63          	bnez	a0,2eb8 <fatfs_update_file_length+0x124>
    2e24:	00040513          	mv	a0,s0
    2e28:	fffff097          	auipc	ra,0xfffff
    2e2c:	b08080e7          	jalr	-1272(ra) # 1930 <fatfs_entry_sfn_only>
    2e30:	08050463          	beqz	a0,2eb8 <fatfs_update_file_length+0x124>
    2e34:	00b00613          	li	a2,11
    2e38:	000b8593          	mv	a1,s7
    2e3c:	00040513          	mv	a0,s0
    2e40:	ffffe097          	auipc	ra,0xffffe
    2e44:	e60080e7          	jalr	-416(ra) # ca0 <strncmp>
    2e48:	06051863          	bnez	a0,2eb8 <fatfs_update_file_length+0x124>
    2e4c:	00895793          	srli	a5,s2,0x8
    2e50:	01240e23          	sb	s2,28(s0)
    2e54:	00f40ea3          	sb	a5,29(s0)
    2e58:	01095793          	srli	a5,s2,0x10
    2e5c:	01895913          	srli	s2,s2,0x18
    2e60:	00f40f23          	sb	a5,30(s0)
    2e64:	01240fa3          	sb	s2,31(s0)
    2e68:	00040593          	mv	a1,s0
    2e6c:	02000613          	li	a2,32
    2e70:	00040513          	mv	a0,s0
    2e74:	ffffe097          	auipc	ra,0xffffe
    2e78:	de8080e7          	jalr	-536(ra) # c5c <memcpy>
    2e7c:	02812403          	lw	s0,40(sp)
    2e80:	0384a783          	lw	a5,56(s1)
    2e84:	2444a503          	lw	a0,580(s1)
    2e88:	02c12083          	lw	ra,44(sp)
    2e8c:	02412483          	lw	s1,36(sp)
    2e90:	02012903          	lw	s2,32(sp)
    2e94:	01c12983          	lw	s3,28(sp)
    2e98:	01812a03          	lw	s4,24(sp)
    2e9c:	01012b03          	lw	s6,16(sp)
    2ea0:	00c12b83          	lw	s7,12(sp)
    2ea4:	000a8593          	mv	a1,s5
    2ea8:	01412a83          	lw	s5,20(sp)
    2eac:	00100613          	li	a2,1
    2eb0:	03010113          	addi	sp,sp,48
    2eb4:	00078067          	jr	a5
    2eb8:	02040413          	addi	s0,s0,32
    2ebc:	f54414e3          	bne	s0,s4,2e04 <fatfs_update_file_length+0x70>
    2ec0:	f1dff06f          	j	2ddc <fatfs_update_file_length+0x48>
    2ec4:	02c12083          	lw	ra,44(sp)
    2ec8:	02812403          	lw	s0,40(sp)
    2ecc:	02412483          	lw	s1,36(sp)
    2ed0:	02012903          	lw	s2,32(sp)
    2ed4:	01c12983          	lw	s3,28(sp)
    2ed8:	01812a03          	lw	s4,24(sp)
    2edc:	01412a83          	lw	s5,20(sp)
    2ee0:	01012b03          	lw	s6,16(sp)
    2ee4:	00c12b83          	lw	s7,12(sp)
    2ee8:	00000513          	li	a0,0
    2eec:	03010113          	addi	sp,sp,48
    2ef0:	00008067          	ret
    2ef4:	00000513          	li	a0,0
    2ef8:	00008067          	ret

00002efc <_read_sectors>:
    2efc:	fd010113          	addi	sp,sp,-48
    2f00:	01512a23          	sw	s5,20(sp)
    2f04:	00008ab7          	lui	s5,0x8
    2f08:	01312e23          	sw	s3,28(sp)
    2f0c:	728ac983          	lbu	s3,1832(s5) # 8728 <_fs>
    2f10:	01612823          	sw	s6,16(sp)
    2f14:	00058b13          	mv	s6,a1
    2f18:	02912223          	sw	s1,36(sp)
    2f1c:	00098593          	mv	a1,s3
    2f20:	00050493          	mv	s1,a0
    2f24:	000b0513          	mv	a0,s6
    2f28:	02112623          	sw	ra,44(sp)
    2f2c:	02812423          	sw	s0,40(sp)
    2f30:	01412c23          	sw	s4,24(sp)
    2f34:	00068413          	mv	s0,a3
    2f38:	01712623          	sw	s7,12(sp)
    2f3c:	01812423          	sw	s8,8(sp)
    2f40:	03212023          	sw	s2,32(sp)
    2f44:	00060c13          	mv	s8,a2
    2f48:	ffffe097          	auipc	ra,0xffffe
    2f4c:	c4c080e7          	jalr	-948(ra) # b94 <__udivsi3>
    2f50:	00050a13          	mv	s4,a0
    2f54:	00098593          	mv	a1,s3
    2f58:	000b0513          	mv	a0,s6
    2f5c:	ffffe097          	auipc	ra,0xffffe
    2f60:	c80080e7          	jalr	-896(ra) # bdc <__umodsi3>
    2f64:	00a407b3          	add	a5,s0,a0
    2f68:	00050b93          	mv	s7,a0
    2f6c:	00f9fe63          	bgeu	s3,a5,2f88 <_read_sectors+0x8c>
    2f70:	000a0593          	mv	a1,s4
    2f74:	00098513          	mv	a0,s3
    2f78:	ffffe097          	auipc	ra,0xffffe
    2f7c:	31c080e7          	jalr	796(ra) # 1294 <__mulsi3>
    2f80:	416987b3          	sub	a5,s3,s6
    2f84:	00f50433          	add	s0,a0,a5
    2f88:	2284a903          	lw	s2,552(s1)
    2f8c:	07491863          	bne	s2,s4,2ffc <_read_sectors+0x100>
    2f90:	22c4a583          	lw	a1,556(s1)
    2f94:	fff00793          	li	a5,-1
    2f98:	02f58663          	beq	a1,a5,2fc4 <_read_sectors+0xc8>
    2f9c:	728a8513          	addi	a0,s5,1832
    2fa0:	ffffe097          	auipc	ra,0xffffe
    2fa4:	658080e7          	jalr	1624(ra) # 15f8 <fatfs_lba_of_cluster>
    2fa8:	017505b3          	add	a1,a0,s7
    2fac:	00040693          	mv	a3,s0
    2fb0:	000c0613          	mv	a2,s8
    2fb4:	728a8513          	addi	a0,s5,1832
    2fb8:	ffffe097          	auipc	ra,0xffffe
    2fbc:	68c080e7          	jalr	1676(ra) # 1644 <fatfs_sector_read>
    2fc0:	00051463          	bnez	a0,2fc8 <_read_sectors+0xcc>
    2fc4:	00000413          	li	s0,0
    2fc8:	02c12083          	lw	ra,44(sp)
    2fcc:	00040513          	mv	a0,s0
    2fd0:	02812403          	lw	s0,40(sp)
    2fd4:	02412483          	lw	s1,36(sp)
    2fd8:	02012903          	lw	s2,32(sp)
    2fdc:	01c12983          	lw	s3,28(sp)
    2fe0:	01812a03          	lw	s4,24(sp)
    2fe4:	01412a83          	lw	s5,20(sp)
    2fe8:	01012b03          	lw	s6,16(sp)
    2fec:	00c12b83          	lw	s7,12(sp)
    2ff0:	00812c03          	lw	s8,8(sp)
    2ff4:	03010113          	addi	sp,sp,48
    2ff8:	00008067          	ret
    2ffc:	033b6463          	bltu	s6,s3,3024 <_read_sectors+0x128>
    3000:	00190793          	addi	a5,s2,1
    3004:	03479063          	bne	a5,s4,3024 <_read_sectors+0x128>
    3008:	22c4a583          	lw	a1,556(s1)
    300c:	03496263          	bltu	s2,s4,3030 <_read_sectors+0x134>
    3010:	fff00793          	li	a5,-1
    3014:	faf588e3          	beq	a1,a5,2fc4 <_read_sectors+0xc8>
    3018:	22b4a623          	sw	a1,556(s1)
    301c:	2344a423          	sw	s4,552(s1)
    3020:	f7dff06f          	j	2f9c <_read_sectors+0xa0>
    3024:	0044a583          	lw	a1,4(s1)
    3028:	00000913          	li	s2,0
    302c:	fe1ff06f          	j	300c <_read_sectors+0x110>
    3030:	728a8513          	addi	a0,s5,1832
    3034:	fffff097          	auipc	ra,0xfffff
    3038:	5d0080e7          	jalr	1488(ra) # 2604 <fatfs_find_next_cluster>
    303c:	00050593          	mv	a1,a0
    3040:	00190913          	addi	s2,s2,1
    3044:	fc9ff06f          	j	300c <_read_sectors+0x110>

00003048 <fatfs_set_fs_info_next_free_cluster>:
    3048:	03052783          	lw	a5,48(a0)
    304c:	0a078463          	beqz	a5,30f4 <fatfs_set_fs_info_next_free_cluster+0xac>
    3050:	fe010113          	addi	sp,sp,-32
    3054:	01c52783          	lw	a5,28(a0)
    3058:	00912a23          	sw	s1,20(sp)
    305c:	00058493          	mv	s1,a1
    3060:	01855583          	lhu	a1,24(a0)
    3064:	00812c23          	sw	s0,24(sp)
    3068:	00112e23          	sw	ra,28(sp)
    306c:	00f585b3          	add	a1,a1,a5
    3070:	00050413          	mv	s0,a0
    3074:	ffffe097          	auipc	ra,0xffffe
    3078:	3d8080e7          	jalr	984(ra) # 144c <fatfs_fat_read_sector>
    307c:	00050593          	mv	a1,a0
    3080:	06050063          	beqz	a0,30e0 <fatfs_set_fs_info_next_free_cluster+0x98>
    3084:	20852783          	lw	a5,520(a0)
    3088:	0084d713          	srli	a4,s1,0x8
    308c:	00100613          	li	a2,1
    3090:	1e978623          	sb	s1,492(a5)
    3094:	20852783          	lw	a5,520(a0)
    3098:	1ee786a3          	sb	a4,493(a5)
    309c:	20852783          	lw	a5,520(a0)
    30a0:	0104d713          	srli	a4,s1,0x10
    30a4:	1ee78723          	sb	a4,494(a5)
    30a8:	20852783          	lw	a5,520(a0)
    30ac:	0184d713          	srli	a4,s1,0x18
    30b0:	1ee787a3          	sb	a4,495(a5)
    30b4:	03842783          	lw	a5,56(s0)
    30b8:	20c52223          	sw	a2,516(a0)
    30bc:	02942223          	sw	s1,36(s0)
    30c0:	00078a63          	beqz	a5,30d4 <fatfs_set_fs_info_next_free_cluster+0x8c>
    30c4:	20052503          	lw	a0,512(a0)
    30c8:	00b12623          	sw	a1,12(sp)
    30cc:	000780e7          	jalr	a5
    30d0:	00c12583          	lw	a1,12(sp)
    30d4:	fff00793          	li	a5,-1
    30d8:	20f5a023          	sw	a5,512(a1)
    30dc:	2005a223          	sw	zero,516(a1)
    30e0:	01c12083          	lw	ra,28(sp)
    30e4:	01812403          	lw	s0,24(sp)
    30e8:	01412483          	lw	s1,20(sp)
    30ec:	02010113          	addi	sp,sp,32
    30f0:	00008067          	ret
    30f4:	00008067          	ret

000030f8 <fatfs_find_blank_cluster>:
    30f8:	fd010113          	addi	sp,sp,-48
    30fc:	01312e23          	sw	s3,28(sp)
    3100:	100009b7          	lui	s3,0x10000
    3104:	02912223          	sw	s1,36(sp)
    3108:	03212023          	sw	s2,32(sp)
    310c:	02112623          	sw	ra,44(sp)
    3110:	02812423          	sw	s0,40(sp)
    3114:	00050913          	mv	s2,a0
    3118:	00058493          	mv	s1,a1
    311c:	fff98993          	addi	s3,s3,-1 # fffffff <__stacktop+0xffeffff>
    3120:	03092783          	lw	a5,48(s2)
    3124:	0074d413          	srli	s0,s1,0x7
    3128:	00079463          	bnez	a5,3130 <fatfs_find_blank_cluster+0x38>
    312c:	0084d413          	srli	s0,s1,0x8
    3130:	02092783          	lw	a5,32(s2)
    3134:	0cf47863          	bgeu	s0,a5,3204 <fatfs_find_blank_cluster+0x10c>
    3138:	01492583          	lw	a1,20(s2)
    313c:	00090513          	mv	a0,s2
    3140:	00c12623          	sw	a2,12(sp)
    3144:	00b405b3          	add	a1,s0,a1
    3148:	ffffe097          	auipc	ra,0xffffe
    314c:	304080e7          	jalr	772(ra) # 144c <fatfs_fat_read_sector>
    3150:	0a050a63          	beqz	a0,3204 <fatfs_find_blank_cluster+0x10c>
    3154:	03092783          	lw	a5,48(s2)
    3158:	20852703          	lw	a4,520(a0)
    315c:	00c12603          	lw	a2,12(sp)
    3160:	04079a63          	bnez	a5,31b4 <fatfs_find_blank_cluster+0xbc>
    3164:	00841413          	slli	s0,s0,0x8
    3168:	40848433          	sub	s0,s1,s0
    316c:	00141413          	slli	s0,s0,0x1
    3170:	01041413          	slli	s0,s0,0x10
    3174:	01045413          	srli	s0,s0,0x10
    3178:	00870733          	add	a4,a4,s0
    317c:	00174783          	lbu	a5,1(a4)
    3180:	00074703          	lbu	a4,0(a4)
    3184:	00879793          	slli	a5,a5,0x8
    3188:	00e787b3          	add	a5,a5,a4
    318c:	06079863          	bnez	a5,31fc <fatfs_find_blank_cluster+0x104>
    3190:	00962023          	sw	s1,0(a2)
    3194:	00100513          	li	a0,1
    3198:	02c12083          	lw	ra,44(sp)
    319c:	02812403          	lw	s0,40(sp)
    31a0:	02412483          	lw	s1,36(sp)
    31a4:	02012903          	lw	s2,32(sp)
    31a8:	01c12983          	lw	s3,28(sp)
    31ac:	03010113          	addi	sp,sp,48
    31b0:	00008067          	ret
    31b4:	00741413          	slli	s0,s0,0x7
    31b8:	40848433          	sub	s0,s1,s0
    31bc:	00241413          	slli	s0,s0,0x2
    31c0:	01041413          	slli	s0,s0,0x10
    31c4:	01045413          	srli	s0,s0,0x10
    31c8:	00870733          	add	a4,a4,s0
    31cc:	00374783          	lbu	a5,3(a4)
    31d0:	00274683          	lbu	a3,2(a4)
    31d4:	01879793          	slli	a5,a5,0x18
    31d8:	01069693          	slli	a3,a3,0x10
    31dc:	00d787b3          	add	a5,a5,a3
    31e0:	00074683          	lbu	a3,0(a4)
    31e4:	00174703          	lbu	a4,1(a4)
    31e8:	00d787b3          	add	a5,a5,a3
    31ec:	00871713          	slli	a4,a4,0x8
    31f0:	00e787b3          	add	a5,a5,a4
    31f4:	0137f7b3          	and	a5,a5,s3
    31f8:	f95ff06f          	j	318c <fatfs_find_blank_cluster+0x94>
    31fc:	00148493          	addi	s1,s1,1
    3200:	f21ff06f          	j	3120 <fatfs_find_blank_cluster+0x28>
    3204:	00000513          	li	a0,0
    3208:	f91ff06f          	j	3198 <fatfs_find_blank_cluster+0xa0>

0000320c <fatfs_fat_set_cluster>:
    320c:	03052783          	lw	a5,48(a0)
    3210:	fe010113          	addi	sp,sp,-32
    3214:	00812c23          	sw	s0,24(sp)
    3218:	00912a23          	sw	s1,20(sp)
    321c:	01212823          	sw	s2,16(sp)
    3220:	00112e23          	sw	ra,28(sp)
    3224:	00050913          	mv	s2,a0
    3228:	00058413          	mv	s0,a1
    322c:	0085d493          	srli	s1,a1,0x8
    3230:	00078463          	beqz	a5,3238 <fatfs_fat_set_cluster+0x2c>
    3234:	0075d493          	srli	s1,a1,0x7
    3238:	01492583          	lw	a1,20(s2)
    323c:	00090513          	mv	a0,s2
    3240:	00c12623          	sw	a2,12(sp)
    3244:	00b485b3          	add	a1,s1,a1
    3248:	ffffe097          	auipc	ra,0xffffe
    324c:	204080e7          	jalr	516(ra) # 144c <fatfs_fat_read_sector>
    3250:	00050793          	mv	a5,a0
    3254:	00000513          	li	a0,0
    3258:	04078663          	beqz	a5,32a4 <fatfs_fat_set_cluster+0x98>
    325c:	03092683          	lw	a3,48(s2)
    3260:	2087a703          	lw	a4,520(a5)
    3264:	00c12603          	lw	a2,12(sp)
    3268:	04069a63          	bnez	a3,32bc <fatfs_fat_set_cluster+0xb0>
    326c:	00849493          	slli	s1,s1,0x8
    3270:	40940433          	sub	s0,s0,s1
    3274:	00141413          	slli	s0,s0,0x1
    3278:	01041413          	slli	s0,s0,0x10
    327c:	01045413          	srli	s0,s0,0x10
    3280:	00870733          	add	a4,a4,s0
    3284:	00c70023          	sb	a2,0(a4)
    3288:	2087a703          	lw	a4,520(a5)
    328c:	00865613          	srli	a2,a2,0x8
    3290:	00870733          	add	a4,a4,s0
    3294:	00c700a3          	sb	a2,1(a4)
    3298:	00100713          	li	a4,1
    329c:	20e7a223          	sw	a4,516(a5)
    32a0:	00100513          	li	a0,1
    32a4:	01c12083          	lw	ra,28(sp)
    32a8:	01812403          	lw	s0,24(sp)
    32ac:	01412483          	lw	s1,20(sp)
    32b0:	01012903          	lw	s2,16(sp)
    32b4:	02010113          	addi	sp,sp,32
    32b8:	00008067          	ret
    32bc:	00749493          	slli	s1,s1,0x7
    32c0:	40940433          	sub	s0,s0,s1
    32c4:	00241413          	slli	s0,s0,0x2
    32c8:	01041413          	slli	s0,s0,0x10
    32cc:	01045413          	srli	s0,s0,0x10
    32d0:	00870733          	add	a4,a4,s0
    32d4:	00c70023          	sb	a2,0(a4)
    32d8:	2087a703          	lw	a4,520(a5)
    32dc:	00865693          	srli	a3,a2,0x8
    32e0:	00870733          	add	a4,a4,s0
    32e4:	00d700a3          	sb	a3,1(a4)
    32e8:	2087a703          	lw	a4,520(a5)
    32ec:	01065693          	srli	a3,a2,0x10
    32f0:	01865613          	srli	a2,a2,0x18
    32f4:	00870733          	add	a4,a4,s0
    32f8:	00d70123          	sb	a3,2(a4)
    32fc:	2087a703          	lw	a4,520(a5)
    3300:	00870733          	add	a4,a4,s0
    3304:	00c701a3          	sb	a2,3(a4)
    3308:	f91ff06f          	j	3298 <fatfs_fat_set_cluster+0x8c>

0000330c <fatfs_free_cluster_chain>:
    330c:	fe010113          	addi	sp,sp,-32
    3310:	00812c23          	sw	s0,24(sp)
    3314:	00912a23          	sw	s1,20(sp)
    3318:	00112e23          	sw	ra,28(sp)
    331c:	01212823          	sw	s2,16(sp)
    3320:	00050493          	mv	s1,a0
    3324:	ffd00413          	li	s0,-3
    3328:	fff58793          	addi	a5,a1,-1
    332c:	02f47063          	bgeu	s0,a5,334c <fatfs_free_cluster_chain+0x40>
    3330:	01c12083          	lw	ra,28(sp)
    3334:	01812403          	lw	s0,24(sp)
    3338:	01412483          	lw	s1,20(sp)
    333c:	01012903          	lw	s2,16(sp)
    3340:	00100513          	li	a0,1
    3344:	02010113          	addi	sp,sp,32
    3348:	00008067          	ret
    334c:	00048513          	mv	a0,s1
    3350:	00b12623          	sw	a1,12(sp)
    3354:	fffff097          	auipc	ra,0xfffff
    3358:	2b0080e7          	jalr	688(ra) # 2604 <fatfs_find_next_cluster>
    335c:	00c12583          	lw	a1,12(sp)
    3360:	00050913          	mv	s2,a0
    3364:	00000613          	li	a2,0
    3368:	00048513          	mv	a0,s1
    336c:	00000097          	auipc	ra,0x0
    3370:	ea0080e7          	jalr	-352(ra) # 320c <fatfs_fat_set_cluster>
    3374:	00090593          	mv	a1,s2
    3378:	fb1ff06f          	j	3328 <fatfs_free_cluster_chain+0x1c>

0000337c <fatfs_fat_add_cluster_to_chain>:
    337c:	fd010113          	addi	sp,sp,-48
    3380:	02912223          	sw	s1,36(sp)
    3384:	02112623          	sw	ra,44(sp)
    3388:	02812423          	sw	s0,40(sp)
    338c:	03212023          	sw	s2,32(sp)
    3390:	01312e23          	sw	s3,28(sp)
    3394:	fff00493          	li	s1,-1
    3398:	02959263          	bne	a1,s1,33bc <fatfs_fat_add_cluster_to_chain+0x40>
    339c:	00000513          	li	a0,0
    33a0:	02c12083          	lw	ra,44(sp)
    33a4:	02812403          	lw	s0,40(sp)
    33a8:	02412483          	lw	s1,36(sp)
    33ac:	02012903          	lw	s2,32(sp)
    33b0:	01c12983          	lw	s3,28(sp)
    33b4:	03010113          	addi	sp,sp,48
    33b8:	00008067          	ret
    33bc:	00050913          	mv	s2,a0
    33c0:	00058413          	mv	s0,a1
    33c4:	00060993          	mv	s3,a2
    33c8:	00040593          	mv	a1,s0
    33cc:	00090513          	mv	a0,s2
    33d0:	00812623          	sw	s0,12(sp)
    33d4:	fffff097          	auipc	ra,0xfffff
    33d8:	230080e7          	jalr	560(ra) # 2604 <fatfs_find_next_cluster>
    33dc:	00050413          	mv	s0,a0
    33e0:	fa050ee3          	beqz	a0,339c <fatfs_fat_add_cluster_to_chain+0x20>
    33e4:	00c12583          	lw	a1,12(sp)
    33e8:	fe9510e3          	bne	a0,s1,33c8 <fatfs_fat_add_cluster_to_chain+0x4c>
    33ec:	00098613          	mv	a2,s3
    33f0:	00090513          	mv	a0,s2
    33f4:	00000097          	auipc	ra,0x0
    33f8:	e18080e7          	jalr	-488(ra) # 320c <fatfs_fat_set_cluster>
    33fc:	00040613          	mv	a2,s0
    3400:	00098593          	mv	a1,s3
    3404:	00090513          	mv	a0,s2
    3408:	00000097          	auipc	ra,0x0
    340c:	e04080e7          	jalr	-508(ra) # 320c <fatfs_fat_set_cluster>
    3410:	00100513          	li	a0,1
    3414:	f8dff06f          	j	33a0 <fatfs_fat_add_cluster_to_chain+0x24>

00003418 <fatfs_add_free_space>:
    3418:	02452783          	lw	a5,36(a0)
    341c:	fd010113          	addi	sp,sp,-48
    3420:	02812423          	sw	s0,40(sp)
    3424:	01312e23          	sw	s3,28(sp)
    3428:	01412c23          	sw	s4,24(sp)
    342c:	0005a983          	lw	s3,0(a1)
    3430:	01512a23          	sw	s5,20(sp)
    3434:	00058a13          	mv	s4,a1
    3438:	02112623          	sw	ra,44(sp)
    343c:	02912223          	sw	s1,36(sp)
    3440:	03212023          	sw	s2,32(sp)
    3444:	fff00593          	li	a1,-1
    3448:	00050413          	mv	s0,a0
    344c:	00060a93          	mv	s5,a2
    3450:	00b78663          	beq	a5,a1,345c <fatfs_add_free_space+0x44>
    3454:	00000097          	auipc	ra,0x0
    3458:	bf4080e7          	jalr	-1036(ra) # 3048 <fatfs_set_fs_info_next_free_cluster>
    345c:	00000493          	li	s1,0
    3460:	03549663          	bne	s1,s5,348c <fatfs_add_free_space+0x74>
    3464:	00100513          	li	a0,1
    3468:	02c12083          	lw	ra,44(sp)
    346c:	02812403          	lw	s0,40(sp)
    3470:	02412483          	lw	s1,36(sp)
    3474:	02012903          	lw	s2,32(sp)
    3478:	01c12983          	lw	s3,28(sp)
    347c:	01812a03          	lw	s4,24(sp)
    3480:	01412a83          	lw	s5,20(sp)
    3484:	03010113          	addi	sp,sp,48
    3488:	00008067          	ret
    348c:	00842583          	lw	a1,8(s0)
    3490:	00c10613          	addi	a2,sp,12
    3494:	00040513          	mv	a0,s0
    3498:	00000097          	auipc	ra,0x0
    349c:	c60080e7          	jalr	-928(ra) # 30f8 <fatfs_find_blank_cluster>
    34a0:	fc0504e3          	beqz	a0,3468 <fatfs_add_free_space+0x50>
    34a4:	00c12903          	lw	s2,12(sp)
    34a8:	00098593          	mv	a1,s3
    34ac:	00040513          	mv	a0,s0
    34b0:	00090613          	mv	a2,s2
    34b4:	00000097          	auipc	ra,0x0
    34b8:	d58080e7          	jalr	-680(ra) # 320c <fatfs_fat_set_cluster>
    34bc:	fff00613          	li	a2,-1
    34c0:	00090593          	mv	a1,s2
    34c4:	00040513          	mv	a0,s0
    34c8:	00000097          	auipc	ra,0x0
    34cc:	d44080e7          	jalr	-700(ra) # 320c <fatfs_fat_set_cluster>
    34d0:	00049463          	bnez	s1,34d8 <fatfs_add_free_space+0xc0>
    34d4:	012a2023          	sw	s2,0(s4)
    34d8:	00148493          	addi	s1,s1,1
    34dc:	00090993          	mv	s3,s2
    34e0:	f81ff06f          	j	3460 <fatfs_add_free_space+0x48>

000034e4 <_write_sectors>:
    34e4:	fb010113          	addi	sp,sp,-80
    34e8:	03512a23          	sw	s5,52(sp)
    34ec:	00008ab7          	lui	s5,0x8
    34f0:	04112623          	sw	ra,76(sp)
    34f4:	04812423          	sw	s0,72(sp)
    34f8:	04912223          	sw	s1,68(sp)
    34fc:	03412c23          	sw	s4,56(sp)
    3500:	03612823          	sw	s6,48(sp)
    3504:	03712623          	sw	s7,44(sp)
    3508:	03812423          	sw	s8,40(sp)
    350c:	03912223          	sw	s9,36(sp)
    3510:	03a12023          	sw	s10,32(sp)
    3514:	05212023          	sw	s2,64(sp)
    3518:	03312e23          	sw	s3,60(sp)
    351c:	728a8b93          	addi	s7,s5,1832 # 8728 <_fs>
    3520:	000bc983          	lbu	s3,0(s7)
    3524:	00058b13          	mv	s6,a1
    3528:	fff00793          	li	a5,-1
    352c:	00098593          	mv	a1,s3
    3530:	00050493          	mv	s1,a0
    3534:	000b0513          	mv	a0,s6
    3538:	00068c13          	mv	s8,a3
    353c:	00f12e23          	sw	a5,28(sp)
    3540:	00060d13          	mv	s10,a2
    3544:	ffffd097          	auipc	ra,0xffffd
    3548:	650080e7          	jalr	1616(ra) # b94 <__udivsi3>
    354c:	00050a13          	mv	s4,a0
    3550:	00098593          	mv	a1,s3
    3554:	000b0513          	mv	a0,s6
    3558:	ffffd097          	auipc	ra,0xffffd
    355c:	684080e7          	jalr	1668(ra) # bdc <__umodsi3>
    3560:	00ac07b3          	add	a5,s8,a0
    3564:	00050c93          	mv	s9,a0
    3568:	000c0413          	mv	s0,s8
    356c:	00f9fe63          	bgeu	s3,a5,3588 <_write_sectors+0xa4>
    3570:	000a0593          	mv	a1,s4
    3574:	00098513          	mv	a0,s3
    3578:	ffffe097          	auipc	ra,0xffffe
    357c:	d1c080e7          	jalr	-740(ra) # 1294 <__mulsi3>
    3580:	416987b3          	sub	a5,s3,s6
    3584:	00f50433          	add	s0,a0,a5
    3588:	2284a903          	lw	s2,552(s1)
    358c:	03491a63          	bne	s2,s4,35c0 <_write_sectors+0xdc>
    3590:	22c4a583          	lw	a1,556(s1)
    3594:	728a8513          	addi	a0,s5,1832
    3598:	ffffe097          	auipc	ra,0xffffe
    359c:	060080e7          	jalr	96(ra) # 15f8 <fatfs_lba_of_cluster>
    35a0:	019505b3          	add	a1,a0,s9
    35a4:	00040693          	mv	a3,s0
    35a8:	000d0613          	mv	a2,s10
    35ac:	728a8513          	addi	a0,s5,1832
    35b0:	ffffe097          	auipc	ra,0xffffe
    35b4:	0ac080e7          	jalr	172(ra) # 165c <fatfs_sector_write>
    35b8:	04050a63          	beqz	a0,360c <_write_sectors+0x128>
    35bc:	0540006f          	j	3610 <_write_sectors+0x12c>
    35c0:	093b6663          	bltu	s6,s3,364c <_write_sectors+0x168>
    35c4:	00190793          	addi	a5,s2,1
    35c8:	09479263          	bne	a5,s4,364c <_write_sectors+0x168>
    35cc:	22c4a583          	lw	a1,556(s1)
    35d0:	fff00b13          	li	s6,-1
    35d4:	09496263          	bltu	s2,s4,3658 <_write_sectors+0x174>
    35d8:	fff00793          	li	a5,-1
    35dc:	0af59463          	bne	a1,a5,3684 <_write_sectors+0x1a0>
    35e0:	000bc583          	lbu	a1,0(s7)
    35e4:	fff58513          	addi	a0,a1,-1
    35e8:	01850533          	add	a0,a0,s8
    35ec:	ffffd097          	auipc	ra,0xffffd
    35f0:	5a8080e7          	jalr	1448(ra) # b94 <__udivsi3>
    35f4:	00050613          	mv	a2,a0
    35f8:	01c10593          	addi	a1,sp,28
    35fc:	000b8513          	mv	a0,s7
    3600:	00000097          	auipc	ra,0x0
    3604:	e18080e7          	jalr	-488(ra) # 3418 <fatfs_add_free_space>
    3608:	06051c63          	bnez	a0,3680 <_write_sectors+0x19c>
    360c:	00000413          	li	s0,0
    3610:	04c12083          	lw	ra,76(sp)
    3614:	00040513          	mv	a0,s0
    3618:	04812403          	lw	s0,72(sp)
    361c:	04412483          	lw	s1,68(sp)
    3620:	04012903          	lw	s2,64(sp)
    3624:	03c12983          	lw	s3,60(sp)
    3628:	03812a03          	lw	s4,56(sp)
    362c:	03412a83          	lw	s5,52(sp)
    3630:	03012b03          	lw	s6,48(sp)
    3634:	02c12b83          	lw	s7,44(sp)
    3638:	02812c03          	lw	s8,40(sp)
    363c:	02412c83          	lw	s9,36(sp)
    3640:	02012d03          	lw	s10,32(sp)
    3644:	05010113          	addi	sp,sp,80
    3648:	00008067          	ret
    364c:	0044a583          	lw	a1,4(s1)
    3650:	00000913          	li	s2,0
    3654:	f7dff06f          	j	35d0 <_write_sectors+0xec>
    3658:	728a8513          	addi	a0,s5,1832
    365c:	00b12623          	sw	a1,12(sp)
    3660:	fffff097          	auipc	ra,0xfffff
    3664:	fa4080e7          	jalr	-92(ra) # 2604 <fatfs_find_next_cluster>
    3668:	00c12583          	lw	a1,12(sp)
    366c:	00b12e23          	sw	a1,28(sp)
    3670:	f76508e3          	beq	a0,s6,35e0 <_write_sectors+0xfc>
    3674:	00190913          	addi	s2,s2,1
    3678:	00050593          	mv	a1,a0
    367c:	f59ff06f          	j	35d4 <_write_sectors+0xf0>
    3680:	01c12583          	lw	a1,28(sp)
    3684:	22b4a623          	sw	a1,556(s1)
    3688:	2344a423          	sw	s4,552(s1)
    368c:	f09ff06f          	j	3594 <_write_sectors+0xb0>

00003690 <fl_fflush>:
    3690:	000047b7          	lui	a5,0x4
    3694:	5247a783          	lw	a5,1316(a5) # 4524 <_filelib_init>
    3698:	ff010113          	addi	sp,sp,-16
    369c:	00812423          	sw	s0,8(sp)
    36a0:	00112623          	sw	ra,12(sp)
    36a4:	00912223          	sw	s1,4(sp)
    36a8:	00050413          	mv	s0,a0
    36ac:	00079663          	bnez	a5,36b8 <fl_fflush+0x28>
    36b0:	ffffe097          	auipc	ra,0xffffe
    36b4:	078080e7          	jalr	120(ra) # 1728 <fl_init>
    36b8:	04040663          	beqz	s0,3704 <fl_fflush+0x74>
    36bc:	000084b7          	lui	s1,0x8
    36c0:	72848493          	addi	s1,s1,1832 # 8728 <_fs>
    36c4:	03c4a783          	lw	a5,60(s1)
    36c8:	00078463          	beqz	a5,36d0 <fl_fflush+0x40>
    36cc:	000780e7          	jalr	a5
    36d0:	43442783          	lw	a5,1076(s0)
    36d4:	02078263          	beqz	a5,36f8 <fl_fflush+0x68>
    36d8:	43042583          	lw	a1,1072(s0)
    36dc:	00100693          	li	a3,1
    36e0:	23040613          	addi	a2,s0,560
    36e4:	00040513          	mv	a0,s0
    36e8:	00000097          	auipc	ra,0x0
    36ec:	dfc080e7          	jalr	-516(ra) # 34e4 <_write_sectors>
    36f0:	00050463          	beqz	a0,36f8 <fl_fflush+0x68>
    36f4:	42042a23          	sw	zero,1076(s0)
    36f8:	0404a783          	lw	a5,64(s1)
    36fc:	00078463          	beqz	a5,3704 <fl_fflush+0x74>
    3700:	000780e7          	jalr	a5
    3704:	00c12083          	lw	ra,12(sp)
    3708:	00812403          	lw	s0,8(sp)
    370c:	00412483          	lw	s1,4(sp)
    3710:	00000513          	li	a0,0
    3714:	01010113          	addi	sp,sp,16
    3718:	00008067          	ret

0000371c <fl_fclose>:
    371c:	000047b7          	lui	a5,0x4
    3720:	5247a783          	lw	a5,1316(a5) # 4524 <_filelib_init>
    3724:	ff010113          	addi	sp,sp,-16
    3728:	00812423          	sw	s0,8(sp)
    372c:	00112623          	sw	ra,12(sp)
    3730:	00912223          	sw	s1,4(sp)
    3734:	01212023          	sw	s2,0(sp)
    3738:	00050413          	mv	s0,a0
    373c:	00079663          	bnez	a5,3748 <fl_fclose+0x2c>
    3740:	ffffe097          	auipc	ra,0xffffe
    3744:	fe8080e7          	jalr	-24(ra) # 1728 <fl_init>
    3748:	08040c63          	beqz	s0,37e0 <fl_fclose+0xc4>
    374c:	000084b7          	lui	s1,0x8
    3750:	72848913          	addi	s2,s1,1832 # 8728 <_fs>
    3754:	03c92783          	lw	a5,60(s2)
    3758:	00078463          	beqz	a5,3760 <fl_fclose+0x44>
    375c:	000780e7          	jalr	a5
    3760:	00040513          	mv	a0,s0
    3764:	00000097          	auipc	ra,0x0
    3768:	f2c080e7          	jalr	-212(ra) # 3690 <fl_fflush>
    376c:	01042783          	lw	a5,16(s0)
    3770:	00078e63          	beqz	a5,378c <fl_fclose+0x70>
    3774:	00c42683          	lw	a3,12(s0)
    3778:	00042583          	lw	a1,0(s0)
    377c:	21c40613          	addi	a2,s0,540
    3780:	72848513          	addi	a0,s1,1832
    3784:	fffff097          	auipc	ra,0xfffff
    3788:	610080e7          	jalr	1552(ra) # 2d94 <fatfs_update_file_length>
    378c:	fff00793          	li	a5,-1
    3790:	42f42823          	sw	a5,1072(s0)
    3794:	00040513          	mv	a0,s0
    3798:	00042423          	sw	zero,8(s0)
    379c:	00042623          	sw	zero,12(s0)
    37a0:	00042223          	sw	zero,4(s0)
    37a4:	42042a23          	sw	zero,1076(s0)
    37a8:	00042823          	sw	zero,16(s0)
    37ac:	ffffe097          	auipc	ra,0xffffe
    37b0:	e04080e7          	jalr	-508(ra) # 15b0 <_free_file>
    37b4:	72848513          	addi	a0,s1,1832
    37b8:	fffff097          	auipc	ra,0xfffff
    37bc:	df4080e7          	jalr	-524(ra) # 25ac <fatfs_fat_purge>
    37c0:	04092783          	lw	a5,64(s2)
    37c4:	00078e63          	beqz	a5,37e0 <fl_fclose+0xc4>
    37c8:	00812403          	lw	s0,8(sp)
    37cc:	00c12083          	lw	ra,12(sp)
    37d0:	00412483          	lw	s1,4(sp)
    37d4:	00012903          	lw	s2,0(sp)
    37d8:	01010113          	addi	sp,sp,16
    37dc:	00078067          	jr	a5
    37e0:	00c12083          	lw	ra,12(sp)
    37e4:	00812403          	lw	s0,8(sp)
    37e8:	00412483          	lw	s1,4(sp)
    37ec:	00012903          	lw	s2,0(sp)
    37f0:	01010113          	addi	sp,sp,16
    37f4:	00008067          	ret

000037f8 <fl_fread>:
    37f8:	000047b7          	lui	a5,0x4
    37fc:	5247a783          	lw	a5,1316(a5) # 4524 <_filelib_init>
    3800:	fc010113          	addi	sp,sp,-64
    3804:	02812c23          	sw	s0,56(sp)
    3808:	03512223          	sw	s5,36(sp)
    380c:	02112e23          	sw	ra,60(sp)
    3810:	02912a23          	sw	s1,52(sp)
    3814:	03212823          	sw	s2,48(sp)
    3818:	03312623          	sw	s3,44(sp)
    381c:	03412423          	sw	s4,40(sp)
    3820:	03612023          	sw	s6,32(sp)
    3824:	01712e23          	sw	s7,28(sp)
    3828:	01812c23          	sw	s8,24(sp)
    382c:	01912a23          	sw	s9,20(sp)
    3830:	00050a93          	mv	s5,a0
    3834:	00068413          	mv	s0,a3
    3838:	00058513          	mv	a0,a1
    383c:	00079e63          	bnez	a5,3858 <fl_fread+0x60>
    3840:	00c12623          	sw	a2,12(sp)
    3844:	00b12423          	sw	a1,8(sp)
    3848:	ffffe097          	auipc	ra,0xffffe
    384c:	ee0080e7          	jalr	-288(ra) # 1728 <fl_init>
    3850:	00c12603          	lw	a2,12(sp)
    3854:	00812503          	lw	a0,8(sp)
    3858:	14040e63          	beqz	s0,39b4 <fl_fread+0x1bc>
    385c:	140a8c63          	beqz	s5,39b4 <fl_fread+0x1bc>
    3860:	43844783          	lbu	a5,1080(s0)
    3864:	fff00493          	li	s1,-1
    3868:	0017f793          	andi	a5,a5,1
    386c:	04078863          	beqz	a5,38bc <fl_fread+0xc4>
    3870:	00060593          	mv	a1,a2
    3874:	ffffe097          	auipc	ra,0xffffe
    3878:	a20080e7          	jalr	-1504(ra) # 1294 <__mulsi3>
    387c:	00050493          	mv	s1,a0
    3880:	02050e63          	beqz	a0,38bc <fl_fread+0xc4>
    3884:	00842583          	lw	a1,8(s0)
    3888:	00c42783          	lw	a5,12(s0)
    388c:	12f5f463          	bgeu	a1,a5,39b4 <fl_fread+0x1bc>
    3890:	00b50733          	add	a4,a0,a1
    3894:	00e7f463          	bgeu	a5,a4,389c <fl_fread+0xa4>
    3898:	40b784b3          	sub	s1,a5,a1
    389c:	0095da13          	srli	s4,a1,0x9
    38a0:	1ff5f913          	andi	s2,a1,511
    38a4:	00000993          	li	s3,0
    38a8:	23040b13          	addi	s6,s0,560
    38ac:	20000b93          	li	s7,512
    38b0:	1ff00c13          	li	s8,511
    38b4:	0499c063          	blt	s3,s1,38f4 <fl_fread+0xfc>
    38b8:	00098493          	mv	s1,s3
    38bc:	03c12083          	lw	ra,60(sp)
    38c0:	03812403          	lw	s0,56(sp)
    38c4:	03012903          	lw	s2,48(sp)
    38c8:	02c12983          	lw	s3,44(sp)
    38cc:	02812a03          	lw	s4,40(sp)
    38d0:	02412a83          	lw	s5,36(sp)
    38d4:	02012b03          	lw	s6,32(sp)
    38d8:	01c12b83          	lw	s7,28(sp)
    38dc:	01812c03          	lw	s8,24(sp)
    38e0:	01412c83          	lw	s9,20(sp)
    38e4:	00048513          	mv	a0,s1
    38e8:	03412483          	lw	s1,52(sp)
    38ec:	04010113          	addi	sp,sp,64
    38f0:	00008067          	ret
    38f4:	04091663          	bnez	s2,3940 <fl_fread+0x148>
    38f8:	413486b3          	sub	a3,s1,s3
    38fc:	04dc5263          	bge	s8,a3,3940 <fl_fread+0x148>
    3900:	4096d693          	srai	a3,a3,0x9
    3904:	013a8633          	add	a2,s5,s3
    3908:	000a0593          	mv	a1,s4
    390c:	00040513          	mv	a0,s0
    3910:	fffff097          	auipc	ra,0xfffff
    3914:	5ec080e7          	jalr	1516(ra) # 2efc <_read_sectors>
    3918:	fa0500e3          	beqz	a0,38b8 <fl_fread+0xc0>
    391c:	00951c93          	slli	s9,a0,0x9
    3920:	000c8613          	mv	a2,s9
    3924:	00aa0a33          	add	s4,s4,a0
    3928:	00842783          	lw	a5,8(s0)
    392c:	00c989b3          	add	s3,s3,a2
    3930:	00000913          	li	s2,0
    3934:	019787b3          	add	a5,a5,s9
    3938:	00f42423          	sw	a5,8(s0)
    393c:	f79ff06f          	j	38b4 <fl_fread+0xbc>
    3940:	43042783          	lw	a5,1072(s0)
    3944:	03478e63          	beq	a5,s4,3980 <fl_fread+0x188>
    3948:	43442783          	lw	a5,1076(s0)
    394c:	00078863          	beqz	a5,395c <fl_fread+0x164>
    3950:	00040513          	mv	a0,s0
    3954:	00000097          	auipc	ra,0x0
    3958:	d3c080e7          	jalr	-708(ra) # 3690 <fl_fflush>
    395c:	00100693          	li	a3,1
    3960:	000b0613          	mv	a2,s6
    3964:	000a0593          	mv	a1,s4
    3968:	00040513          	mv	a0,s0
    396c:	fffff097          	auipc	ra,0xfffff
    3970:	590080e7          	jalr	1424(ra) # 2efc <_read_sectors>
    3974:	f40502e3          	beqz	a0,38b8 <fl_fread+0xc0>
    3978:	43442823          	sw	s4,1072(s0)
    397c:	42042a23          	sw	zero,1076(s0)
    3980:	412b87b3          	sub	a5,s7,s2
    3984:	41348633          	sub	a2,s1,s3
    3988:	00c7d463          	bge	a5,a2,3990 <fl_fread+0x198>
    398c:	00078613          	mv	a2,a5
    3990:	012b05b3          	add	a1,s6,s2
    3994:	013a8533          	add	a0,s5,s3
    3998:	00060c93          	mv	s9,a2
    399c:	00c12423          	sw	a2,8(sp)
    39a0:	ffffd097          	auipc	ra,0xffffd
    39a4:	2bc080e7          	jalr	700(ra) # c5c <memcpy>
    39a8:	00812603          	lw	a2,8(sp)
    39ac:	001a0a13          	addi	s4,s4,1
    39b0:	f79ff06f          	j	3928 <fl_fread+0x130>
    39b4:	fff00493          	li	s1,-1
    39b8:	f05ff06f          	j	38bc <fl_fread+0xc4>

000039bc <fatfs_allocate_free_space>:
    39bc:	fd010113          	addi	sp,sp,-48
    39c0:	02112623          	sw	ra,44(sp)
    39c4:	02812423          	sw	s0,40(sp)
    39c8:	02912223          	sw	s1,36(sp)
    39cc:	03212023          	sw	s2,32(sp)
    39d0:	01312e23          	sw	s3,28(sp)
    39d4:	01412c23          	sw	s4,24(sp)
    39d8:	01512a23          	sw	s5,20(sp)
    39dc:	02069863          	bnez	a3,3a0c <fatfs_allocate_free_space+0x50>
    39e0:	00000413          	li	s0,0
    39e4:	02c12083          	lw	ra,44(sp)
    39e8:	00040513          	mv	a0,s0
    39ec:	02812403          	lw	s0,40(sp)
    39f0:	02412483          	lw	s1,36(sp)
    39f4:	02012903          	lw	s2,32(sp)
    39f8:	01c12983          	lw	s3,28(sp)
    39fc:	01812a03          	lw	s4,24(sp)
    3a00:	01412a83          	lw	s5,20(sp)
    3a04:	03010113          	addi	sp,sp,48
    3a08:	00008067          	ret
    3a0c:	02452783          	lw	a5,36(a0)
    3a10:	00058a13          	mv	s4,a1
    3a14:	fff00593          	li	a1,-1
    3a18:	00050493          	mv	s1,a0
    3a1c:	00068913          	mv	s2,a3
    3a20:	00060993          	mv	s3,a2
    3a24:	00b78663          	beq	a5,a1,3a30 <fatfs_allocate_free_space+0x74>
    3a28:	fffff097          	auipc	ra,0xfffff
    3a2c:	620080e7          	jalr	1568(ra) # 3048 <fatfs_set_fs_info_next_free_cluster>
    3a30:	0004c783          	lbu	a5,0(s1)
    3a34:	00090513          	mv	a0,s2
    3a38:	00979a93          	slli	s5,a5,0x9
    3a3c:	000a8593          	mv	a1,s5
    3a40:	ffffd097          	auipc	ra,0xffffd
    3a44:	154080e7          	jalr	340(ra) # b94 <__udivsi3>
    3a48:	00050413          	mv	s0,a0
    3a4c:	00050593          	mv	a1,a0
    3a50:	000a8513          	mv	a0,s5
    3a54:	ffffe097          	auipc	ra,0xffffe
    3a58:	840080e7          	jalr	-1984(ra) # 1294 <__mulsi3>
    3a5c:	41250533          	sub	a0,a0,s2
    3a60:	00a03533          	snez	a0,a0
    3a64:	00a40933          	add	s2,s0,a0
    3a68:	040a0463          	beqz	s4,3ab0 <fatfs_allocate_free_space+0xf4>
    3a6c:	0084a583          	lw	a1,8(s1)
    3a70:	00c10613          	addi	a2,sp,12
    3a74:	00048513          	mv	a0,s1
    3a78:	fffff097          	auipc	ra,0xfffff
    3a7c:	680080e7          	jalr	1664(ra) # 30f8 <fatfs_find_blank_cluster>
    3a80:	00050413          	mv	s0,a0
    3a84:	f4050ee3          	beqz	a0,39e0 <fatfs_allocate_free_space+0x24>
    3a88:	00100793          	li	a5,1
    3a8c:	02f91663          	bne	s2,a5,3ab8 <fatfs_allocate_free_space+0xfc>
    3a90:	00c12903          	lw	s2,12(sp)
    3a94:	fff00613          	li	a2,-1
    3a98:	00048513          	mv	a0,s1
    3a9c:	00090593          	mv	a1,s2
    3aa0:	fffff097          	auipc	ra,0xfffff
    3aa4:	76c080e7          	jalr	1900(ra) # 320c <fatfs_fat_set_cluster>
    3aa8:	0129a023          	sw	s2,0(s3)
    3aac:	f39ff06f          	j	39e4 <fatfs_allocate_free_space+0x28>
    3ab0:	0009a783          	lw	a5,0(s3)
    3ab4:	00f12623          	sw	a5,12(sp)
    3ab8:	00090613          	mv	a2,s2
    3abc:	00c10593          	addi	a1,sp,12
    3ac0:	00048513          	mv	a0,s1
    3ac4:	00000097          	auipc	ra,0x0
    3ac8:	954080e7          	jalr	-1708(ra) # 3418 <fatfs_add_free_space>
    3acc:	00050413          	mv	s0,a0
    3ad0:	f15ff06f          	j	39e4 <fatfs_allocate_free_space+0x28>

00003ad4 <fatfs_add_file_entry>:
    3ad4:	03852883          	lw	a7,56(a0)
    3ad8:	30088e63          	beqz	a7,3df4 <fatfs_add_file_entry+0x320>
    3adc:	f8010113          	addi	sp,sp,-128
    3ae0:	06812c23          	sw	s0,120(sp)
    3ae4:	00050413          	mv	s0,a0
    3ae8:	00060513          	mv	a0,a2
    3aec:	06912a23          	sw	s1,116(sp)
    3af0:	07512223          	sw	s5,100(sp)
    3af4:	00f12c23          	sw	a5,24(sp)
    3af8:	00e12a23          	sw	a4,20(sp)
    3afc:	06112e23          	sw	ra,124(sp)
    3b00:	07212823          	sw	s2,112(sp)
    3b04:	07312623          	sw	s3,108(sp)
    3b08:	07412423          	sw	s4,104(sp)
    3b0c:	07612023          	sw	s6,96(sp)
    3b10:	05712e23          	sw	s7,92(sp)
    3b14:	05812c23          	sw	s8,88(sp)
    3b18:	05912a23          	sw	s9,84(sp)
    3b1c:	05a12823          	sw	s10,80(sp)
    3b20:	05b12623          	sw	s11,76(sp)
    3b24:	01012e23          	sw	a6,28(sp)
    3b28:	00068a93          	mv	s5,a3
    3b2c:	00c12823          	sw	a2,16(sp)
    3b30:	00b12423          	sw	a1,8(sp)
    3b34:	ffffe097          	auipc	ra,0xffffe
    3b38:	e3c080e7          	jalr	-452(ra) # 1970 <fatfs_lfn_entries_required>
    3b3c:	00150713          	addi	a4,a0,1
    3b40:	00100793          	li	a5,1
    3b44:	00050493          	mv	s1,a0
    3b48:	2ae7f263          	bgeu	a5,a4,3dec <fatfs_add_file_entry+0x318>
    3b4c:	00000a13          	li	s4,0
    3b50:	00000993          	li	s3,0
    3b54:	00000913          	li	s2,0
    3b58:	00000c93          	li	s9,0
    3b5c:	00000b13          	li	s6,0
    3b60:	01000c13          	li	s8,16
    3b64:	00812583          	lw	a1,8(sp)
    3b68:	00000693          	li	a3,0
    3b6c:	000b0613          	mv	a2,s6
    3b70:	00040513          	mv	a0,s0
    3b74:	000b0b93          	mv	s7,s6
    3b78:	fffff097          	auipc	ra,0xfffff
    3b7c:	b94080e7          	jalr	-1132(ra) # 270c <fatfs_sector_reader>
    3b80:	18050463          	beqz	a0,3d08 <fatfs_add_file_entry+0x234>
    3b84:	001b0b13          	addi	s6,s6,1
    3b88:	04440793          	addi	a5,s0,68
    3b8c:	000c8d13          	mv	s10,s9
    3b90:	00000d93          	li	s11,0
    3b94:	00078513          	mv	a0,a5
    3b98:	00f12623          	sw	a5,12(sp)
    3b9c:	ffffe097          	auipc	ra,0xffffe
    3ba0:	cfc080e7          	jalr	-772(ra) # 1898 <fatfs_entry_lfn_text>
    3ba4:	00c12783          	lw	a5,12(sp)
    3ba8:	00050c93          	mv	s9,a0
    3bac:	02050c63          	beqz	a0,3be4 <fatfs_add_file_entry+0x110>
    3bb0:	020d0463          	beqz	s10,3bd8 <fatfs_add_file_entry+0x104>
    3bb4:	00090c93          	mv	s9,s2
    3bb8:	000c8913          	mv	s2,s9
    3bbc:	001d0c93          	addi	s9,s10,1
    3bc0:	001d8d93          	addi	s11,s11,1
    3bc4:	0ffdfd93          	zext.b	s11,s11
    3bc8:	02078793          	addi	a5,a5,32
    3bcc:	f98d8ce3          	beq	s11,s8,3b64 <fatfs_add_file_entry+0x90>
    3bd0:	000c8d13          	mv	s10,s9
    3bd4:	fc1ff06f          	j	3b94 <fatfs_add_file_entry+0xc0>
    3bd8:	000d8a13          	mv	s4,s11
    3bdc:	000b8993          	mv	s3,s7
    3be0:	fd9ff06f          	j	3bb8 <fatfs_add_file_entry+0xe4>
    3be4:	0007c683          	lbu	a3,0(a5)
    3be8:	0e500713          	li	a4,229
    3bec:	10e69863          	bne	a3,a4,3cfc <fatfs_add_file_entry+0x228>
    3bf0:	000d1863          	bnez	s10,3c00 <fatfs_add_file_entry+0x12c>
    3bf4:	000d8a13          	mv	s4,s11
    3bf8:	000b8993          	mv	s3,s7
    3bfc:	00100913          	li	s2,1
    3c00:	fa9d4ee3          	blt	s10,s1,3bbc <fatfs_add_file_entry+0xe8>
    3c04:	00ba8693          	addi	a3,s5,11
    3c08:	000a8713          	mv	a4,s5
    3c0c:	00000913          	li	s2,0
    3c10:	00074603          	lbu	a2,0(a4)
    3c14:	00195793          	srli	a5,s2,0x1
    3c18:	00791913          	slli	s2,s2,0x7
    3c1c:	012787b3          	add	a5,a5,s2
    3c20:	00170713          	addi	a4,a4,1
    3c24:	00c787b3          	add	a5,a5,a2
    3c28:	0ff7f913          	zext.b	s2,a5
    3c2c:	fed712e3          	bne	a4,a3,3c10 <fatfs_add_file_entry+0x13c>
    3c30:	00098b13          	mv	s6,s3
    3c34:	00000d13          	li	s10,0
    3c38:	01000b93          	li	s7,16
    3c3c:	00812583          	lw	a1,8(sp)
    3c40:	00000693          	li	a3,0
    3c44:	000b0613          	mv	a2,s6
    3c48:	00040513          	mv	a0,s0
    3c4c:	fffff097          	auipc	ra,0xfffff
    3c50:	ac0080e7          	jalr	-1344(ra) # 270c <fatfs_sector_reader>
    3c54:	18050c63          	beqz	a0,3dec <fatfs_add_file_entry+0x318>
    3c58:	04440c93          	addi	s9,s0,68
    3c5c:	413b0db3          	sub	s11,s6,s3
    3c60:	00000793          	li	a5,0
    3c64:	00000c13          	li	s8,0
    3c68:	01912623          	sw	s9,12(sp)
    3c6c:	000d1663          	bnez	s10,3c78 <fatfs_add_file_entry+0x1a4>
    3c70:	154c1863          	bne	s8,s4,3dc0 <fatfs_add_file_entry+0x2ec>
    3c74:	140d9663          	bnez	s11,3dc0 <fatfs_add_file_entry+0x2ec>
    3c78:	12049263          	bnez	s1,3d9c <fatfs_add_file_entry+0x2c8>
    3c7c:	01c12703          	lw	a4,28(sp)
    3c80:	01412603          	lw	a2,20(sp)
    3c84:	01812583          	lw	a1,24(sp)
    3c88:	02010693          	addi	a3,sp,32
    3c8c:	000a8513          	mv	a0,s5
    3c90:	ffffe097          	auipc	ra,0xffffe
    3c94:	e24080e7          	jalr	-476(ra) # 1ab4 <fatfs_sfn_create_entry>
    3c98:	02000613          	li	a2,32
    3c9c:	00c105b3          	add	a1,sp,a2
    3ca0:	000c8513          	mv	a0,s9
    3ca4:	ffffd097          	auipc	ra,0xffffd
    3ca8:	fb8080e7          	jalr	-72(ra) # c5c <memcpy>
    3cac:	03842783          	lw	a5,56(s0)
    3cb0:	00c12583          	lw	a1,12(sp)
    3cb4:	24442503          	lw	a0,580(s0)
    3cb8:	00100613          	li	a2,1
    3cbc:	000780e7          	jalr	a5
    3cc0:	07c12083          	lw	ra,124(sp)
    3cc4:	07812403          	lw	s0,120(sp)
    3cc8:	07412483          	lw	s1,116(sp)
    3ccc:	07012903          	lw	s2,112(sp)
    3cd0:	06c12983          	lw	s3,108(sp)
    3cd4:	06812a03          	lw	s4,104(sp)
    3cd8:	06412a83          	lw	s5,100(sp)
    3cdc:	06012b03          	lw	s6,96(sp)
    3ce0:	05c12b83          	lw	s7,92(sp)
    3ce4:	05812c03          	lw	s8,88(sp)
    3ce8:	05412c83          	lw	s9,84(sp)
    3cec:	05012d03          	lw	s10,80(sp)
    3cf0:	04c12d83          	lw	s11,76(sp)
    3cf4:	08010113          	addi	sp,sp,128
    3cf8:	00008067          	ret
    3cfc:	ee068ae3          	beqz	a3,3bf0 <fatfs_add_file_entry+0x11c>
    3d00:	00000913          	li	s2,0
    3d04:	ebdff06f          	j	3bc0 <fatfs_add_file_entry+0xec>
    3d08:	00842583          	lw	a1,8(s0)
    3d0c:	02010613          	addi	a2,sp,32
    3d10:	00040513          	mv	a0,s0
    3d14:	fffff097          	auipc	ra,0xfffff
    3d18:	3e4080e7          	jalr	996(ra) # 30f8 <fatfs_find_blank_cluster>
    3d1c:	0c050863          	beqz	a0,3dec <fatfs_add_file_entry+0x318>
    3d20:	02012b83          	lw	s7,32(sp)
    3d24:	00812583          	lw	a1,8(sp)
    3d28:	00040513          	mv	a0,s0
    3d2c:	000b8613          	mv	a2,s7
    3d30:	fffff097          	auipc	ra,0xfffff
    3d34:	64c080e7          	jalr	1612(ra) # 337c <fatfs_fat_add_cluster_to_chain>
    3d38:	0a050a63          	beqz	a0,3dec <fatfs_add_file_entry+0x318>
    3d3c:	20000613          	li	a2,512
    3d40:	00000593          	li	a1,0
    3d44:	04440513          	addi	a0,s0,68
    3d48:	ffffd097          	auipc	ra,0xffffd
    3d4c:	ef8080e7          	jalr	-264(ra) # c40 <memset>
    3d50:	00000c13          	li	s8,0
    3d54:	00044783          	lbu	a5,0(s0)
    3d58:	00fc6a63          	bltu	s8,a5,3d6c <fatfs_add_file_entry+0x298>
    3d5c:	ea0914e3          	bnez	s2,3c04 <fatfs_add_file_entry+0x130>
    3d60:	000b0993          	mv	s3,s6
    3d64:	00000a13          	li	s4,0
    3d68:	e9dff06f          	j	3c04 <fatfs_add_file_entry+0x130>
    3d6c:	00000693          	li	a3,0
    3d70:	000c0613          	mv	a2,s8
    3d74:	000b8593          	mv	a1,s7
    3d78:	00040513          	mv	a0,s0
    3d7c:	ffffe097          	auipc	ra,0xffffe
    3d80:	8f8080e7          	jalr	-1800(ra) # 1674 <fatfs_write_sector>
    3d84:	06050463          	beqz	a0,3dec <fatfs_add_file_entry+0x318>
    3d88:	001c0c13          	addi	s8,s8,1
    3d8c:	0ffc7c13          	zext.b	s8,s8
    3d90:	fc5ff06f          	j	3d54 <fatfs_add_file_entry+0x280>
    3d94:	001b0b13          	addi	s6,s6,1
    3d98:	ea5ff06f          	j	3c3c <fatfs_add_file_entry+0x168>
    3d9c:	01012503          	lw	a0,16(sp)
    3da0:	fff48493          	addi	s1,s1,-1
    3da4:	00090693          	mv	a3,s2
    3da8:	00048613          	mv	a2,s1
    3dac:	000c8593          	mv	a1,s9
    3db0:	ffffe097          	auipc	ra,0xffffe
    3db4:	bf0080e7          	jalr	-1040(ra) # 19a0 <fatfs_filename_to_lfn>
    3db8:	00100d13          	li	s10,1
    3dbc:	000d0793          	mv	a5,s10
    3dc0:	001c0c13          	addi	s8,s8,1
    3dc4:	0ffc7c13          	zext.b	s8,s8
    3dc8:	020c8c93          	addi	s9,s9,32
    3dcc:	eb7c10e3          	bne	s8,s7,3c6c <fatfs_add_file_entry+0x198>
    3dd0:	fc0782e3          	beqz	a5,3d94 <fatfs_add_file_entry+0x2c0>
    3dd4:	03842783          	lw	a5,56(s0)
    3dd8:	00c12583          	lw	a1,12(sp)
    3ddc:	24442503          	lw	a0,580(s0)
    3de0:	00100613          	li	a2,1
    3de4:	000780e7          	jalr	a5
    3de8:	fa0516e3          	bnez	a0,3d94 <fatfs_add_file_entry+0x2c0>
    3dec:	00000513          	li	a0,0
    3df0:	ed1ff06f          	j	3cc0 <fatfs_add_file_entry+0x1ec>
    3df4:	00000513          	li	a0,0
    3df8:	00008067          	ret

00003dfc <fl_fopen>:
    3dfc:	000047b7          	lui	a5,0x4
    3e00:	5247a783          	lw	a5,1316(a5) # 4524 <_filelib_init>
    3e04:	fa010113          	addi	sp,sp,-96
    3e08:	05212823          	sw	s2,80(sp)
    3e0c:	03a12823          	sw	s10,48(sp)
    3e10:	04112e23          	sw	ra,92(sp)
    3e14:	04812c23          	sw	s0,88(sp)
    3e18:	04912a23          	sw	s1,84(sp)
    3e1c:	05312623          	sw	s3,76(sp)
    3e20:	05412423          	sw	s4,72(sp)
    3e24:	05512223          	sw	s5,68(sp)
    3e28:	05612023          	sw	s6,64(sp)
    3e2c:	03712e23          	sw	s7,60(sp)
    3e30:	03812c23          	sw	s8,56(sp)
    3e34:	03912a23          	sw	s9,52(sp)
    3e38:	00050d13          	mv	s10,a0
    3e3c:	00058913          	mv	s2,a1
    3e40:	00079663          	bnez	a5,3e4c <fl_fopen+0x50>
    3e44:	ffffe097          	auipc	ra,0xffffe
    3e48:	8e4080e7          	jalr	-1820(ra) # 1728 <fl_init>
    3e4c:	000047b7          	lui	a5,0x4
    3e50:	5207a783          	lw	a5,1312(a5) # 4520 <_filelib_valid>
    3e54:	00193713          	seqz	a4,s2
    3e58:	0017b793          	seqz	a5,a5
    3e5c:	00e7e7b3          	or	a5,a5,a4
    3e60:	36079e63          	bnez	a5,41dc <fl_fopen+0x3e0>
    3e64:	360d0c63          	beqz	s10,41dc <fl_fopen+0x3e0>
    3e68:	00000493          	li	s1,0
    3e6c:	00000413          	li	s0,0
    3e70:	05700993          	li	s3,87
    3e74:	07200a13          	li	s4,114
    3e78:	07700b13          	li	s6,119
    3e7c:	06100b93          	li	s7,97
    3e80:	06200c13          	li	s8,98
    3e84:	04100a93          	li	s5,65
    3e88:	04200c93          	li	s9,66
    3e8c:	00090513          	mv	a0,s2
    3e90:	ffffd097          	auipc	ra,0xffffd
    3e94:	df0080e7          	jalr	-528(ra) # c80 <strlen>
    3e98:	10a44a63          	blt	s0,a0,3fac <fl_fopen+0x1b0>
    3e9c:	000089b7          	lui	s3,0x8
    3ea0:	72898a13          	addi	s4,s3,1832 # 8728 <_fs>
    3ea4:	038a2783          	lw	a5,56(s4)
    3ea8:	00079463          	bnez	a5,3eb0 <fl_fopen+0xb4>
    3eac:	fd94f493          	andi	s1,s1,-39
    3eb0:	03ca2783          	lw	a5,60(s4)
    3eb4:	00078463          	beqz	a5,3ebc <fl_fopen+0xc0>
    3eb8:	000780e7          	jalr	a5
    3ebc:	0014f793          	andi	a5,s1,1
    3ec0:	18079263          	bnez	a5,4044 <fl_fopen+0x248>
    3ec4:	0204f793          	andi	a5,s1,32
    3ec8:	08078c63          	beqz	a5,3f60 <fl_fopen+0x164>
    3ecc:	038a2783          	lw	a5,56(s4)
    3ed0:	06078a63          	beqz	a5,3f44 <fl_fopen+0x148>
    3ed4:	ffffd097          	auipc	ra,0xffffd
    3ed8:	664080e7          	jalr	1636(ra) # 1538 <_allocate_file>
    3edc:	00050413          	mv	s0,a0
    3ee0:	06050263          	beqz	a0,3f44 <fl_fopen+0x148>
    3ee4:	01450a93          	addi	s5,a0,20
    3ee8:	10400613          	li	a2,260
    3eec:	00000593          	li	a1,0
    3ef0:	000a8513          	mv	a0,s5
    3ef4:	ffffd097          	auipc	ra,0xffffd
    3ef8:	d4c080e7          	jalr	-692(ra) # c40 <memset>
    3efc:	11840b13          	addi	s6,s0,280
    3f00:	10400613          	li	a2,260
    3f04:	00000593          	li	a1,0
    3f08:	000b0513          	mv	a0,s6
    3f0c:	ffffd097          	auipc	ra,0xffffd
    3f10:	d34080e7          	jalr	-716(ra) # c40 <memset>
    3f14:	10400713          	li	a4,260
    3f18:	000b0693          	mv	a3,s6
    3f1c:	00070613          	mv	a2,a4
    3f20:	000a8593          	mv	a1,s5
    3f24:	000d0513          	mv	a0,s10
    3f28:	ffffe097          	auipc	ra,0xffffe
    3f2c:	07c080e7          	jalr	124(ra) # 1fa4 <fatfs_split_path>
    3f30:	fff00793          	li	a5,-1
    3f34:	12f51663          	bne	a0,a5,4060 <fl_fopen+0x264>
    3f38:	00040513          	mv	a0,s0
    3f3c:	ffffd097          	auipc	ra,0xffffd
    3f40:	674080e7          	jalr	1652(ra) # 15b0 <_free_file>
    3f44:	00000413          	li	s0,0
    3f48:	0214f793          	andi	a5,s1,33
    3f4c:	02000713          	li	a4,32
    3f50:	28e79263          	bne	a5,a4,41d4 <fl_fopen+0x3d8>
    3f54:	10041263          	bnez	s0,4058 <fl_fopen+0x25c>
    3f58:	0064f793          	andi	a5,s1,6
    3f5c:	26079463          	bnez	a5,41c4 <fl_fopen+0x3c8>
    3f60:	00000413          	li	s0,0
    3f64:	040a2783          	lw	a5,64(s4)
    3f68:	00078463          	beqz	a5,3f70 <fl_fopen+0x174>
    3f6c:	000780e7          	jalr	a5
    3f70:	05c12083          	lw	ra,92(sp)
    3f74:	00040513          	mv	a0,s0
    3f78:	05812403          	lw	s0,88(sp)
    3f7c:	05412483          	lw	s1,84(sp)
    3f80:	05012903          	lw	s2,80(sp)
    3f84:	04c12983          	lw	s3,76(sp)
    3f88:	04812a03          	lw	s4,72(sp)
    3f8c:	04412a83          	lw	s5,68(sp)
    3f90:	04012b03          	lw	s6,64(sp)
    3f94:	03c12b83          	lw	s7,60(sp)
    3f98:	03812c03          	lw	s8,56(sp)
    3f9c:	03412c83          	lw	s9,52(sp)
    3fa0:	03012d03          	lw	s10,48(sp)
    3fa4:	06010113          	addi	sp,sp,96
    3fa8:	00008067          	ret
    3fac:	008907b3          	add	a5,s2,s0
    3fb0:	0007c783          	lbu	a5,0(a5)
    3fb4:	05378863          	beq	a5,s3,4004 <fl_fopen+0x208>
    3fb8:	02f9e863          	bltu	s3,a5,3fe8 <fl_fopen+0x1ec>
    3fbc:	05578863          	beq	a5,s5,400c <fl_fopen+0x210>
    3fc0:	00faea63          	bltu	s5,a5,3fd4 <fl_fopen+0x1d8>
    3fc4:	02b00713          	li	a4,43
    3fc8:	04e78663          	beq	a5,a4,4014 <fl_fopen+0x218>
    3fcc:	00140413          	addi	s0,s0,1
    3fd0:	ebdff06f          	j	3e8c <fl_fopen+0x90>
    3fd4:	03978263          	beq	a5,s9,3ff8 <fl_fopen+0x1fc>
    3fd8:	05200713          	li	a4,82
    3fdc:	fee798e3          	bne	a5,a4,3fcc <fl_fopen+0x1d0>
    3fe0:	0014e493          	ori	s1,s1,1
    3fe4:	fe9ff06f          	j	3fcc <fl_fopen+0x1d0>
    3fe8:	ff478ce3          	beq	a5,s4,3fe0 <fl_fopen+0x1e4>
    3fec:	00fa6a63          	bltu	s4,a5,4000 <fl_fopen+0x204>
    3ff0:	01778e63          	beq	a5,s7,400c <fl_fopen+0x210>
    3ff4:	fd879ce3          	bne	a5,s8,3fcc <fl_fopen+0x1d0>
    3ff8:	0084e493          	ori	s1,s1,8
    3ffc:	fd1ff06f          	j	3fcc <fl_fopen+0x1d0>
    4000:	fd6796e3          	bne	a5,s6,3fcc <fl_fopen+0x1d0>
    4004:	0324e493          	ori	s1,s1,50
    4008:	fc5ff06f          	j	3fcc <fl_fopen+0x1d0>
    400c:	0264e493          	ori	s1,s1,38
    4010:	fbdff06f          	j	3fcc <fl_fopen+0x1d0>
    4014:	0014f793          	andi	a5,s1,1
    4018:	00078663          	beqz	a5,4024 <fl_fopen+0x228>
    401c:	0024e493          	ori	s1,s1,2
    4020:	fadff06f          	j	3fcc <fl_fopen+0x1d0>
    4024:	0024f793          	andi	a5,s1,2
    4028:	00078663          	beqz	a5,4034 <fl_fopen+0x238>
    402c:	0314e493          	ori	s1,s1,49
    4030:	f9dff06f          	j	3fcc <fl_fopen+0x1d0>
    4034:	0044f793          	andi	a5,s1,4
    4038:	f8078ae3          	beqz	a5,3fcc <fl_fopen+0x1d0>
    403c:	0274e493          	ori	s1,s1,39
    4040:	f8dff06f          	j	3fcc <fl_fopen+0x1d0>
    4044:	000d0513          	mv	a0,s10
    4048:	fffff097          	auipc	ra,0xfffff
    404c:	af4080e7          	jalr	-1292(ra) # 2b3c <_open_file>
    4050:	00050413          	mv	s0,a0
    4054:	e60508e3          	beqz	a0,3ec4 <fl_fopen+0xc8>
    4058:	42940c23          	sb	s1,1080(s0)
    405c:	f09ff06f          	j	3f64 <fl_fopen+0x168>
    4060:	00040513          	mv	a0,s0
    4064:	ffffe097          	auipc	ra,0xffffe
    4068:	1bc080e7          	jalr	444(ra) # 2220 <_check_file_open>
    406c:	00050913          	mv	s2,a0
    4070:	ec0514e3          	bnez	a0,3f38 <fl_fopen+0x13c>
    4074:	01444783          	lbu	a5,20(s0)
    4078:	0e079663          	bnez	a5,4164 <fl_fopen+0x368>
    407c:	008a2783          	lw	a5,8(s4)
    4080:	00f42023          	sw	a5,0(s0)
    4084:	00042583          	lw	a1,0(s0)
    4088:	01010693          	addi	a3,sp,16
    408c:	000b0613          	mv	a2,s6
    4090:	72898513          	addi	a0,s3,1832
    4094:	ffffe097          	auipc	ra,0xffffe
    4098:	7c8080e7          	jalr	1992(ra) # 285c <fatfs_get_file_entry>
    409c:	00100693          	li	a3,1
    40a0:	e8d50ce3          	beq	a0,a3,3f38 <fl_fopen+0x13c>
    40a4:	00042223          	sw	zero,4(s0)
    40a8:	00440613          	addi	a2,s0,4
    40ac:	00068593          	mv	a1,a3
    40b0:	72898513          	addi	a0,s3,1832
    40b4:	00000097          	auipc	ra,0x0
    40b8:	908080e7          	jalr	-1784(ra) # 39bc <fatfs_allocate_free_space>
    40bc:	e6050ee3          	beqz	a0,3f38 <fl_fopen+0x13c>
    40c0:	00002ab7          	lui	s5,0x2
    40c4:	21c40b93          	addi	s7,s0,540
    40c8:	72898c13          	addi	s8,s3,1832
    40cc:	70fa8a93          	addi	s5,s5,1807 # 270f <fatfs_sector_reader+0x3>
    40d0:	000b0593          	mv	a1,s6
    40d4:	00410513          	addi	a0,sp,4
    40d8:	ffffe097          	auipc	ra,0xffffe
    40dc:	a80080e7          	jalr	-1408(ra) # 1b58 <fatfs_lfn_create_sfn>
    40e0:	08090e63          	beqz	s2,417c <fl_fopen+0x380>
    40e4:	00090613          	mv	a2,s2
    40e8:	00410593          	addi	a1,sp,4
    40ec:	000b8513          	mv	a0,s7
    40f0:	ffffe097          	auipc	ra,0xffffe
    40f4:	be4080e7          	jalr	-1052(ra) # 1cd4 <fatfs_lfn_generate_tail>
    40f8:	00042583          	lw	a1,0(s0)
    40fc:	000b8613          	mv	a2,s7
    4100:	000c0513          	mv	a0,s8
    4104:	fffff097          	auipc	ra,0xfffff
    4108:	bac080e7          	jalr	-1108(ra) # 2cb0 <fatfs_sfn_exists>
    410c:	00050663          	beqz	a0,4118 <fl_fopen+0x31c>
    4110:	00190913          	addi	s2,s2,1
    4114:	fb591ee3          	bne	s2,s5,40d0 <fl_fopen+0x2d4>
    4118:	00442703          	lw	a4,4(s0)
    411c:	000027b7          	lui	a5,0x2
    4120:	70f78793          	addi	a5,a5,1807 # 270f <fatfs_sector_reader+0x3>
    4124:	00070593          	mv	a1,a4
    4128:	02f90663          	beq	s2,a5,4154 <fl_fopen+0x358>
    412c:	00042583          	lw	a1,0(s0)
    4130:	00000813          	li	a6,0
    4134:	00000793          	li	a5,0
    4138:	000b8693          	mv	a3,s7
    413c:	000b0613          	mv	a2,s6
    4140:	72898513          	addi	a0,s3,1832
    4144:	00000097          	auipc	ra,0x0
    4148:	990080e7          	jalr	-1648(ra) # 3ad4 <fatfs_add_file_entry>
    414c:	04051463          	bnez	a0,4194 <fl_fopen+0x398>
    4150:	00442583          	lw	a1,4(s0)
    4154:	72898513          	addi	a0,s3,1832
    4158:	fffff097          	auipc	ra,0xfffff
    415c:	1b4080e7          	jalr	436(ra) # 330c <fatfs_free_cluster_chain>
    4160:	dd9ff06f          	j	3f38 <fl_fopen+0x13c>
    4164:	00040593          	mv	a1,s0
    4168:	000a8513          	mv	a0,s5
    416c:	fffff097          	auipc	ra,0xfffff
    4170:	8ec080e7          	jalr	-1812(ra) # 2a58 <_open_directory>
    4174:	f00518e3          	bnez	a0,4084 <fl_fopen+0x288>
    4178:	dc1ff06f          	j	3f38 <fl_fopen+0x13c>
    417c:	00b00613          	li	a2,11
    4180:	00410593          	addi	a1,sp,4
    4184:	000b8513          	mv	a0,s7
    4188:	ffffd097          	auipc	ra,0xffffd
    418c:	ad4080e7          	jalr	-1324(ra) # c5c <memcpy>
    4190:	f69ff06f          	j	40f8 <fl_fopen+0x2fc>
    4194:	fff00793          	li	a5,-1
    4198:	00042623          	sw	zero,12(s0)
    419c:	00042423          	sw	zero,8(s0)
    41a0:	42f42823          	sw	a5,1072(s0)
    41a4:	42042a23          	sw	zero,1076(s0)
    41a8:	00042823          	sw	zero,16(s0)
    41ac:	22f42423          	sw	a5,552(s0)
    41b0:	22f42623          	sw	a5,556(s0)
    41b4:	72898513          	addi	a0,s3,1832
    41b8:	ffffe097          	auipc	ra,0xffffe
    41bc:	3f4080e7          	jalr	1012(ra) # 25ac <fatfs_fat_purge>
    41c0:	d89ff06f          	j	3f48 <fl_fopen+0x14c>
    41c4:	000d0513          	mv	a0,s10
    41c8:	fffff097          	auipc	ra,0xfffff
    41cc:	974080e7          	jalr	-1676(ra) # 2b3c <_open_file>
    41d0:	00050413          	mv	s0,a0
    41d4:	e80412e3          	bnez	s0,4058 <fl_fopen+0x25c>
    41d8:	d89ff06f          	j	3f60 <fl_fopen+0x164>
    41dc:	00000413          	li	s0,0
    41e0:	d91ff06f          	j	3f70 <fl_fopen+0x174>

000041e4 <cmd16>:
    41e4:	02000050 00001500                       P.......

000041ec <acmd41>:
    41ec:	00004069 00000100                       i@......

000041f4 <cmd55>:
    41f4:	00000077 00000100                       w.......

000041fc <cmd8>:
    41fc:	01000048 000087aa                       H.......

00004204 <cmd0>:
    4204:	00000040 00009500                       @.......

0000420c <AUDIO>:
    420c:	00018000                                ....

00004210 <DISPLAY>:
    4210:	00014000                                .@..

00004214 <BUTTONS>:
    4214:	00010100                                ....

00004218 <SDCARD>:
    4218:	00010080                                ....

0000421c <OLED_RST>:
    421c:	00010010                                ....

00004220 <OLED>:
    4220:	00010008                                ....

00004224 <LEDS>:
    4224:	00010004 00006272 7561702f 722e6573     ....rb../pause.r
    4234:	00007761 74696e69 2e2e2e20 00000020     aw..init ... ...
    4244:	656e6f64 00000a2e 73756d2f 722e6369     done..../music.r
    4254:	722e7761 00007761 2e676d69 20776172     aw.raw..img.raw 
    4264:	20746f6e 6e756f66 000a2e64 67616d69     not found...imag
    4274:	6f662065 2e646e75 0000000a 73756d2f     e found...../mus
    4284:	722e6369 00007761 656c6966 746f6e20     ic.raw..file not
    4294:	756f6620 0a2e646e 00000000 33323130      found......0123
    42a4:	37363534 42413938 46454443 00000000     456789ABCDEF....
    42b4:	5f544146 203a5346 6f727245 6f632072     FAT_FS: Error co
    42c4:	20646c75 20746f6e 64616f6c 54414620     uld not load FAT
    42d4:	74656420 736c6961 64252820 0a0d2129      details (%d)!..
    42e4:	00000000                                ....

000042e8 <font>:
    42e8:	00000000 00002f00 00030000 14000003     ...../..........
    42f8:	143e143e 3a2b6a2e 08122600 171c3224     >.>..j+:.&..$2..
    4308:	03003415 00000000 0000211e 001e2100     .4.......!...!..
    4318:	08220000 0822081c 0000081c 00002040     .."...".....@ ..
    4328:	00080800 00200000 20000000 02040810     ...... .... ....
    4338:	3f21213f 003f0100 253d0000 25002725     ?!!?..?...=%%'.%
    4348:	003f2525 3f040407 25252700 253f003d     %%?....?.'%%=.?%
    4358:	01003d25 00030539 3f25253f 25252700     %=..9...?%%?.'%%
    4368:	0028003f 40000000 00000028 00110a04     ?.(....@(.......
    4378:	00141400 0a110000 01000004 0007052d     ............-...
    4388:	253d213f 09093f1f 253f003f 3f003c27     ?!=%.?..?.?%'<.?
    4398:	00212121 1e21213f 25253f00 053f0025     !!!.?!!..?%%%.?.
    43a8:	3f000505 003d2521 3f04043f 213f2100     ...?!%=.?..?.!?!
    43b8:	20380000 3f013f21 003b0404 2020203f     ..8 !?.?..;.?   
    43c8:	3f013f00 023f3f01 3f003f04 003f2121     .?.?.??..?.?!!?.
    43d8:	0f09093f 31213f00 093f003f 27002f39     ?....?!1?.?.9/.'
    43e8:	003d2525 013f0101 20203f01 100f003f     %%=...?..?  ?...
    43f8:	3f001f30 3f203f20 3b04043b 38080f00     0..? ? ?;..;...8
    4408:	2931000f 3f002325 00000021 04081020     ..1)%#.?!... ...
    4418:	003f2102 01020000 20000201 00000020     .!?........  ...
    4428:	00000201 24243800 243f003c 3c003c24     .....8$$<.?$$<.<
    4438:	00242424 3f24243c 2c2c3c00 3f04002c     $$$.<$$?.<,,,..?
    4448:	bc000005 00fca4a4 3c04043f 00003d00     ........?..<.=..
    4458:	fd800000 3f000000 00340808 0000003f     .......?..4.?...
    4468:	3c043c00 043c3c04 3c003c04 003c2424     .<.<.<<..<.<$$<.
    4478:	3c2424fc 24243c00 083c00fc 2c000004     .$$<.<$$..<....,
    4488:	003c2c2c 00243f04 20203c00 100c003c     ,,<..?$..<  <...
    4498:	3c001c30 3c203c20 34080834 a0a0bc00     0..< < <4..4....
    44a8:	342400fc 0400242c 0000213f 0000003f     ..$4,$..?!..?...
    44b8:	043f2100 02010000 00000102 00000000     .!?.............
    44c8:	00000001 00000003 00000005 00000007     ................
    44d8:	00000009 0000000e 00000010 00000012     ................
    44e8:	00000014 00000016 00000018 0000001c     ................
    44f8:	0000001e                                ....

000044fc <sdcard_while_loading_callback>:
    44fc:	00000000                                ....

00004500 <back_color>:
	...

00004501 <front_color>:
    4501:	                                         ...

00004504 <cursor_y>:
    4504:	00000000                                ....

00004508 <cursor_x>:
    4508:	00000000                                ....

0000450c <f_putchar>:
    450c:	00000000                                ....

00004510 <_free_file_list>:
	...

00004518 <_open_file_list>:
	...

00004520 <_filelib_valid>:
    4520:	00000000                                ....

00004524 <_filelib_init>:
    4524:	00000000                                ....
