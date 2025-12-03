
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
      20:	ff010113          	addi	sp,sp,-16 # fff0 <_files+0x7a28>
      24:	ac078793          	addi	a5,a5,-1344 # ac0 <display_putchar>
      28:	00004737          	lui	a4,0x4
      2c:	14f72223          	sw	a5,324(a4) # 4144 <f_putchar>
      30:	00112623          	sw	ra,12(sp)
      34:	00812423          	sw	s0,8(sp)
      38:	00001097          	auipc	ra,0x1
      3c:	990080e7          	jalr	-1648(ra) # 9c8 <oled_init>
      40:	00001097          	auipc	ra,0x1
      44:	994080e7          	jalr	-1644(ra) # 9d4 <oled_fullscreen>
      48:	00001097          	auipc	ra,0x1
      4c:	a44080e7          	jalr	-1468(ra) # a8c <display_framebuffer>
      50:	00004637          	lui	a2,0x4
      54:	00000593          	li	a1,0
      58:	00000097          	auipc	ra,0x0
      5c:	7b4080e7          	jalr	1972(ra) # 80c <memset>
      60:	00001097          	auipc	ra,0x1
      64:	b78080e7          	jalr	-1160(ra) # bd8 <display_refresh>
      68:	00000593          	li	a1,0
      6c:	00000513          	li	a0,0
      70:	00001097          	auipc	ra,0x1
      74:	a28080e7          	jalr	-1496(ra) # a98 <display_set_cursor>
      78:	00000593          	li	a1,0
      7c:	0ff00513          	li	a0,255
      80:	00001097          	auipc	ra,0x1
      84:	a2c080e7          	jalr	-1492(ra) # aac <display_set_front_back_color>
      88:	00004537          	lui	a0,0x4
      8c:	e9050513          	addi	a0,a0,-368 # 3e90 <OLED+0x4>
      90:	00001097          	auipc	ra,0x1
      94:	d40080e7          	jalr	-704(ra) # dd0 <printf>
      98:	00001097          	auipc	ra,0x1
      9c:	b40080e7          	jalr	-1216(ra) # bd8 <display_refresh>
      a0:	00000097          	auipc	ra,0x0
      a4:	50c080e7          	jalr	1292(ra) # 5ac <sdcard_init>
      a8:	00001097          	auipc	ra,0x1
      ac:	2f8080e7          	jalr	760(ra) # 13a0 <fl_init>
      b0:	000005b7          	lui	a1,0x0
      b4:	000007b7          	lui	a5,0x0
      b8:	75058593          	addi	a1,a1,1872 # 750 <sdcard_writesector>
      bc:	6fc78413          	addi	s0,a5,1788 # 6fc <sdcard_readsector>
      c0:	00040513          	mv	a0,s0
      c4:	00002097          	auipc	ra,0x2
      c8:	0d8080e7          	jalr	216(ra) # 219c <fl_attach_media>
      cc:	000007b7          	lui	a5,0x0
      d0:	75078593          	addi	a1,a5,1872 # 750 <sdcard_writesector>
      d4:	fe0516e3          	bnez	a0,c0 <main+0xa4>
      d8:	00004537          	lui	a0,0x4
      dc:	e9c50513          	addi	a0,a0,-356 # 3e9c <OLED+0x10>
      e0:	00001097          	auipc	ra,0x1
      e4:	cf0080e7          	jalr	-784(ra) # dd0 <printf>
      e8:	000045b7          	lui	a1,0x4
      ec:	00004537          	lui	a0,0x4
      f0:	ea458593          	addi	a1,a1,-348 # 3ea4 <OLED+0x18>
      f4:	ea850513          	addi	a0,a0,-344 # 3ea8 <OLED+0x1c>
      f8:	00004097          	auipc	ra,0x4
      fc:	97c080e7          	jalr	-1668(ra) # 3a74 <fl_fopen>
     100:	00050413          	mv	s0,a0
     104:	02051463          	bnez	a0,12c <main+0x110>
     108:	00004537          	lui	a0,0x4
     10c:	eb450513          	addi	a0,a0,-332 # 3eb4 <OLED+0x28>
     110:	00001097          	auipc	ra,0x1
     114:	cc0080e7          	jalr	-832(ra) # dd0 <printf>
     118:	00812403          	lw	s0,8(sp)
     11c:	00c12083          	lw	ra,12(sp)
     120:	01010113          	addi	sp,sp,16
     124:	00001317          	auipc	t1,0x1
     128:	ab430067          	jr	-1356(t1) # bd8 <display_refresh>
     12c:	00004537          	lui	a0,0x4
     130:	ec850513          	addi	a0,a0,-312 # 3ec8 <OLED+0x3c>
     134:	00001097          	auipc	ra,0x1
     138:	c9c080e7          	jalr	-868(ra) # dd0 <printf>
     13c:	00001097          	auipc	ra,0x1
     140:	a9c080e7          	jalr	-1380(ra) # bd8 <display_refresh>
     144:	00001097          	auipc	ra,0x1
     148:	948080e7          	jalr	-1720(ra) # a8c <display_framebuffer>
     14c:	00040693          	mv	a3,s0
     150:	00004637          	lui	a2,0x4
     154:	00100593          	li	a1,1
     158:	00003097          	auipc	ra,0x3
     15c:	318080e7          	jalr	792(ra) # 3470 <fl_fread>
     160:	00001097          	auipc	ra,0x1
     164:	a78080e7          	jalr	-1416(ra) # bd8 <display_refresh>
     168:	00040513          	mv	a0,s0
     16c:	00812403          	lw	s0,8(sp)
     170:	00c12083          	lw	ra,12(sp)
     174:	01010113          	addi	sp,sp,16
     178:	00003317          	auipc	t1,0x3
     17c:	21c30067          	jr	540(t1) # 3394 <fl_fclose>

00000180 <pause>:
     180:	c0002773          	rdcycle	a4
     184:	c00027f3          	rdcycle	a5
     188:	40e787b3          	sub	a5,a5,a4
     18c:	fea7ece3          	bltu	a5,a0,184 <pause+0x4>
     190:	00008067          	ret

00000194 <sdcard_idle>:
     194:	00008067          	ret

00000198 <sdcard_select>:
     198:	000047b7          	lui	a5,0x4
     19c:	e847a783          	lw	a5,-380(a5) # 3e84 <SDCARD>
     1a0:	00200713          	li	a4,2
     1a4:	00e7a023          	sw	a4,0(a5)
     1a8:	00008067          	ret

000001ac <sdcard_ponder>:
     1ac:	000046b7          	lui	a3,0x4
     1b0:	e846a683          	lw	a3,-380(a3) # 3e84 <SDCARD>
     1b4:	01000793          	li	a5,16
     1b8:	00000713          	li	a4,0
     1bc:	00676613          	ori	a2,a4,6
     1c0:	00c6a023          	sw	a2,0(a3)
     1c4:	00174713          	xori	a4,a4,1
     1c8:	00000013          	nop
     1cc:	fff78793          	addi	a5,a5,-1
     1d0:	fe0796e3          	bnez	a5,1bc <sdcard_ponder+0x10>
     1d4:	00008067          	ret

000001d8 <sdcard_unselect>:
     1d8:	000047b7          	lui	a5,0x4
     1dc:	e847a783          	lw	a5,-380(a5) # 3e84 <SDCARD>
     1e0:	00600713          	li	a4,6
     1e4:	00e7a023          	sw	a4,0(a5)
     1e8:	00008067          	ret

000001ec <sdcard_send>:
     1ec:	000047b7          	lui	a5,0x4
     1f0:	e847a783          	lw	a5,-380(a5) # 3e84 <SDCARD>
     1f4:	00655713          	srli	a4,a0,0x6
     1f8:	00277713          	andi	a4,a4,2
     1fc:	00e7a023          	sw	a4,0(a5)
     200:	00176713          	ori	a4,a4,1
     204:	00e7a023          	sw	a4,0(a5)
     208:	00555713          	srli	a4,a0,0x5
     20c:	00277713          	andi	a4,a4,2
     210:	00e7a023          	sw	a4,0(a5)
     214:	00176713          	ori	a4,a4,1
     218:	00e7a023          	sw	a4,0(a5)
     21c:	00455713          	srli	a4,a0,0x4
     220:	00277713          	andi	a4,a4,2
     224:	00e7a023          	sw	a4,0(a5)
     228:	00176713          	ori	a4,a4,1
     22c:	00e7a023          	sw	a4,0(a5)
     230:	00355713          	srli	a4,a0,0x3
     234:	00277713          	andi	a4,a4,2
     238:	00e7a023          	sw	a4,0(a5)
     23c:	00176713          	ori	a4,a4,1
     240:	00e7a023          	sw	a4,0(a5)
     244:	00255713          	srli	a4,a0,0x2
     248:	00277713          	andi	a4,a4,2
     24c:	00e7a023          	sw	a4,0(a5)
     250:	00176713          	ori	a4,a4,1
     254:	00e7a023          	sw	a4,0(a5)
     258:	00155713          	srli	a4,a0,0x1
     25c:	00277713          	andi	a4,a4,2
     260:	00e7a023          	sw	a4,0(a5)
     264:	00176713          	ori	a4,a4,1
     268:	00e7a023          	sw	a4,0(a5)
     26c:	00257713          	andi	a4,a0,2
     270:	00e7a023          	sw	a4,0(a5)
     274:	00151513          	slli	a0,a0,0x1
     278:	00176713          	ori	a4,a4,1
     27c:	00e7a023          	sw	a4,0(a5)
     280:	00257513          	andi	a0,a0,2
     284:	00a7a023          	sw	a0,0(a5)
     288:	00156513          	ori	a0,a0,1
     28c:	00a7a023          	sw	a0,0(a5)
     290:	00200713          	li	a4,2
     294:	00e7a023          	sw	a4,0(a5)
     298:	000047b7          	lui	a5,0x4
     29c:	1347a783          	lw	a5,308(a5) # 4134 <sdcard_while_loading_callback>
     2a0:	00078067          	jr	a5

000002a4 <sdcard_read>:
     2a4:	fd010113          	addi	sp,sp,-48
     2a8:	fff50793          	addi	a5,a0,-1
     2ac:	03212023          	sw	s2,32(sp)
     2b0:	00100913          	li	s2,1
     2b4:	00f91933          	sll	s2,s2,a5
     2b8:	000047b7          	lui	a5,0x4
     2bc:	01312e23          	sw	s3,28(sp)
     2c0:	e847a983          	lw	s3,-380(a5) # 3e84 <SDCARD>
     2c4:	02812423          	sw	s0,40(sp)
     2c8:	02912223          	sw	s1,36(sp)
     2cc:	01412c23          	sw	s4,24(sp)
     2d0:	01512a23          	sw	s5,20(sp)
     2d4:	01612823          	sw	s6,16(sp)
     2d8:	02112623          	sw	ra,44(sp)
     2dc:	0ff00413          	li	s0,255
     2e0:	00000493          	li	s1,0
     2e4:	00300a13          	li	s4,3
     2e8:	00200a93          	li	s5,2
     2ec:	00004b37          	lui	s6,0x4
     2f0:	02058c63          	beqz	a1,328 <sdcard_read+0x84>
     2f4:	012477b3          	and	a5,s0,s2
     2f8:	02079a63          	bnez	a5,32c <sdcard_read+0x88>
     2fc:	02c12083          	lw	ra,44(sp)
     300:	0ff47513          	zext.b	a0,s0
     304:	02812403          	lw	s0,40(sp)
     308:	02412483          	lw	s1,36(sp)
     30c:	02012903          	lw	s2,32(sp)
     310:	01c12983          	lw	s3,28(sp)
     314:	01812a03          	lw	s4,24(sp)
     318:	01412a83          	lw	s5,20(sp)
     31c:	01012b03          	lw	s6,16(sp)
     320:	03010113          	addi	sp,sp,48
     324:	00008067          	ret
     328:	fca4dae3          	bge	s1,a0,2fc <sdcard_read+0x58>
     32c:	0149a023          	sw	s4,0(s3)
     330:	0159a023          	sw	s5,0(s3)
     334:	0009a783          	lw	a5,0(s3)
     338:	00141413          	slli	s0,s0,0x1
     33c:	00b12623          	sw	a1,12(sp)
     340:	00f46433          	or	s0,s0,a5
     344:	134b2783          	lw	a5,308(s6) # 4134 <sdcard_while_loading_callback>
     348:	00a12423          	sw	a0,8(sp)
     34c:	00148493          	addi	s1,s1,1
     350:	000780e7          	jalr	a5
     354:	00c12583          	lw	a1,12(sp)
     358:	00812503          	lw	a0,8(sp)
     35c:	f95ff06f          	j	2f0 <sdcard_read+0x4c>

00000360 <sdcard_get>:
     360:	fe010113          	addi	sp,sp,-32
     364:	00112e23          	sw	ra,28(sp)
     368:	00812c23          	sw	s0,24(sp)
     36c:	00912a23          	sw	s1,20(sp)
     370:	00050413          	mv	s0,a0
     374:	00b12623          	sw	a1,12(sp)
     378:	00000097          	auipc	ra,0x0
     37c:	e20080e7          	jalr	-480(ra) # 198 <sdcard_select>
     380:	00c12583          	lw	a1,12(sp)
     384:	00040513          	mv	a0,s0
     388:	00100493          	li	s1,1
     38c:	00000097          	auipc	ra,0x0
     390:	f18080e7          	jalr	-232(ra) # 2a4 <sdcard_read>
     394:	00345413          	srli	s0,s0,0x3
     398:	0284c463          	blt	s1,s0,3c0 <sdcard_get+0x60>
     39c:	00a12623          	sw	a0,12(sp)
     3a0:	00000097          	auipc	ra,0x0
     3a4:	e38080e7          	jalr	-456(ra) # 1d8 <sdcard_unselect>
     3a8:	01c12083          	lw	ra,28(sp)
     3ac:	01812403          	lw	s0,24(sp)
     3b0:	00c12503          	lw	a0,12(sp)
     3b4:	01412483          	lw	s1,20(sp)
     3b8:	02010113          	addi	sp,sp,32
     3bc:	00008067          	ret
     3c0:	00000593          	li	a1,0
     3c4:	00800513          	li	a0,8
     3c8:	00000097          	auipc	ra,0x0
     3cc:	edc080e7          	jalr	-292(ra) # 2a4 <sdcard_read>
     3d0:	00148493          	addi	s1,s1,1
     3d4:	fc5ff06f          	j	398 <sdcard_get+0x38>

000003d8 <sdcard_cmd>:
     3d8:	ff010113          	addi	sp,sp,-16
     3dc:	00812423          	sw	s0,8(sp)
     3e0:	00912223          	sw	s1,4(sp)
     3e4:	01212023          	sw	s2,0(sp)
     3e8:	00112623          	sw	ra,12(sp)
     3ec:	00050913          	mv	s2,a0
     3f0:	00000413          	li	s0,0
     3f4:	00000097          	auipc	ra,0x0
     3f8:	da4080e7          	jalr	-604(ra) # 198 <sdcard_select>
     3fc:	00600493          	li	s1,6
     400:	008907b3          	add	a5,s2,s0
     404:	0007c503          	lbu	a0,0(a5)
     408:	00140413          	addi	s0,s0,1
     40c:	00000097          	auipc	ra,0x0
     410:	de0080e7          	jalr	-544(ra) # 1ec <sdcard_send>
     414:	fe9416e3          	bne	s0,s1,400 <sdcard_cmd+0x28>
     418:	00812403          	lw	s0,8(sp)
     41c:	00c12083          	lw	ra,12(sp)
     420:	00412483          	lw	s1,4(sp)
     424:	00012903          	lw	s2,0(sp)
     428:	01010113          	addi	sp,sp,16
     42c:	00000317          	auipc	t1,0x0
     430:	dac30067          	jr	-596(t1) # 1d8 <sdcard_unselect>

00000434 <sdcard_start_sector>:
     434:	ff010113          	addi	sp,sp,-16
     438:	00112623          	sw	ra,12(sp)
     43c:	00812423          	sw	s0,8(sp)
     440:	00050413          	mv	s0,a0
     444:	00000097          	auipc	ra,0x0
     448:	d54080e7          	jalr	-684(ra) # 198 <sdcard_select>
     44c:	05100513          	li	a0,81
     450:	00000097          	auipc	ra,0x0
     454:	d9c080e7          	jalr	-612(ra) # 1ec <sdcard_send>
     458:	01845513          	srli	a0,s0,0x18
     45c:	00000097          	auipc	ra,0x0
     460:	d90080e7          	jalr	-624(ra) # 1ec <sdcard_send>
     464:	41045513          	srai	a0,s0,0x10
     468:	0ff57513          	zext.b	a0,a0
     46c:	00000097          	auipc	ra,0x0
     470:	d80080e7          	jalr	-640(ra) # 1ec <sdcard_send>
     474:	40845513          	srai	a0,s0,0x8
     478:	0ff57513          	zext.b	a0,a0
     47c:	00000097          	auipc	ra,0x0
     480:	d70080e7          	jalr	-656(ra) # 1ec <sdcard_send>
     484:	0ff47513          	zext.b	a0,s0
     488:	00000097          	auipc	ra,0x0
     48c:	d64080e7          	jalr	-668(ra) # 1ec <sdcard_send>
     490:	05500513          	li	a0,85
     494:	00000097          	auipc	ra,0x0
     498:	d58080e7          	jalr	-680(ra) # 1ec <sdcard_send>
     49c:	00000097          	auipc	ra,0x0
     4a0:	d3c080e7          	jalr	-708(ra) # 1d8 <sdcard_unselect>
     4a4:	00812403          	lw	s0,8(sp)
     4a8:	00c12083          	lw	ra,12(sp)
     4ac:	00100593          	li	a1,1
     4b0:	00800513          	li	a0,8
     4b4:	01010113          	addi	sp,sp,16
     4b8:	00000317          	auipc	t1,0x0
     4bc:	ea830067          	jr	-344(t1) # 360 <sdcard_get>

000004c0 <sdcard_read_sector>:
     4c0:	ff010113          	addi	sp,sp,-16
     4c4:	00812423          	sw	s0,8(sp)
     4c8:	00112623          	sw	ra,12(sp)
     4cc:	00912223          	sw	s1,4(sp)
     4d0:	01212023          	sw	s2,0(sp)
     4d4:	00058413          	mv	s0,a1
     4d8:	00000097          	auipc	ra,0x0
     4dc:	f5c080e7          	jalr	-164(ra) # 434 <sdcard_start_sector>
     4e0:	04051863          	bnez	a0,530 <sdcard_read_sector+0x70>
     4e4:	00100593          	li	a1,1
     4e8:	00058513          	mv	a0,a1
     4ec:	00000097          	auipc	ra,0x0
     4f0:	e74080e7          	jalr	-396(ra) # 360 <sdcard_get>
     4f4:	00000493          	li	s1,0
     4f8:	20000913          	li	s2,512
     4fc:	00000593          	li	a1,0
     500:	00800513          	li	a0,8
     504:	00000097          	auipc	ra,0x0
     508:	e5c080e7          	jalr	-420(ra) # 360 <sdcard_get>
     50c:	009407b3          	add	a5,s0,s1
     510:	00a78023          	sb	a0,0(a5)
     514:	00148493          	addi	s1,s1,1
     518:	ff2492e3          	bne	s1,s2,4fc <sdcard_read_sector+0x3c>
     51c:	00100593          	li	a1,1
     520:	01000513          	li	a0,16
     524:	20040413          	addi	s0,s0,512
     528:	00000097          	auipc	ra,0x0
     52c:	e38080e7          	jalr	-456(ra) # 360 <sdcard_get>
     530:	00c12083          	lw	ra,12(sp)
     534:	00040513          	mv	a0,s0
     538:	00812403          	lw	s0,8(sp)
     53c:	00412483          	lw	s1,4(sp)
     540:	00012903          	lw	s2,0(sp)
     544:	01010113          	addi	sp,sp,16
     548:	00008067          	ret

0000054c <sdcard_preinit>:
     54c:	ff010113          	addi	sp,sp,-16
     550:	000047b7          	lui	a5,0x4
     554:	00812423          	sw	s0,8(sp)
     558:	e847a403          	lw	s0,-380(a5) # 3e84 <SDCARD>
     55c:	00112623          	sw	ra,12(sp)
     560:	00600793          	li	a5,6
     564:	01313537          	lui	a0,0x1313
     568:	00f42023          	sw	a5,0(s0)
     56c:	d0050513          	addi	a0,a0,-768 # 1312d00 <__stacktop+0x1302d00>
     570:	00000097          	auipc	ra,0x0
     574:	c10080e7          	jalr	-1008(ra) # 180 <pause>
     578:	0a000793          	li	a5,160
     57c:	00000713          	li	a4,0
     580:	00676693          	ori	a3,a4,6
     584:	00d42023          	sw	a3,0(s0)
     588:	fff78793          	addi	a5,a5,-1
     58c:	00174713          	xori	a4,a4,1
     590:	fe0798e3          	bnez	a5,580 <sdcard_preinit+0x34>
     594:	00600793          	li	a5,6
     598:	00c12083          	lw	ra,12(sp)
     59c:	00f42023          	sw	a5,0(s0)
     5a0:	00812403          	lw	s0,8(sp)
     5a4:	01010113          	addi	sp,sp,16
     5a8:	00008067          	ret

000005ac <sdcard_init>:
     5ac:	000007b7          	lui	a5,0x0
     5b0:	19478793          	addi	a5,a5,404 # 194 <sdcard_idle>
     5b4:	00004737          	lui	a4,0x4
     5b8:	fe010113          	addi	sp,sp,-32
     5bc:	12f72a23          	sw	a5,308(a4) # 4134 <sdcard_while_loading_callback>
     5c0:	000047b7          	lui	a5,0x4
     5c4:	00812c23          	sw	s0,24(sp)
     5c8:	00912a23          	sw	s1,20(sp)
     5cc:	00112e23          	sw	ra,28(sp)
     5d0:	e7c78493          	addi	s1,a5,-388 # 3e7c <cmd0>
     5d4:	0ff00413          	li	s0,255
     5d8:	00000097          	auipc	ra,0x0
     5dc:	f74080e7          	jalr	-140(ra) # 54c <sdcard_preinit>
     5e0:	00048513          	mv	a0,s1
     5e4:	00000097          	auipc	ra,0x0
     5e8:	df4080e7          	jalr	-524(ra) # 3d8 <sdcard_cmd>
     5ec:	00100593          	li	a1,1
     5f0:	00800513          	li	a0,8
     5f4:	00000097          	auipc	ra,0x0
     5f8:	d6c080e7          	jalr	-660(ra) # 360 <sdcard_get>
     5fc:	00a12623          	sw	a0,12(sp)
     600:	00000097          	auipc	ra,0x0
     604:	bac080e7          	jalr	-1108(ra) # 1ac <sdcard_ponder>
     608:	00c12503          	lw	a0,12(sp)
     60c:	00851c63          	bne	a0,s0,624 <sdcard_init+0x78>
     610:	01313537          	lui	a0,0x1313
     614:	d0050513          	addi	a0,a0,-768 # 1312d00 <__stacktop+0x1302d00>
     618:	00000097          	auipc	ra,0x0
     61c:	b68080e7          	jalr	-1176(ra) # 180 <pause>
     620:	fb9ff06f          	j	5d8 <sdcard_init+0x2c>
     624:	00004537          	lui	a0,0x4
     628:	e7450513          	addi	a0,a0,-396 # 3e74 <cmd8>
     62c:	00000097          	auipc	ra,0x0
     630:	dac080e7          	jalr	-596(ra) # 3d8 <sdcard_cmd>
     634:	00100593          	li	a1,1
     638:	02800513          	li	a0,40
     63c:	00000097          	auipc	ra,0x0
     640:	d24080e7          	jalr	-732(ra) # 360 <sdcard_get>
     644:	00000097          	auipc	ra,0x0
     648:	b68080e7          	jalr	-1176(ra) # 1ac <sdcard_ponder>
     64c:	000047b7          	lui	a5,0x4
     650:	e6c78413          	addi	s0,a5,-404 # 3e6c <cmd55>
     654:	000047b7          	lui	a5,0x4
     658:	e6478493          	addi	s1,a5,-412 # 3e64 <acmd41>
     65c:	00040513          	mv	a0,s0
     660:	00000097          	auipc	ra,0x0
     664:	d78080e7          	jalr	-648(ra) # 3d8 <sdcard_cmd>
     668:	00100593          	li	a1,1
     66c:	00800513          	li	a0,8
     670:	00000097          	auipc	ra,0x0
     674:	cf0080e7          	jalr	-784(ra) # 360 <sdcard_get>
     678:	00000097          	auipc	ra,0x0
     67c:	b34080e7          	jalr	-1228(ra) # 1ac <sdcard_ponder>
     680:	00048513          	mv	a0,s1
     684:	00000097          	auipc	ra,0x0
     688:	d54080e7          	jalr	-684(ra) # 3d8 <sdcard_cmd>
     68c:	00100593          	li	a1,1
     690:	00800513          	li	a0,8
     694:	00000097          	auipc	ra,0x0
     698:	ccc080e7          	jalr	-820(ra) # 360 <sdcard_get>
     69c:	00a12623          	sw	a0,12(sp)
     6a0:	00000097          	auipc	ra,0x0
     6a4:	b0c080e7          	jalr	-1268(ra) # 1ac <sdcard_ponder>
     6a8:	00c12503          	lw	a0,12(sp)
     6ac:	00050c63          	beqz	a0,6c4 <sdcard_init+0x118>
     6b0:	001e8537          	lui	a0,0x1e8
     6b4:	48050513          	addi	a0,a0,1152 # 1e8480 <__stacktop+0x1d8480>
     6b8:	00000097          	auipc	ra,0x0
     6bc:	ac8080e7          	jalr	-1336(ra) # 180 <pause>
     6c0:	f9dff06f          	j	65c <sdcard_init+0xb0>
     6c4:	00004537          	lui	a0,0x4
     6c8:	e5c50513          	addi	a0,a0,-420 # 3e5c <cmd16>
     6cc:	00000097          	auipc	ra,0x0
     6d0:	d0c080e7          	jalr	-756(ra) # 3d8 <sdcard_cmd>
     6d4:	00100593          	li	a1,1
     6d8:	00800513          	li	a0,8
     6dc:	00000097          	auipc	ra,0x0
     6e0:	c84080e7          	jalr	-892(ra) # 360 <sdcard_get>
     6e4:	01812403          	lw	s0,24(sp)
     6e8:	01c12083          	lw	ra,28(sp)
     6ec:	01412483          	lw	s1,20(sp)
     6f0:	02010113          	addi	sp,sp,32
     6f4:	00000317          	auipc	t1,0x0
     6f8:	ab830067          	jr	-1352(t1) # 1ac <sdcard_ponder>

000006fc <sdcard_readsector>:
     6fc:	04060663          	beqz	a2,748 <sdcard_readsector+0x4c>
     700:	ff010113          	addi	sp,sp,-16
     704:	00812423          	sw	s0,8(sp)
     708:	00912223          	sw	s1,4(sp)
     70c:	00112623          	sw	ra,12(sp)
     710:	00050413          	mv	s0,a0
     714:	00a604b3          	add	s1,a2,a0
     718:	00040513          	mv	a0,s0
     71c:	00000097          	auipc	ra,0x0
     720:	da4080e7          	jalr	-604(ra) # 4c0 <sdcard_read_sector>
     724:	00140413          	addi	s0,s0,1
     728:	00050593          	mv	a1,a0
     72c:	fe9416e3          	bne	s0,s1,718 <sdcard_readsector+0x1c>
     730:	00c12083          	lw	ra,12(sp)
     734:	00812403          	lw	s0,8(sp)
     738:	00412483          	lw	s1,4(sp)
     73c:	00100513          	li	a0,1
     740:	01010113          	addi	sp,sp,16
     744:	00008067          	ret
     748:	00000513          	li	a0,0
     74c:	00008067          	ret

00000750 <sdcard_writesector>:
     750:	00000513          	li	a0,0
     754:	00008067          	ret

00000758 <__divsi3>:
     758:	06054063          	bltz	a0,7b8 <__umodsi3+0x10>
     75c:	0605c663          	bltz	a1,7c8 <__umodsi3+0x20>

00000760 <__udivsi3>:
     760:	00058613          	mv	a2,a1
     764:	00050593          	mv	a1,a0
     768:	fff00513          	li	a0,-1
     76c:	02060c63          	beqz	a2,7a4 <__udivsi3+0x44>
     770:	00100693          	li	a3,1
     774:	00b67a63          	bgeu	a2,a1,788 <__udivsi3+0x28>
     778:	00c05863          	blez	a2,788 <__udivsi3+0x28>
     77c:	00161613          	slli	a2,a2,0x1
     780:	00169693          	slli	a3,a3,0x1
     784:	feb66ae3          	bltu	a2,a1,778 <__udivsi3+0x18>
     788:	00000513          	li	a0,0
     78c:	00c5e663          	bltu	a1,a2,798 <__udivsi3+0x38>
     790:	40c585b3          	sub	a1,a1,a2
     794:	00d56533          	or	a0,a0,a3
     798:	0016d693          	srli	a3,a3,0x1
     79c:	00165613          	srli	a2,a2,0x1
     7a0:	fe0696e3          	bnez	a3,78c <__udivsi3+0x2c>
     7a4:	00008067          	ret

000007a8 <__umodsi3>:
     7a8:	00008293          	mv	t0,ra
     7ac:	fb5ff0ef          	jal	760 <__udivsi3>
     7b0:	00058513          	mv	a0,a1
     7b4:	00028067          	jr	t0
     7b8:	40a00533          	neg	a0,a0
     7bc:	0005d863          	bgez	a1,7cc <__umodsi3+0x24>
     7c0:	40b005b3          	neg	a1,a1
     7c4:	f95ff06f          	j	758 <__divsi3>
     7c8:	40b005b3          	neg	a1,a1
     7cc:	00008293          	mv	t0,ra
     7d0:	f89ff0ef          	jal	758 <__divsi3>
     7d4:	40a00533          	neg	a0,a0
     7d8:	00028067          	jr	t0

000007dc <__modsi3>:
     7dc:	00008293          	mv	t0,ra
     7e0:	0005ca63          	bltz	a1,7f4 <__modsi3+0x18>
     7e4:	00054c63          	bltz	a0,7fc <__modsi3+0x20>
     7e8:	f79ff0ef          	jal	760 <__udivsi3>
     7ec:	00058513          	mv	a0,a1
     7f0:	00028067          	jr	t0
     7f4:	40b005b3          	neg	a1,a1
     7f8:	fe0558e3          	bgez	a0,7e8 <__modsi3+0xc>
     7fc:	40a00533          	neg	a0,a0
     800:	f61ff0ef          	jal	760 <__udivsi3>
     804:	40b00533          	neg	a0,a1
     808:	00028067          	jr	t0

0000080c <memset>:
     80c:	00c50633          	add	a2,a0,a2
     810:	00050793          	mv	a5,a0
     814:	00c79463          	bne	a5,a2,81c <memset+0x10>
     818:	00008067          	ret
     81c:	00178793          	addi	a5,a5,1
     820:	feb78fa3          	sb	a1,-1(a5)
     824:	ff1ff06f          	j	814 <memset+0x8>

00000828 <memcpy>:
     828:	00000793          	li	a5,0
     82c:	00c79463          	bne	a5,a2,834 <memcpy+0xc>
     830:	00008067          	ret
     834:	00f58733          	add	a4,a1,a5
     838:	00074683          	lbu	a3,0(a4)
     83c:	00f50733          	add	a4,a0,a5
     840:	00178793          	addi	a5,a5,1
     844:	00d70023          	sb	a3,0(a4)
     848:	fe5ff06f          	j	82c <memcpy+0x4>

0000084c <strlen>:
     84c:	00000793          	li	a5,0
     850:	00f50733          	add	a4,a0,a5
     854:	00074703          	lbu	a4,0(a4)
     858:	00071663          	bnez	a4,864 <strlen+0x18>
     85c:	00078513          	mv	a0,a5
     860:	00008067          	ret
     864:	00178793          	addi	a5,a5,1
     868:	fe9ff06f          	j	850 <strlen+0x4>

0000086c <strncmp>:
     86c:	00000793          	li	a5,0
     870:	00c79663          	bne	a5,a2,87c <strncmp+0x10>
     874:	00000513          	li	a0,0
     878:	00008067          	ret
     87c:	00f50733          	add	a4,a0,a5
     880:	00074683          	lbu	a3,0(a4)
     884:	00f58733          	add	a4,a1,a5
     888:	00074703          	lbu	a4,0(a4)
     88c:	00e6e863          	bltu	a3,a4,89c <strncmp+0x30>
     890:	00d76a63          	bltu	a4,a3,8a4 <strncmp+0x38>
     894:	00178793          	addi	a5,a5,1
     898:	fd9ff06f          	j	870 <strncmp+0x4>
     89c:	fff00513          	li	a0,-1
     8a0:	00008067          	ret
     8a4:	00100513          	li	a0,1
     8a8:	00008067          	ret

000008ac <oled_wait>:
     8ac:	00000013          	nop
     8b0:	00000013          	nop
     8b4:	00000013          	nop
     8b8:	00000013          	nop
     8bc:	00000013          	nop
     8c0:	00000013          	nop
     8c4:	00000013          	nop
     8c8:	00008067          	ret

000008cc <oled_init_mode>:
     8cc:	000047b7          	lui	a5,0x4
     8d0:	e887a703          	lw	a4,-376(a5) # 3e88 <OLED_RST>
     8d4:	fe010113          	addi	sp,sp,-32
     8d8:	00112e23          	sw	ra,28(sp)
     8dc:	00812c23          	sw	s0,24(sp)
     8e0:	00072023          	sw	zero,0(a4)
     8e4:	00040737          	lui	a4,0x40
     8e8:	00000013          	nop
     8ec:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
     8f0:	fe071ce3          	bnez	a4,8e8 <oled_init_mode+0x1c>
     8f4:	e887a703          	lw	a4,-376(a5)
     8f8:	00100693          	li	a3,1
     8fc:	00d72023          	sw	a3,0(a4)
     900:	00040737          	lui	a4,0x40
     904:	00000013          	nop
     908:	fff70713          	addi	a4,a4,-1 # 3ffff <__stacktop+0x2ffff>
     90c:	fe071ce3          	bnez	a4,904 <oled_init_mode+0x38>
     910:	e887a783          	lw	a5,-376(a5)
     914:	0007a023          	sw	zero,0(a5)
     918:	000407b7          	lui	a5,0x40
     91c:	00000013          	nop
     920:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
     924:	fe079ce3          	bnez	a5,91c <oled_init_mode+0x50>
     928:	00004737          	lui	a4,0x4
     92c:	e8c72783          	lw	a5,-372(a4) # 3e8c <OLED>
     930:	2af00693          	li	a3,687
     934:	00d7a023          	sw	a3,0(a5)
     938:	000407b7          	lui	a5,0x40
     93c:	00000013          	nop
     940:	fff78793          	addi	a5,a5,-1 # 3ffff <__stacktop+0x2ffff>
     944:	fe079ce3          	bnez	a5,93c <oled_init_mode+0x70>
     948:	e8c72403          	lw	s0,-372(a4)
     94c:	2a000793          	li	a5,672
     950:	00a12623          	sw	a0,12(sp)
     954:	00f42023          	sw	a5,0(s0)
     958:	00000097          	auipc	ra,0x0
     95c:	f54080e7          	jalr	-172(ra) # 8ac <oled_wait>
     960:	00c12503          	lw	a0,12(sp)
     964:	4a000793          	li	a5,1184
     968:	00050463          	beqz	a0,970 <oled_init_mode+0xa4>
     96c:	42000793          	li	a5,1056
     970:	00f42023          	sw	a5,0(s0)
     974:	00000097          	auipc	ra,0x0
     978:	f38080e7          	jalr	-200(ra) # 8ac <oled_wait>
     97c:	2fd00793          	li	a5,765
     980:	00f42023          	sw	a5,0(s0)
     984:	00000097          	auipc	ra,0x0
     988:	f28080e7          	jalr	-216(ra) # 8ac <oled_wait>
     98c:	4b100793          	li	a5,1201
     990:	00f42023          	sw	a5,0(s0)
     994:	00000097          	auipc	ra,0x0
     998:	f18080e7          	jalr	-232(ra) # 8ac <oled_wait>
     99c:	2a200793          	li	a5,674
     9a0:	00f42023          	sw	a5,0(s0)
     9a4:	00000097          	auipc	ra,0x0
     9a8:	f08080e7          	jalr	-248(ra) # 8ac <oled_wait>
     9ac:	40000793          	li	a5,1024
     9b0:	00f42023          	sw	a5,0(s0)
     9b4:	01812403          	lw	s0,24(sp)
     9b8:	01c12083          	lw	ra,28(sp)
     9bc:	02010113          	addi	sp,sp,32
     9c0:	00000317          	auipc	t1,0x0
     9c4:	eec30067          	jr	-276(t1) # 8ac <oled_wait>

000009c8 <oled_init>:
     9c8:	00000513          	li	a0,0
     9cc:	00000317          	auipc	t1,0x0
     9d0:	f0030067          	jr	-256(t1) # 8cc <oled_init_mode>

000009d4 <oled_fullscreen>:
     9d4:	ff010113          	addi	sp,sp,-16
     9d8:	000047b7          	lui	a5,0x4
     9dc:	00812423          	sw	s0,8(sp)
     9e0:	e8c7a403          	lw	s0,-372(a5) # 3e8c <OLED>
     9e4:	00112623          	sw	ra,12(sp)
     9e8:	00912223          	sw	s1,4(sp)
     9ec:	01212023          	sw	s2,0(sp)
     9f0:	21500793          	li	a5,533
     9f4:	00f42023          	sw	a5,0(s0)
     9f8:	40000913          	li	s2,1024
     9fc:	00000097          	auipc	ra,0x0
     a00:	eb0080e7          	jalr	-336(ra) # 8ac <oled_wait>
     a04:	47f00493          	li	s1,1151
     a08:	01242023          	sw	s2,0(s0)
     a0c:	00000097          	auipc	ra,0x0
     a10:	ea0080e7          	jalr	-352(ra) # 8ac <oled_wait>
     a14:	00942023          	sw	s1,0(s0)
     a18:	00000097          	auipc	ra,0x0
     a1c:	e94080e7          	jalr	-364(ra) # 8ac <oled_wait>
     a20:	27500793          	li	a5,629
     a24:	00f42023          	sw	a5,0(s0)
     a28:	00000097          	auipc	ra,0x0
     a2c:	e84080e7          	jalr	-380(ra) # 8ac <oled_wait>
     a30:	01242023          	sw	s2,0(s0)
     a34:	00000097          	auipc	ra,0x0
     a38:	e78080e7          	jalr	-392(ra) # 8ac <oled_wait>
     a3c:	00942023          	sw	s1,0(s0)
     a40:	00000097          	auipc	ra,0x0
     a44:	e6c080e7          	jalr	-404(ra) # 8ac <oled_wait>
     a48:	25c00793          	li	a5,604
     a4c:	00f42023          	sw	a5,0(s0)
     a50:	00812403          	lw	s0,8(sp)
     a54:	00c12083          	lw	ra,12(sp)
     a58:	00412483          	lw	s1,4(sp)
     a5c:	00012903          	lw	s2,0(sp)
     a60:	01010113          	addi	sp,sp,16
     a64:	00000317          	auipc	t1,0x0
     a68:	e4830067          	jr	-440(t1) # 8ac <oled_wait>

00000a6c <oled_wait>:
     a6c:	00000013          	nop
     a70:	00000013          	nop
     a74:	00000013          	nop
     a78:	00000013          	nop
     a7c:	00000013          	nop
     a80:	00000013          	nop
     a84:	00000013          	nop
     a88:	00008067          	ret

00000a8c <display_framebuffer>:
     a8c:	00004537          	lui	a0,0x4
     a90:	16050513          	addi	a0,a0,352 # 4160 <framebuffer>
     a94:	00008067          	ret

00000a98 <display_set_cursor>:
     a98:	000047b7          	lui	a5,0x4
     a9c:	14a7a023          	sw	a0,320(a5) # 4140 <cursor_x>
     aa0:	000047b7          	lui	a5,0x4
     aa4:	12b7ae23          	sw	a1,316(a5) # 413c <cursor_y>
     aa8:	00008067          	ret

00000aac <display_set_front_back_color>:
     aac:	000047b7          	lui	a5,0x4
     ab0:	12a78ca3          	sb	a0,313(a5) # 4139 <front_color>
     ab4:	000047b7          	lui	a5,0x4
     ab8:	12b78c23          	sb	a1,312(a5) # 4138 <back_color>
     abc:	00008067          	ret

00000ac0 <display_putchar>:
     ac0:	00a00793          	li	a5,10
     ac4:	000045b7          	lui	a1,0x4
     ac8:	02f51663          	bne	a0,a5,af4 <display_putchar+0x34>
     acc:	00004737          	lui	a4,0x4
     ad0:	13c72783          	lw	a5,316(a4) # 413c <cursor_y>
     ad4:	1405a023          	sw	zero,320(a1) # 4140 <cursor_x>
     ad8:	00878793          	addi	a5,a5,8
     adc:	12f72e23          	sw	a5,316(a4)
     ae0:	07f00713          	li	a4,127
     ae4:	00f75663          	bge	a4,a5,af0 <display_putchar+0x30>
     ae8:	000047b7          	lui	a5,0x4
     aec:	1207ae23          	sw	zero,316(a5) # 413c <cursor_y>
     af0:	00008067          	ret
     af4:	ff010113          	addi	sp,sp,-16
     af8:	00812623          	sw	s0,12(sp)
     afc:	01f00713          	li	a4,31
     b00:	1405a783          	lw	a5,320(a1)
     b04:	08a75a63          	bge	a4,a0,b98 <display_putchar+0xd8>
     b08:	00004737          	lui	a4,0x4
     b0c:	13874f83          	lbu	t6,312(a4) # 4138 <back_color>
     b10:	00004737          	lui	a4,0x4
     b14:	13974283          	lbu	t0,313(a4) # 4139 <front_color>
     b18:	000046b7          	lui	a3,0x4
     b1c:	00251713          	slli	a4,a0,0x2
     b20:	f2068693          	addi	a3,a3,-224 # 3f20 <font>
     b24:	00a70733          	add	a4,a4,a0
     b28:	00d70733          	add	a4,a4,a3
     b2c:	000046b7          	lui	a3,0x4
     b30:	13c6a683          	lw	a3,316(a3) # 413c <cursor_y>
     b34:	00004637          	lui	a2,0x4
     b38:	16060613          	addi	a2,a2,352 # 4160 <framebuffer>
     b3c:	00c686b3          	add	a3,a3,a2
     b40:	00779613          	slli	a2,a5,0x7
     b44:	00c686b3          	add	a3,a3,a2
     b48:	00100f13          	li	t5,1
     b4c:	00000613          	li	a2,0
     b50:	00500393          	li	t2,5
     b54:	00800413          	li	s0,8
     b58:	00cf1eb3          	sll	t4,t5,a2
     b5c:	00d608b3          	add	a7,a2,a3
     b60:	00070813          	mv	a6,a4
     b64:	00000513          	li	a0,0
     b68:	f6084303          	lbu	t1,-160(a6)
     b6c:	00028e13          	mv	t3,t0
     b70:	01d37333          	and	t1,t1,t4
     b74:	00031463          	bnez	t1,b7c <display_putchar+0xbc>
     b78:	000f8e13          	mv	t3,t6
     b7c:	01c88023          	sb	t3,0(a7)
     b80:	00150513          	addi	a0,a0,1
     b84:	00180813          	addi	a6,a6,1
     b88:	08088893          	addi	a7,a7,128
     b8c:	fc751ee3          	bne	a0,t2,b68 <display_putchar+0xa8>
     b90:	00160613          	addi	a2,a2,1
     b94:	fc8612e3          	bne	a2,s0,b58 <display_putchar+0x98>
     b98:	00578793          	addi	a5,a5,5
     b9c:	07f00713          	li	a4,127
     ba0:	00f74663          	blt	a4,a5,bac <display_putchar+0xec>
     ba4:	14f5a023          	sw	a5,320(a1)
     ba8:	0240006f          	j	bcc <display_putchar+0x10c>
     bac:	000046b7          	lui	a3,0x4
     bb0:	13c6a783          	lw	a5,316(a3) # 413c <cursor_y>
     bb4:	1405a023          	sw	zero,320(a1)
     bb8:	00878793          	addi	a5,a5,8
     bbc:	12f6ae23          	sw	a5,316(a3)
     bc0:	00f75663          	bge	a4,a5,bcc <display_putchar+0x10c>
     bc4:	000047b7          	lui	a5,0x4
     bc8:	1207ae23          	sw	zero,316(a5) # 413c <cursor_y>
     bcc:	00c12403          	lw	s0,12(sp)
     bd0:	01010113          	addi	sp,sp,16
     bd4:	00008067          	ret

00000bd8 <display_refresh>:
     bd8:	fe010113          	addi	sp,sp,-32
     bdc:	000047b7          	lui	a5,0x4
     be0:	01212823          	sw	s2,16(sp)
     be4:	e8c7a903          	lw	s2,-372(a5) # 3e8c <OLED>
     be8:	01312623          	sw	s3,12(sp)
     bec:	000049b7          	lui	s3,0x4
     bf0:	00912a23          	sw	s1,20(sp)
     bf4:	01412423          	sw	s4,8(sp)
     bf8:	00112e23          	sw	ra,28(sp)
     bfc:	00812c23          	sw	s0,24(sp)
     c00:	00000493          	li	s1,0
     c04:	16098993          	addi	s3,s3,352 # 4160 <framebuffer>
     c08:	00004a37          	lui	s4,0x4
     c0c:	013487b3          	add	a5,s1,s3
     c10:	0007c403          	lbu	s0,0(a5)
     c14:	00148493          	addi	s1,s1,1
     c18:	00245413          	srli	s0,s0,0x2
     c1c:	40046413          	ori	s0,s0,1024
     c20:	00892023          	sw	s0,0(s2)
     c24:	00000097          	auipc	ra,0x0
     c28:	e48080e7          	jalr	-440(ra) # a6c <oled_wait>
     c2c:	00892023          	sw	s0,0(s2)
     c30:	00000097          	auipc	ra,0x0
     c34:	e3c080e7          	jalr	-452(ra) # a6c <oled_wait>
     c38:	00892023          	sw	s0,0(s2)
     c3c:	00000097          	auipc	ra,0x0
     c40:	e30080e7          	jalr	-464(ra) # a6c <oled_wait>
     c44:	fd4494e3          	bne	s1,s4,c0c <display_refresh+0x34>
     c48:	01c12083          	lw	ra,28(sp)
     c4c:	01812403          	lw	s0,24(sp)
     c50:	01412483          	lw	s1,20(sp)
     c54:	01012903          	lw	s2,16(sp)
     c58:	00c12983          	lw	s3,12(sp)
     c5c:	00812a03          	lw	s4,8(sp)
     c60:	02010113          	addi	sp,sp,32
     c64:	00008067          	ret

00000c68 <print_string>:
     c68:	ff010113          	addi	sp,sp,-16
     c6c:	00812423          	sw	s0,8(sp)
     c70:	00912223          	sw	s1,4(sp)
     c74:	00112623          	sw	ra,12(sp)
     c78:	00050413          	mv	s0,a0
     c7c:	000044b7          	lui	s1,0x4
     c80:	00044503          	lbu	a0,0(s0)
     c84:	00051c63          	bnez	a0,c9c <print_string+0x34>
     c88:	00c12083          	lw	ra,12(sp)
     c8c:	00812403          	lw	s0,8(sp)
     c90:	00412483          	lw	s1,4(sp)
     c94:	01010113          	addi	sp,sp,16
     c98:	00008067          	ret
     c9c:	1444a783          	lw	a5,324(s1) # 4144 <f_putchar>
     ca0:	00140413          	addi	s0,s0,1
     ca4:	000780e7          	jalr	a5
     ca8:	fd9ff06f          	j	c80 <print_string+0x18>

00000cac <print_dec>:
     cac:	ef010113          	addi	sp,sp,-272
     cb0:	10812423          	sw	s0,264(sp)
     cb4:	10912223          	sw	s1,260(sp)
     cb8:	10112623          	sw	ra,268(sp)
     cbc:	11212023          	sw	s2,256(sp)
     cc0:	00050413          	mv	s0,a0
     cc4:	000044b7          	lui	s1,0x4
     cc8:	08045063          	bgez	s0,d48 <print_dec+0x9c>
     ccc:	1444a783          	lw	a5,324(s1) # 4144 <f_putchar>
     cd0:	02d00513          	li	a0,45
     cd4:	40800433          	neg	s0,s0
     cd8:	000780e7          	jalr	a5
     cdc:	fedff06f          	j	cc8 <print_dec+0x1c>
     ce0:	00040513          	mv	a0,s0
     ce4:	00a00593          	li	a1,10
     ce8:	00000097          	auipc	ra,0x0
     cec:	a70080e7          	jalr	-1424(ra) # 758 <__divsi3>
     cf0:	00251793          	slli	a5,a0,0x2
     cf4:	00f507b3          	add	a5,a0,a5
     cf8:	00179793          	slli	a5,a5,0x1
     cfc:	40f40433          	sub	s0,s0,a5
     d00:	00148493          	addi	s1,s1,1
     d04:	fe848fa3          	sb	s0,-1(s1)
     d08:	00050413          	mv	s0,a0
     d0c:	fc041ae3          	bnez	s0,ce0 <print_dec+0x34>
     d10:	fd2488e3          	beq	s1,s2,ce0 <print_dec+0x34>
     d14:	00004437          	lui	s0,0x4
     d18:	fff4c503          	lbu	a0,-1(s1)
     d1c:	14442783          	lw	a5,324(s0) # 4144 <f_putchar>
     d20:	fff48493          	addi	s1,s1,-1
     d24:	03050513          	addi	a0,a0,48
     d28:	000780e7          	jalr	a5
     d2c:	ff2496e3          	bne	s1,s2,d18 <print_dec+0x6c>
     d30:	10c12083          	lw	ra,268(sp)
     d34:	10812403          	lw	s0,264(sp)
     d38:	10412483          	lw	s1,260(sp)
     d3c:	10012903          	lw	s2,256(sp)
     d40:	11010113          	addi	sp,sp,272
     d44:	00008067          	ret
     d48:	00010493          	mv	s1,sp
     d4c:	00010913          	mv	s2,sp
     d50:	fbdff06f          	j	d0c <print_dec+0x60>

00000d54 <print_hex_digits>:
     d54:	fe010113          	addi	sp,sp,-32
     d58:	00812c23          	sw	s0,24(sp)
     d5c:	00912a23          	sw	s1,20(sp)
     d60:	fff58413          	addi	s0,a1,-1
     d64:	000044b7          	lui	s1,0x4
     d68:	01212823          	sw	s2,16(sp)
     d6c:	01312623          	sw	s3,12(sp)
     d70:	00112e23          	sw	ra,28(sp)
     d74:	00050993          	mv	s3,a0
     d78:	00241413          	slli	s0,s0,0x2
     d7c:	ed848493          	addi	s1,s1,-296 # 3ed8 <OLED+0x4c>
     d80:	00004937          	lui	s2,0x4
     d84:	02045063          	bgez	s0,da4 <print_hex_digits+0x50>
     d88:	01c12083          	lw	ra,28(sp)
     d8c:	01812403          	lw	s0,24(sp)
     d90:	01412483          	lw	s1,20(sp)
     d94:	01012903          	lw	s2,16(sp)
     d98:	00c12983          	lw	s3,12(sp)
     d9c:	02010113          	addi	sp,sp,32
     da0:	00008067          	ret
     da4:	0089d7b3          	srl	a5,s3,s0
     da8:	00f7f793          	andi	a5,a5,15
     dac:	00f487b3          	add	a5,s1,a5
     db0:	14492703          	lw	a4,324(s2) # 4144 <f_putchar>
     db4:	0007c503          	lbu	a0,0(a5)
     db8:	ffc40413          	addi	s0,s0,-4
     dbc:	000700e7          	jalr	a4
     dc0:	fc5ff06f          	j	d84 <print_hex_digits+0x30>

00000dc4 <print_hex>:
     dc4:	00800593          	li	a1,8
     dc8:	00000317          	auipc	t1,0x0
     dcc:	f8c30067          	jr	-116(t1) # d54 <print_hex_digits>

00000dd0 <printf>:
     dd0:	fa010113          	addi	sp,sp,-96
     dd4:	04f12a23          	sw	a5,84(sp)
     dd8:	04410793          	addi	a5,sp,68
     ddc:	02812c23          	sw	s0,56(sp)
     de0:	02912a23          	sw	s1,52(sp)
     de4:	03212823          	sw	s2,48(sp)
     de8:	03312623          	sw	s3,44(sp)
     dec:	03412423          	sw	s4,40(sp)
     df0:	03512223          	sw	s5,36(sp)
     df4:	03612023          	sw	s6,32(sp)
     df8:	02112e23          	sw	ra,60(sp)
     dfc:	01712e23          	sw	s7,28(sp)
     e00:	00050413          	mv	s0,a0
     e04:	04b12223          	sw	a1,68(sp)
     e08:	04c12423          	sw	a2,72(sp)
     e0c:	04d12623          	sw	a3,76(sp)
     e10:	04e12823          	sw	a4,80(sp)
     e14:	05012c23          	sw	a6,88(sp)
     e18:	05112e23          	sw	a7,92(sp)
     e1c:	00f12623          	sw	a5,12(sp)
     e20:	02500913          	li	s2,37
     e24:	000044b7          	lui	s1,0x4
     e28:	07300993          	li	s3,115
     e2c:	07800a13          	li	s4,120
     e30:	06400a93          	li	s5,100
     e34:	06300b13          	li	s6,99
     e38:	00044503          	lbu	a0,0(s0)
     e3c:	02051863          	bnez	a0,e6c <printf+0x9c>
     e40:	03c12083          	lw	ra,60(sp)
     e44:	03812403          	lw	s0,56(sp)
     e48:	03412483          	lw	s1,52(sp)
     e4c:	03012903          	lw	s2,48(sp)
     e50:	02c12983          	lw	s3,44(sp)
     e54:	02812a03          	lw	s4,40(sp)
     e58:	02412a83          	lw	s5,36(sp)
     e5c:	02012b03          	lw	s6,32(sp)
     e60:	01c12b83          	lw	s7,28(sp)
     e64:	06010113          	addi	sp,sp,96
     e68:	00008067          	ret
     e6c:	09251a63          	bne	a0,s2,f00 <printf+0x130>
     e70:	00144503          	lbu	a0,1(s0)
     e74:	00140b93          	addi	s7,s0,1
     e78:	03351463          	bne	a0,s3,ea0 <printf+0xd0>
     e7c:	00c12783          	lw	a5,12(sp)
     e80:	0007a503          	lw	a0,0(a5)
     e84:	00478713          	addi	a4,a5,4
     e88:	00e12623          	sw	a4,12(sp)
     e8c:	00000097          	auipc	ra,0x0
     e90:	ddc080e7          	jalr	-548(ra) # c68 <print_string>
     e94:	000b8413          	mv	s0,s7
     e98:	00140413          	addi	s0,s0,1
     e9c:	f9dff06f          	j	e38 <printf+0x68>
     ea0:	03451063          	bne	a0,s4,ec0 <printf+0xf0>
     ea4:	00c12783          	lw	a5,12(sp)
     ea8:	0007a503          	lw	a0,0(a5)
     eac:	00478713          	addi	a4,a5,4
     eb0:	00e12623          	sw	a4,12(sp)
     eb4:	00000097          	auipc	ra,0x0
     eb8:	f10080e7          	jalr	-240(ra) # dc4 <print_hex>
     ebc:	fd9ff06f          	j	e94 <printf+0xc4>
     ec0:	03551063          	bne	a0,s5,ee0 <printf+0x110>
     ec4:	00c12783          	lw	a5,12(sp)
     ec8:	0007a503          	lw	a0,0(a5)
     ecc:	00478713          	addi	a4,a5,4
     ed0:	00e12623          	sw	a4,12(sp)
     ed4:	00000097          	auipc	ra,0x0
     ed8:	dd8080e7          	jalr	-552(ra) # cac <print_dec>
     edc:	fb9ff06f          	j	e94 <printf+0xc4>
     ee0:	1444a783          	lw	a5,324(s1) # 4144 <f_putchar>
     ee4:	01651a63          	bne	a0,s6,ef8 <printf+0x128>
     ee8:	00c12703          	lw	a4,12(sp)
     eec:	00072503          	lw	a0,0(a4)
     ef0:	00470693          	addi	a3,a4,4
     ef4:	00d12623          	sw	a3,12(sp)
     ef8:	000780e7          	jalr	a5
     efc:	f99ff06f          	j	e94 <printf+0xc4>
     f00:	1444a783          	lw	a5,324(s1)
     f04:	000780e7          	jalr	a5
     f08:	f91ff06f          	j	e98 <printf+0xc8>

00000f0c <__mulsi3>:
     f0c:	00050793          	mv	a5,a0
     f10:	00000513          	li	a0,0
     f14:	00079463          	bnez	a5,f1c <__mulsi3+0x10>
     f18:	00008067          	ret
     f1c:	01f79693          	slli	a3,a5,0x1f
     f20:	41f6d713          	srai	a4,a3,0x1f
     f24:	00b77733          	and	a4,a4,a1
     f28:	00e50533          	add	a0,a0,a4
     f2c:	0017d793          	srli	a5,a5,0x1
     f30:	00159593          	slli	a1,a1,0x1
     f34:	fe1ff06f          	j	f14 <__mulsi3+0x8>

00000f38 <fat_list_insert_last>:
     f38:	00452783          	lw	a5,4(a0)
     f3c:	04079263          	bnez	a5,f80 <fat_list_insert_last+0x48>
     f40:	00052783          	lw	a5,0(a0)
     f44:	00079c63          	bnez	a5,f5c <fat_list_insert_last+0x24>
     f48:	00b52023          	sw	a1,0(a0)
     f4c:	00b52223          	sw	a1,4(a0)
     f50:	0005a023          	sw	zero,0(a1)
     f54:	0005a223          	sw	zero,4(a1)
     f58:	00008067          	ret
     f5c:	0007a703          	lw	a4,0(a5)
     f60:	00f5a223          	sw	a5,4(a1)
     f64:	00e5a023          	sw	a4,0(a1)
     f68:	00071863          	bnez	a4,f78 <fat_list_insert_last+0x40>
     f6c:	00b52023          	sw	a1,0(a0)
     f70:	00b7a023          	sw	a1,0(a5)
     f74:	00008067          	ret
     f78:	00b72223          	sw	a1,4(a4)
     f7c:	ff5ff06f          	j	f70 <fat_list_insert_last+0x38>
     f80:	0047a703          	lw	a4,4(a5)
     f84:	00f5a023          	sw	a5,0(a1)
     f88:	00e5a223          	sw	a4,4(a1)
     f8c:	00071863          	bnez	a4,f9c <fat_list_insert_last+0x64>
     f90:	00b52223          	sw	a1,4(a0)
     f94:	00b7a223          	sw	a1,4(a5)
     f98:	00008067          	ret
     f9c:	00b72023          	sw	a1,0(a4)
     fa0:	ff5ff06f          	j	f94 <fat_list_insert_last+0x5c>

00000fa4 <FileString_StrCmpNoCase>:
     fa4:	00050e93          	mv	t4,a0
     fa8:	00000793          	li	a5,0
     fac:	01900e13          	li	t3,25
     fb0:	00c79663          	bne	a5,a2,fbc <FileString_StrCmpNoCase+0x18>
     fb4:	00000513          	li	a0,0
     fb8:	00008067          	ret
     fbc:	00fe8733          	add	a4,t4,a5
     fc0:	00074803          	lbu	a6,0(a4)
     fc4:	00f58733          	add	a4,a1,a5
     fc8:	00074883          	lbu	a7,0(a4)
     fcc:	fbf80713          	addi	a4,a6,-65
     fd0:	0ff77713          	zext.b	a4,a4
     fd4:	00080693          	mv	a3,a6
     fd8:	00ee6663          	bltu	t3,a4,fe4 <FileString_StrCmpNoCase+0x40>
     fdc:	02080693          	addi	a3,a6,32
     fe0:	0ff6f693          	zext.b	a3,a3
     fe4:	fbf88313          	addi	t1,a7,-65
     fe8:	0ff37313          	zext.b	t1,t1
     fec:	00088713          	mv	a4,a7
     ff0:	006e6663          	bltu	t3,t1,ffc <FileString_StrCmpNoCase+0x58>
     ff4:	02088713          	addi	a4,a7,32
     ff8:	0ff77713          	zext.b	a4,a4
     ffc:	40e68533          	sub	a0,a3,a4
    1000:	00e69863          	bne	a3,a4,1010 <FileString_StrCmpNoCase+0x6c>
    1004:	00178793          	addi	a5,a5,1
    1008:	00088463          	beqz	a7,1010 <FileString_StrCmpNoCase+0x6c>
    100c:	fa0812e3          	bnez	a6,fb0 <FileString_StrCmpNoCase+0xc>
    1010:	00008067          	ret

00001014 <FileString_GetExtension>:
    1014:	00050793          	mv	a5,a0
    1018:	fff00713          	li	a4,-1
    101c:	02e00613          	li	a2,46
    1020:	0007c683          	lbu	a3,0(a5)
    1024:	00069663          	bnez	a3,1030 <FileString_GetExtension+0x1c>
    1028:	00070513          	mv	a0,a4
    102c:	00008067          	ret
    1030:	00c69463          	bne	a3,a2,1038 <FileString_GetExtension+0x24>
    1034:	40a78733          	sub	a4,a5,a0
    1038:	00178793          	addi	a5,a5,1
    103c:	fe5ff06f          	j	1020 <FileString_GetExtension+0xc>

00001040 <fatfs_fat_writeback>:
    1040:	00059e63          	bnez	a1,105c <fatfs_fat_writeback+0x1c>
    1044:	00000513          	li	a0,0
    1048:	00008067          	ret
    104c:	00000513          	li	a0,0
    1050:	01c12083          	lw	ra,28(sp)
    1054:	02010113          	addi	sp,sp,32
    1058:	00008067          	ret
    105c:	2045a783          	lw	a5,516(a1)
    1060:	04078e63          	beqz	a5,10bc <fatfs_fat_writeback+0x7c>
    1064:	03852683          	lw	a3,56(a0)
    1068:	00050793          	mv	a5,a0
    106c:	04068663          	beqz	a3,10b8 <fatfs_fat_writeback+0x78>
    1070:	0147a703          	lw	a4,20(a5)
    1074:	2005a503          	lw	a0,512(a1)
    1078:	0207a803          	lw	a6,32(a5)
    107c:	00100613          	li	a2,1
    1080:	fe010113          	addi	sp,sp,-32
    1084:	40e607b3          	sub	a5,a2,a4
    1088:	00112e23          	sw	ra,28(sp)
    108c:	00a787b3          	add	a5,a5,a0
    1090:	00f87663          	bgeu	a6,a5,109c <fatfs_fat_writeback+0x5c>
    1094:	01070733          	add	a4,a4,a6
    1098:	40a70633          	sub	a2,a4,a0
    109c:	00b12623          	sw	a1,12(sp)
    10a0:	000680e7          	jalr	a3
    10a4:	fa0504e3          	beqz	a0,104c <fatfs_fat_writeback+0xc>
    10a8:	00c12583          	lw	a1,12(sp)
    10ac:	00100513          	li	a0,1
    10b0:	2005a223          	sw	zero,516(a1)
    10b4:	f9dff06f          	j	1050 <fatfs_fat_writeback+0x10>
    10b8:	2005a223          	sw	zero,516(a1)
    10bc:	00100513          	li	a0,1
    10c0:	00008067          	ret

000010c4 <fatfs_fat_read_sector>:
    10c4:	fe010113          	addi	sp,sp,-32
    10c8:	01212823          	sw	s2,16(sp)
    10cc:	25452903          	lw	s2,596(a0)
    10d0:	00812c23          	sw	s0,24(sp)
    10d4:	00112e23          	sw	ra,28(sp)
    10d8:	00912a23          	sw	s1,20(sp)
    10dc:	01312623          	sw	s3,12(sp)
    10e0:	00000413          	li	s0,0
    10e4:	04091463          	bnez	s2,112c <fatfs_fat_read_sector+0x68>
    10e8:	25452783          	lw	a5,596(a0)
    10ec:	00058493          	mv	s1,a1
    10f0:	00050993          	mv	s3,a0
    10f4:	20f42623          	sw	a5,524(s0)
    10f8:	20442783          	lw	a5,516(s0)
    10fc:	24852a23          	sw	s0,596(a0)
    1100:	08079863          	bnez	a5,1190 <fatfs_fat_read_sector+0xcc>
    1104:	0349a783          	lw	a5,52(s3)
    1108:	20942023          	sw	s1,512(s0)
    110c:	00100613          	li	a2,1
    1110:	00040593          	mv	a1,s0
    1114:	00048513          	mv	a0,s1
    1118:	000780e7          	jalr	a5
    111c:	08051463          	bnez	a0,11a4 <fatfs_fat_read_sector+0xe0>
    1120:	fff00793          	li	a5,-1
    1124:	20f42023          	sw	a5,512(s0)
    1128:	0480006f          	j	1170 <fatfs_fat_read_sector+0xac>
    112c:	20092783          	lw	a5,512(s2)
    1130:	00f5e663          	bltu	a1,a5,113c <fatfs_fat_read_sector+0x78>
    1134:	00178713          	addi	a4,a5,1
    1138:	02e5e463          	bltu	a1,a4,1160 <fatfs_fat_read_sector+0x9c>
    113c:	20c92783          	lw	a5,524(s2)
    1140:	00079663          	bnez	a5,114c <fatfs_fat_read_sector+0x88>
    1144:	00040a63          	beqz	s0,1158 <fatfs_fat_read_sector+0x94>
    1148:	20042623          	sw	zero,524(s0)
    114c:	00090413          	mv	s0,s2
    1150:	20c92903          	lw	s2,524(s2)
    1154:	f91ff06f          	j	10e4 <fatfs_fat_read_sector+0x20>
    1158:	24052a23          	sw	zero,596(a0)
    115c:	ff1ff06f          	j	114c <fatfs_fat_read_sector+0x88>
    1160:	40f585b3          	sub	a1,a1,a5
    1164:	00959593          	slli	a1,a1,0x9
    1168:	00b905b3          	add	a1,s2,a1
    116c:	20b92423          	sw	a1,520(s2)
    1170:	01c12083          	lw	ra,28(sp)
    1174:	01812403          	lw	s0,24(sp)
    1178:	01412483          	lw	s1,20(sp)
    117c:	00c12983          	lw	s3,12(sp)
    1180:	00090513          	mv	a0,s2
    1184:	01012903          	lw	s2,16(sp)
    1188:	02010113          	addi	sp,sp,32
    118c:	00008067          	ret
    1190:	00040593          	mv	a1,s0
    1194:	00000097          	auipc	ra,0x0
    1198:	eac080e7          	jalr	-340(ra) # 1040 <fatfs_fat_writeback>
    119c:	f60514e3          	bnez	a0,1104 <fatfs_fat_read_sector+0x40>
    11a0:	fd1ff06f          	j	1170 <fatfs_fat_read_sector+0xac>
    11a4:	20842423          	sw	s0,520(s0)
    11a8:	00040913          	mv	s2,s0
    11ac:	fc5ff06f          	j	1170 <fatfs_fat_read_sector+0xac>

000011b0 <_allocate_file>:
    11b0:	000047b7          	lui	a5,0x4
    11b4:	14878793          	addi	a5,a5,328 # 4148 <_free_file_list>
    11b8:	0007a583          	lw	a1,0(a5)
    11bc:	06058263          	beqz	a1,1220 <_allocate_file+0x70>
    11c0:	0005a703          	lw	a4,0(a1)
    11c4:	fe010113          	addi	sp,sp,-32
    11c8:	00112e23          	sw	ra,28(sp)
    11cc:	0045a683          	lw	a3,4(a1)
    11d0:	04071063          	bnez	a4,1210 <_allocate_file+0x60>
    11d4:	00d7a023          	sw	a3,0(a5)
    11d8:	0045a683          	lw	a3,4(a1)
    11dc:	02069e63          	bnez	a3,1218 <_allocate_file+0x68>
    11e0:	00e7a223          	sw	a4,4(a5)
    11e4:	00004537          	lui	a0,0x4
    11e8:	15050513          	addi	a0,a0,336 # 4150 <_open_file_list>
    11ec:	00b12623          	sw	a1,12(sp)
    11f0:	00000097          	auipc	ra,0x0
    11f4:	d48080e7          	jalr	-696(ra) # f38 <fat_list_insert_last>
    11f8:	00c12583          	lw	a1,12(sp)
    11fc:	01c12083          	lw	ra,28(sp)
    1200:	bc458593          	addi	a1,a1,-1084
    1204:	00058513          	mv	a0,a1
    1208:	02010113          	addi	sp,sp,32
    120c:	00008067          	ret
    1210:	00d72223          	sw	a3,4(a4)
    1214:	fc5ff06f          	j	11d8 <_allocate_file+0x28>
    1218:	00e6a023          	sw	a4,0(a3)
    121c:	fc9ff06f          	j	11e4 <_allocate_file+0x34>
    1220:	00058513          	mv	a0,a1
    1224:	00008067          	ret

00001228 <_free_file>:
    1228:	43c52783          	lw	a5,1084(a0)
    122c:	44052703          	lw	a4,1088(a0)
    1230:	43c50593          	addi	a1,a0,1084
    1234:	02079663          	bnez	a5,1260 <_free_file+0x38>
    1238:	000046b7          	lui	a3,0x4
    123c:	14e6a823          	sw	a4,336(a3) # 4150 <_open_file_list>
    1240:	44052703          	lw	a4,1088(a0)
    1244:	02071263          	bnez	a4,1268 <_free_file+0x40>
    1248:	00004737          	lui	a4,0x4
    124c:	14f72a23          	sw	a5,340(a4) # 4154 <_open_file_list+0x4>
    1250:	00004537          	lui	a0,0x4
    1254:	14850513          	addi	a0,a0,328 # 4148 <_free_file_list>
    1258:	00000317          	auipc	t1,0x0
    125c:	ce030067          	jr	-800(t1) # f38 <fat_list_insert_last>
    1260:	00e7a223          	sw	a4,4(a5)
    1264:	fddff06f          	j	1240 <_free_file+0x18>
    1268:	00f72023          	sw	a5,0(a4)
    126c:	fe5ff06f          	j	1250 <_free_file+0x28>

00001270 <fatfs_lba_of_cluster>:
    1270:	ff010113          	addi	sp,sp,-16
    1274:	00812423          	sw	s0,8(sp)
    1278:	00112623          	sw	ra,12(sp)
    127c:	00050413          	mv	s0,a0
    1280:	ffe58513          	addi	a0,a1,-2
    1284:	00044583          	lbu	a1,0(s0)
    1288:	00000097          	auipc	ra,0x0
    128c:	c84080e7          	jalr	-892(ra) # f0c <__mulsi3>
    1290:	00442783          	lw	a5,4(s0)
    1294:	00f50533          	add	a0,a0,a5
    1298:	03042783          	lw	a5,48(s0)
    129c:	00079863          	bnez	a5,12ac <fatfs_lba_of_cluster+0x3c>
    12a0:	02845783          	lhu	a5,40(s0)
    12a4:	4047d793          	srai	a5,a5,0x4
    12a8:	00f50533          	add	a0,a0,a5
    12ac:	00c12083          	lw	ra,12(sp)
    12b0:	00812403          	lw	s0,8(sp)
    12b4:	01010113          	addi	sp,sp,16
    12b8:	00008067          	ret

000012bc <fatfs_sector_read>:
    12bc:	03452783          	lw	a5,52(a0)
    12c0:	00058713          	mv	a4,a1
    12c4:	00070513          	mv	a0,a4
    12c8:	00060593          	mv	a1,a2
    12cc:	00068613          	mv	a2,a3
    12d0:	00078067          	jr	a5

000012d4 <fatfs_sector_write>:
    12d4:	03852783          	lw	a5,56(a0)
    12d8:	00058713          	mv	a4,a1
    12dc:	00070513          	mv	a0,a4
    12e0:	00060593          	mv	a1,a2
    12e4:	00068613          	mv	a2,a3
    12e8:	00078067          	jr	a5

000012ec <fatfs_write_sector>:
    12ec:	03852703          	lw	a4,56(a0)
    12f0:	0a070463          	beqz	a4,1398 <fatfs_write_sector+0xac>
    12f4:	03052883          	lw	a7,48(a0)
    12f8:	00050793          	mv	a5,a0
    12fc:	0115e833          	or	a6,a1,a7
    1300:	02081e63          	bnez	a6,133c <fatfs_write_sector+0x50>
    1304:	01052583          	lw	a1,16(a0)
    1308:	08b67863          	bgeu	a2,a1,1398 <fatfs_write_sector+0xac>
    130c:	01c52503          	lw	a0,28(a0)
    1310:	00c7a583          	lw	a1,12(a5)
    1314:	00b50533          	add	a0,a0,a1
    1318:	00c50533          	add	a0,a0,a2
    131c:	00068863          	beqz	a3,132c <fatfs_write_sector+0x40>
    1320:	00100613          	li	a2,1
    1324:	00068593          	mv	a1,a3
    1328:	00070067          	jr	a4
    132c:	24a7a223          	sw	a0,580(a5)
    1330:	00100613          	li	a2,1
    1334:	04478593          	addi	a1,a5,68
    1338:	ff1ff06f          	j	1328 <fatfs_write_sector+0x3c>
    133c:	fe010113          	addi	sp,sp,-32
    1340:	00e12623          	sw	a4,12(sp)
    1344:	00d12423          	sw	a3,8(sp)
    1348:	00c12223          	sw	a2,4(sp)
    134c:	00112e23          	sw	ra,28(sp)
    1350:	00a12023          	sw	a0,0(sp)
    1354:	00000097          	auipc	ra,0x0
    1358:	f1c080e7          	jalr	-228(ra) # 1270 <fatfs_lba_of_cluster>
    135c:	00412603          	lw	a2,4(sp)
    1360:	00812683          	lw	a3,8(sp)
    1364:	00012783          	lw	a5,0(sp)
    1368:	00c12703          	lw	a4,12(sp)
    136c:	00a60533          	add	a0,a2,a0
    1370:	00068c63          	beqz	a3,1388 <fatfs_write_sector+0x9c>
    1374:	00100613          	li	a2,1
    1378:	00068593          	mv	a1,a3
    137c:	01c12083          	lw	ra,28(sp)
    1380:	02010113          	addi	sp,sp,32
    1384:	fa5ff06f          	j	1328 <fatfs_write_sector+0x3c>
    1388:	24a7a223          	sw	a0,580(a5)
    138c:	00100613          	li	a2,1
    1390:	04478593          	addi	a1,a5,68
    1394:	fe9ff06f          	j	137c <fatfs_write_sector+0x90>
    1398:	00000513          	li	a0,0
    139c:	00008067          	ret

000013a0 <fl_init>:
    13a0:	ff010113          	addi	sp,sp,-16
    13a4:	00004537          	lui	a0,0x4
    13a8:	000047b7          	lui	a5,0x4
    13ac:	000095b7          	lui	a1,0x9
    13b0:	00112623          	sw	ra,12(sp)
    13b4:	14850513          	addi	a0,a0,328 # 4148 <_free_file_list>
    13b8:	15078793          	addi	a5,a5,336 # 4150 <_open_file_list>
    13bc:	a0458593          	addi	a1,a1,-1532 # 8a04 <_files+0x43c>
    13c0:	00052223          	sw	zero,4(a0)
    13c4:	00052023          	sw	zero,0(a0)
    13c8:	0007a223          	sw	zero,4(a5)
    13cc:	0007a023          	sw	zero,0(a5)
    13d0:	00000097          	auipc	ra,0x0
    13d4:	b68080e7          	jalr	-1176(ra) # f38 <fat_list_insert_last>
    13d8:	000047b7          	lui	a5,0x4
    13dc:	000095b7          	lui	a1,0x9
    13e0:	14878513          	addi	a0,a5,328 # 4148 <_free_file_list>
    13e4:	e4858593          	addi	a1,a1,-440 # 8e48 <_files+0x880>
    13e8:	00000097          	auipc	ra,0x0
    13ec:	b50080e7          	jalr	-1200(ra) # f38 <fat_list_insert_last>
    13f0:	00c12083          	lw	ra,12(sp)
    13f4:	000047b7          	lui	a5,0x4
    13f8:	00100713          	li	a4,1
    13fc:	14e7ae23          	sw	a4,348(a5) # 415c <_filelib_init>
    1400:	01010113          	addi	sp,sp,16
    1404:	00008067          	ret

00001408 <fatfs_lfn_cache_entry>:
    1408:	0005c783          	lbu	a5,0(a1)
    140c:	01300693          	li	a3,19
    1410:	01f7f793          	andi	a5,a5,31
    1414:	fff78713          	addi	a4,a5,-1
    1418:	0ff77613          	zext.b	a2,a4
    141c:	0ac6ea63          	bltu	a3,a2,14d0 <fatfs_lfn_cache_entry+0xc8>
    1420:	10554683          	lbu	a3,261(a0)
    1424:	00069463          	bnez	a3,142c <fatfs_lfn_cache_entry+0x24>
    1428:	10f502a3          	sb	a5,261(a0)
    142c:	00171793          	slli	a5,a4,0x1
    1430:	00e787b3          	add	a5,a5,a4
    1434:	0015c683          	lbu	a3,1(a1)
    1438:	00279793          	slli	a5,a5,0x2
    143c:	00e787b3          	add	a5,a5,a4
    1440:	00f50533          	add	a0,a0,a5
    1444:	00d50023          	sb	a3,0(a0)
    1448:	0035c783          	lbu	a5,3(a1)
    144c:	0ff00713          	li	a4,255
    1450:	02000693          	li	a3,32
    1454:	00f500a3          	sb	a5,1(a0)
    1458:	0055c783          	lbu	a5,5(a1)
    145c:	00f50123          	sb	a5,2(a0)
    1460:	0075c783          	lbu	a5,7(a1)
    1464:	00f501a3          	sb	a5,3(a0)
    1468:	0095c783          	lbu	a5,9(a1)
    146c:	00f50223          	sb	a5,4(a0)
    1470:	00e5c783          	lbu	a5,14(a1)
    1474:	00f502a3          	sb	a5,5(a0)
    1478:	0105c783          	lbu	a5,16(a1)
    147c:	00f50323          	sb	a5,6(a0)
    1480:	0125c783          	lbu	a5,18(a1)
    1484:	00f503a3          	sb	a5,7(a0)
    1488:	0145c783          	lbu	a5,20(a1)
    148c:	00f50423          	sb	a5,8(a0)
    1490:	0165c783          	lbu	a5,22(a1)
    1494:	00f504a3          	sb	a5,9(a0)
    1498:	0185c783          	lbu	a5,24(a1)
    149c:	00f50523          	sb	a5,10(a0)
    14a0:	01c5c783          	lbu	a5,28(a1)
    14a4:	00f505a3          	sb	a5,11(a0)
    14a8:	01e5c783          	lbu	a5,30(a1)
    14ac:	00f50623          	sb	a5,12(a0)
    14b0:	00d00793          	li	a5,13
    14b4:	00054603          	lbu	a2,0(a0)
    14b8:	00e61463          	bne	a2,a4,14c0 <fatfs_lfn_cache_entry+0xb8>
    14bc:	00d50023          	sb	a3,0(a0)
    14c0:	fff78793          	addi	a5,a5,-1
    14c4:	0ff7f793          	zext.b	a5,a5
    14c8:	00150513          	addi	a0,a0,1
    14cc:	fe0794e3          	bnez	a5,14b4 <fatfs_lfn_cache_entry+0xac>
    14d0:	00008067          	ret

000014d4 <fatfs_lfn_cache_get>:
    14d4:	10554703          	lbu	a4,261(a0)
    14d8:	01400793          	li	a5,20
    14dc:	00f71663          	bne	a4,a5,14e8 <fatfs_lfn_cache_get+0x14>
    14e0:	10050223          	sb	zero,260(a0)
    14e4:	00008067          	ret
    14e8:	02070063          	beqz	a4,1508 <fatfs_lfn_cache_get+0x34>
    14ec:	00171793          	slli	a5,a4,0x1
    14f0:	00e787b3          	add	a5,a5,a4
    14f4:	00279793          	slli	a5,a5,0x2
    14f8:	00e787b3          	add	a5,a5,a4
    14fc:	00f507b3          	add	a5,a0,a5
    1500:	00078023          	sb	zero,0(a5)
    1504:	00008067          	ret
    1508:	00050023          	sb	zero,0(a0)
    150c:	00008067          	ret

00001510 <fatfs_entry_lfn_text>:
    1510:	00b54503          	lbu	a0,11(a0)
    1514:	00f57513          	andi	a0,a0,15
    1518:	ff150513          	addi	a0,a0,-15
    151c:	00153513          	seqz	a0,a0
    1520:	00008067          	ret

00001524 <fatfs_entry_lfn_invalid>:
    1524:	00054783          	lbu	a5,0(a0)
    1528:	f1b78713          	addi	a4,a5,-229
    152c:	02070263          	beqz	a4,1550 <fatfs_entry_lfn_invalid+0x2c>
    1530:	02078063          	beqz	a5,1550 <fatfs_entry_lfn_invalid+0x2c>
    1534:	00b54783          	lbu	a5,11(a0)
    1538:	00800713          	li	a4,8
    153c:	00100513          	li	a0,1
    1540:	00e78a63          	beq	a5,a4,1554 <fatfs_entry_lfn_invalid+0x30>
    1544:	0067f793          	andi	a5,a5,6
    1548:	00f03533          	snez	a0,a5
    154c:	00008067          	ret
    1550:	00100513          	li	a0,1
    1554:	00008067          	ret

00001558 <fatfs_entry_lfn_exists>:
    1558:	00b5c783          	lbu	a5,11(a1)
    155c:	00f00713          	li	a4,15
    1560:	04e78063          	beq	a5,a4,15a0 <fatfs_entry_lfn_exists+0x48>
    1564:	0005c683          	lbu	a3,0(a1)
    1568:	f1b68713          	addi	a4,a3,-229
    156c:	00e03733          	snez	a4,a4
    1570:	00d036b3          	snez	a3,a3
    1574:	00d77733          	and	a4,a4,a3
    1578:	02070463          	beqz	a4,15a0 <fatfs_entry_lfn_exists+0x48>
    157c:	ff878713          	addi	a4,a5,-8
    1580:	02070063          	beqz	a4,15a0 <fatfs_entry_lfn_exists+0x48>
    1584:	0067f713          	andi	a4,a5,6
    1588:	00000793          	li	a5,0
    158c:	00071663          	bnez	a4,1598 <fatfs_entry_lfn_exists+0x40>
    1590:	10554783          	lbu	a5,261(a0)
    1594:	00f037b3          	snez	a5,a5
    1598:	00078513          	mv	a0,a5
    159c:	00008067          	ret
    15a0:	00000793          	li	a5,0
    15a4:	ff5ff06f          	j	1598 <fatfs_entry_lfn_exists+0x40>

000015a8 <fatfs_entry_sfn_only>:
    15a8:	00b54783          	lbu	a5,11(a0)
    15ac:	00f00713          	li	a4,15
    15b0:	02e78863          	beq	a5,a4,15e0 <fatfs_entry_sfn_only+0x38>
    15b4:	00054683          	lbu	a3,0(a0)
    15b8:	f1b68713          	addi	a4,a3,-229
    15bc:	00e03733          	snez	a4,a4
    15c0:	00d036b3          	snez	a3,a3
    15c4:	00d77733          	and	a4,a4,a3
    15c8:	00070c63          	beqz	a4,15e0 <fatfs_entry_sfn_only+0x38>
    15cc:	ff878713          	addi	a4,a5,-8
    15d0:	00070863          	beqz	a4,15e0 <fatfs_entry_sfn_only+0x38>
    15d4:	0067f513          	andi	a0,a5,6
    15d8:	00153513          	seqz	a0,a0
    15dc:	00008067          	ret
    15e0:	00000513          	li	a0,0
    15e4:	00008067          	ret

000015e8 <fatfs_lfn_entries_required>:
    15e8:	ff010113          	addi	sp,sp,-16
    15ec:	00112623          	sw	ra,12(sp)
    15f0:	fffff097          	auipc	ra,0xfffff
    15f4:	25c080e7          	jalr	604(ra) # 84c <strlen>
    15f8:	00050a63          	beqz	a0,160c <fatfs_lfn_entries_required+0x24>
    15fc:	00d00593          	li	a1,13
    1600:	00c50513          	addi	a0,a0,12
    1604:	fffff097          	auipc	ra,0xfffff
    1608:	154080e7          	jalr	340(ra) # 758 <__divsi3>
    160c:	00c12083          	lw	ra,12(sp)
    1610:	01010113          	addi	sp,sp,16
    1614:	00008067          	ret

00001618 <fatfs_filename_to_lfn>:
    1618:	f9010113          	addi	sp,sp,-112
    161c:	06812423          	sw	s0,104(sp)
    1620:	00058413          	mv	s0,a1
    1624:	000045b7          	lui	a1,0x4
    1628:	10058593          	addi	a1,a1,256 # 4100 <font+0x1e0>
    162c:	06912223          	sw	s1,100(sp)
    1630:	05312e23          	sw	s3,92(sp)
    1634:	00060493          	mv	s1,a2
    1638:	00050993          	mv	s3,a0
    163c:	03400613          	li	a2,52
    1640:	01c10513          	addi	a0,sp,28
    1644:	00d12623          	sw	a3,12(sp)
    1648:	06112623          	sw	ra,108(sp)
    164c:	07212023          	sw	s2,96(sp)
    1650:	05412c23          	sw	s4,88(sp)
    1654:	fffff097          	auipc	ra,0xfffff
    1658:	1d4080e7          	jalr	468(ra) # 828 <memcpy>
    165c:	00098513          	mv	a0,s3
    1660:	fffff097          	auipc	ra,0xfffff
    1664:	1ec080e7          	jalr	492(ra) # 84c <strlen>
    1668:	00050913          	mv	s2,a0
    166c:	00098513          	mv	a0,s3
    1670:	00000097          	auipc	ra,0x0
    1674:	f78080e7          	jalr	-136(ra) # 15e8 <fatfs_lfn_entries_required>
    1678:	00050a13          	mv	s4,a0
    167c:	02000613          	li	a2,32
    1680:	00000593          	li	a1,0
    1684:	00040513          	mv	a0,s0
    1688:	fffff097          	auipc	ra,0xfffff
    168c:	184080e7          	jalr	388(ra) # 80c <memset>
    1690:	fffa0713          	addi	a4,s4,-1 # 3fff <font+0xdf>
    1694:	00c12683          	lw	a3,12(sp)
    1698:	00148793          	addi	a5,s1,1
    169c:	00971463          	bne	a4,s1,16a4 <fatfs_filename_to_lfn+0x8c>
    16a0:	0407e793          	ori	a5,a5,64
    16a4:	00149613          	slli	a2,s1,0x1
    16a8:	00960633          	add	a2,a2,s1
    16ac:	00f40023          	sb	a5,0(s0)
    16b0:	00261613          	slli	a2,a2,0x2
    16b4:	00f00793          	li	a5,15
    16b8:	00f405a3          	sb	a5,11(s0)
    16bc:	00d406a3          	sb	a3,13(s0)
    16c0:	01c10793          	addi	a5,sp,28
    16c4:	00960633          	add	a2,a2,s1
    16c8:	fff00693          	li	a3,-1
    16cc:	0007a703          	lw	a4,0(a5)
    16d0:	00e40733          	add	a4,s0,a4
    16d4:	05265063          	bge	a2,s2,1714 <fatfs_filename_to_lfn+0xfc>
    16d8:	00c985b3          	add	a1,s3,a2
    16dc:	0005c583          	lbu	a1,0(a1)
    16e0:	00b70023          	sb	a1,0(a4)
    16e4:	00478793          	addi	a5,a5,4
    16e8:	05010713          	addi	a4,sp,80
    16ec:	00160613          	addi	a2,a2,1
    16f0:	fce79ee3          	bne	a5,a4,16cc <fatfs_filename_to_lfn+0xb4>
    16f4:	06c12083          	lw	ra,108(sp)
    16f8:	06812403          	lw	s0,104(sp)
    16fc:	06412483          	lw	s1,100(sp)
    1700:	06012903          	lw	s2,96(sp)
    1704:	05c12983          	lw	s3,92(sp)
    1708:	05812a03          	lw	s4,88(sp)
    170c:	07010113          	addi	sp,sp,112
    1710:	00008067          	ret
    1714:	01261663          	bne	a2,s2,1720 <fatfs_filename_to_lfn+0x108>
    1718:	00070023          	sb	zero,0(a4)
    171c:	fc9ff06f          	j	16e4 <fatfs_filename_to_lfn+0xcc>
    1720:	00d70023          	sb	a3,0(a4)
    1724:	00d700a3          	sb	a3,1(a4)
    1728:	fbdff06f          	j	16e4 <fatfs_filename_to_lfn+0xcc>

0000172c <fatfs_sfn_create_entry>:
    172c:	00000793          	li	a5,0
    1730:	00b00813          	li	a6,11
    1734:	00f508b3          	add	a7,a0,a5
    1738:	0008c303          	lbu	t1,0(a7)
    173c:	00f688b3          	add	a7,a3,a5
    1740:	00178793          	addi	a5,a5,1
    1744:	00688023          	sb	t1,0(a7)
    1748:	ff0796e3          	bne	a5,a6,1734 <fatfs_sfn_create_entry+0x8>
    174c:	00e03733          	snez	a4,a4
    1750:	40e00733          	neg	a4,a4
    1754:	02000793          	li	a5,32
    1758:	ff077713          	andi	a4,a4,-16
    175c:	00f70733          	add	a4,a4,a5
    1760:	00f68823          	sb	a5,16(a3)
    1764:	00f68923          	sb	a5,18(a3)
    1768:	00f68c23          	sb	a5,24(a3)
    176c:	01065793          	srli	a5,a2,0x10
    1770:	00f68a23          	sb	a5,20(a3)
    1774:	01865793          	srli	a5,a2,0x18
    1778:	00f68aa3          	sb	a5,21(a3)
    177c:	0085d793          	srli	a5,a1,0x8
    1780:	00c68d23          	sb	a2,26(a3)
    1784:	00b68e23          	sb	a1,28(a3)
    1788:	00865613          	srli	a2,a2,0x8
    178c:	00f68ea3          	sb	a5,29(a3)
    1790:	0105d793          	srli	a5,a1,0x10
    1794:	0185d593          	srli	a1,a1,0x18
    1798:	000686a3          	sb	zero,13(a3)
    179c:	00068723          	sb	zero,14(a3)
    17a0:	000687a3          	sb	zero,15(a3)
    17a4:	000688a3          	sb	zero,17(a3)
    17a8:	000689a3          	sb	zero,19(a3)
    17ac:	00068b23          	sb	zero,22(a3)
    17b0:	00068ba3          	sb	zero,23(a3)
    17b4:	00068ca3          	sb	zero,25(a3)
    17b8:	00e685a3          	sb	a4,11(a3)
    17bc:	00068623          	sb	zero,12(a3)
    17c0:	00c68da3          	sb	a2,27(a3)
    17c4:	00f68f23          	sb	a5,30(a3)
    17c8:	00b68fa3          	sb	a1,31(a3)
    17cc:	00008067          	ret

000017d0 <fatfs_lfn_create_sfn>:
    17d0:	fd010113          	addi	sp,sp,-48
    17d4:	02912223          	sw	s1,36(sp)
    17d8:	00050493          	mv	s1,a0
    17dc:	00058513          	mv	a0,a1
    17e0:	02812423          	sw	s0,40(sp)
    17e4:	01312e23          	sw	s3,28(sp)
    17e8:	00058413          	mv	s0,a1
    17ec:	02112623          	sw	ra,44(sp)
    17f0:	03212023          	sw	s2,32(sp)
    17f4:	fffff097          	auipc	ra,0xfffff
    17f8:	058080e7          	jalr	88(ra) # 84c <strlen>
    17fc:	00044783          	lbu	a5,0(s0)
    1800:	02e00993          	li	s3,46
    1804:	15378063          	beq	a5,s3,1944 <fatfs_lfn_create_sfn+0x174>
    1808:	00b00613          	li	a2,11
    180c:	02000593          	li	a1,32
    1810:	00050913          	mv	s2,a0
    1814:	00048513          	mv	a0,s1
    1818:	fffff097          	auipc	ra,0xfffff
    181c:	ff4080e7          	jalr	-12(ra) # 80c <memset>
    1820:	00300613          	li	a2,3
    1824:	02000593          	li	a1,32
    1828:	00c10513          	addi	a0,sp,12
    182c:	fffff097          	auipc	ra,0xfffff
    1830:	fe0080e7          	jalr	-32(ra) # 80c <memset>
    1834:	fff00793          	li	a5,-1
    1838:	00000713          	li	a4,0
    183c:	0d274263          	blt	a4,s2,1900 <fatfs_lfn_create_sfn+0x130>
    1840:	fff00713          	li	a4,-1
    1844:	0ee78863          	beq	a5,a4,1934 <fatfs_lfn_create_sfn+0x164>
    1848:	00178713          	addi	a4,a5,1
    184c:	00c10693          	addi	a3,sp,12
    1850:	00478613          	addi	a2,a5,4
    1854:	0ce61263          	bne	a2,a4,1918 <fatfs_lfn_create_sfn+0x148>
    1858:	00000613          	li	a2,0
    185c:	00000693          	li	a3,0
    1860:	01900813          	li	a6,25
    1864:	00800893          	li	a7,8
    1868:	02f6de63          	bge	a3,a5,18a4 <fatfs_lfn_create_sfn+0xd4>
    186c:	00d40733          	add	a4,s0,a3
    1870:	00074703          	lbu	a4,0(a4)
    1874:	fe070513          	addi	a0,a4,-32
    1878:	0c050263          	beqz	a0,193c <fatfs_lfn_create_sfn+0x16c>
    187c:	fd270593          	addi	a1,a4,-46
    1880:	0a058e63          	beqz	a1,193c <fatfs_lfn_create_sfn+0x16c>
    1884:	f9f70593          	addi	a1,a4,-97
    1888:	0ff5f593          	zext.b	a1,a1
    188c:	00c48333          	add	t1,s1,a2
    1890:	00160613          	addi	a2,a2,1
    1894:	00b86463          	bltu	a6,a1,189c <fatfs_lfn_create_sfn+0xcc>
    1898:	0ff57713          	zext.b	a4,a0
    189c:	00e30023          	sb	a4,0(t1)
    18a0:	09161e63          	bne	a2,a7,193c <fatfs_lfn_create_sfn+0x16c>
    18a4:	00c10793          	addi	a5,sp,12
    18a8:	00800693          	li	a3,8
    18ac:	01900513          	li	a0,25
    18b0:	00b00593          	li	a1,11
    18b4:	0007c703          	lbu	a4,0(a5)
    18b8:	f9f70613          	addi	a2,a4,-97
    18bc:	0ff67613          	zext.b	a2,a2
    18c0:	00c56663          	bltu	a0,a2,18cc <fatfs_lfn_create_sfn+0xfc>
    18c4:	fe070713          	addi	a4,a4,-32
    18c8:	0ff77713          	zext.b	a4,a4
    18cc:	00d48633          	add	a2,s1,a3
    18d0:	00e60023          	sb	a4,0(a2)
    18d4:	00168693          	addi	a3,a3,1
    18d8:	00178793          	addi	a5,a5,1
    18dc:	fcb69ce3          	bne	a3,a1,18b4 <fatfs_lfn_create_sfn+0xe4>
    18e0:	00100513          	li	a0,1
    18e4:	02c12083          	lw	ra,44(sp)
    18e8:	02812403          	lw	s0,40(sp)
    18ec:	02412483          	lw	s1,36(sp)
    18f0:	02012903          	lw	s2,32(sp)
    18f4:	01c12983          	lw	s3,28(sp)
    18f8:	03010113          	addi	sp,sp,48
    18fc:	00008067          	ret
    1900:	00e406b3          	add	a3,s0,a4
    1904:	0006c683          	lbu	a3,0(a3)
    1908:	01369463          	bne	a3,s3,1910 <fatfs_lfn_create_sfn+0x140>
    190c:	00070793          	mv	a5,a4
    1910:	00170713          	addi	a4,a4,1
    1914:	f29ff06f          	j	183c <fatfs_lfn_create_sfn+0x6c>
    1918:	01275863          	bge	a4,s2,1928 <fatfs_lfn_create_sfn+0x158>
    191c:	00e405b3          	add	a1,s0,a4
    1920:	0005c583          	lbu	a1,0(a1)
    1924:	00b68023          	sb	a1,0(a3)
    1928:	00170713          	addi	a4,a4,1
    192c:	00168693          	addi	a3,a3,1
    1930:	f25ff06f          	j	1854 <fatfs_lfn_create_sfn+0x84>
    1934:	00090793          	mv	a5,s2
    1938:	f21ff06f          	j	1858 <fatfs_lfn_create_sfn+0x88>
    193c:	00168693          	addi	a3,a3,1
    1940:	f29ff06f          	j	1868 <fatfs_lfn_create_sfn+0x98>
    1944:	00000513          	li	a0,0
    1948:	f9dff06f          	j	18e4 <fatfs_lfn_create_sfn+0x114>

0000194c <fatfs_lfn_generate_tail>:
    194c:	000187b7          	lui	a5,0x18
    1950:	69f78793          	addi	a5,a5,1695 # 1869f <__stacktop+0x869f>
    1954:	16c7e463          	bltu	a5,a2,1abc <fatfs_lfn_generate_tail+0x170>
    1958:	fa010113          	addi	sp,sp,-96
    195c:	04812c23          	sw	s0,88(sp)
    1960:	04912a23          	sw	s1,84(sp)
    1964:	03712e23          	sw	s7,60(sp)
    1968:	00060413          	mv	s0,a2
    196c:	00058b93          	mv	s7,a1
    1970:	00c00613          	li	a2,12
    1974:	00000593          	li	a1,0
    1978:	00050493          	mv	s1,a0
    197c:	00410513          	addi	a0,sp,4
    1980:	04112e23          	sw	ra,92(sp)
    1984:	05312623          	sw	s3,76(sp)
    1988:	05412423          	sw	s4,72(sp)
    198c:	05612023          	sw	s6,64(sp)
    1990:	05212823          	sw	s2,80(sp)
    1994:	05512223          	sw	s5,68(sp)
    1998:	fffff097          	auipc	ra,0xfffff
    199c:	e74080e7          	jalr	-396(ra) # 80c <memset>
    19a0:	000045b7          	lui	a1,0x4
    19a4:	07e00793          	li	a5,126
    19a8:	01100613          	li	a2,17
    19ac:	ed858593          	addi	a1,a1,-296 # 3ed8 <OLED+0x4c>
    19b0:	01c10513          	addi	a0,sp,28
    19b4:	01010993          	addi	s3,sp,16
    19b8:	00f10223          	sb	a5,4(sp)
    19bc:	00098a13          	mv	s4,s3
    19c0:	fffff097          	auipc	ra,0xfffff
    19c4:	e68080e7          	jalr	-408(ra) # 828 <memcpy>
    19c8:	00900b13          	li	s6,9
    19cc:	00a00593          	li	a1,10
    19d0:	00040513          	mv	a0,s0
    19d4:	fffff097          	auipc	ra,0xfffff
    19d8:	dd4080e7          	jalr	-556(ra) # 7a8 <__umodsi3>
    19dc:	03050793          	addi	a5,a0,48
    19e0:	00278533          	add	a0,a5,sp
    19e4:	fec54783          	lbu	a5,-20(a0)
    19e8:	00098913          	mv	s2,s3
    19ec:	00040513          	mv	a0,s0
    19f0:	00a00593          	li	a1,10
    19f4:	00f98023          	sb	a5,0(s3)
    19f8:	00040a93          	mv	s5,s0
    19fc:	fffff097          	auipc	ra,0xfffff
    1a00:	d64080e7          	jalr	-668(ra) # 760 <__udivsi3>
    1a04:	00198993          	addi	s3,s3,1
    1a08:	00050413          	mv	s0,a0
    1a0c:	fd5b60e3          	bltu	s6,s5,19cc <fatfs_lfn_generate_tail+0x80>
    1a10:	00098023          	sb	zero,0(s3)
    1a14:	00410713          	addi	a4,sp,4
    1a18:	00090793          	mv	a5,s2
    1a1c:	0947f663          	bgeu	a5,s4,1aa8 <fatfs_lfn_generate_tail+0x15c>
    1a20:	00f10713          	addi	a4,sp,15
    1a24:	00000793          	li	a5,0
    1a28:	00e96663          	bltu	s2,a4,1a34 <fatfs_lfn_generate_tail+0xe8>
    1a2c:	41490933          	sub	s2,s2,s4
    1a30:	00190793          	addi	a5,s2,1
    1a34:	03078793          	addi	a5,a5,48
    1a38:	002787b3          	add	a5,a5,sp
    1a3c:	000b8593          	mv	a1,s7
    1a40:	fc078aa3          	sb	zero,-43(a5)
    1a44:	00b00613          	li	a2,11
    1a48:	00048513          	mv	a0,s1
    1a4c:	fffff097          	auipc	ra,0xfffff
    1a50:	ddc080e7          	jalr	-548(ra) # 828 <memcpy>
    1a54:	00410513          	addi	a0,sp,4
    1a58:	fffff097          	auipc	ra,0xfffff
    1a5c:	df4080e7          	jalr	-524(ra) # 84c <strlen>
    1a60:	40a484b3          	sub	s1,s1,a0
    1a64:	00050613          	mv	a2,a0
    1a68:	00410593          	addi	a1,sp,4
    1a6c:	00848513          	addi	a0,s1,8
    1a70:	fffff097          	auipc	ra,0xfffff
    1a74:	db8080e7          	jalr	-584(ra) # 828 <memcpy>
    1a78:	05c12083          	lw	ra,92(sp)
    1a7c:	05812403          	lw	s0,88(sp)
    1a80:	05412483          	lw	s1,84(sp)
    1a84:	05012903          	lw	s2,80(sp)
    1a88:	04c12983          	lw	s3,76(sp)
    1a8c:	04812a03          	lw	s4,72(sp)
    1a90:	04412a83          	lw	s5,68(sp)
    1a94:	04012b03          	lw	s6,64(sp)
    1a98:	03c12b83          	lw	s7,60(sp)
    1a9c:	00100513          	li	a0,1
    1aa0:	06010113          	addi	sp,sp,96
    1aa4:	00008067          	ret
    1aa8:	0007c683          	lbu	a3,0(a5)
    1aac:	00170713          	addi	a4,a4,1
    1ab0:	fff78793          	addi	a5,a5,-1
    1ab4:	00d70023          	sb	a3,0(a4)
    1ab8:	f65ff06f          	j	1a1c <fatfs_lfn_generate_tail+0xd0>
    1abc:	00000513          	li	a0,0
    1ac0:	00008067          	ret

00001ac4 <fatfs_total_path_levels>:
    1ac4:	fff00793          	li	a5,-1
    1ac8:	06050263          	beqz	a0,1b2c <fatfs_total_path_levels+0x68>
    1acc:	00054703          	lbu	a4,0(a0)
    1ad0:	02f00793          	li	a5,47
    1ad4:	00f71863          	bne	a4,a5,1ae4 <fatfs_total_path_levels+0x20>
    1ad8:	00150513          	addi	a0,a0,1
    1adc:	00000793          	li	a5,0
    1ae0:	0400006f          	j	1b20 <fatfs_total_path_levels+0x5c>
    1ae4:	00154703          	lbu	a4,1(a0)
    1ae8:	03a00793          	li	a5,58
    1aec:	00f70a63          	beq	a4,a5,1b00 <fatfs_total_path_levels+0x3c>
    1af0:	00254683          	lbu	a3,2(a0)
    1af4:	05c00713          	li	a4,92
    1af8:	fff00793          	li	a5,-1
    1afc:	02e69863          	bne	a3,a4,1b2c <fatfs_total_path_levels+0x68>
    1b00:	00350513          	addi	a0,a0,3
    1b04:	05c00713          	li	a4,92
    1b08:	fd5ff06f          	j	1adc <fatfs_total_path_levels+0x18>
    1b0c:	00150513          	addi	a0,a0,1
    1b10:	00e68663          	beq	a3,a4,1b1c <fatfs_total_path_levels+0x58>
    1b14:	00054683          	lbu	a3,0(a0)
    1b18:	fe069ae3          	bnez	a3,1b0c <fatfs_total_path_levels+0x48>
    1b1c:	00178793          	addi	a5,a5,1
    1b20:	00054683          	lbu	a3,0(a0)
    1b24:	fe0698e3          	bnez	a3,1b14 <fatfs_total_path_levels+0x50>
    1b28:	fff78793          	addi	a5,a5,-1
    1b2c:	00078513          	mv	a0,a5
    1b30:	00008067          	ret

00001b34 <fatfs_get_substring>:
    1b34:	0cd05e63          	blez	a3,1c10 <fatfs_get_substring+0xdc>
    1b38:	0c050c63          	beqz	a0,1c10 <fatfs_get_substring+0xdc>
    1b3c:	fe010113          	addi	sp,sp,-32
    1b40:	00812c23          	sw	s0,24(sp)
    1b44:	00112e23          	sw	ra,28(sp)
    1b48:	00912a23          	sw	s1,20(sp)
    1b4c:	00054483          	lbu	s1,0(a0)
    1b50:	02f00793          	li	a5,47
    1b54:	00150413          	addi	s0,a0,1
    1b58:	02f48463          	beq	s1,a5,1b80 <fatfs_get_substring+0x4c>
    1b5c:	00154703          	lbu	a4,1(a0)
    1b60:	03a00793          	li	a5,58
    1b64:	00f70a63          	beq	a4,a5,1b78 <fatfs_get_substring+0x44>
    1b68:	00254803          	lbu	a6,2(a0)
    1b6c:	05c00713          	li	a4,92
    1b70:	fff00793          	li	a5,-1
    1b74:	04e81c63          	bne	a6,a4,1bcc <fatfs_get_substring+0x98>
    1b78:	00350413          	addi	s0,a0,3
    1b7c:	05c00493          	li	s1,92
    1b80:	00040513          	mv	a0,s0
    1b84:	00d12623          	sw	a3,12(sp)
    1b88:	00c12423          	sw	a2,8(sp)
    1b8c:	00b12223          	sw	a1,4(sp)
    1b90:	fffff097          	auipc	ra,0xfffff
    1b94:	cbc080e7          	jalr	-836(ra) # 84c <strlen>
    1b98:	00c12683          	lw	a3,12(sp)
    1b9c:	00412583          	lw	a1,4(sp)
    1ba0:	00812603          	lw	a2,8(sp)
    1ba4:	00000713          	li	a4,0
    1ba8:	00000813          	li	a6,0
    1bac:	00000793          	li	a5,0
    1bb0:	fff68693          	addi	a3,a3,-1
    1bb4:	00e608b3          	add	a7,a2,a4
    1bb8:	02a7c663          	blt	a5,a0,1be4 <fatfs_get_substring+0xb0>
    1bbc:	00088023          	sb	zero,0(a7)
    1bc0:	00064783          	lbu	a5,0(a2)
    1bc4:	0017b793          	seqz	a5,a5
    1bc8:	40f007b3          	neg	a5,a5
    1bcc:	01c12083          	lw	ra,28(sp)
    1bd0:	01812403          	lw	s0,24(sp)
    1bd4:	01412483          	lw	s1,20(sp)
    1bd8:	00078513          	mv	a0,a5
    1bdc:	02010113          	addi	sp,sp,32
    1be0:	00008067          	ret
    1be4:	00f40333          	add	t1,s0,a5
    1be8:	00034303          	lbu	t1,0(t1)
    1bec:	00931863          	bne	t1,s1,1bfc <fatfs_get_substring+0xc8>
    1bf0:	00180813          	addi	a6,a6,1
    1bf4:	00178793          	addi	a5,a5,1
    1bf8:	fbdff06f          	j	1bb4 <fatfs_get_substring+0x80>
    1bfc:	feb81ce3          	bne	a6,a1,1bf4 <fatfs_get_substring+0xc0>
    1c00:	fed75ae3          	bge	a4,a3,1bf4 <fatfs_get_substring+0xc0>
    1c04:	00170713          	addi	a4,a4,1
    1c08:	00688023          	sb	t1,0(a7)
    1c0c:	fe9ff06f          	j	1bf4 <fatfs_get_substring+0xc0>
    1c10:	fff00793          	li	a5,-1
    1c14:	00078513          	mv	a0,a5
    1c18:	00008067          	ret

00001c1c <fatfs_split_path>:
    1c1c:	fd010113          	addi	sp,sp,-48
    1c20:	02912223          	sw	s1,36(sp)
    1c24:	03212023          	sw	s2,32(sp)
    1c28:	01312e23          	sw	s3,28(sp)
    1c2c:	01412c23          	sw	s4,24(sp)
    1c30:	02112623          	sw	ra,44(sp)
    1c34:	02812423          	sw	s0,40(sp)
    1c38:	01512a23          	sw	s5,20(sp)
    1c3c:	00050993          	mv	s3,a0
    1c40:	00058493          	mv	s1,a1
    1c44:	00060913          	mv	s2,a2
    1c48:	00068a13          	mv	s4,a3
    1c4c:	00e12623          	sw	a4,12(sp)
    1c50:	00000097          	auipc	ra,0x0
    1c54:	e74080e7          	jalr	-396(ra) # 1ac4 <fatfs_total_path_levels>
    1c58:	fff00793          	li	a5,-1
    1c5c:	02f51863          	bne	a0,a5,1c8c <fatfs_split_path+0x70>
    1c60:	fff00413          	li	s0,-1
    1c64:	02c12083          	lw	ra,44(sp)
    1c68:	00040513          	mv	a0,s0
    1c6c:	02812403          	lw	s0,40(sp)
    1c70:	02412483          	lw	s1,36(sp)
    1c74:	02012903          	lw	s2,32(sp)
    1c78:	01c12983          	lw	s3,28(sp)
    1c7c:	01812a03          	lw	s4,24(sp)
    1c80:	01412a83          	lw	s5,20(sp)
    1c84:	03010113          	addi	sp,sp,48
    1c88:	00008067          	ret
    1c8c:	00c12683          	lw	a3,12(sp)
    1c90:	00050593          	mv	a1,a0
    1c94:	00a12623          	sw	a0,12(sp)
    1c98:	000a0613          	mv	a2,s4
    1c9c:	00098513          	mv	a0,s3
    1ca0:	00000097          	auipc	ra,0x0
    1ca4:	e94080e7          	jalr	-364(ra) # 1b34 <fatfs_get_substring>
    1ca8:	00050413          	mv	s0,a0
    1cac:	fa051ae3          	bnez	a0,1c60 <fatfs_split_path+0x44>
    1cb0:	00c12583          	lw	a1,12(sp)
    1cb4:	00059663          	bnez	a1,1cc0 <fatfs_split_path+0xa4>
    1cb8:	00048023          	sb	zero,0(s1)
    1cbc:	fa9ff06f          	j	1c64 <fatfs_split_path+0x48>
    1cc0:	00098513          	mv	a0,s3
    1cc4:	fffff097          	auipc	ra,0xfffff
    1cc8:	b88080e7          	jalr	-1144(ra) # 84c <strlen>
    1ccc:	00050a93          	mv	s5,a0
    1cd0:	000a0513          	mv	a0,s4
    1cd4:	fffff097          	auipc	ra,0xfffff
    1cd8:	b78080e7          	jalr	-1160(ra) # 84c <strlen>
    1cdc:	40aa8633          	sub	a2,s5,a0
    1ce0:	00c95463          	bge	s2,a2,1ce8 <fatfs_split_path+0xcc>
    1ce4:	00090613          	mv	a2,s2
    1ce8:	00048513          	mv	a0,s1
    1cec:	00098593          	mv	a1,s3
    1cf0:	00c12623          	sw	a2,12(sp)
    1cf4:	fffff097          	auipc	ra,0xfffff
    1cf8:	b34080e7          	jalr	-1228(ra) # 828 <memcpy>
    1cfc:	00c12603          	lw	a2,12(sp)
    1d00:	00c484b3          	add	s1,s1,a2
    1d04:	fe048fa3          	sb	zero,-1(s1)
    1d08:	f5dff06f          	j	1c64 <fatfs_split_path+0x48>

00001d0c <fatfs_compare_names>:
    1d0c:	fd010113          	addi	sp,sp,-48
    1d10:	02112623          	sw	ra,44(sp)
    1d14:	03212023          	sw	s2,32(sp)
    1d18:	01312e23          	sw	s3,28(sp)
    1d1c:	01412c23          	sw	s4,24(sp)
    1d20:	01512a23          	sw	s5,20(sp)
    1d24:	00058a13          	mv	s4,a1
    1d28:	02812423          	sw	s0,40(sp)
    1d2c:	02912223          	sw	s1,36(sp)
    1d30:	01612823          	sw	s6,16(sp)
    1d34:	01712623          	sw	s7,12(sp)
    1d38:	01812423          	sw	s8,8(sp)
    1d3c:	00050a93          	mv	s5,a0
    1d40:	fffff097          	auipc	ra,0xfffff
    1d44:	2d4080e7          	jalr	724(ra) # 1014 <FileString_GetExtension>
    1d48:	00050993          	mv	s3,a0
    1d4c:	000a0513          	mv	a0,s4
    1d50:	fffff097          	auipc	ra,0xfffff
    1d54:	2c4080e7          	jalr	708(ra) # 1014 <FileString_GetExtension>
    1d58:	fff00793          	li	a5,-1
    1d5c:	00050913          	mv	s2,a0
    1d60:	02f99e63          	bne	s3,a5,1d9c <fatfs_compare_names+0x90>
    1d64:	0f350063          	beq	a0,s3,1e44 <fatfs_compare_names+0x138>
    1d68:	00000513          	li	a0,0
    1d6c:	02c12083          	lw	ra,44(sp)
    1d70:	02812403          	lw	s0,40(sp)
    1d74:	02412483          	lw	s1,36(sp)
    1d78:	02012903          	lw	s2,32(sp)
    1d7c:	01c12983          	lw	s3,28(sp)
    1d80:	01812a03          	lw	s4,24(sp)
    1d84:	01412a83          	lw	s5,20(sp)
    1d88:	01012b03          	lw	s6,16(sp)
    1d8c:	00c12b83          	lw	s7,12(sp)
    1d90:	00812c03          	lw	s8,8(sp)
    1d94:	03010113          	addi	sp,sp,48
    1d98:	00008067          	ret
    1d9c:	fcf506e3          	beq	a0,a5,1d68 <fatfs_compare_names+0x5c>
    1da0:	00198793          	addi	a5,s3,1
    1da4:	00fa8b33          	add	s6,s5,a5
    1da8:	00050413          	mv	s0,a0
    1dac:	00150793          	addi	a5,a0,1
    1db0:	000b0513          	mv	a0,s6
    1db4:	00fa0bb3          	add	s7,s4,a5
    1db8:	fffff097          	auipc	ra,0xfffff
    1dbc:	a94080e7          	jalr	-1388(ra) # 84c <strlen>
    1dc0:	00050c13          	mv	s8,a0
    1dc4:	000b8513          	mv	a0,s7
    1dc8:	00098493          	mv	s1,s3
    1dcc:	fffff097          	auipc	ra,0xfffff
    1dd0:	a80080e7          	jalr	-1408(ra) # 84c <strlen>
    1dd4:	f8ac1ae3          	bne	s8,a0,1d68 <fatfs_compare_names+0x5c>
    1dd8:	000b0513          	mv	a0,s6
    1ddc:	fffff097          	auipc	ra,0xfffff
    1de0:	a70080e7          	jalr	-1424(ra) # 84c <strlen>
    1de4:	00050613          	mv	a2,a0
    1de8:	000b8593          	mv	a1,s7
    1dec:	000b0513          	mv	a0,s6
    1df0:	fffff097          	auipc	ra,0xfffff
    1df4:	1b4080e7          	jalr	436(ra) # fa4 <FileString_StrCmpNoCase>
    1df8:	f60518e3          	bnez	a0,1d68 <fatfs_compare_names+0x5c>
    1dfc:	fff48793          	addi	a5,s1,-1
    1e00:	00fa87b3          	add	a5,s5,a5
    1e04:	41378733          	sub	a4,a5,s3
    1e08:	02000693          	li	a3,32
    1e0c:	06e79263          	bne	a5,a4,1e70 <fatfs_compare_names+0x164>
    1e10:	fff40793          	addi	a5,s0,-1
    1e14:	00fa07b3          	add	a5,s4,a5
    1e18:	41278733          	sub	a4,a5,s2
    1e1c:	02000693          	li	a3,32
    1e20:	06e79263          	bne	a5,a4,1e84 <fatfs_compare_names+0x178>
    1e24:	f53912e3          	bne	s2,s3,1d68 <fatfs_compare_names+0x5c>
    1e28:	00090613          	mv	a2,s2
    1e2c:	000a0593          	mv	a1,s4
    1e30:	000a8513          	mv	a0,s5
    1e34:	fffff097          	auipc	ra,0xfffff
    1e38:	170080e7          	jalr	368(ra) # fa4 <FileString_StrCmpNoCase>
    1e3c:	00153513          	seqz	a0,a0
    1e40:	f2dff06f          	j	1d6c <fatfs_compare_names+0x60>
    1e44:	000a8513          	mv	a0,s5
    1e48:	fffff097          	auipc	ra,0xfffff
    1e4c:	a04080e7          	jalr	-1532(ra) # 84c <strlen>
    1e50:	00050493          	mv	s1,a0
    1e54:	00050993          	mv	s3,a0
    1e58:	000a0513          	mv	a0,s4
    1e5c:	fffff097          	auipc	ra,0xfffff
    1e60:	9f0080e7          	jalr	-1552(ra) # 84c <strlen>
    1e64:	00050413          	mv	s0,a0
    1e68:	00050913          	mv	s2,a0
    1e6c:	f91ff06f          	j	1dfc <fatfs_compare_names+0xf0>
    1e70:	0007c603          	lbu	a2,0(a5)
    1e74:	f8d61ee3          	bne	a2,a3,1e10 <fatfs_compare_names+0x104>
    1e78:	415789b3          	sub	s3,a5,s5
    1e7c:	fff78793          	addi	a5,a5,-1
    1e80:	f8dff06f          	j	1e0c <fatfs_compare_names+0x100>
    1e84:	0007c603          	lbu	a2,0(a5)
    1e88:	f8d61ee3          	bne	a2,a3,1e24 <fatfs_compare_names+0x118>
    1e8c:	41478933          	sub	s2,a5,s4
    1e90:	fff78793          	addi	a5,a5,-1
    1e94:	f8dff06f          	j	1e20 <fatfs_compare_names+0x114>

00001e98 <_check_file_open>:
    1e98:	fe010113          	addi	sp,sp,-32
    1e9c:	000047b7          	lui	a5,0x4
    1ea0:	00812c23          	sw	s0,24(sp)
    1ea4:	1507a403          	lw	s0,336(a5) # 4150 <_open_file_list>
    1ea8:	00912a23          	sw	s1,20(sp)
    1eac:	00112e23          	sw	ra,28(sp)
    1eb0:	01212823          	sw	s2,16(sp)
    1eb4:	01312623          	sw	s3,12(sp)
    1eb8:	00050493          	mv	s1,a0
    1ebc:	00041663          	bnez	s0,1ec8 <_check_file_open+0x30>
    1ec0:	00000513          	li	a0,0
    1ec4:	03c0006f          	j	1f00 <_check_file_open+0x68>
    1ec8:	bc440793          	addi	a5,s0,-1084
    1ecc:	00f49663          	bne	s1,a5,1ed8 <_check_file_open+0x40>
    1ed0:	00442403          	lw	s0,4(s0)
    1ed4:	fe9ff06f          	j	1ebc <_check_file_open+0x24>
    1ed8:	01448593          	addi	a1,s1,20
    1edc:	bd840513          	addi	a0,s0,-1064
    1ee0:	00000097          	auipc	ra,0x0
    1ee4:	e2c080e7          	jalr	-468(ra) # 1d0c <fatfs_compare_names>
    1ee8:	fe0504e3          	beqz	a0,1ed0 <_check_file_open+0x38>
    1eec:	11848593          	addi	a1,s1,280
    1ef0:	cdc40513          	addi	a0,s0,-804
    1ef4:	00000097          	auipc	ra,0x0
    1ef8:	e18080e7          	jalr	-488(ra) # 1d0c <fatfs_compare_names>
    1efc:	fc050ae3          	beqz	a0,1ed0 <_check_file_open+0x38>
    1f00:	01c12083          	lw	ra,28(sp)
    1f04:	01812403          	lw	s0,24(sp)
    1f08:	01412483          	lw	s1,20(sp)
    1f0c:	01012903          	lw	s2,16(sp)
    1f10:	00c12983          	lw	s3,12(sp)
    1f14:	02010113          	addi	sp,sp,32
    1f18:	00008067          	ret

00001f1c <fatfs_fat_init>:
    1f1c:	ff010113          	addi	sp,sp,-16
    1f20:	00812423          	sw	s0,8(sp)
    1f24:	00912223          	sw	s1,4(sp)
    1f28:	00112623          	sw	ra,12(sp)
    1f2c:	fff00793          	li	a5,-1
    1f30:	25850493          	addi	s1,a0,600
    1f34:	00050413          	mv	s0,a0
    1f38:	44f52c23          	sw	a5,1112(a0)
    1f3c:	24052a23          	sw	zero,596(a0)
    1f40:	44052e23          	sw	zero,1116(a0)
    1f44:	20000613          	li	a2,512
    1f48:	00048513          	mv	a0,s1
    1f4c:	00000593          	li	a1,0
    1f50:	fffff097          	auipc	ra,0xfffff
    1f54:	8bc080e7          	jalr	-1860(ra) # 80c <memset>
    1f58:	25442783          	lw	a5,596(s0)
    1f5c:	00c12083          	lw	ra,12(sp)
    1f60:	24942a23          	sw	s1,596(s0)
    1f64:	46042023          	sw	zero,1120(s0)
    1f68:	46f42223          	sw	a5,1124(s0)
    1f6c:	00812403          	lw	s0,8(sp)
    1f70:	00412483          	lw	s1,4(sp)
    1f74:	01010113          	addi	sp,sp,16
    1f78:	00008067          	ret

00001f7c <fatfs_init>:
    1f7c:	fd010113          	addi	sp,sp,-48
    1f80:	02812423          	sw	s0,40(sp)
    1f84:	02112623          	sw	ra,44(sp)
    1f88:	02912223          	sw	s1,36(sp)
    1f8c:	03212023          	sw	s2,32(sp)
    1f90:	01312e23          	sw	s3,28(sp)
    1f94:	fff00793          	li	a5,-1
    1f98:	24f52223          	sw	a5,580(a0)
    1f9c:	24052423          	sw	zero,584(a0)
    1fa0:	02052223          	sw	zero,36(a0)
    1fa4:	00050413          	mv	s0,a0
    1fa8:	00000097          	auipc	ra,0x0
    1fac:	f74080e7          	jalr	-140(ra) # 1f1c <fatfs_fat_init>
    1fb0:	03442783          	lw	a5,52(s0)
    1fb4:	02079463          	bnez	a5,1fdc <fatfs_init+0x60>
    1fb8:	fff00713          	li	a4,-1
    1fbc:	02c12083          	lw	ra,44(sp)
    1fc0:	02812403          	lw	s0,40(sp)
    1fc4:	02412483          	lw	s1,36(sp)
    1fc8:	02012903          	lw	s2,32(sp)
    1fcc:	01c12983          	lw	s3,28(sp)
    1fd0:	00070513          	mv	a0,a4
    1fd4:	03010113          	addi	sp,sp,48
    1fd8:	00008067          	ret
    1fdc:	04440593          	addi	a1,s0,68
    1fe0:	00100613          	li	a2,1
    1fe4:	00000513          	li	a0,0
    1fe8:	00b12623          	sw	a1,12(sp)
    1fec:	000780e7          	jalr	a5
    1ff0:	fc0504e3          	beqz	a0,1fb8 <fatfs_init+0x3c>
    1ff4:	24244703          	lbu	a4,578(s0)
    1ff8:	05500793          	li	a5,85
    1ffc:	00c12583          	lw	a1,12(sp)
    2000:	00f70663          	beq	a4,a5,200c <fatfs_init+0x90>
    2004:	ffd00713          	li	a4,-3
    2008:	fb5ff06f          	j	1fbc <fatfs_init+0x40>
    200c:	24344703          	lbu	a4,579(s0)
    2010:	0aa00793          	li	a5,170
    2014:	fef718e3          	bne	a4,a5,2004 <fatfs_init+0x88>
    2018:	20644783          	lbu	a5,518(s0)
    201c:	00600713          	li	a4,6
    2020:	02f76463          	bltu	a4,a5,2048 <fatfs_init+0xcc>
    2024:	00400713          	li	a4,4
    2028:	00f76663          	bltu	a4,a5,2034 <fatfs_init+0xb8>
    202c:	00000513          	li	a0,0
    2030:	02078663          	beqz	a5,205c <fatfs_init+0xe0>
    2034:	20c45503          	lhu	a0,524(s0)
    2038:	20a45783          	lhu	a5,522(s0)
    203c:	01051513          	slli	a0,a0,0x10
    2040:	00f56533          	or	a0,a0,a5
    2044:	0180006f          	j	205c <fatfs_init+0xe0>
    2048:	00c00713          	li	a4,12
    204c:	12f76663          	bltu	a4,a5,2178 <fatfs_init+0x1fc>
    2050:	00a00713          	li	a4,10
    2054:	00000513          	li	a0,0
    2058:	fcf76ee3          	bltu	a4,a5,2034 <fatfs_init+0xb8>
    205c:	03442783          	lw	a5,52(s0)
    2060:	00a42e23          	sw	a0,28(s0)
    2064:	00100613          	li	a2,1
    2068:	000780e7          	jalr	a5
    206c:	f40506e3          	beqz	a0,1fb8 <fatfs_init+0x3c>
    2070:	05044783          	lbu	a5,80(s0)
    2074:	04f44703          	lbu	a4,79(s0)
    2078:	20000693          	li	a3,512
    207c:	00879793          	slli	a5,a5,0x8
    2080:	00e7e7b3          	or	a5,a5,a4
    2084:	ffe00713          	li	a4,-2
    2088:	f2d79ae3          	bne	a5,a3,1fbc <fatfs_init+0x40>
    208c:	05644483          	lbu	s1,86(s0)
    2090:	05544783          	lbu	a5,85(s0)
    2094:	05144983          	lbu	s3,81(s0)
    2098:	00849493          	slli	s1,s1,0x8
    209c:	05a45583          	lhu	a1,90(s0)
    20a0:	00f4e4b3          	or	s1,s1,a5
    20a4:	01340023          	sb	s3,0(s0)
    20a8:	02941423          	sh	s1,40(s0)
    20ac:	05245903          	lhu	s2,82(s0)
    20b0:	05444503          	lbu	a0,84(s0)
    20b4:	00059463          	bnez	a1,20bc <fatfs_init+0x140>
    20b8:	06842583          	lw	a1,104(s0)
    20bc:	07042783          	lw	a5,112(s0)
    20c0:	02b42023          	sw	a1,32(s0)
    20c4:	00549493          	slli	s1,s1,0x5
    20c8:	00f42423          	sw	a5,8(s0)
    20cc:	07445783          	lhu	a5,116(s0)
    20d0:	1ff48493          	addi	s1,s1,511
    20d4:	4094d493          	srai	s1,s1,0x9
    20d8:	00f41c23          	sh	a5,24(s0)
    20dc:	fffff097          	auipc	ra,0xfffff
    20e0:	e30080e7          	jalr	-464(ra) # f0c <__mulsi3>
    20e4:	00a907b3          	add	a5,s2,a0
    20e8:	00f42623          	sw	a5,12(s0)
    20ec:	01c42783          	lw	a5,28(s0)
    20f0:	24245703          	lhu	a4,578(s0)
    20f4:	00942823          	sw	s1,16(s0)
    20f8:	00f907b3          	add	a5,s2,a5
    20fc:	00f42a23          	sw	a5,20(s0)
    2100:	00f507b3          	add	a5,a0,a5
    2104:	00f42223          	sw	a5,4(s0)
    2108:	0000b7b7          	lui	a5,0xb
    210c:	a5578793          	addi	a5,a5,-1451 # aa55 <_files+0x248d>
    2110:	eef71ae3          	bne	a4,a5,2004 <fatfs_init+0x88>
    2114:	05844783          	lbu	a5,88(s0)
    2118:	05744703          	lbu	a4,87(s0)
    211c:	00879793          	slli	a5,a5,0x8
    2120:	00e7e7b3          	or	a5,a5,a4
    2124:	00079463          	bnez	a5,212c <fatfs_init+0x1b0>
    2128:	06442783          	lw	a5,100(s0)
    212c:	ffb00713          	li	a4,-5
    2130:	e80986e3          	beqz	s3,1fbc <fatfs_init+0x40>
    2134:	00990933          	add	s2,s2,s1
    2138:	00a90533          	add	a0,s2,a0
    213c:	40a78533          	sub	a0,a5,a0
    2140:	00098593          	mv	a1,s3
    2144:	ffffe097          	auipc	ra,0xffffe
    2148:	61c080e7          	jalr	1564(ra) # 760 <__udivsi3>
    214c:	000017b7          	lui	a5,0x1
    2150:	ff478793          	addi	a5,a5,-12 # ff4 <FileString_StrCmpNoCase+0x50>
    2154:	ffb00713          	li	a4,-5
    2158:	e6a7f2e3          	bgeu	a5,a0,1fbc <fatfs_init+0x40>
    215c:	000107b7          	lui	a5,0x10
    2160:	ff478793          	addi	a5,a5,-12 # fff4 <_files+0x7a2c>
    2164:	02a7e663          	bltu	a5,a0,2190 <fatfs_init+0x214>
    2168:	00042423          	sw	zero,8(s0)
    216c:	02042823          	sw	zero,48(s0)
    2170:	00000713          	li	a4,0
    2174:	e49ff06f          	j	1fbc <fatfs_init+0x40>
    2178:	ff278793          	addi	a5,a5,-14
    217c:	0ff7f793          	zext.b	a5,a5
    2180:	00100713          	li	a4,1
    2184:	00000513          	li	a0,0
    2188:	eaf776e3          	bgeu	a4,a5,2034 <fatfs_init+0xb8>
    218c:	ed1ff06f          	j	205c <fatfs_init+0xe0>
    2190:	00100793          	li	a5,1
    2194:	02f42823          	sw	a5,48(s0)
    2198:	fd9ff06f          	j	2170 <fatfs_init+0x1f4>

0000219c <fl_attach_media>:
    219c:	000047b7          	lui	a5,0x4
    21a0:	15c7a783          	lw	a5,348(a5) # 415c <_filelib_init>
    21a4:	fe010113          	addi	sp,sp,-32
    21a8:	00812c23          	sw	s0,24(sp)
    21ac:	00112e23          	sw	ra,28(sp)
    21b0:	00050413          	mv	s0,a0
    21b4:	00079a63          	bnez	a5,21c8 <fl_attach_media+0x2c>
    21b8:	00b12623          	sw	a1,12(sp)
    21bc:	fffff097          	auipc	ra,0xfffff
    21c0:	1e4080e7          	jalr	484(ra) # 13a0 <fl_init>
    21c4:	00c12583          	lw	a1,12(sp)
    21c8:	000087b7          	lui	a5,0x8
    21cc:	16078513          	addi	a0,a5,352 # 8160 <_fs>
    21d0:	02b52c23          	sw	a1,56(a0)
    21d4:	02852a23          	sw	s0,52(a0)
    21d8:	00000097          	auipc	ra,0x0
    21dc:	da4080e7          	jalr	-604(ra) # 1f7c <fatfs_init>
    21e0:	00050593          	mv	a1,a0
    21e4:	02050863          	beqz	a0,2214 <fl_attach_media+0x78>
    21e8:	00a12623          	sw	a0,12(sp)
    21ec:	00004537          	lui	a0,0x4
    21f0:	eec50513          	addi	a0,a0,-276 # 3eec <OLED+0x60>
    21f4:	fffff097          	auipc	ra,0xfffff
    21f8:	bdc080e7          	jalr	-1060(ra) # dd0 <printf>
    21fc:	00c12583          	lw	a1,12(sp)
    2200:	01c12083          	lw	ra,28(sp)
    2204:	01812403          	lw	s0,24(sp)
    2208:	00058513          	mv	a0,a1
    220c:	02010113          	addi	sp,sp,32
    2210:	00008067          	ret
    2214:	000047b7          	lui	a5,0x4
    2218:	00100713          	li	a4,1
    221c:	14e7ac23          	sw	a4,344(a5) # 4158 <_filelib_valid>
    2220:	fe1ff06f          	j	2200 <fl_attach_media+0x64>

00002224 <fatfs_fat_purge>:
    2224:	25452583          	lw	a1,596(a0)
    2228:	fe010113          	addi	sp,sp,-32
    222c:	00812c23          	sw	s0,24(sp)
    2230:	00112e23          	sw	ra,28(sp)
    2234:	00050413          	mv	s0,a0
    2238:	00059663          	bnez	a1,2244 <fatfs_fat_purge+0x20>
    223c:	00100513          	li	a0,1
    2240:	02c0006f          	j	226c <fatfs_fat_purge+0x48>
    2244:	2045a783          	lw	a5,516(a1)
    2248:	00079663          	bnez	a5,2254 <fatfs_fat_purge+0x30>
    224c:	20c5a583          	lw	a1,524(a1)
    2250:	fe9ff06f          	j	2238 <fatfs_fat_purge+0x14>
    2254:	00040513          	mv	a0,s0
    2258:	00b12623          	sw	a1,12(sp)
    225c:	fffff097          	auipc	ra,0xfffff
    2260:	de4080e7          	jalr	-540(ra) # 1040 <fatfs_fat_writeback>
    2264:	00c12583          	lw	a1,12(sp)
    2268:	fe0512e3          	bnez	a0,224c <fatfs_fat_purge+0x28>
    226c:	01c12083          	lw	ra,28(sp)
    2270:	01812403          	lw	s0,24(sp)
    2274:	02010113          	addi	sp,sp,32
    2278:	00008067          	ret

0000227c <fatfs_find_next_cluster>:
    227c:	ff010113          	addi	sp,sp,-16
    2280:	00812423          	sw	s0,8(sp)
    2284:	01212023          	sw	s2,0(sp)
    2288:	00112623          	sw	ra,12(sp)
    228c:	00912223          	sw	s1,4(sp)
    2290:	00050913          	mv	s2,a0
    2294:	00200413          	li	s0,2
    2298:	00058463          	beqz	a1,22a0 <fatfs_find_next_cluster+0x24>
    229c:	00058413          	mv	s0,a1
    22a0:	03092783          	lw	a5,48(s2)
    22a4:	00745493          	srli	s1,s0,0x7
    22a8:	00079463          	bnez	a5,22b0 <fatfs_find_next_cluster+0x34>
    22ac:	00845493          	srli	s1,s0,0x8
    22b0:	01492583          	lw	a1,20(s2)
    22b4:	00090513          	mv	a0,s2
    22b8:	00b485b3          	add	a1,s1,a1
    22bc:	fffff097          	auipc	ra,0xfffff
    22c0:	e08080e7          	jalr	-504(ra) # 10c4 <fatfs_fat_read_sector>
    22c4:	00050793          	mv	a5,a0
    22c8:	fff00513          	li	a0,-1
    22cc:	04078863          	beqz	a5,231c <fatfs_find_next_cluster+0xa0>
    22d0:	03092703          	lw	a4,48(s2)
    22d4:	2087a783          	lw	a5,520(a5)
    22d8:	04071e63          	bnez	a4,2334 <fatfs_find_next_cluster+0xb8>
    22dc:	00849493          	slli	s1,s1,0x8
    22e0:	40940433          	sub	s0,s0,s1
    22e4:	00141413          	slli	s0,s0,0x1
    22e8:	01041413          	slli	s0,s0,0x10
    22ec:	01045413          	srli	s0,s0,0x10
    22f0:	008787b3          	add	a5,a5,s0
    22f4:	0017c503          	lbu	a0,1(a5)
    22f8:	0007c783          	lbu	a5,0(a5)
    22fc:	00851513          	slli	a0,a0,0x8
    2300:	00f50533          	add	a0,a0,a5
    2304:	ffff07b7          	lui	a5,0xffff0
    2308:	00878793          	addi	a5,a5,8 # ffff0008 <__stacktop+0xfffe0008>
    230c:	00f507b3          	add	a5,a0,a5
    2310:	00700713          	li	a4,7
    2314:	00f76463          	bltu	a4,a5,231c <fatfs_find_next_cluster+0xa0>
    2318:	fff00513          	li	a0,-1
    231c:	00c12083          	lw	ra,12(sp)
    2320:	00812403          	lw	s0,8(sp)
    2324:	00412483          	lw	s1,4(sp)
    2328:	00012903          	lw	s2,0(sp)
    232c:	01010113          	addi	sp,sp,16
    2330:	00008067          	ret
    2334:	00749493          	slli	s1,s1,0x7
    2338:	40940433          	sub	s0,s0,s1
    233c:	00241413          	slli	s0,s0,0x2
    2340:	01041413          	slli	s0,s0,0x10
    2344:	01045413          	srli	s0,s0,0x10
    2348:	008787b3          	add	a5,a5,s0
    234c:	0037c503          	lbu	a0,3(a5)
    2350:	0027c703          	lbu	a4,2(a5)
    2354:	01851513          	slli	a0,a0,0x18
    2358:	01071713          	slli	a4,a4,0x10
    235c:	00e50533          	add	a0,a0,a4
    2360:	0007c703          	lbu	a4,0(a5)
    2364:	0017c783          	lbu	a5,1(a5)
    2368:	00e50533          	add	a0,a0,a4
    236c:	00879793          	slli	a5,a5,0x8
    2370:	00f50533          	add	a0,a0,a5
    2374:	00451513          	slli	a0,a0,0x4
    2378:	00455513          	srli	a0,a0,0x4
    237c:	f00007b7          	lui	a5,0xf0000
    2380:	f89ff06f          	j	2308 <fatfs_find_next_cluster+0x8c>

00002384 <fatfs_sector_reader>:
    2384:	03052783          	lw	a5,48(a0)
    2388:	fe010113          	addi	sp,sp,-32
    238c:	00812c23          	sw	s0,24(sp)
    2390:	01212823          	sw	s2,16(sp)
    2394:	01512223          	sw	s5,4(sp)
    2398:	00112e23          	sw	ra,28(sp)
    239c:	00912a23          	sw	s1,20(sp)
    23a0:	01312623          	sw	s3,12(sp)
    23a4:	01412423          	sw	s4,8(sp)
    23a8:	01612023          	sw	s6,0(sp)
    23ac:	00f5e7b3          	or	a5,a1,a5
    23b0:	00050413          	mv	s0,a0
    23b4:	00060913          	mv	s2,a2
    23b8:	00068a93          	mv	s5,a3
    23bc:	08079063          	bnez	a5,243c <fatfs_sector_reader+0xb8>
    23c0:	01052783          	lw	a5,16(a0)
    23c4:	02f66863          	bltu	a2,a5,23f4 <fatfs_sector_reader+0x70>
    23c8:	00000513          	li	a0,0
    23cc:	01c12083          	lw	ra,28(sp)
    23d0:	01812403          	lw	s0,24(sp)
    23d4:	01412483          	lw	s1,20(sp)
    23d8:	01012903          	lw	s2,16(sp)
    23dc:	00c12983          	lw	s3,12(sp)
    23e0:	00812a03          	lw	s4,8(sp)
    23e4:	00412a83          	lw	s5,4(sp)
    23e8:	00012b03          	lw	s6,0(sp)
    23ec:	02010113          	addi	sp,sp,32
    23f0:	00008067          	ret
    23f4:	01c52503          	lw	a0,28(a0)
    23f8:	00c42783          	lw	a5,12(s0)
    23fc:	00f50533          	add	a0,a0,a5
    2400:	01250533          	add	a0,a0,s2
    2404:	0a0a8663          	beqz	s5,24b0 <fatfs_sector_reader+0x12c>
    2408:	03442783          	lw	a5,52(s0)
    240c:	00100613          	li	a2,1
    2410:	000a8593          	mv	a1,s5
    2414:	01812403          	lw	s0,24(sp)
    2418:	01c12083          	lw	ra,28(sp)
    241c:	01412483          	lw	s1,20(sp)
    2420:	01012903          	lw	s2,16(sp)
    2424:	00c12983          	lw	s3,12(sp)
    2428:	00812a03          	lw	s4,8(sp)
    242c:	00412a83          	lw	s5,4(sp)
    2430:	00012b03          	lw	s6,0(sp)
    2434:	02010113          	addi	sp,sp,32
    2438:	00078067          	jr	a5 # f0000000 <__stacktop+0xefff0000>
    243c:	00054783          	lbu	a5,0(a0)
    2440:	00058493          	mv	s1,a1
    2444:	00060513          	mv	a0,a2
    2448:	00078593          	mv	a1,a5
    244c:	00078a13          	mv	s4,a5
    2450:	ffffe097          	auipc	ra,0xffffe
    2454:	310080e7          	jalr	784(ra) # 760 <__udivsi3>
    2458:	00050b13          	mv	s6,a0
    245c:	00000993          	li	s3,0
    2460:	03699a63          	bne	s3,s6,2494 <fatfs_sector_reader+0x110>
    2464:	fff00793          	li	a5,-1
    2468:	f6f480e3          	beq	s1,a5,23c8 <fatfs_sector_reader+0x44>
    246c:	000a0593          	mv	a1,s4
    2470:	00090513          	mv	a0,s2
    2474:	ffffe097          	auipc	ra,0xffffe
    2478:	334080e7          	jalr	820(ra) # 7a8 <__umodsi3>
    247c:	00050913          	mv	s2,a0
    2480:	00048593          	mv	a1,s1
    2484:	00040513          	mv	a0,s0
    2488:	fffff097          	auipc	ra,0xfffff
    248c:	de8080e7          	jalr	-536(ra) # 1270 <fatfs_lba_of_cluster>
    2490:	f71ff06f          	j	2400 <fatfs_sector_reader+0x7c>
    2494:	00048593          	mv	a1,s1
    2498:	00040513          	mv	a0,s0
    249c:	00000097          	auipc	ra,0x0
    24a0:	de0080e7          	jalr	-544(ra) # 227c <fatfs_find_next_cluster>
    24a4:	00050493          	mv	s1,a0
    24a8:	00198993          	addi	s3,s3,1
    24ac:	fb5ff06f          	j	2460 <fatfs_sector_reader+0xdc>
    24b0:	24442783          	lw	a5,580(s0)
    24b4:	00a78c63          	beq	a5,a0,24cc <fatfs_sector_reader+0x148>
    24b8:	03442783          	lw	a5,52(s0)
    24bc:	24a42223          	sw	a0,580(s0)
    24c0:	00100613          	li	a2,1
    24c4:	04440593          	addi	a1,s0,68
    24c8:	f4dff06f          	j	2414 <fatfs_sector_reader+0x90>
    24cc:	00100513          	li	a0,1
    24d0:	efdff06f          	j	23cc <fatfs_sector_reader+0x48>

000024d4 <fatfs_get_file_entry>:
    24d4:	eb010113          	addi	sp,sp,-336
    24d8:	14812423          	sw	s0,328(sp)
    24dc:	14912223          	sw	s1,324(sp)
    24e0:	13312e23          	sw	s3,316(sp)
    24e4:	13712623          	sw	s7,300(sp)
    24e8:	13812423          	sw	s8,296(sp)
    24ec:	13912223          	sw	s9,292(sp)
    24f0:	14112623          	sw	ra,332(sp)
    24f4:	15212023          	sw	s2,320(sp)
    24f8:	13412c23          	sw	s4,312(sp)
    24fc:	13512a23          	sw	s5,308(sp)
    2500:	13612823          	sw	s6,304(sp)
    2504:	00050993          	mv	s3,a0
    2508:	00058c93          	mv	s9,a1
    250c:	00060b93          	mv	s7,a2
    2510:	00068c13          	mv	s8,a3
    2514:	10010ea3          	sb	zero,285(sp)
    2518:	01810413          	addi	s0,sp,24
    251c:	11c10493          	addi	s1,sp,284
    2520:	00040513          	mv	a0,s0
    2524:	00d00613          	li	a2,13
    2528:	00000593          	li	a1,0
    252c:	00d40413          	addi	s0,s0,13
    2530:	ffffe097          	auipc	ra,0xffffe
    2534:	2dc080e7          	jalr	732(ra) # 80c <memset>
    2538:	fe9414e3          	bne	s0,s1,2520 <fatfs_get_file_entry+0x4c>
    253c:	00000493          	li	s1,0
    2540:	24498a13          	addi	s4,s3,580
    2544:	00810913          	addi	s2,sp,8
    2548:	00800a93          	li	s5,8
    254c:	02e00b13          	li	s6,46
    2550:	00000693          	li	a3,0
    2554:	00048613          	mv	a2,s1
    2558:	000c8593          	mv	a1,s9
    255c:	00098513          	mv	a0,s3
    2560:	00000097          	auipc	ra,0x0
    2564:	e24080e7          	jalr	-476(ra) # 2384 <fatfs_sector_reader>
    2568:	08050c63          	beqz	a0,2600 <fatfs_get_file_entry+0x12c>
    256c:	00148493          	addi	s1,s1,1
    2570:	04498413          	addi	s0,s3,68
    2574:	00040513          	mv	a0,s0
    2578:	fffff097          	auipc	ra,0xfffff
    257c:	f98080e7          	jalr	-104(ra) # 1510 <fatfs_entry_lfn_text>
    2580:	02050063          	beqz	a0,25a0 <fatfs_get_file_entry+0xcc>
    2584:	00040593          	mv	a1,s0
    2588:	01810513          	addi	a0,sp,24
    258c:	fffff097          	auipc	ra,0xfffff
    2590:	e7c080e7          	jalr	-388(ra) # 1408 <fatfs_lfn_cache_entry>
    2594:	02040413          	addi	s0,s0,32
    2598:	fd441ee3          	bne	s0,s4,2574 <fatfs_get_file_entry+0xa0>
    259c:	fb5ff06f          	j	2550 <fatfs_get_file_entry+0x7c>
    25a0:	00040513          	mv	a0,s0
    25a4:	fffff097          	auipc	ra,0xfffff
    25a8:	f80080e7          	jalr	-128(ra) # 1524 <fatfs_entry_lfn_invalid>
    25ac:	00050663          	beqz	a0,25b8 <fatfs_get_file_entry+0xe4>
    25b0:	10010ea3          	sb	zero,285(sp)
    25b4:	fe1ff06f          	j	2594 <fatfs_get_file_entry+0xc0>
    25b8:	00040593          	mv	a1,s0
    25bc:	01810513          	addi	a0,sp,24
    25c0:	fffff097          	auipc	ra,0xfffff
    25c4:	f98080e7          	jalr	-104(ra) # 1558 <fatfs_entry_lfn_exists>
    25c8:	06050663          	beqz	a0,2634 <fatfs_get_file_entry+0x160>
    25cc:	01810513          	addi	a0,sp,24
    25d0:	fffff097          	auipc	ra,0xfffff
    25d4:	f04080e7          	jalr	-252(ra) # 14d4 <fatfs_lfn_cache_get>
    25d8:	000b8593          	mv	a1,s7
    25dc:	fffff097          	auipc	ra,0xfffff
    25e0:	730080e7          	jalr	1840(ra) # 1d0c <fatfs_compare_names>
    25e4:	fc0506e3          	beqz	a0,25b0 <fatfs_get_file_entry+0xdc>
    25e8:	02000613          	li	a2,32
    25ec:	00040593          	mv	a1,s0
    25f0:	000c0513          	mv	a0,s8
    25f4:	ffffe097          	auipc	ra,0xffffe
    25f8:	234080e7          	jalr	564(ra) # 828 <memcpy>
    25fc:	00100513          	li	a0,1
    2600:	14c12083          	lw	ra,332(sp)
    2604:	14812403          	lw	s0,328(sp)
    2608:	14412483          	lw	s1,324(sp)
    260c:	14012903          	lw	s2,320(sp)
    2610:	13c12983          	lw	s3,316(sp)
    2614:	13812a03          	lw	s4,312(sp)
    2618:	13412a83          	lw	s5,308(sp)
    261c:	13012b03          	lw	s6,304(sp)
    2620:	12c12b83          	lw	s7,300(sp)
    2624:	12812c03          	lw	s8,296(sp)
    2628:	12412c83          	lw	s9,292(sp)
    262c:	15010113          	addi	sp,sp,336
    2630:	00008067          	ret
    2634:	00040513          	mv	a0,s0
    2638:	fffff097          	auipc	ra,0xfffff
    263c:	f70080e7          	jalr	-144(ra) # 15a8 <fatfs_entry_sfn_only>
    2640:	f4050ae3          	beqz	a0,2594 <fatfs_get_file_entry+0xc0>
    2644:	00d00613          	li	a2,13
    2648:	00000593          	li	a1,0
    264c:	00090513          	mv	a0,s2
    2650:	ffffe097          	auipc	ra,0xffffe
    2654:	1bc080e7          	jalr	444(ra) # 80c <memset>
    2658:	00000793          	li	a5,0
    265c:	00f406b3          	add	a3,s0,a5
    2660:	0006c683          	lbu	a3,0(a3)
    2664:	00f90733          	add	a4,s2,a5
    2668:	00178793          	addi	a5,a5,1
    266c:	00d70023          	sb	a3,0(a4)
    2670:	ff5796e3          	bne	a5,s5,265c <fatfs_get_file_entry+0x188>
    2674:	00844703          	lbu	a4,8(s0)
    2678:	00944783          	lbu	a5,9(s0)
    267c:	00a44683          	lbu	a3,10(s0)
    2680:	00e108a3          	sb	a4,17(sp)
    2684:	00f10923          	sb	a5,18(sp)
    2688:	fe070713          	addi	a4,a4,-32
    268c:	fe078793          	addi	a5,a5,-32
    2690:	00f037b3          	snez	a5,a5
    2694:	00e03733          	snez	a4,a4
    2698:	00d109a3          	sb	a3,19(sp)
    269c:	00e7e7b3          	or	a5,a5,a4
    26a0:	00079863          	bnez	a5,26b0 <fatfs_get_file_entry+0x1dc>
    26a4:	fe068693          	addi	a3,a3,-32
    26a8:	02000793          	li	a5,32
    26ac:	00068a63          	beqz	a3,26c0 <fatfs_get_file_entry+0x1ec>
    26b0:	00814703          	lbu	a4,8(sp)
    26b4:	02e00793          	li	a5,46
    26b8:	01671463          	bne	a4,s6,26c0 <fatfs_get_file_entry+0x1ec>
    26bc:	02000793          	li	a5,32
    26c0:	00f10823          	sb	a5,16(sp)
    26c4:	000b8593          	mv	a1,s7
    26c8:	00090513          	mv	a0,s2
    26cc:	f11ff06f          	j	25dc <fatfs_get_file_entry+0x108>

000026d0 <_open_directory>:
    26d0:	eb010113          	addi	sp,sp,-336
    26d4:	15212023          	sw	s2,320(sp)
    26d8:	00008937          	lui	s2,0x8
    26dc:	16090913          	addi	s2,s2,352 # 8160 <_fs>
    26e0:	14812423          	sw	s0,328(sp)
    26e4:	00892403          	lw	s0,8(s2)
    26e8:	14912223          	sw	s1,324(sp)
    26ec:	13312e23          	sw	s3,316(sp)
    26f0:	13412c23          	sw	s4,312(sp)
    26f4:	13512a23          	sw	s5,308(sp)
    26f8:	13612823          	sw	s6,304(sp)
    26fc:	14112623          	sw	ra,332(sp)
    2700:	00050a13          	mv	s4,a0
    2704:	00058a93          	mv	s5,a1
    2708:	fffff097          	auipc	ra,0xfffff
    270c:	3bc080e7          	jalr	956(ra) # 1ac4 <fatfs_total_path_levels>
    2710:	00050b13          	mv	s6,a0
    2714:	00000493          	li	s1,0
    2718:	fff00993          	li	s3,-1
    271c:	009b5863          	bge	s6,s1,272c <_open_directory+0x5c>
    2720:	008aa023          	sw	s0,0(s5)
    2724:	00100513          	li	a0,1
    2728:	0240006f          	j	274c <_open_directory+0x7c>
    272c:	10400693          	li	a3,260
    2730:	02c10613          	addi	a2,sp,44
    2734:	00048593          	mv	a1,s1
    2738:	000a0513          	mv	a0,s4
    273c:	fffff097          	auipc	ra,0xfffff
    2740:	3f8080e7          	jalr	1016(ra) # 1b34 <fatfs_get_substring>
    2744:	03351863          	bne	a0,s3,2774 <_open_directory+0xa4>
    2748:	00000513          	li	a0,0
    274c:	14c12083          	lw	ra,332(sp)
    2750:	14812403          	lw	s0,328(sp)
    2754:	14412483          	lw	s1,324(sp)
    2758:	14012903          	lw	s2,320(sp)
    275c:	13c12983          	lw	s3,316(sp)
    2760:	13812a03          	lw	s4,312(sp)
    2764:	13412a83          	lw	s5,308(sp)
    2768:	13012b03          	lw	s6,304(sp)
    276c:	15010113          	addi	sp,sp,336
    2770:	00008067          	ret
    2774:	00c10693          	addi	a3,sp,12
    2778:	02c10613          	addi	a2,sp,44
    277c:	00040593          	mv	a1,s0
    2780:	00090513          	mv	a0,s2
    2784:	00000097          	auipc	ra,0x0
    2788:	d50080e7          	jalr	-688(ra) # 24d4 <fatfs_get_file_entry>
    278c:	fa050ee3          	beqz	a0,2748 <_open_directory+0x78>
    2790:	01714783          	lbu	a5,23(sp)
    2794:	0107f793          	andi	a5,a5,16
    2798:	fa0788e3          	beqz	a5,2748 <_open_directory+0x78>
    279c:	02015403          	lhu	s0,32(sp)
    27a0:	02615783          	lhu	a5,38(sp)
    27a4:	00148493          	addi	s1,s1,1
    27a8:	01041413          	slli	s0,s0,0x10
    27ac:	00f40433          	add	s0,s0,a5
    27b0:	f6dff06f          	j	271c <_open_directory+0x4c>

000027b4 <_open_file>:
    27b4:	fc010113          	addi	sp,sp,-64
    27b8:	03312623          	sw	s3,44(sp)
    27bc:	02112e23          	sw	ra,60(sp)
    27c0:	02812c23          	sw	s0,56(sp)
    27c4:	02912a23          	sw	s1,52(sp)
    27c8:	03212823          	sw	s2,48(sp)
    27cc:	00050993          	mv	s3,a0
    27d0:	fffff097          	auipc	ra,0xfffff
    27d4:	9e0080e7          	jalr	-1568(ra) # 11b0 <_allocate_file>
    27d8:	06050463          	beqz	a0,2840 <_open_file+0x8c>
    27dc:	01450913          	addi	s2,a0,20
    27e0:	00050413          	mv	s0,a0
    27e4:	10400613          	li	a2,260
    27e8:	00000593          	li	a1,0
    27ec:	00090513          	mv	a0,s2
    27f0:	ffffe097          	auipc	ra,0xffffe
    27f4:	01c080e7          	jalr	28(ra) # 80c <memset>
    27f8:	11840493          	addi	s1,s0,280
    27fc:	10400613          	li	a2,260
    2800:	00000593          	li	a1,0
    2804:	00048513          	mv	a0,s1
    2808:	ffffe097          	auipc	ra,0xffffe
    280c:	004080e7          	jalr	4(ra) # 80c <memset>
    2810:	10400713          	li	a4,260
    2814:	00048693          	mv	a3,s1
    2818:	00070613          	mv	a2,a4
    281c:	00090593          	mv	a1,s2
    2820:	00098513          	mv	a0,s3
    2824:	fffff097          	auipc	ra,0xfffff
    2828:	3f8080e7          	jalr	1016(ra) # 1c1c <fatfs_split_path>
    282c:	fff00793          	li	a5,-1
    2830:	02f51a63          	bne	a0,a5,2864 <_open_file+0xb0>
    2834:	00040513          	mv	a0,s0
    2838:	fffff097          	auipc	ra,0xfffff
    283c:	9f0080e7          	jalr	-1552(ra) # 1228 <_free_file>
    2840:	00000413          	li	s0,0
    2844:	03c12083          	lw	ra,60(sp)
    2848:	00040513          	mv	a0,s0
    284c:	03812403          	lw	s0,56(sp)
    2850:	03412483          	lw	s1,52(sp)
    2854:	03012903          	lw	s2,48(sp)
    2858:	02c12983          	lw	s3,44(sp)
    285c:	04010113          	addi	sp,sp,64
    2860:	00008067          	ret
    2864:	00040513          	mv	a0,s0
    2868:	fffff097          	auipc	ra,0xfffff
    286c:	630080e7          	jalr	1584(ra) # 1e98 <_check_file_open>
    2870:	fc0512e3          	bnez	a0,2834 <_open_file+0x80>
    2874:	01444783          	lbu	a5,20(s0)
    2878:	08079c63          	bnez	a5,2910 <_open_file+0x15c>
    287c:	000087b7          	lui	a5,0x8
    2880:	1687a783          	lw	a5,360(a5) # 8168 <_fs+0x8>
    2884:	00f42023          	sw	a5,0(s0)
    2888:	00042583          	lw	a1,0(s0)
    288c:	00048613          	mv	a2,s1
    2890:	000084b7          	lui	s1,0x8
    2894:	00010693          	mv	a3,sp
    2898:	16048513          	addi	a0,s1,352 # 8160 <_fs>
    289c:	00000097          	auipc	ra,0x0
    28a0:	c38080e7          	jalr	-968(ra) # 24d4 <fatfs_get_file_entry>
    28a4:	f80508e3          	beqz	a0,2834 <_open_file+0x80>
    28a8:	00b14783          	lbu	a5,11(sp)
    28ac:	0207f793          	andi	a5,a5,32
    28b0:	f80782e3          	beqz	a5,2834 <_open_file+0x80>
    28b4:	00b00613          	li	a2,11
    28b8:	00010593          	mv	a1,sp
    28bc:	21c40513          	addi	a0,s0,540
    28c0:	ffffe097          	auipc	ra,0xffffe
    28c4:	f68080e7          	jalr	-152(ra) # 828 <memcpy>
    28c8:	01c12783          	lw	a5,28(sp)
    28cc:	01a15703          	lhu	a4,26(sp)
    28d0:	00042423          	sw	zero,8(s0)
    28d4:	00f42623          	sw	a5,12(s0)
    28d8:	01415783          	lhu	a5,20(sp)
    28dc:	42042a23          	sw	zero,1076(s0)
    28e0:	00042823          	sw	zero,16(s0)
    28e4:	01079793          	slli	a5,a5,0x10
    28e8:	00e787b3          	add	a5,a5,a4
    28ec:	00f42223          	sw	a5,4(s0)
    28f0:	fff00793          	li	a5,-1
    28f4:	42f42823          	sw	a5,1072(s0)
    28f8:	22f42423          	sw	a5,552(s0)
    28fc:	22f42623          	sw	a5,556(s0)
    2900:	16048513          	addi	a0,s1,352
    2904:	00000097          	auipc	ra,0x0
    2908:	920080e7          	jalr	-1760(ra) # 2224 <fatfs_fat_purge>
    290c:	f39ff06f          	j	2844 <_open_file+0x90>
    2910:	00040593          	mv	a1,s0
    2914:	00090513          	mv	a0,s2
    2918:	00000097          	auipc	ra,0x0
    291c:	db8080e7          	jalr	-584(ra) # 26d0 <_open_directory>
    2920:	f60514e3          	bnez	a0,2888 <_open_file+0xd4>
    2924:	f11ff06f          	j	2834 <_open_file+0x80>

00002928 <fatfs_sfn_exists>:
    2928:	fe010113          	addi	sp,sp,-32
    292c:	01212823          	sw	s2,16(sp)
    2930:	01312623          	sw	s3,12(sp)
    2934:	01412423          	sw	s4,8(sp)
    2938:	01512223          	sw	s5,4(sp)
    293c:	01612023          	sw	s6,0(sp)
    2940:	00112e23          	sw	ra,28(sp)
    2944:	00812c23          	sw	s0,24(sp)
    2948:	00912a23          	sw	s1,20(sp)
    294c:	00050993          	mv	s3,a0
    2950:	00058a93          	mv	s5,a1
    2954:	00060b13          	mv	s6,a2
    2958:	00000913          	li	s2,0
    295c:	24450a13          	addi	s4,a0,580
    2960:	00000693          	li	a3,0
    2964:	00090613          	mv	a2,s2
    2968:	000a8593          	mv	a1,s5
    296c:	00098513          	mv	a0,s3
    2970:	00000097          	auipc	ra,0x0
    2974:	a14080e7          	jalr	-1516(ra) # 2384 <fatfs_sector_reader>
    2978:	00050413          	mv	s0,a0
    297c:	06050263          	beqz	a0,29e0 <fatfs_sfn_exists+0xb8>
    2980:	00190913          	addi	s2,s2,1
    2984:	04498493          	addi	s1,s3,68
    2988:	00048513          	mv	a0,s1
    298c:	fffff097          	auipc	ra,0xfffff
    2990:	b84080e7          	jalr	-1148(ra) # 1510 <fatfs_entry_lfn_text>
    2994:	00050863          	beqz	a0,29a4 <fatfs_sfn_exists+0x7c>
    2998:	02048493          	addi	s1,s1,32
    299c:	ff4496e3          	bne	s1,s4,2988 <fatfs_sfn_exists+0x60>
    29a0:	fc1ff06f          	j	2960 <fatfs_sfn_exists+0x38>
    29a4:	00048513          	mv	a0,s1
    29a8:	fffff097          	auipc	ra,0xfffff
    29ac:	b7c080e7          	jalr	-1156(ra) # 1524 <fatfs_entry_lfn_invalid>
    29b0:	fe0514e3          	bnez	a0,2998 <fatfs_sfn_exists+0x70>
    29b4:	00048513          	mv	a0,s1
    29b8:	fffff097          	auipc	ra,0xfffff
    29bc:	bf0080e7          	jalr	-1040(ra) # 15a8 <fatfs_entry_sfn_only>
    29c0:	00050413          	mv	s0,a0
    29c4:	fc050ae3          	beqz	a0,2998 <fatfs_sfn_exists+0x70>
    29c8:	00b00613          	li	a2,11
    29cc:	000b0593          	mv	a1,s6
    29d0:	00048513          	mv	a0,s1
    29d4:	ffffe097          	auipc	ra,0xffffe
    29d8:	e98080e7          	jalr	-360(ra) # 86c <strncmp>
    29dc:	fa051ee3          	bnez	a0,2998 <fatfs_sfn_exists+0x70>
    29e0:	01c12083          	lw	ra,28(sp)
    29e4:	00040513          	mv	a0,s0
    29e8:	01812403          	lw	s0,24(sp)
    29ec:	01412483          	lw	s1,20(sp)
    29f0:	01012903          	lw	s2,16(sp)
    29f4:	00c12983          	lw	s3,12(sp)
    29f8:	00812a03          	lw	s4,8(sp)
    29fc:	00412a83          	lw	s5,4(sp)
    2a00:	00012b03          	lw	s6,0(sp)
    2a04:	02010113          	addi	sp,sp,32
    2a08:	00008067          	ret

00002a0c <fatfs_update_file_length>:
    2a0c:	03852783          	lw	a5,56(a0)
    2a10:	14078e63          	beqz	a5,2b6c <fatfs_update_file_length+0x160>
    2a14:	fd010113          	addi	sp,sp,-48
    2a18:	02912223          	sw	s1,36(sp)
    2a1c:	03212023          	sw	s2,32(sp)
    2a20:	01312e23          	sw	s3,28(sp)
    2a24:	01412c23          	sw	s4,24(sp)
    2a28:	01612823          	sw	s6,16(sp)
    2a2c:	01712623          	sw	s7,12(sp)
    2a30:	02112623          	sw	ra,44(sp)
    2a34:	02812423          	sw	s0,40(sp)
    2a38:	01512a23          	sw	s5,20(sp)
    2a3c:	00068913          	mv	s2,a3
    2a40:	00060b93          	mv	s7,a2
    2a44:	00058b13          	mv	s6,a1
    2a48:	00050493          	mv	s1,a0
    2a4c:	00000993          	li	s3,0
    2a50:	24450a13          	addi	s4,a0,580
    2a54:	00000693          	li	a3,0
    2a58:	00098613          	mv	a2,s3
    2a5c:	000b0593          	mv	a1,s6
    2a60:	00048513          	mv	a0,s1
    2a64:	00000097          	auipc	ra,0x0
    2a68:	920080e7          	jalr	-1760(ra) # 2384 <fatfs_sector_reader>
    2a6c:	0c050863          	beqz	a0,2b3c <fatfs_update_file_length+0x130>
    2a70:	04448413          	addi	s0,s1,68
    2a74:	00198993          	addi	s3,s3,1
    2a78:	00040a93          	mv	s5,s0
    2a7c:	00040513          	mv	a0,s0
    2a80:	fffff097          	auipc	ra,0xfffff
    2a84:	a90080e7          	jalr	-1392(ra) # 1510 <fatfs_entry_lfn_text>
    2a88:	0a051463          	bnez	a0,2b30 <fatfs_update_file_length+0x124>
    2a8c:	00040513          	mv	a0,s0
    2a90:	fffff097          	auipc	ra,0xfffff
    2a94:	a94080e7          	jalr	-1388(ra) # 1524 <fatfs_entry_lfn_invalid>
    2a98:	08051c63          	bnez	a0,2b30 <fatfs_update_file_length+0x124>
    2a9c:	00040513          	mv	a0,s0
    2aa0:	fffff097          	auipc	ra,0xfffff
    2aa4:	b08080e7          	jalr	-1272(ra) # 15a8 <fatfs_entry_sfn_only>
    2aa8:	08050463          	beqz	a0,2b30 <fatfs_update_file_length+0x124>
    2aac:	00b00613          	li	a2,11
    2ab0:	000b8593          	mv	a1,s7
    2ab4:	00040513          	mv	a0,s0
    2ab8:	ffffe097          	auipc	ra,0xffffe
    2abc:	db4080e7          	jalr	-588(ra) # 86c <strncmp>
    2ac0:	06051863          	bnez	a0,2b30 <fatfs_update_file_length+0x124>
    2ac4:	00895793          	srli	a5,s2,0x8
    2ac8:	01240e23          	sb	s2,28(s0)
    2acc:	00f40ea3          	sb	a5,29(s0)
    2ad0:	01095793          	srli	a5,s2,0x10
    2ad4:	01895913          	srli	s2,s2,0x18
    2ad8:	00f40f23          	sb	a5,30(s0)
    2adc:	01240fa3          	sb	s2,31(s0)
    2ae0:	00040593          	mv	a1,s0
    2ae4:	02000613          	li	a2,32
    2ae8:	00040513          	mv	a0,s0
    2aec:	ffffe097          	auipc	ra,0xffffe
    2af0:	d3c080e7          	jalr	-708(ra) # 828 <memcpy>
    2af4:	02812403          	lw	s0,40(sp)
    2af8:	0384a783          	lw	a5,56(s1)
    2afc:	2444a503          	lw	a0,580(s1)
    2b00:	02c12083          	lw	ra,44(sp)
    2b04:	02412483          	lw	s1,36(sp)
    2b08:	02012903          	lw	s2,32(sp)
    2b0c:	01c12983          	lw	s3,28(sp)
    2b10:	01812a03          	lw	s4,24(sp)
    2b14:	01012b03          	lw	s6,16(sp)
    2b18:	00c12b83          	lw	s7,12(sp)
    2b1c:	000a8593          	mv	a1,s5
    2b20:	01412a83          	lw	s5,20(sp)
    2b24:	00100613          	li	a2,1
    2b28:	03010113          	addi	sp,sp,48
    2b2c:	00078067          	jr	a5
    2b30:	02040413          	addi	s0,s0,32
    2b34:	f54414e3          	bne	s0,s4,2a7c <fatfs_update_file_length+0x70>
    2b38:	f1dff06f          	j	2a54 <fatfs_update_file_length+0x48>
    2b3c:	02c12083          	lw	ra,44(sp)
    2b40:	02812403          	lw	s0,40(sp)
    2b44:	02412483          	lw	s1,36(sp)
    2b48:	02012903          	lw	s2,32(sp)
    2b4c:	01c12983          	lw	s3,28(sp)
    2b50:	01812a03          	lw	s4,24(sp)
    2b54:	01412a83          	lw	s5,20(sp)
    2b58:	01012b03          	lw	s6,16(sp)
    2b5c:	00c12b83          	lw	s7,12(sp)
    2b60:	00000513          	li	a0,0
    2b64:	03010113          	addi	sp,sp,48
    2b68:	00008067          	ret
    2b6c:	00000513          	li	a0,0
    2b70:	00008067          	ret

00002b74 <_read_sectors>:
    2b74:	fd010113          	addi	sp,sp,-48
    2b78:	01512a23          	sw	s5,20(sp)
    2b7c:	00008ab7          	lui	s5,0x8
    2b80:	01312e23          	sw	s3,28(sp)
    2b84:	160ac983          	lbu	s3,352(s5) # 8160 <_fs>
    2b88:	01612823          	sw	s6,16(sp)
    2b8c:	00058b13          	mv	s6,a1
    2b90:	02912223          	sw	s1,36(sp)
    2b94:	00098593          	mv	a1,s3
    2b98:	00050493          	mv	s1,a0
    2b9c:	000b0513          	mv	a0,s6
    2ba0:	02112623          	sw	ra,44(sp)
    2ba4:	02812423          	sw	s0,40(sp)
    2ba8:	01412c23          	sw	s4,24(sp)
    2bac:	00068413          	mv	s0,a3
    2bb0:	01712623          	sw	s7,12(sp)
    2bb4:	01812423          	sw	s8,8(sp)
    2bb8:	03212023          	sw	s2,32(sp)
    2bbc:	00060c13          	mv	s8,a2
    2bc0:	ffffe097          	auipc	ra,0xffffe
    2bc4:	ba0080e7          	jalr	-1120(ra) # 760 <__udivsi3>
    2bc8:	00050a13          	mv	s4,a0
    2bcc:	00098593          	mv	a1,s3
    2bd0:	000b0513          	mv	a0,s6
    2bd4:	ffffe097          	auipc	ra,0xffffe
    2bd8:	bd4080e7          	jalr	-1068(ra) # 7a8 <__umodsi3>
    2bdc:	00a407b3          	add	a5,s0,a0
    2be0:	00050b93          	mv	s7,a0
    2be4:	00f9fe63          	bgeu	s3,a5,2c00 <_read_sectors+0x8c>
    2be8:	000a0593          	mv	a1,s4
    2bec:	00098513          	mv	a0,s3
    2bf0:	ffffe097          	auipc	ra,0xffffe
    2bf4:	31c080e7          	jalr	796(ra) # f0c <__mulsi3>
    2bf8:	416987b3          	sub	a5,s3,s6
    2bfc:	00f50433          	add	s0,a0,a5
    2c00:	2284a903          	lw	s2,552(s1)
    2c04:	07491863          	bne	s2,s4,2c74 <_read_sectors+0x100>
    2c08:	22c4a583          	lw	a1,556(s1)
    2c0c:	fff00793          	li	a5,-1
    2c10:	02f58663          	beq	a1,a5,2c3c <_read_sectors+0xc8>
    2c14:	160a8513          	addi	a0,s5,352
    2c18:	ffffe097          	auipc	ra,0xffffe
    2c1c:	658080e7          	jalr	1624(ra) # 1270 <fatfs_lba_of_cluster>
    2c20:	017505b3          	add	a1,a0,s7
    2c24:	00040693          	mv	a3,s0
    2c28:	000c0613          	mv	a2,s8
    2c2c:	160a8513          	addi	a0,s5,352
    2c30:	ffffe097          	auipc	ra,0xffffe
    2c34:	68c080e7          	jalr	1676(ra) # 12bc <fatfs_sector_read>
    2c38:	00051463          	bnez	a0,2c40 <_read_sectors+0xcc>
    2c3c:	00000413          	li	s0,0
    2c40:	02c12083          	lw	ra,44(sp)
    2c44:	00040513          	mv	a0,s0
    2c48:	02812403          	lw	s0,40(sp)
    2c4c:	02412483          	lw	s1,36(sp)
    2c50:	02012903          	lw	s2,32(sp)
    2c54:	01c12983          	lw	s3,28(sp)
    2c58:	01812a03          	lw	s4,24(sp)
    2c5c:	01412a83          	lw	s5,20(sp)
    2c60:	01012b03          	lw	s6,16(sp)
    2c64:	00c12b83          	lw	s7,12(sp)
    2c68:	00812c03          	lw	s8,8(sp)
    2c6c:	03010113          	addi	sp,sp,48
    2c70:	00008067          	ret
    2c74:	033b6463          	bltu	s6,s3,2c9c <_read_sectors+0x128>
    2c78:	00190793          	addi	a5,s2,1
    2c7c:	03479063          	bne	a5,s4,2c9c <_read_sectors+0x128>
    2c80:	22c4a583          	lw	a1,556(s1)
    2c84:	03496263          	bltu	s2,s4,2ca8 <_read_sectors+0x134>
    2c88:	fff00793          	li	a5,-1
    2c8c:	faf588e3          	beq	a1,a5,2c3c <_read_sectors+0xc8>
    2c90:	22b4a623          	sw	a1,556(s1)
    2c94:	2344a423          	sw	s4,552(s1)
    2c98:	f7dff06f          	j	2c14 <_read_sectors+0xa0>
    2c9c:	0044a583          	lw	a1,4(s1)
    2ca0:	00000913          	li	s2,0
    2ca4:	fe1ff06f          	j	2c84 <_read_sectors+0x110>
    2ca8:	160a8513          	addi	a0,s5,352
    2cac:	fffff097          	auipc	ra,0xfffff
    2cb0:	5d0080e7          	jalr	1488(ra) # 227c <fatfs_find_next_cluster>
    2cb4:	00050593          	mv	a1,a0
    2cb8:	00190913          	addi	s2,s2,1
    2cbc:	fc9ff06f          	j	2c84 <_read_sectors+0x110>

00002cc0 <fatfs_set_fs_info_next_free_cluster>:
    2cc0:	03052783          	lw	a5,48(a0)
    2cc4:	0a078463          	beqz	a5,2d6c <fatfs_set_fs_info_next_free_cluster+0xac>
    2cc8:	fe010113          	addi	sp,sp,-32
    2ccc:	01c52783          	lw	a5,28(a0)
    2cd0:	00912a23          	sw	s1,20(sp)
    2cd4:	00058493          	mv	s1,a1
    2cd8:	01855583          	lhu	a1,24(a0)
    2cdc:	00812c23          	sw	s0,24(sp)
    2ce0:	00112e23          	sw	ra,28(sp)
    2ce4:	00f585b3          	add	a1,a1,a5
    2ce8:	00050413          	mv	s0,a0
    2cec:	ffffe097          	auipc	ra,0xffffe
    2cf0:	3d8080e7          	jalr	984(ra) # 10c4 <fatfs_fat_read_sector>
    2cf4:	00050593          	mv	a1,a0
    2cf8:	06050063          	beqz	a0,2d58 <fatfs_set_fs_info_next_free_cluster+0x98>
    2cfc:	20852783          	lw	a5,520(a0)
    2d00:	0084d713          	srli	a4,s1,0x8
    2d04:	00100613          	li	a2,1
    2d08:	1e978623          	sb	s1,492(a5)
    2d0c:	20852783          	lw	a5,520(a0)
    2d10:	1ee786a3          	sb	a4,493(a5)
    2d14:	20852783          	lw	a5,520(a0)
    2d18:	0104d713          	srli	a4,s1,0x10
    2d1c:	1ee78723          	sb	a4,494(a5)
    2d20:	20852783          	lw	a5,520(a0)
    2d24:	0184d713          	srli	a4,s1,0x18
    2d28:	1ee787a3          	sb	a4,495(a5)
    2d2c:	03842783          	lw	a5,56(s0)
    2d30:	20c52223          	sw	a2,516(a0)
    2d34:	02942223          	sw	s1,36(s0)
    2d38:	00078a63          	beqz	a5,2d4c <fatfs_set_fs_info_next_free_cluster+0x8c>
    2d3c:	20052503          	lw	a0,512(a0)
    2d40:	00b12623          	sw	a1,12(sp)
    2d44:	000780e7          	jalr	a5
    2d48:	00c12583          	lw	a1,12(sp)
    2d4c:	fff00793          	li	a5,-1
    2d50:	20f5a023          	sw	a5,512(a1)
    2d54:	2005a223          	sw	zero,516(a1)
    2d58:	01c12083          	lw	ra,28(sp)
    2d5c:	01812403          	lw	s0,24(sp)
    2d60:	01412483          	lw	s1,20(sp)
    2d64:	02010113          	addi	sp,sp,32
    2d68:	00008067          	ret
    2d6c:	00008067          	ret

00002d70 <fatfs_find_blank_cluster>:
    2d70:	fd010113          	addi	sp,sp,-48
    2d74:	01312e23          	sw	s3,28(sp)
    2d78:	100009b7          	lui	s3,0x10000
    2d7c:	02912223          	sw	s1,36(sp)
    2d80:	03212023          	sw	s2,32(sp)
    2d84:	02112623          	sw	ra,44(sp)
    2d88:	02812423          	sw	s0,40(sp)
    2d8c:	00050913          	mv	s2,a0
    2d90:	00058493          	mv	s1,a1
    2d94:	fff98993          	addi	s3,s3,-1 # fffffff <__stacktop+0xffeffff>
    2d98:	03092783          	lw	a5,48(s2)
    2d9c:	0074d413          	srli	s0,s1,0x7
    2da0:	00079463          	bnez	a5,2da8 <fatfs_find_blank_cluster+0x38>
    2da4:	0084d413          	srli	s0,s1,0x8
    2da8:	02092783          	lw	a5,32(s2)
    2dac:	0cf47863          	bgeu	s0,a5,2e7c <fatfs_find_blank_cluster+0x10c>
    2db0:	01492583          	lw	a1,20(s2)
    2db4:	00090513          	mv	a0,s2
    2db8:	00c12623          	sw	a2,12(sp)
    2dbc:	00b405b3          	add	a1,s0,a1
    2dc0:	ffffe097          	auipc	ra,0xffffe
    2dc4:	304080e7          	jalr	772(ra) # 10c4 <fatfs_fat_read_sector>
    2dc8:	0a050a63          	beqz	a0,2e7c <fatfs_find_blank_cluster+0x10c>
    2dcc:	03092783          	lw	a5,48(s2)
    2dd0:	20852703          	lw	a4,520(a0)
    2dd4:	00c12603          	lw	a2,12(sp)
    2dd8:	04079a63          	bnez	a5,2e2c <fatfs_find_blank_cluster+0xbc>
    2ddc:	00841413          	slli	s0,s0,0x8
    2de0:	40848433          	sub	s0,s1,s0
    2de4:	00141413          	slli	s0,s0,0x1
    2de8:	01041413          	slli	s0,s0,0x10
    2dec:	01045413          	srli	s0,s0,0x10
    2df0:	00870733          	add	a4,a4,s0
    2df4:	00174783          	lbu	a5,1(a4)
    2df8:	00074703          	lbu	a4,0(a4)
    2dfc:	00879793          	slli	a5,a5,0x8
    2e00:	00e787b3          	add	a5,a5,a4
    2e04:	06079863          	bnez	a5,2e74 <fatfs_find_blank_cluster+0x104>
    2e08:	00962023          	sw	s1,0(a2)
    2e0c:	00100513          	li	a0,1
    2e10:	02c12083          	lw	ra,44(sp)
    2e14:	02812403          	lw	s0,40(sp)
    2e18:	02412483          	lw	s1,36(sp)
    2e1c:	02012903          	lw	s2,32(sp)
    2e20:	01c12983          	lw	s3,28(sp)
    2e24:	03010113          	addi	sp,sp,48
    2e28:	00008067          	ret
    2e2c:	00741413          	slli	s0,s0,0x7
    2e30:	40848433          	sub	s0,s1,s0
    2e34:	00241413          	slli	s0,s0,0x2
    2e38:	01041413          	slli	s0,s0,0x10
    2e3c:	01045413          	srli	s0,s0,0x10
    2e40:	00870733          	add	a4,a4,s0
    2e44:	00374783          	lbu	a5,3(a4)
    2e48:	00274683          	lbu	a3,2(a4)
    2e4c:	01879793          	slli	a5,a5,0x18
    2e50:	01069693          	slli	a3,a3,0x10
    2e54:	00d787b3          	add	a5,a5,a3
    2e58:	00074683          	lbu	a3,0(a4)
    2e5c:	00174703          	lbu	a4,1(a4)
    2e60:	00d787b3          	add	a5,a5,a3
    2e64:	00871713          	slli	a4,a4,0x8
    2e68:	00e787b3          	add	a5,a5,a4
    2e6c:	0137f7b3          	and	a5,a5,s3
    2e70:	f95ff06f          	j	2e04 <fatfs_find_blank_cluster+0x94>
    2e74:	00148493          	addi	s1,s1,1
    2e78:	f21ff06f          	j	2d98 <fatfs_find_blank_cluster+0x28>
    2e7c:	00000513          	li	a0,0
    2e80:	f91ff06f          	j	2e10 <fatfs_find_blank_cluster+0xa0>

00002e84 <fatfs_fat_set_cluster>:
    2e84:	03052783          	lw	a5,48(a0)
    2e88:	fe010113          	addi	sp,sp,-32
    2e8c:	00812c23          	sw	s0,24(sp)
    2e90:	00912a23          	sw	s1,20(sp)
    2e94:	01212823          	sw	s2,16(sp)
    2e98:	00112e23          	sw	ra,28(sp)
    2e9c:	00050913          	mv	s2,a0
    2ea0:	00058413          	mv	s0,a1
    2ea4:	0085d493          	srli	s1,a1,0x8
    2ea8:	00078463          	beqz	a5,2eb0 <fatfs_fat_set_cluster+0x2c>
    2eac:	0075d493          	srli	s1,a1,0x7
    2eb0:	01492583          	lw	a1,20(s2)
    2eb4:	00090513          	mv	a0,s2
    2eb8:	00c12623          	sw	a2,12(sp)
    2ebc:	00b485b3          	add	a1,s1,a1
    2ec0:	ffffe097          	auipc	ra,0xffffe
    2ec4:	204080e7          	jalr	516(ra) # 10c4 <fatfs_fat_read_sector>
    2ec8:	00050793          	mv	a5,a0
    2ecc:	00000513          	li	a0,0
    2ed0:	04078663          	beqz	a5,2f1c <fatfs_fat_set_cluster+0x98>
    2ed4:	03092683          	lw	a3,48(s2)
    2ed8:	2087a703          	lw	a4,520(a5)
    2edc:	00c12603          	lw	a2,12(sp)
    2ee0:	04069a63          	bnez	a3,2f34 <fatfs_fat_set_cluster+0xb0>
    2ee4:	00849493          	slli	s1,s1,0x8
    2ee8:	40940433          	sub	s0,s0,s1
    2eec:	00141413          	slli	s0,s0,0x1
    2ef0:	01041413          	slli	s0,s0,0x10
    2ef4:	01045413          	srli	s0,s0,0x10
    2ef8:	00870733          	add	a4,a4,s0
    2efc:	00c70023          	sb	a2,0(a4)
    2f00:	2087a703          	lw	a4,520(a5)
    2f04:	00865613          	srli	a2,a2,0x8
    2f08:	00870733          	add	a4,a4,s0
    2f0c:	00c700a3          	sb	a2,1(a4)
    2f10:	00100713          	li	a4,1
    2f14:	20e7a223          	sw	a4,516(a5)
    2f18:	00100513          	li	a0,1
    2f1c:	01c12083          	lw	ra,28(sp)
    2f20:	01812403          	lw	s0,24(sp)
    2f24:	01412483          	lw	s1,20(sp)
    2f28:	01012903          	lw	s2,16(sp)
    2f2c:	02010113          	addi	sp,sp,32
    2f30:	00008067          	ret
    2f34:	00749493          	slli	s1,s1,0x7
    2f38:	40940433          	sub	s0,s0,s1
    2f3c:	00241413          	slli	s0,s0,0x2
    2f40:	01041413          	slli	s0,s0,0x10
    2f44:	01045413          	srli	s0,s0,0x10
    2f48:	00870733          	add	a4,a4,s0
    2f4c:	00c70023          	sb	a2,0(a4)
    2f50:	2087a703          	lw	a4,520(a5)
    2f54:	00865693          	srli	a3,a2,0x8
    2f58:	00870733          	add	a4,a4,s0
    2f5c:	00d700a3          	sb	a3,1(a4)
    2f60:	2087a703          	lw	a4,520(a5)
    2f64:	01065693          	srli	a3,a2,0x10
    2f68:	01865613          	srli	a2,a2,0x18
    2f6c:	00870733          	add	a4,a4,s0
    2f70:	00d70123          	sb	a3,2(a4)
    2f74:	2087a703          	lw	a4,520(a5)
    2f78:	00870733          	add	a4,a4,s0
    2f7c:	00c701a3          	sb	a2,3(a4)
    2f80:	f91ff06f          	j	2f10 <fatfs_fat_set_cluster+0x8c>

00002f84 <fatfs_free_cluster_chain>:
    2f84:	fe010113          	addi	sp,sp,-32
    2f88:	00812c23          	sw	s0,24(sp)
    2f8c:	00912a23          	sw	s1,20(sp)
    2f90:	00112e23          	sw	ra,28(sp)
    2f94:	01212823          	sw	s2,16(sp)
    2f98:	00050493          	mv	s1,a0
    2f9c:	ffd00413          	li	s0,-3
    2fa0:	fff58793          	addi	a5,a1,-1
    2fa4:	02f47063          	bgeu	s0,a5,2fc4 <fatfs_free_cluster_chain+0x40>
    2fa8:	01c12083          	lw	ra,28(sp)
    2fac:	01812403          	lw	s0,24(sp)
    2fb0:	01412483          	lw	s1,20(sp)
    2fb4:	01012903          	lw	s2,16(sp)
    2fb8:	00100513          	li	a0,1
    2fbc:	02010113          	addi	sp,sp,32
    2fc0:	00008067          	ret
    2fc4:	00048513          	mv	a0,s1
    2fc8:	00b12623          	sw	a1,12(sp)
    2fcc:	fffff097          	auipc	ra,0xfffff
    2fd0:	2b0080e7          	jalr	688(ra) # 227c <fatfs_find_next_cluster>
    2fd4:	00c12583          	lw	a1,12(sp)
    2fd8:	00050913          	mv	s2,a0
    2fdc:	00000613          	li	a2,0
    2fe0:	00048513          	mv	a0,s1
    2fe4:	00000097          	auipc	ra,0x0
    2fe8:	ea0080e7          	jalr	-352(ra) # 2e84 <fatfs_fat_set_cluster>
    2fec:	00090593          	mv	a1,s2
    2ff0:	fb1ff06f          	j	2fa0 <fatfs_free_cluster_chain+0x1c>

00002ff4 <fatfs_fat_add_cluster_to_chain>:
    2ff4:	fd010113          	addi	sp,sp,-48
    2ff8:	02912223          	sw	s1,36(sp)
    2ffc:	02112623          	sw	ra,44(sp)
    3000:	02812423          	sw	s0,40(sp)
    3004:	03212023          	sw	s2,32(sp)
    3008:	01312e23          	sw	s3,28(sp)
    300c:	fff00493          	li	s1,-1
    3010:	02959263          	bne	a1,s1,3034 <fatfs_fat_add_cluster_to_chain+0x40>
    3014:	00000513          	li	a0,0
    3018:	02c12083          	lw	ra,44(sp)
    301c:	02812403          	lw	s0,40(sp)
    3020:	02412483          	lw	s1,36(sp)
    3024:	02012903          	lw	s2,32(sp)
    3028:	01c12983          	lw	s3,28(sp)
    302c:	03010113          	addi	sp,sp,48
    3030:	00008067          	ret
    3034:	00050913          	mv	s2,a0
    3038:	00058413          	mv	s0,a1
    303c:	00060993          	mv	s3,a2
    3040:	00040593          	mv	a1,s0
    3044:	00090513          	mv	a0,s2
    3048:	00812623          	sw	s0,12(sp)
    304c:	fffff097          	auipc	ra,0xfffff
    3050:	230080e7          	jalr	560(ra) # 227c <fatfs_find_next_cluster>
    3054:	00050413          	mv	s0,a0
    3058:	fa050ee3          	beqz	a0,3014 <fatfs_fat_add_cluster_to_chain+0x20>
    305c:	00c12583          	lw	a1,12(sp)
    3060:	fe9510e3          	bne	a0,s1,3040 <fatfs_fat_add_cluster_to_chain+0x4c>
    3064:	00098613          	mv	a2,s3
    3068:	00090513          	mv	a0,s2
    306c:	00000097          	auipc	ra,0x0
    3070:	e18080e7          	jalr	-488(ra) # 2e84 <fatfs_fat_set_cluster>
    3074:	00040613          	mv	a2,s0
    3078:	00098593          	mv	a1,s3
    307c:	00090513          	mv	a0,s2
    3080:	00000097          	auipc	ra,0x0
    3084:	e04080e7          	jalr	-508(ra) # 2e84 <fatfs_fat_set_cluster>
    3088:	00100513          	li	a0,1
    308c:	f8dff06f          	j	3018 <fatfs_fat_add_cluster_to_chain+0x24>

00003090 <fatfs_add_free_space>:
    3090:	02452783          	lw	a5,36(a0)
    3094:	fd010113          	addi	sp,sp,-48
    3098:	02812423          	sw	s0,40(sp)
    309c:	01312e23          	sw	s3,28(sp)
    30a0:	01412c23          	sw	s4,24(sp)
    30a4:	0005a983          	lw	s3,0(a1)
    30a8:	01512a23          	sw	s5,20(sp)
    30ac:	00058a13          	mv	s4,a1
    30b0:	02112623          	sw	ra,44(sp)
    30b4:	02912223          	sw	s1,36(sp)
    30b8:	03212023          	sw	s2,32(sp)
    30bc:	fff00593          	li	a1,-1
    30c0:	00050413          	mv	s0,a0
    30c4:	00060a93          	mv	s5,a2
    30c8:	00b78663          	beq	a5,a1,30d4 <fatfs_add_free_space+0x44>
    30cc:	00000097          	auipc	ra,0x0
    30d0:	bf4080e7          	jalr	-1036(ra) # 2cc0 <fatfs_set_fs_info_next_free_cluster>
    30d4:	00000493          	li	s1,0
    30d8:	03549663          	bne	s1,s5,3104 <fatfs_add_free_space+0x74>
    30dc:	00100513          	li	a0,1
    30e0:	02c12083          	lw	ra,44(sp)
    30e4:	02812403          	lw	s0,40(sp)
    30e8:	02412483          	lw	s1,36(sp)
    30ec:	02012903          	lw	s2,32(sp)
    30f0:	01c12983          	lw	s3,28(sp)
    30f4:	01812a03          	lw	s4,24(sp)
    30f8:	01412a83          	lw	s5,20(sp)
    30fc:	03010113          	addi	sp,sp,48
    3100:	00008067          	ret
    3104:	00842583          	lw	a1,8(s0)
    3108:	00c10613          	addi	a2,sp,12
    310c:	00040513          	mv	a0,s0
    3110:	00000097          	auipc	ra,0x0
    3114:	c60080e7          	jalr	-928(ra) # 2d70 <fatfs_find_blank_cluster>
    3118:	fc0504e3          	beqz	a0,30e0 <fatfs_add_free_space+0x50>
    311c:	00c12903          	lw	s2,12(sp)
    3120:	00098593          	mv	a1,s3
    3124:	00040513          	mv	a0,s0
    3128:	00090613          	mv	a2,s2
    312c:	00000097          	auipc	ra,0x0
    3130:	d58080e7          	jalr	-680(ra) # 2e84 <fatfs_fat_set_cluster>
    3134:	fff00613          	li	a2,-1
    3138:	00090593          	mv	a1,s2
    313c:	00040513          	mv	a0,s0
    3140:	00000097          	auipc	ra,0x0
    3144:	d44080e7          	jalr	-700(ra) # 2e84 <fatfs_fat_set_cluster>
    3148:	00049463          	bnez	s1,3150 <fatfs_add_free_space+0xc0>
    314c:	012a2023          	sw	s2,0(s4)
    3150:	00148493          	addi	s1,s1,1
    3154:	00090993          	mv	s3,s2
    3158:	f81ff06f          	j	30d8 <fatfs_add_free_space+0x48>

0000315c <_write_sectors>:
    315c:	fb010113          	addi	sp,sp,-80
    3160:	03512a23          	sw	s5,52(sp)
    3164:	00008ab7          	lui	s5,0x8
    3168:	04112623          	sw	ra,76(sp)
    316c:	04812423          	sw	s0,72(sp)
    3170:	04912223          	sw	s1,68(sp)
    3174:	03412c23          	sw	s4,56(sp)
    3178:	03612823          	sw	s6,48(sp)
    317c:	03712623          	sw	s7,44(sp)
    3180:	03812423          	sw	s8,40(sp)
    3184:	03912223          	sw	s9,36(sp)
    3188:	03a12023          	sw	s10,32(sp)
    318c:	05212023          	sw	s2,64(sp)
    3190:	03312e23          	sw	s3,60(sp)
    3194:	160a8b93          	addi	s7,s5,352 # 8160 <_fs>
    3198:	000bc983          	lbu	s3,0(s7)
    319c:	00058b13          	mv	s6,a1
    31a0:	fff00793          	li	a5,-1
    31a4:	00098593          	mv	a1,s3
    31a8:	00050493          	mv	s1,a0
    31ac:	000b0513          	mv	a0,s6
    31b0:	00068c13          	mv	s8,a3
    31b4:	00f12e23          	sw	a5,28(sp)
    31b8:	00060d13          	mv	s10,a2
    31bc:	ffffd097          	auipc	ra,0xffffd
    31c0:	5a4080e7          	jalr	1444(ra) # 760 <__udivsi3>
    31c4:	00050a13          	mv	s4,a0
    31c8:	00098593          	mv	a1,s3
    31cc:	000b0513          	mv	a0,s6
    31d0:	ffffd097          	auipc	ra,0xffffd
    31d4:	5d8080e7          	jalr	1496(ra) # 7a8 <__umodsi3>
    31d8:	00ac07b3          	add	a5,s8,a0
    31dc:	00050c93          	mv	s9,a0
    31e0:	000c0413          	mv	s0,s8
    31e4:	00f9fe63          	bgeu	s3,a5,3200 <_write_sectors+0xa4>
    31e8:	000a0593          	mv	a1,s4
    31ec:	00098513          	mv	a0,s3
    31f0:	ffffe097          	auipc	ra,0xffffe
    31f4:	d1c080e7          	jalr	-740(ra) # f0c <__mulsi3>
    31f8:	416987b3          	sub	a5,s3,s6
    31fc:	00f50433          	add	s0,a0,a5
    3200:	2284a903          	lw	s2,552(s1)
    3204:	03491a63          	bne	s2,s4,3238 <_write_sectors+0xdc>
    3208:	22c4a583          	lw	a1,556(s1)
    320c:	160a8513          	addi	a0,s5,352
    3210:	ffffe097          	auipc	ra,0xffffe
    3214:	060080e7          	jalr	96(ra) # 1270 <fatfs_lba_of_cluster>
    3218:	019505b3          	add	a1,a0,s9
    321c:	00040693          	mv	a3,s0
    3220:	000d0613          	mv	a2,s10
    3224:	160a8513          	addi	a0,s5,352
    3228:	ffffe097          	auipc	ra,0xffffe
    322c:	0ac080e7          	jalr	172(ra) # 12d4 <fatfs_sector_write>
    3230:	04050a63          	beqz	a0,3284 <_write_sectors+0x128>
    3234:	0540006f          	j	3288 <_write_sectors+0x12c>
    3238:	093b6663          	bltu	s6,s3,32c4 <_write_sectors+0x168>
    323c:	00190793          	addi	a5,s2,1
    3240:	09479263          	bne	a5,s4,32c4 <_write_sectors+0x168>
    3244:	22c4a583          	lw	a1,556(s1)
    3248:	fff00b13          	li	s6,-1
    324c:	09496263          	bltu	s2,s4,32d0 <_write_sectors+0x174>
    3250:	fff00793          	li	a5,-1
    3254:	0af59463          	bne	a1,a5,32fc <_write_sectors+0x1a0>
    3258:	000bc583          	lbu	a1,0(s7)
    325c:	fff58513          	addi	a0,a1,-1
    3260:	01850533          	add	a0,a0,s8
    3264:	ffffd097          	auipc	ra,0xffffd
    3268:	4fc080e7          	jalr	1276(ra) # 760 <__udivsi3>
    326c:	00050613          	mv	a2,a0
    3270:	01c10593          	addi	a1,sp,28
    3274:	000b8513          	mv	a0,s7
    3278:	00000097          	auipc	ra,0x0
    327c:	e18080e7          	jalr	-488(ra) # 3090 <fatfs_add_free_space>
    3280:	06051c63          	bnez	a0,32f8 <_write_sectors+0x19c>
    3284:	00000413          	li	s0,0
    3288:	04c12083          	lw	ra,76(sp)
    328c:	00040513          	mv	a0,s0
    3290:	04812403          	lw	s0,72(sp)
    3294:	04412483          	lw	s1,68(sp)
    3298:	04012903          	lw	s2,64(sp)
    329c:	03c12983          	lw	s3,60(sp)
    32a0:	03812a03          	lw	s4,56(sp)
    32a4:	03412a83          	lw	s5,52(sp)
    32a8:	03012b03          	lw	s6,48(sp)
    32ac:	02c12b83          	lw	s7,44(sp)
    32b0:	02812c03          	lw	s8,40(sp)
    32b4:	02412c83          	lw	s9,36(sp)
    32b8:	02012d03          	lw	s10,32(sp)
    32bc:	05010113          	addi	sp,sp,80
    32c0:	00008067          	ret
    32c4:	0044a583          	lw	a1,4(s1)
    32c8:	00000913          	li	s2,0
    32cc:	f7dff06f          	j	3248 <_write_sectors+0xec>
    32d0:	160a8513          	addi	a0,s5,352
    32d4:	00b12623          	sw	a1,12(sp)
    32d8:	fffff097          	auipc	ra,0xfffff
    32dc:	fa4080e7          	jalr	-92(ra) # 227c <fatfs_find_next_cluster>
    32e0:	00c12583          	lw	a1,12(sp)
    32e4:	00b12e23          	sw	a1,28(sp)
    32e8:	f76508e3          	beq	a0,s6,3258 <_write_sectors+0xfc>
    32ec:	00190913          	addi	s2,s2,1
    32f0:	00050593          	mv	a1,a0
    32f4:	f59ff06f          	j	324c <_write_sectors+0xf0>
    32f8:	01c12583          	lw	a1,28(sp)
    32fc:	22b4a623          	sw	a1,556(s1)
    3300:	2344a423          	sw	s4,552(s1)
    3304:	f09ff06f          	j	320c <_write_sectors+0xb0>

00003308 <fl_fflush>:
    3308:	000047b7          	lui	a5,0x4
    330c:	15c7a783          	lw	a5,348(a5) # 415c <_filelib_init>
    3310:	ff010113          	addi	sp,sp,-16
    3314:	00812423          	sw	s0,8(sp)
    3318:	00112623          	sw	ra,12(sp)
    331c:	00912223          	sw	s1,4(sp)
    3320:	00050413          	mv	s0,a0
    3324:	00079663          	bnez	a5,3330 <fl_fflush+0x28>
    3328:	ffffe097          	auipc	ra,0xffffe
    332c:	078080e7          	jalr	120(ra) # 13a0 <fl_init>
    3330:	04040663          	beqz	s0,337c <fl_fflush+0x74>
    3334:	000084b7          	lui	s1,0x8
    3338:	16048493          	addi	s1,s1,352 # 8160 <_fs>
    333c:	03c4a783          	lw	a5,60(s1)
    3340:	00078463          	beqz	a5,3348 <fl_fflush+0x40>
    3344:	000780e7          	jalr	a5
    3348:	43442783          	lw	a5,1076(s0)
    334c:	02078263          	beqz	a5,3370 <fl_fflush+0x68>
    3350:	43042583          	lw	a1,1072(s0)
    3354:	00100693          	li	a3,1
    3358:	23040613          	addi	a2,s0,560
    335c:	00040513          	mv	a0,s0
    3360:	00000097          	auipc	ra,0x0
    3364:	dfc080e7          	jalr	-516(ra) # 315c <_write_sectors>
    3368:	00050463          	beqz	a0,3370 <fl_fflush+0x68>
    336c:	42042a23          	sw	zero,1076(s0)
    3370:	0404a783          	lw	a5,64(s1)
    3374:	00078463          	beqz	a5,337c <fl_fflush+0x74>
    3378:	000780e7          	jalr	a5
    337c:	00c12083          	lw	ra,12(sp)
    3380:	00812403          	lw	s0,8(sp)
    3384:	00412483          	lw	s1,4(sp)
    3388:	00000513          	li	a0,0
    338c:	01010113          	addi	sp,sp,16
    3390:	00008067          	ret

00003394 <fl_fclose>:
    3394:	000047b7          	lui	a5,0x4
    3398:	15c7a783          	lw	a5,348(a5) # 415c <_filelib_init>
    339c:	ff010113          	addi	sp,sp,-16
    33a0:	00812423          	sw	s0,8(sp)
    33a4:	00112623          	sw	ra,12(sp)
    33a8:	00912223          	sw	s1,4(sp)
    33ac:	01212023          	sw	s2,0(sp)
    33b0:	00050413          	mv	s0,a0
    33b4:	00079663          	bnez	a5,33c0 <fl_fclose+0x2c>
    33b8:	ffffe097          	auipc	ra,0xffffe
    33bc:	fe8080e7          	jalr	-24(ra) # 13a0 <fl_init>
    33c0:	08040c63          	beqz	s0,3458 <fl_fclose+0xc4>
    33c4:	000084b7          	lui	s1,0x8
    33c8:	16048913          	addi	s2,s1,352 # 8160 <_fs>
    33cc:	03c92783          	lw	a5,60(s2)
    33d0:	00078463          	beqz	a5,33d8 <fl_fclose+0x44>
    33d4:	000780e7          	jalr	a5
    33d8:	00040513          	mv	a0,s0
    33dc:	00000097          	auipc	ra,0x0
    33e0:	f2c080e7          	jalr	-212(ra) # 3308 <fl_fflush>
    33e4:	01042783          	lw	a5,16(s0)
    33e8:	00078e63          	beqz	a5,3404 <fl_fclose+0x70>
    33ec:	00c42683          	lw	a3,12(s0)
    33f0:	00042583          	lw	a1,0(s0)
    33f4:	21c40613          	addi	a2,s0,540
    33f8:	16048513          	addi	a0,s1,352
    33fc:	fffff097          	auipc	ra,0xfffff
    3400:	610080e7          	jalr	1552(ra) # 2a0c <fatfs_update_file_length>
    3404:	fff00793          	li	a5,-1
    3408:	42f42823          	sw	a5,1072(s0)
    340c:	00040513          	mv	a0,s0
    3410:	00042423          	sw	zero,8(s0)
    3414:	00042623          	sw	zero,12(s0)
    3418:	00042223          	sw	zero,4(s0)
    341c:	42042a23          	sw	zero,1076(s0)
    3420:	00042823          	sw	zero,16(s0)
    3424:	ffffe097          	auipc	ra,0xffffe
    3428:	e04080e7          	jalr	-508(ra) # 1228 <_free_file>
    342c:	16048513          	addi	a0,s1,352
    3430:	fffff097          	auipc	ra,0xfffff
    3434:	df4080e7          	jalr	-524(ra) # 2224 <fatfs_fat_purge>
    3438:	04092783          	lw	a5,64(s2)
    343c:	00078e63          	beqz	a5,3458 <fl_fclose+0xc4>
    3440:	00812403          	lw	s0,8(sp)
    3444:	00c12083          	lw	ra,12(sp)
    3448:	00412483          	lw	s1,4(sp)
    344c:	00012903          	lw	s2,0(sp)
    3450:	01010113          	addi	sp,sp,16
    3454:	00078067          	jr	a5
    3458:	00c12083          	lw	ra,12(sp)
    345c:	00812403          	lw	s0,8(sp)
    3460:	00412483          	lw	s1,4(sp)
    3464:	00012903          	lw	s2,0(sp)
    3468:	01010113          	addi	sp,sp,16
    346c:	00008067          	ret

00003470 <fl_fread>:
    3470:	000047b7          	lui	a5,0x4
    3474:	15c7a783          	lw	a5,348(a5) # 415c <_filelib_init>
    3478:	fc010113          	addi	sp,sp,-64
    347c:	02812c23          	sw	s0,56(sp)
    3480:	03512223          	sw	s5,36(sp)
    3484:	02112e23          	sw	ra,60(sp)
    3488:	02912a23          	sw	s1,52(sp)
    348c:	03212823          	sw	s2,48(sp)
    3490:	03312623          	sw	s3,44(sp)
    3494:	03412423          	sw	s4,40(sp)
    3498:	03612023          	sw	s6,32(sp)
    349c:	01712e23          	sw	s7,28(sp)
    34a0:	01812c23          	sw	s8,24(sp)
    34a4:	01912a23          	sw	s9,20(sp)
    34a8:	00050a93          	mv	s5,a0
    34ac:	00068413          	mv	s0,a3
    34b0:	00058513          	mv	a0,a1
    34b4:	00079e63          	bnez	a5,34d0 <fl_fread+0x60>
    34b8:	00c12623          	sw	a2,12(sp)
    34bc:	00b12423          	sw	a1,8(sp)
    34c0:	ffffe097          	auipc	ra,0xffffe
    34c4:	ee0080e7          	jalr	-288(ra) # 13a0 <fl_init>
    34c8:	00c12603          	lw	a2,12(sp)
    34cc:	00812503          	lw	a0,8(sp)
    34d0:	14040e63          	beqz	s0,362c <fl_fread+0x1bc>
    34d4:	140a8c63          	beqz	s5,362c <fl_fread+0x1bc>
    34d8:	43844783          	lbu	a5,1080(s0)
    34dc:	fff00493          	li	s1,-1
    34e0:	0017f793          	andi	a5,a5,1
    34e4:	04078863          	beqz	a5,3534 <fl_fread+0xc4>
    34e8:	00060593          	mv	a1,a2
    34ec:	ffffe097          	auipc	ra,0xffffe
    34f0:	a20080e7          	jalr	-1504(ra) # f0c <__mulsi3>
    34f4:	00050493          	mv	s1,a0
    34f8:	02050e63          	beqz	a0,3534 <fl_fread+0xc4>
    34fc:	00842583          	lw	a1,8(s0)
    3500:	00c42783          	lw	a5,12(s0)
    3504:	12f5f463          	bgeu	a1,a5,362c <fl_fread+0x1bc>
    3508:	00b50733          	add	a4,a0,a1
    350c:	00e7f463          	bgeu	a5,a4,3514 <fl_fread+0xa4>
    3510:	40b784b3          	sub	s1,a5,a1
    3514:	0095da13          	srli	s4,a1,0x9
    3518:	1ff5f913          	andi	s2,a1,511
    351c:	00000993          	li	s3,0
    3520:	23040b13          	addi	s6,s0,560
    3524:	20000b93          	li	s7,512
    3528:	1ff00c13          	li	s8,511
    352c:	0499c063          	blt	s3,s1,356c <fl_fread+0xfc>
    3530:	00098493          	mv	s1,s3
    3534:	03c12083          	lw	ra,60(sp)
    3538:	03812403          	lw	s0,56(sp)
    353c:	03012903          	lw	s2,48(sp)
    3540:	02c12983          	lw	s3,44(sp)
    3544:	02812a03          	lw	s4,40(sp)
    3548:	02412a83          	lw	s5,36(sp)
    354c:	02012b03          	lw	s6,32(sp)
    3550:	01c12b83          	lw	s7,28(sp)
    3554:	01812c03          	lw	s8,24(sp)
    3558:	01412c83          	lw	s9,20(sp)
    355c:	00048513          	mv	a0,s1
    3560:	03412483          	lw	s1,52(sp)
    3564:	04010113          	addi	sp,sp,64
    3568:	00008067          	ret
    356c:	04091663          	bnez	s2,35b8 <fl_fread+0x148>
    3570:	413486b3          	sub	a3,s1,s3
    3574:	04dc5263          	bge	s8,a3,35b8 <fl_fread+0x148>
    3578:	4096d693          	srai	a3,a3,0x9
    357c:	013a8633          	add	a2,s5,s3
    3580:	000a0593          	mv	a1,s4
    3584:	00040513          	mv	a0,s0
    3588:	fffff097          	auipc	ra,0xfffff
    358c:	5ec080e7          	jalr	1516(ra) # 2b74 <_read_sectors>
    3590:	fa0500e3          	beqz	a0,3530 <fl_fread+0xc0>
    3594:	00951c93          	slli	s9,a0,0x9
    3598:	000c8613          	mv	a2,s9
    359c:	00aa0a33          	add	s4,s4,a0
    35a0:	00842783          	lw	a5,8(s0)
    35a4:	00c989b3          	add	s3,s3,a2
    35a8:	00000913          	li	s2,0
    35ac:	019787b3          	add	a5,a5,s9
    35b0:	00f42423          	sw	a5,8(s0)
    35b4:	f79ff06f          	j	352c <fl_fread+0xbc>
    35b8:	43042783          	lw	a5,1072(s0)
    35bc:	03478e63          	beq	a5,s4,35f8 <fl_fread+0x188>
    35c0:	43442783          	lw	a5,1076(s0)
    35c4:	00078863          	beqz	a5,35d4 <fl_fread+0x164>
    35c8:	00040513          	mv	a0,s0
    35cc:	00000097          	auipc	ra,0x0
    35d0:	d3c080e7          	jalr	-708(ra) # 3308 <fl_fflush>
    35d4:	00100693          	li	a3,1
    35d8:	000b0613          	mv	a2,s6
    35dc:	000a0593          	mv	a1,s4
    35e0:	00040513          	mv	a0,s0
    35e4:	fffff097          	auipc	ra,0xfffff
    35e8:	590080e7          	jalr	1424(ra) # 2b74 <_read_sectors>
    35ec:	f40502e3          	beqz	a0,3530 <fl_fread+0xc0>
    35f0:	43442823          	sw	s4,1072(s0)
    35f4:	42042a23          	sw	zero,1076(s0)
    35f8:	412b87b3          	sub	a5,s7,s2
    35fc:	41348633          	sub	a2,s1,s3
    3600:	00c7d463          	bge	a5,a2,3608 <fl_fread+0x198>
    3604:	00078613          	mv	a2,a5
    3608:	012b05b3          	add	a1,s6,s2
    360c:	013a8533          	add	a0,s5,s3
    3610:	00060c93          	mv	s9,a2
    3614:	00c12423          	sw	a2,8(sp)
    3618:	ffffd097          	auipc	ra,0xffffd
    361c:	210080e7          	jalr	528(ra) # 828 <memcpy>
    3620:	00812603          	lw	a2,8(sp)
    3624:	001a0a13          	addi	s4,s4,1
    3628:	f79ff06f          	j	35a0 <fl_fread+0x130>
    362c:	fff00493          	li	s1,-1
    3630:	f05ff06f          	j	3534 <fl_fread+0xc4>

00003634 <fatfs_allocate_free_space>:
    3634:	fd010113          	addi	sp,sp,-48
    3638:	02112623          	sw	ra,44(sp)
    363c:	02812423          	sw	s0,40(sp)
    3640:	02912223          	sw	s1,36(sp)
    3644:	03212023          	sw	s2,32(sp)
    3648:	01312e23          	sw	s3,28(sp)
    364c:	01412c23          	sw	s4,24(sp)
    3650:	01512a23          	sw	s5,20(sp)
    3654:	02069863          	bnez	a3,3684 <fatfs_allocate_free_space+0x50>
    3658:	00000413          	li	s0,0
    365c:	02c12083          	lw	ra,44(sp)
    3660:	00040513          	mv	a0,s0
    3664:	02812403          	lw	s0,40(sp)
    3668:	02412483          	lw	s1,36(sp)
    366c:	02012903          	lw	s2,32(sp)
    3670:	01c12983          	lw	s3,28(sp)
    3674:	01812a03          	lw	s4,24(sp)
    3678:	01412a83          	lw	s5,20(sp)
    367c:	03010113          	addi	sp,sp,48
    3680:	00008067          	ret
    3684:	02452783          	lw	a5,36(a0)
    3688:	00058a13          	mv	s4,a1
    368c:	fff00593          	li	a1,-1
    3690:	00050493          	mv	s1,a0
    3694:	00068913          	mv	s2,a3
    3698:	00060993          	mv	s3,a2
    369c:	00b78663          	beq	a5,a1,36a8 <fatfs_allocate_free_space+0x74>
    36a0:	fffff097          	auipc	ra,0xfffff
    36a4:	620080e7          	jalr	1568(ra) # 2cc0 <fatfs_set_fs_info_next_free_cluster>
    36a8:	0004c783          	lbu	a5,0(s1)
    36ac:	00090513          	mv	a0,s2
    36b0:	00979a93          	slli	s5,a5,0x9
    36b4:	000a8593          	mv	a1,s5
    36b8:	ffffd097          	auipc	ra,0xffffd
    36bc:	0a8080e7          	jalr	168(ra) # 760 <__udivsi3>
    36c0:	00050413          	mv	s0,a0
    36c4:	00050593          	mv	a1,a0
    36c8:	000a8513          	mv	a0,s5
    36cc:	ffffe097          	auipc	ra,0xffffe
    36d0:	840080e7          	jalr	-1984(ra) # f0c <__mulsi3>
    36d4:	41250533          	sub	a0,a0,s2
    36d8:	00a03533          	snez	a0,a0
    36dc:	00a40933          	add	s2,s0,a0
    36e0:	040a0463          	beqz	s4,3728 <fatfs_allocate_free_space+0xf4>
    36e4:	0084a583          	lw	a1,8(s1)
    36e8:	00c10613          	addi	a2,sp,12
    36ec:	00048513          	mv	a0,s1
    36f0:	fffff097          	auipc	ra,0xfffff
    36f4:	680080e7          	jalr	1664(ra) # 2d70 <fatfs_find_blank_cluster>
    36f8:	00050413          	mv	s0,a0
    36fc:	f4050ee3          	beqz	a0,3658 <fatfs_allocate_free_space+0x24>
    3700:	00100793          	li	a5,1
    3704:	02f91663          	bne	s2,a5,3730 <fatfs_allocate_free_space+0xfc>
    3708:	00c12903          	lw	s2,12(sp)
    370c:	fff00613          	li	a2,-1
    3710:	00048513          	mv	a0,s1
    3714:	00090593          	mv	a1,s2
    3718:	fffff097          	auipc	ra,0xfffff
    371c:	76c080e7          	jalr	1900(ra) # 2e84 <fatfs_fat_set_cluster>
    3720:	0129a023          	sw	s2,0(s3)
    3724:	f39ff06f          	j	365c <fatfs_allocate_free_space+0x28>
    3728:	0009a783          	lw	a5,0(s3)
    372c:	00f12623          	sw	a5,12(sp)
    3730:	00090613          	mv	a2,s2
    3734:	00c10593          	addi	a1,sp,12
    3738:	00048513          	mv	a0,s1
    373c:	00000097          	auipc	ra,0x0
    3740:	954080e7          	jalr	-1708(ra) # 3090 <fatfs_add_free_space>
    3744:	00050413          	mv	s0,a0
    3748:	f15ff06f          	j	365c <fatfs_allocate_free_space+0x28>

0000374c <fatfs_add_file_entry>:
    374c:	03852883          	lw	a7,56(a0)
    3750:	30088e63          	beqz	a7,3a6c <fatfs_add_file_entry+0x320>
    3754:	f8010113          	addi	sp,sp,-128
    3758:	06812c23          	sw	s0,120(sp)
    375c:	00050413          	mv	s0,a0
    3760:	00060513          	mv	a0,a2
    3764:	06912a23          	sw	s1,116(sp)
    3768:	07512223          	sw	s5,100(sp)
    376c:	00f12c23          	sw	a5,24(sp)
    3770:	00e12a23          	sw	a4,20(sp)
    3774:	06112e23          	sw	ra,124(sp)
    3778:	07212823          	sw	s2,112(sp)
    377c:	07312623          	sw	s3,108(sp)
    3780:	07412423          	sw	s4,104(sp)
    3784:	07612023          	sw	s6,96(sp)
    3788:	05712e23          	sw	s7,92(sp)
    378c:	05812c23          	sw	s8,88(sp)
    3790:	05912a23          	sw	s9,84(sp)
    3794:	05a12823          	sw	s10,80(sp)
    3798:	05b12623          	sw	s11,76(sp)
    379c:	01012e23          	sw	a6,28(sp)
    37a0:	00068a93          	mv	s5,a3
    37a4:	00c12823          	sw	a2,16(sp)
    37a8:	00b12423          	sw	a1,8(sp)
    37ac:	ffffe097          	auipc	ra,0xffffe
    37b0:	e3c080e7          	jalr	-452(ra) # 15e8 <fatfs_lfn_entries_required>
    37b4:	00150713          	addi	a4,a0,1
    37b8:	00100793          	li	a5,1
    37bc:	00050493          	mv	s1,a0
    37c0:	2ae7f263          	bgeu	a5,a4,3a64 <fatfs_add_file_entry+0x318>
    37c4:	00000a13          	li	s4,0
    37c8:	00000993          	li	s3,0
    37cc:	00000913          	li	s2,0
    37d0:	00000c93          	li	s9,0
    37d4:	00000b13          	li	s6,0
    37d8:	01000c13          	li	s8,16
    37dc:	00812583          	lw	a1,8(sp)
    37e0:	00000693          	li	a3,0
    37e4:	000b0613          	mv	a2,s6
    37e8:	00040513          	mv	a0,s0
    37ec:	000b0b93          	mv	s7,s6
    37f0:	fffff097          	auipc	ra,0xfffff
    37f4:	b94080e7          	jalr	-1132(ra) # 2384 <fatfs_sector_reader>
    37f8:	18050463          	beqz	a0,3980 <fatfs_add_file_entry+0x234>
    37fc:	001b0b13          	addi	s6,s6,1
    3800:	04440793          	addi	a5,s0,68
    3804:	000c8d13          	mv	s10,s9
    3808:	00000d93          	li	s11,0
    380c:	00078513          	mv	a0,a5
    3810:	00f12623          	sw	a5,12(sp)
    3814:	ffffe097          	auipc	ra,0xffffe
    3818:	cfc080e7          	jalr	-772(ra) # 1510 <fatfs_entry_lfn_text>
    381c:	00c12783          	lw	a5,12(sp)
    3820:	00050c93          	mv	s9,a0
    3824:	02050c63          	beqz	a0,385c <fatfs_add_file_entry+0x110>
    3828:	020d0463          	beqz	s10,3850 <fatfs_add_file_entry+0x104>
    382c:	00090c93          	mv	s9,s2
    3830:	000c8913          	mv	s2,s9
    3834:	001d0c93          	addi	s9,s10,1
    3838:	001d8d93          	addi	s11,s11,1
    383c:	0ffdfd93          	zext.b	s11,s11
    3840:	02078793          	addi	a5,a5,32
    3844:	f98d8ce3          	beq	s11,s8,37dc <fatfs_add_file_entry+0x90>
    3848:	000c8d13          	mv	s10,s9
    384c:	fc1ff06f          	j	380c <fatfs_add_file_entry+0xc0>
    3850:	000d8a13          	mv	s4,s11
    3854:	000b8993          	mv	s3,s7
    3858:	fd9ff06f          	j	3830 <fatfs_add_file_entry+0xe4>
    385c:	0007c683          	lbu	a3,0(a5)
    3860:	0e500713          	li	a4,229
    3864:	10e69863          	bne	a3,a4,3974 <fatfs_add_file_entry+0x228>
    3868:	000d1863          	bnez	s10,3878 <fatfs_add_file_entry+0x12c>
    386c:	000d8a13          	mv	s4,s11
    3870:	000b8993          	mv	s3,s7
    3874:	00100913          	li	s2,1
    3878:	fa9d4ee3          	blt	s10,s1,3834 <fatfs_add_file_entry+0xe8>
    387c:	00ba8693          	addi	a3,s5,11
    3880:	000a8713          	mv	a4,s5
    3884:	00000913          	li	s2,0
    3888:	00074603          	lbu	a2,0(a4)
    388c:	00195793          	srli	a5,s2,0x1
    3890:	00791913          	slli	s2,s2,0x7
    3894:	012787b3          	add	a5,a5,s2
    3898:	00170713          	addi	a4,a4,1
    389c:	00c787b3          	add	a5,a5,a2
    38a0:	0ff7f913          	zext.b	s2,a5
    38a4:	fed712e3          	bne	a4,a3,3888 <fatfs_add_file_entry+0x13c>
    38a8:	00098b13          	mv	s6,s3
    38ac:	00000d13          	li	s10,0
    38b0:	01000b93          	li	s7,16
    38b4:	00812583          	lw	a1,8(sp)
    38b8:	00000693          	li	a3,0
    38bc:	000b0613          	mv	a2,s6
    38c0:	00040513          	mv	a0,s0
    38c4:	fffff097          	auipc	ra,0xfffff
    38c8:	ac0080e7          	jalr	-1344(ra) # 2384 <fatfs_sector_reader>
    38cc:	18050c63          	beqz	a0,3a64 <fatfs_add_file_entry+0x318>
    38d0:	04440c93          	addi	s9,s0,68
    38d4:	413b0db3          	sub	s11,s6,s3
    38d8:	00000793          	li	a5,0
    38dc:	00000c13          	li	s8,0
    38e0:	01912623          	sw	s9,12(sp)
    38e4:	000d1663          	bnez	s10,38f0 <fatfs_add_file_entry+0x1a4>
    38e8:	154c1863          	bne	s8,s4,3a38 <fatfs_add_file_entry+0x2ec>
    38ec:	140d9663          	bnez	s11,3a38 <fatfs_add_file_entry+0x2ec>
    38f0:	12049263          	bnez	s1,3a14 <fatfs_add_file_entry+0x2c8>
    38f4:	01c12703          	lw	a4,28(sp)
    38f8:	01412603          	lw	a2,20(sp)
    38fc:	01812583          	lw	a1,24(sp)
    3900:	02010693          	addi	a3,sp,32
    3904:	000a8513          	mv	a0,s5
    3908:	ffffe097          	auipc	ra,0xffffe
    390c:	e24080e7          	jalr	-476(ra) # 172c <fatfs_sfn_create_entry>
    3910:	02000613          	li	a2,32
    3914:	00c105b3          	add	a1,sp,a2
    3918:	000c8513          	mv	a0,s9
    391c:	ffffd097          	auipc	ra,0xffffd
    3920:	f0c080e7          	jalr	-244(ra) # 828 <memcpy>
    3924:	03842783          	lw	a5,56(s0)
    3928:	00c12583          	lw	a1,12(sp)
    392c:	24442503          	lw	a0,580(s0)
    3930:	00100613          	li	a2,1
    3934:	000780e7          	jalr	a5
    3938:	07c12083          	lw	ra,124(sp)
    393c:	07812403          	lw	s0,120(sp)
    3940:	07412483          	lw	s1,116(sp)
    3944:	07012903          	lw	s2,112(sp)
    3948:	06c12983          	lw	s3,108(sp)
    394c:	06812a03          	lw	s4,104(sp)
    3950:	06412a83          	lw	s5,100(sp)
    3954:	06012b03          	lw	s6,96(sp)
    3958:	05c12b83          	lw	s7,92(sp)
    395c:	05812c03          	lw	s8,88(sp)
    3960:	05412c83          	lw	s9,84(sp)
    3964:	05012d03          	lw	s10,80(sp)
    3968:	04c12d83          	lw	s11,76(sp)
    396c:	08010113          	addi	sp,sp,128
    3970:	00008067          	ret
    3974:	ee068ae3          	beqz	a3,3868 <fatfs_add_file_entry+0x11c>
    3978:	00000913          	li	s2,0
    397c:	ebdff06f          	j	3838 <fatfs_add_file_entry+0xec>
    3980:	00842583          	lw	a1,8(s0)
    3984:	02010613          	addi	a2,sp,32
    3988:	00040513          	mv	a0,s0
    398c:	fffff097          	auipc	ra,0xfffff
    3990:	3e4080e7          	jalr	996(ra) # 2d70 <fatfs_find_blank_cluster>
    3994:	0c050863          	beqz	a0,3a64 <fatfs_add_file_entry+0x318>
    3998:	02012b83          	lw	s7,32(sp)
    399c:	00812583          	lw	a1,8(sp)
    39a0:	00040513          	mv	a0,s0
    39a4:	000b8613          	mv	a2,s7
    39a8:	fffff097          	auipc	ra,0xfffff
    39ac:	64c080e7          	jalr	1612(ra) # 2ff4 <fatfs_fat_add_cluster_to_chain>
    39b0:	0a050a63          	beqz	a0,3a64 <fatfs_add_file_entry+0x318>
    39b4:	20000613          	li	a2,512
    39b8:	00000593          	li	a1,0
    39bc:	04440513          	addi	a0,s0,68
    39c0:	ffffd097          	auipc	ra,0xffffd
    39c4:	e4c080e7          	jalr	-436(ra) # 80c <memset>
    39c8:	00000c13          	li	s8,0
    39cc:	00044783          	lbu	a5,0(s0)
    39d0:	00fc6a63          	bltu	s8,a5,39e4 <fatfs_add_file_entry+0x298>
    39d4:	ea0914e3          	bnez	s2,387c <fatfs_add_file_entry+0x130>
    39d8:	000b0993          	mv	s3,s6
    39dc:	00000a13          	li	s4,0
    39e0:	e9dff06f          	j	387c <fatfs_add_file_entry+0x130>
    39e4:	00000693          	li	a3,0
    39e8:	000c0613          	mv	a2,s8
    39ec:	000b8593          	mv	a1,s7
    39f0:	00040513          	mv	a0,s0
    39f4:	ffffe097          	auipc	ra,0xffffe
    39f8:	8f8080e7          	jalr	-1800(ra) # 12ec <fatfs_write_sector>
    39fc:	06050463          	beqz	a0,3a64 <fatfs_add_file_entry+0x318>
    3a00:	001c0c13          	addi	s8,s8,1
    3a04:	0ffc7c13          	zext.b	s8,s8
    3a08:	fc5ff06f          	j	39cc <fatfs_add_file_entry+0x280>
    3a0c:	001b0b13          	addi	s6,s6,1
    3a10:	ea5ff06f          	j	38b4 <fatfs_add_file_entry+0x168>
    3a14:	01012503          	lw	a0,16(sp)
    3a18:	fff48493          	addi	s1,s1,-1
    3a1c:	00090693          	mv	a3,s2
    3a20:	00048613          	mv	a2,s1
    3a24:	000c8593          	mv	a1,s9
    3a28:	ffffe097          	auipc	ra,0xffffe
    3a2c:	bf0080e7          	jalr	-1040(ra) # 1618 <fatfs_filename_to_lfn>
    3a30:	00100d13          	li	s10,1
    3a34:	000d0793          	mv	a5,s10
    3a38:	001c0c13          	addi	s8,s8,1
    3a3c:	0ffc7c13          	zext.b	s8,s8
    3a40:	020c8c93          	addi	s9,s9,32
    3a44:	eb7c10e3          	bne	s8,s7,38e4 <fatfs_add_file_entry+0x198>
    3a48:	fc0782e3          	beqz	a5,3a0c <fatfs_add_file_entry+0x2c0>
    3a4c:	03842783          	lw	a5,56(s0)
    3a50:	00c12583          	lw	a1,12(sp)
    3a54:	24442503          	lw	a0,580(s0)
    3a58:	00100613          	li	a2,1
    3a5c:	000780e7          	jalr	a5
    3a60:	fa0516e3          	bnez	a0,3a0c <fatfs_add_file_entry+0x2c0>
    3a64:	00000513          	li	a0,0
    3a68:	ed1ff06f          	j	3938 <fatfs_add_file_entry+0x1ec>
    3a6c:	00000513          	li	a0,0
    3a70:	00008067          	ret

00003a74 <fl_fopen>:
    3a74:	000047b7          	lui	a5,0x4
    3a78:	15c7a783          	lw	a5,348(a5) # 415c <_filelib_init>
    3a7c:	fa010113          	addi	sp,sp,-96
    3a80:	05212823          	sw	s2,80(sp)
    3a84:	03a12823          	sw	s10,48(sp)
    3a88:	04112e23          	sw	ra,92(sp)
    3a8c:	04812c23          	sw	s0,88(sp)
    3a90:	04912a23          	sw	s1,84(sp)
    3a94:	05312623          	sw	s3,76(sp)
    3a98:	05412423          	sw	s4,72(sp)
    3a9c:	05512223          	sw	s5,68(sp)
    3aa0:	05612023          	sw	s6,64(sp)
    3aa4:	03712e23          	sw	s7,60(sp)
    3aa8:	03812c23          	sw	s8,56(sp)
    3aac:	03912a23          	sw	s9,52(sp)
    3ab0:	00050d13          	mv	s10,a0
    3ab4:	00058913          	mv	s2,a1
    3ab8:	00079663          	bnez	a5,3ac4 <fl_fopen+0x50>
    3abc:	ffffe097          	auipc	ra,0xffffe
    3ac0:	8e4080e7          	jalr	-1820(ra) # 13a0 <fl_init>
    3ac4:	000047b7          	lui	a5,0x4
    3ac8:	1587a783          	lw	a5,344(a5) # 4158 <_filelib_valid>
    3acc:	00193713          	seqz	a4,s2
    3ad0:	0017b793          	seqz	a5,a5
    3ad4:	00e7e7b3          	or	a5,a5,a4
    3ad8:	36079e63          	bnez	a5,3e54 <fl_fopen+0x3e0>
    3adc:	360d0c63          	beqz	s10,3e54 <fl_fopen+0x3e0>
    3ae0:	00000493          	li	s1,0
    3ae4:	00000413          	li	s0,0
    3ae8:	05700993          	li	s3,87
    3aec:	07200a13          	li	s4,114
    3af0:	07700b13          	li	s6,119
    3af4:	06100b93          	li	s7,97
    3af8:	06200c13          	li	s8,98
    3afc:	04100a93          	li	s5,65
    3b00:	04200c93          	li	s9,66
    3b04:	00090513          	mv	a0,s2
    3b08:	ffffd097          	auipc	ra,0xffffd
    3b0c:	d44080e7          	jalr	-700(ra) # 84c <strlen>
    3b10:	10a44a63          	blt	s0,a0,3c24 <fl_fopen+0x1b0>
    3b14:	000089b7          	lui	s3,0x8
    3b18:	16098a13          	addi	s4,s3,352 # 8160 <_fs>
    3b1c:	038a2783          	lw	a5,56(s4)
    3b20:	00079463          	bnez	a5,3b28 <fl_fopen+0xb4>
    3b24:	fd94f493          	andi	s1,s1,-39
    3b28:	03ca2783          	lw	a5,60(s4)
    3b2c:	00078463          	beqz	a5,3b34 <fl_fopen+0xc0>
    3b30:	000780e7          	jalr	a5
    3b34:	0014f793          	andi	a5,s1,1
    3b38:	18079263          	bnez	a5,3cbc <fl_fopen+0x248>
    3b3c:	0204f793          	andi	a5,s1,32
    3b40:	08078c63          	beqz	a5,3bd8 <fl_fopen+0x164>
    3b44:	038a2783          	lw	a5,56(s4)
    3b48:	06078a63          	beqz	a5,3bbc <fl_fopen+0x148>
    3b4c:	ffffd097          	auipc	ra,0xffffd
    3b50:	664080e7          	jalr	1636(ra) # 11b0 <_allocate_file>
    3b54:	00050413          	mv	s0,a0
    3b58:	06050263          	beqz	a0,3bbc <fl_fopen+0x148>
    3b5c:	01450a93          	addi	s5,a0,20
    3b60:	10400613          	li	a2,260
    3b64:	00000593          	li	a1,0
    3b68:	000a8513          	mv	a0,s5
    3b6c:	ffffd097          	auipc	ra,0xffffd
    3b70:	ca0080e7          	jalr	-864(ra) # 80c <memset>
    3b74:	11840b13          	addi	s6,s0,280
    3b78:	10400613          	li	a2,260
    3b7c:	00000593          	li	a1,0
    3b80:	000b0513          	mv	a0,s6
    3b84:	ffffd097          	auipc	ra,0xffffd
    3b88:	c88080e7          	jalr	-888(ra) # 80c <memset>
    3b8c:	10400713          	li	a4,260
    3b90:	000b0693          	mv	a3,s6
    3b94:	00070613          	mv	a2,a4
    3b98:	000a8593          	mv	a1,s5
    3b9c:	000d0513          	mv	a0,s10
    3ba0:	ffffe097          	auipc	ra,0xffffe
    3ba4:	07c080e7          	jalr	124(ra) # 1c1c <fatfs_split_path>
    3ba8:	fff00793          	li	a5,-1
    3bac:	12f51663          	bne	a0,a5,3cd8 <fl_fopen+0x264>
    3bb0:	00040513          	mv	a0,s0
    3bb4:	ffffd097          	auipc	ra,0xffffd
    3bb8:	674080e7          	jalr	1652(ra) # 1228 <_free_file>
    3bbc:	00000413          	li	s0,0
    3bc0:	0214f793          	andi	a5,s1,33
    3bc4:	02000713          	li	a4,32
    3bc8:	28e79263          	bne	a5,a4,3e4c <fl_fopen+0x3d8>
    3bcc:	10041263          	bnez	s0,3cd0 <fl_fopen+0x25c>
    3bd0:	0064f793          	andi	a5,s1,6
    3bd4:	26079463          	bnez	a5,3e3c <fl_fopen+0x3c8>
    3bd8:	00000413          	li	s0,0
    3bdc:	040a2783          	lw	a5,64(s4)
    3be0:	00078463          	beqz	a5,3be8 <fl_fopen+0x174>
    3be4:	000780e7          	jalr	a5
    3be8:	05c12083          	lw	ra,92(sp)
    3bec:	00040513          	mv	a0,s0
    3bf0:	05812403          	lw	s0,88(sp)
    3bf4:	05412483          	lw	s1,84(sp)
    3bf8:	05012903          	lw	s2,80(sp)
    3bfc:	04c12983          	lw	s3,76(sp)
    3c00:	04812a03          	lw	s4,72(sp)
    3c04:	04412a83          	lw	s5,68(sp)
    3c08:	04012b03          	lw	s6,64(sp)
    3c0c:	03c12b83          	lw	s7,60(sp)
    3c10:	03812c03          	lw	s8,56(sp)
    3c14:	03412c83          	lw	s9,52(sp)
    3c18:	03012d03          	lw	s10,48(sp)
    3c1c:	06010113          	addi	sp,sp,96
    3c20:	00008067          	ret
    3c24:	008907b3          	add	a5,s2,s0
    3c28:	0007c783          	lbu	a5,0(a5)
    3c2c:	05378863          	beq	a5,s3,3c7c <fl_fopen+0x208>
    3c30:	02f9e863          	bltu	s3,a5,3c60 <fl_fopen+0x1ec>
    3c34:	05578863          	beq	a5,s5,3c84 <fl_fopen+0x210>
    3c38:	00faea63          	bltu	s5,a5,3c4c <fl_fopen+0x1d8>
    3c3c:	02b00713          	li	a4,43
    3c40:	04e78663          	beq	a5,a4,3c8c <fl_fopen+0x218>
    3c44:	00140413          	addi	s0,s0,1
    3c48:	ebdff06f          	j	3b04 <fl_fopen+0x90>
    3c4c:	03978263          	beq	a5,s9,3c70 <fl_fopen+0x1fc>
    3c50:	05200713          	li	a4,82
    3c54:	fee798e3          	bne	a5,a4,3c44 <fl_fopen+0x1d0>
    3c58:	0014e493          	ori	s1,s1,1
    3c5c:	fe9ff06f          	j	3c44 <fl_fopen+0x1d0>
    3c60:	ff478ce3          	beq	a5,s4,3c58 <fl_fopen+0x1e4>
    3c64:	00fa6a63          	bltu	s4,a5,3c78 <fl_fopen+0x204>
    3c68:	01778e63          	beq	a5,s7,3c84 <fl_fopen+0x210>
    3c6c:	fd879ce3          	bne	a5,s8,3c44 <fl_fopen+0x1d0>
    3c70:	0084e493          	ori	s1,s1,8
    3c74:	fd1ff06f          	j	3c44 <fl_fopen+0x1d0>
    3c78:	fd6796e3          	bne	a5,s6,3c44 <fl_fopen+0x1d0>
    3c7c:	0324e493          	ori	s1,s1,50
    3c80:	fc5ff06f          	j	3c44 <fl_fopen+0x1d0>
    3c84:	0264e493          	ori	s1,s1,38
    3c88:	fbdff06f          	j	3c44 <fl_fopen+0x1d0>
    3c8c:	0014f793          	andi	a5,s1,1
    3c90:	00078663          	beqz	a5,3c9c <fl_fopen+0x228>
    3c94:	0024e493          	ori	s1,s1,2
    3c98:	fadff06f          	j	3c44 <fl_fopen+0x1d0>
    3c9c:	0024f793          	andi	a5,s1,2
    3ca0:	00078663          	beqz	a5,3cac <fl_fopen+0x238>
    3ca4:	0314e493          	ori	s1,s1,49
    3ca8:	f9dff06f          	j	3c44 <fl_fopen+0x1d0>
    3cac:	0044f793          	andi	a5,s1,4
    3cb0:	f8078ae3          	beqz	a5,3c44 <fl_fopen+0x1d0>
    3cb4:	0274e493          	ori	s1,s1,39
    3cb8:	f8dff06f          	j	3c44 <fl_fopen+0x1d0>
    3cbc:	000d0513          	mv	a0,s10
    3cc0:	fffff097          	auipc	ra,0xfffff
    3cc4:	af4080e7          	jalr	-1292(ra) # 27b4 <_open_file>
    3cc8:	00050413          	mv	s0,a0
    3ccc:	e60508e3          	beqz	a0,3b3c <fl_fopen+0xc8>
    3cd0:	42940c23          	sb	s1,1080(s0)
    3cd4:	f09ff06f          	j	3bdc <fl_fopen+0x168>
    3cd8:	00040513          	mv	a0,s0
    3cdc:	ffffe097          	auipc	ra,0xffffe
    3ce0:	1bc080e7          	jalr	444(ra) # 1e98 <_check_file_open>
    3ce4:	00050913          	mv	s2,a0
    3ce8:	ec0514e3          	bnez	a0,3bb0 <fl_fopen+0x13c>
    3cec:	01444783          	lbu	a5,20(s0)
    3cf0:	0e079663          	bnez	a5,3ddc <fl_fopen+0x368>
    3cf4:	008a2783          	lw	a5,8(s4)
    3cf8:	00f42023          	sw	a5,0(s0)
    3cfc:	00042583          	lw	a1,0(s0)
    3d00:	01010693          	addi	a3,sp,16
    3d04:	000b0613          	mv	a2,s6
    3d08:	16098513          	addi	a0,s3,352
    3d0c:	ffffe097          	auipc	ra,0xffffe
    3d10:	7c8080e7          	jalr	1992(ra) # 24d4 <fatfs_get_file_entry>
    3d14:	00100693          	li	a3,1
    3d18:	e8d50ce3          	beq	a0,a3,3bb0 <fl_fopen+0x13c>
    3d1c:	00042223          	sw	zero,4(s0)
    3d20:	00440613          	addi	a2,s0,4
    3d24:	00068593          	mv	a1,a3
    3d28:	16098513          	addi	a0,s3,352
    3d2c:	00000097          	auipc	ra,0x0
    3d30:	908080e7          	jalr	-1784(ra) # 3634 <fatfs_allocate_free_space>
    3d34:	e6050ee3          	beqz	a0,3bb0 <fl_fopen+0x13c>
    3d38:	00002ab7          	lui	s5,0x2
    3d3c:	21c40b93          	addi	s7,s0,540
    3d40:	16098c13          	addi	s8,s3,352
    3d44:	70fa8a93          	addi	s5,s5,1807 # 270f <_open_directory+0x3f>
    3d48:	000b0593          	mv	a1,s6
    3d4c:	00410513          	addi	a0,sp,4
    3d50:	ffffe097          	auipc	ra,0xffffe
    3d54:	a80080e7          	jalr	-1408(ra) # 17d0 <fatfs_lfn_create_sfn>
    3d58:	08090e63          	beqz	s2,3df4 <fl_fopen+0x380>
    3d5c:	00090613          	mv	a2,s2
    3d60:	00410593          	addi	a1,sp,4
    3d64:	000b8513          	mv	a0,s7
    3d68:	ffffe097          	auipc	ra,0xffffe
    3d6c:	be4080e7          	jalr	-1052(ra) # 194c <fatfs_lfn_generate_tail>
    3d70:	00042583          	lw	a1,0(s0)
    3d74:	000b8613          	mv	a2,s7
    3d78:	000c0513          	mv	a0,s8
    3d7c:	fffff097          	auipc	ra,0xfffff
    3d80:	bac080e7          	jalr	-1108(ra) # 2928 <fatfs_sfn_exists>
    3d84:	00050663          	beqz	a0,3d90 <fl_fopen+0x31c>
    3d88:	00190913          	addi	s2,s2,1
    3d8c:	fb591ee3          	bne	s2,s5,3d48 <fl_fopen+0x2d4>
    3d90:	00442703          	lw	a4,4(s0)
    3d94:	000027b7          	lui	a5,0x2
    3d98:	70f78793          	addi	a5,a5,1807 # 270f <_open_directory+0x3f>
    3d9c:	00070593          	mv	a1,a4
    3da0:	02f90663          	beq	s2,a5,3dcc <fl_fopen+0x358>
    3da4:	00042583          	lw	a1,0(s0)
    3da8:	00000813          	li	a6,0
    3dac:	00000793          	li	a5,0
    3db0:	000b8693          	mv	a3,s7
    3db4:	000b0613          	mv	a2,s6
    3db8:	16098513          	addi	a0,s3,352
    3dbc:	00000097          	auipc	ra,0x0
    3dc0:	990080e7          	jalr	-1648(ra) # 374c <fatfs_add_file_entry>
    3dc4:	04051463          	bnez	a0,3e0c <fl_fopen+0x398>
    3dc8:	00442583          	lw	a1,4(s0)
    3dcc:	16098513          	addi	a0,s3,352
    3dd0:	fffff097          	auipc	ra,0xfffff
    3dd4:	1b4080e7          	jalr	436(ra) # 2f84 <fatfs_free_cluster_chain>
    3dd8:	dd9ff06f          	j	3bb0 <fl_fopen+0x13c>
    3ddc:	00040593          	mv	a1,s0
    3de0:	000a8513          	mv	a0,s5
    3de4:	fffff097          	auipc	ra,0xfffff
    3de8:	8ec080e7          	jalr	-1812(ra) # 26d0 <_open_directory>
    3dec:	f00518e3          	bnez	a0,3cfc <fl_fopen+0x288>
    3df0:	dc1ff06f          	j	3bb0 <fl_fopen+0x13c>
    3df4:	00b00613          	li	a2,11
    3df8:	00410593          	addi	a1,sp,4
    3dfc:	000b8513          	mv	a0,s7
    3e00:	ffffd097          	auipc	ra,0xffffd
    3e04:	a28080e7          	jalr	-1496(ra) # 828 <memcpy>
    3e08:	f69ff06f          	j	3d70 <fl_fopen+0x2fc>
    3e0c:	fff00793          	li	a5,-1
    3e10:	00042623          	sw	zero,12(s0)
    3e14:	00042423          	sw	zero,8(s0)
    3e18:	42f42823          	sw	a5,1072(s0)
    3e1c:	42042a23          	sw	zero,1076(s0)
    3e20:	00042823          	sw	zero,16(s0)
    3e24:	22f42423          	sw	a5,552(s0)
    3e28:	22f42623          	sw	a5,556(s0)
    3e2c:	16098513          	addi	a0,s3,352
    3e30:	ffffe097          	auipc	ra,0xffffe
    3e34:	3f4080e7          	jalr	1012(ra) # 2224 <fatfs_fat_purge>
    3e38:	d89ff06f          	j	3bc0 <fl_fopen+0x14c>
    3e3c:	000d0513          	mv	a0,s10
    3e40:	fffff097          	auipc	ra,0xfffff
    3e44:	974080e7          	jalr	-1676(ra) # 27b4 <_open_file>
    3e48:	00050413          	mv	s0,a0
    3e4c:	e80412e3          	bnez	s0,3cd0 <fl_fopen+0x25c>
    3e50:	d89ff06f          	j	3bd8 <fl_fopen+0x164>
    3e54:	00000413          	li	s0,0
    3e58:	d91ff06f          	j	3be8 <fl_fopen+0x174>

00003e5c <cmd16>:
    3e5c:	02000050 00001500                       P.......

00003e64 <acmd41>:
    3e64:	00004069 00000100                       i@......

00003e6c <cmd55>:
    3e6c:	00000077 00000100                       w.......

00003e74 <cmd8>:
    3e74:	01000048 000087aa                       H.......

00003e7c <cmd0>:
    3e7c:	00000040 00009500                       @.......

00003e84 <SDCARD>:
    3e84:	00010080                                ....

00003e88 <OLED_RST>:
    3e88:	00010010                                ....

00003e8c <OLED>:
    3e8c:	00010008 74696e69 2e2e2e20 00000020     ....init ... ...
    3e9c:	656e6f64 00000a2e 00006272 676d692f     done....rb../img
    3eac:	7761722e 00000000 2e676d69 20776172     .raw....img.raw 
    3ebc:	20746f6e 6e756f66 000a2e64 67616d69     not found...imag
    3ecc:	6f662065 2e646e75 0000000a 33323130     e found.....0123
    3edc:	37363534 42413938 46454443 00000000     456789ABCDEF....
    3eec:	5f544146 203a5346 6f727245 6f632072     FAT_FS: Error co
    3efc:	20646c75 20746f6e 64616f6c 54414620     uld not load FAT
    3f0c:	74656420 736c6961 64252820 0a0d2129      details (%d)!..
    3f1c:	00000000                                ....

00003f20 <font>:
    3f20:	00000000 00002f00 00030000 14000003     ...../..........
    3f30:	143e143e 3a2b6a2e 08122600 171c3224     >.>..j+:.&..$2..
    3f40:	03003415 00000000 0000211e 001e2100     .4.......!...!..
    3f50:	08220000 0822081c 0000081c 00002040     .."...".....@ ..
    3f60:	00080800 00200000 20000000 02040810     ...... .... ....
    3f70:	3f21213f 003f0100 253d0000 25002725     ?!!?..?...=%%'.%
    3f80:	003f2525 3f040407 25252700 253f003d     %%?....?.'%%=.?%
    3f90:	01003d25 00030539 3f25253f 25252700     %=..9...?%%?.'%%
    3fa0:	0028003f 40000000 00000028 00110a04     ?.(....@(.......
    3fb0:	00141400 0a110000 01000004 0007052d     ............-...
    3fc0:	253d213f 09093f1f 253f003f 3f003c27     ?!=%.?..?.?%'<.?
    3fd0:	00212121 1e21213f 25253f00 053f0025     !!!.?!!..?%%%.?.
    3fe0:	3f000505 003d2521 3f04043f 213f2100     ...?!%=.?..?.!?!
    3ff0:	20380000 3f013f21 003b0404 2020203f     ..8 !?.?..;.?   
    4000:	3f013f00 023f3f01 3f003f04 003f2121     .?.?.??..?.?!!?.
    4010:	0f09093f 31213f00 093f003f 27002f39     ?....?!1?.?.9/.'
    4020:	003d2525 013f0101 20203f01 100f003f     %%=...?..?  ?...
    4030:	3f001f30 3f203f20 3b04043b 38080f00     0..? ? ?;..;...8
    4040:	2931000f 3f002325 00000021 04081020     ..1)%#.?!... ...
    4050:	003f2102 01020000 20000201 00000020     .!?........  ...
    4060:	00000201 24243800 243f003c 3c003c24     .....8$$<.?$$<.<
    4070:	00242424 3f24243c 2c2c3c00 3f04002c     $$$.<$$?.<,,,..?
    4080:	bc000005 00fca4a4 3c04043f 00003d00     ........?..<.=..
    4090:	fd800000 3f000000 00340808 0000003f     .......?..4.?...
    40a0:	3c043c00 043c3c04 3c003c04 003c2424     .<.<.<<..<.<$$<.
    40b0:	3c2424fc 24243c00 083c00fc 2c000004     .$$<.<$$..<....,
    40c0:	003c2c2c 00243f04 20203c00 100c003c     ,,<..?$..<  <...
    40d0:	3c001c30 3c203c20 34080834 a0a0bc00     0..< < <4..4....
    40e0:	342400fc 0400242c 0000213f 0000003f     ..$4,$..?!..?...
    40f0:	043f2100 02010000 00000102 00000000     .!?.............
    4100:	00000001 00000003 00000005 00000007     ................
    4110:	00000009 0000000e 00000010 00000012     ................
    4120:	00000014 00000016 00000018 0000001c     ................
    4130:	0000001e                                ....

00004134 <sdcard_while_loading_callback>:
    4134:	00000000                                ....

00004138 <back_color>:
	...

00004139 <front_color>:
    4139:	                                         ...

0000413c <cursor_y>:
    413c:	00000000                                ....

00004140 <cursor_x>:
    4140:	00000000                                ....

00004144 <f_putchar>:
    4144:	00000000                                ....

00004148 <_free_file_list>:
	...

00004150 <_open_file_list>:
	...

00004158 <_filelib_valid>:
    4158:	00000000                                ....

0000415c <_filelib_init>:
    415c:	00000000                                ....
