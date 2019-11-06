
build/exti_systick.elf:     file format elf32-littlearm

Sections:
Idx Name              Size      VMA       LMA       File off  Algn  Flags
  0 .isr_vector       000000c0  08000000  08000000  00010000  2**0  CONTENTS, ALLOC, LOAD, READONLY, DATA
  1 .text             00000f58  080000c0  080000c0  000100c0  2**2  CONTENTS, ALLOC, LOAD, READONLY, CODE
  2 .rodata           00000020  08001018  08001018  00011018  2**2  CONTENTS, ALLOC, LOAD, READONLY, DATA
  3 .init_array       00000008  08001038  08001038  00011038  2**2  CONTENTS, ALLOC, LOAD, DATA
  4 .fini_array       00000004  08001040  08001040  00011040  2**2  CONTENTS, ALLOC, LOAD, DATA
  5 .data             00000434  20000000  08001044  00020000  2**3  CONTENTS, ALLOC, LOAD, DATA
  6 .bss              00000048  20000434  08001478  00020434  2**2  ALLOC
  7 ._user_heap_stack 00000604  2000047c  08001478  0002047c  2**0  ALLOC
  8 .ARM.attributes   00000028  00000000  00000000  00020434  2**0  CONTENTS, READONLY
  9 .debug_info       00001114  00000000  00000000  0002045c  2**0  CONTENTS, READONLY, DEBUGGING
 10 .debug_abbrev     000003eb  00000000  00000000  00021570  2**0  CONTENTS, READONLY, DEBUGGING
 11 .debug_loc        00000920  00000000  00000000  0002195b  2**0  CONTENTS, READONLY, DEBUGGING
 12 .debug_aranges    000001c8  00000000  00000000  0002227b  2**0  CONTENTS, READONLY, DEBUGGING
 13 .debug_ranges     00000198  00000000  00000000  00022443  2**0  CONTENTS, READONLY, DEBUGGING
 14 .debug_line       0000073a  00000000  00000000  000225db  2**0  CONTENTS, READONLY, DEBUGGING
 15 .debug_str        0000091d  00000000  00000000  00022d15  2**0  CONTENTS, READONLY, DEBUGGING
 16 .comment          0000007f  00000000  00000000  00023632  2**0  CONTENTS, READONLY
 17 .debug_frame      000007a4  00000000  00000000  000236b4  2**2  CONTENTS, READONLY, DEBUGGING

Disassembly of section .text:

080000c0 <__do_global_dtors_aux>:
 80000c0:	b510      	push	{r4, lr}
 80000c2:	4c06      	ldr	r4, [pc, #24]	; (80000dc <__do_global_dtors_aux+0x1c>)
 80000c4:	7823      	ldrb	r3, [r4, #0]
 80000c6:	2b00      	cmp	r3, #0
 80000c8:	d107      	bne.n	80000da <__do_global_dtors_aux+0x1a>
 80000ca:	4b05      	ldr	r3, [pc, #20]	; (80000e0 <__do_global_dtors_aux+0x20>)
 80000cc:	2b00      	cmp	r3, #0
 80000ce:	d002      	beq.n	80000d6 <__do_global_dtors_aux+0x16>
 80000d0:	4804      	ldr	r0, [pc, #16]	; (80000e4 <__do_global_dtors_aux+0x24>)
 80000d2:	e000      	b.n	80000d6 <__do_global_dtors_aux+0x16>
 80000d4:	bf00      	nop
 80000d6:	2301      	movs	r3, #1
 80000d8:	7023      	strb	r3, [r4, #0]
 80000da:	bd10      	pop	{r4, pc}
 80000dc:	20000434 	.word	0x20000434
 80000e0:	00000000 	.word	0x00000000
 80000e4:	08001000 	.word	0x08001000

080000e8 <frame_dummy>:
 80000e8:	4b04      	ldr	r3, [pc, #16]	; (80000fc <frame_dummy+0x14>)
 80000ea:	b510      	push	{r4, lr}
 80000ec:	2b00      	cmp	r3, #0
 80000ee:	d003      	beq.n	80000f8 <frame_dummy+0x10>
 80000f0:	4903      	ldr	r1, [pc, #12]	; (8000100 <frame_dummy+0x18>)
 80000f2:	4804      	ldr	r0, [pc, #16]	; (8000104 <frame_dummy+0x1c>)
 80000f4:	e000      	b.n	80000f8 <frame_dummy+0x10>
 80000f6:	bf00      	nop
 80000f8:	bd10      	pop	{r4, pc}
 80000fa:	46c0      	nop			; (mov r8, r8)
 80000fc:	00000000 	.word	0x00000000
 8000100:	20000438 	.word	0x20000438
 8000104:	08001000 	.word	0x08001000

08000108 <__divsi3>:
 8000108:	4603      	mov	r3, r0
 800010a:	430b      	orrs	r3, r1
 800010c:	d47f      	bmi.n	800020e <__divsi3+0x106>
 800010e:	2200      	movs	r2, #0
 8000110:	0843      	lsrs	r3, r0, #1
 8000112:	428b      	cmp	r3, r1
 8000114:	d374      	bcc.n	8000200 <__divsi3+0xf8>
 8000116:	0903      	lsrs	r3, r0, #4
 8000118:	428b      	cmp	r3, r1
 800011a:	d35f      	bcc.n	80001dc <__divsi3+0xd4>
 800011c:	0a03      	lsrs	r3, r0, #8
 800011e:	428b      	cmp	r3, r1
 8000120:	d344      	bcc.n	80001ac <__divsi3+0xa4>
 8000122:	0b03      	lsrs	r3, r0, #12
 8000124:	428b      	cmp	r3, r1
 8000126:	d328      	bcc.n	800017a <__divsi3+0x72>
 8000128:	0c03      	lsrs	r3, r0, #16
 800012a:	428b      	cmp	r3, r1
 800012c:	d30d      	bcc.n	800014a <__divsi3+0x42>
 800012e:	22ff      	movs	r2, #255	; 0xff
 8000130:	0209      	lsls	r1, r1, #8
 8000132:	ba12      	rev	r2, r2
 8000134:	0c03      	lsrs	r3, r0, #16
 8000136:	428b      	cmp	r3, r1
 8000138:	d302      	bcc.n	8000140 <__divsi3+0x38>
 800013a:	1212      	asrs	r2, r2, #8
 800013c:	0209      	lsls	r1, r1, #8
 800013e:	d065      	beq.n	800020c <__divsi3+0x104>
 8000140:	0b03      	lsrs	r3, r0, #12
 8000142:	428b      	cmp	r3, r1
 8000144:	d319      	bcc.n	800017a <__divsi3+0x72>
 8000146:	e000      	b.n	800014a <__divsi3+0x42>
 8000148:	0a09      	lsrs	r1, r1, #8
 800014a:	0bc3      	lsrs	r3, r0, #15
 800014c:	428b      	cmp	r3, r1
 800014e:	d301      	bcc.n	8000154 <__divsi3+0x4c>
 8000150:	03cb      	lsls	r3, r1, #15
 8000152:	1ac0      	subs	r0, r0, r3
 8000154:	4152      	adcs	r2, r2
 8000156:	0b83      	lsrs	r3, r0, #14
 8000158:	428b      	cmp	r3, r1
 800015a:	d301      	bcc.n	8000160 <__divsi3+0x58>
 800015c:	038b      	lsls	r3, r1, #14
 800015e:	1ac0      	subs	r0, r0, r3
 8000160:	4152      	adcs	r2, r2
 8000162:	0b43      	lsrs	r3, r0, #13
 8000164:	428b      	cmp	r3, r1
 8000166:	d301      	bcc.n	800016c <__divsi3+0x64>
 8000168:	034b      	lsls	r3, r1, #13
 800016a:	1ac0      	subs	r0, r0, r3
 800016c:	4152      	adcs	r2, r2
 800016e:	0b03      	lsrs	r3, r0, #12
 8000170:	428b      	cmp	r3, r1
 8000172:	d301      	bcc.n	8000178 <__divsi3+0x70>
 8000174:	030b      	lsls	r3, r1, #12
 8000176:	1ac0      	subs	r0, r0, r3
 8000178:	4152      	adcs	r2, r2
 800017a:	0ac3      	lsrs	r3, r0, #11
 800017c:	428b      	cmp	r3, r1
 800017e:	d301      	bcc.n	8000184 <__divsi3+0x7c>
 8000180:	02cb      	lsls	r3, r1, #11
 8000182:	1ac0      	subs	r0, r0, r3
 8000184:	4152      	adcs	r2, r2
 8000186:	0a83      	lsrs	r3, r0, #10
 8000188:	428b      	cmp	r3, r1
 800018a:	d301      	bcc.n	8000190 <__divsi3+0x88>
 800018c:	028b      	lsls	r3, r1, #10
 800018e:	1ac0      	subs	r0, r0, r3
 8000190:	4152      	adcs	r2, r2
 8000192:	0a43      	lsrs	r3, r0, #9
 8000194:	428b      	cmp	r3, r1
 8000196:	d301      	bcc.n	800019c <__divsi3+0x94>
 8000198:	024b      	lsls	r3, r1, #9
 800019a:	1ac0      	subs	r0, r0, r3
 800019c:	4152      	adcs	r2, r2
 800019e:	0a03      	lsrs	r3, r0, #8
 80001a0:	428b      	cmp	r3, r1
 80001a2:	d301      	bcc.n	80001a8 <__divsi3+0xa0>
 80001a4:	020b      	lsls	r3, r1, #8
 80001a6:	1ac0      	subs	r0, r0, r3
 80001a8:	4152      	adcs	r2, r2
 80001aa:	d2cd      	bcs.n	8000148 <__divsi3+0x40>
 80001ac:	09c3      	lsrs	r3, r0, #7
 80001ae:	428b      	cmp	r3, r1
 80001b0:	d301      	bcc.n	80001b6 <__divsi3+0xae>
 80001b2:	01cb      	lsls	r3, r1, #7
 80001b4:	1ac0      	subs	r0, r0, r3
 80001b6:	4152      	adcs	r2, r2
 80001b8:	0983      	lsrs	r3, r0, #6
 80001ba:	428b      	cmp	r3, r1
 80001bc:	d301      	bcc.n	80001c2 <__divsi3+0xba>
 80001be:	018b      	lsls	r3, r1, #6
 80001c0:	1ac0      	subs	r0, r0, r3
 80001c2:	4152      	adcs	r2, r2
 80001c4:	0943      	lsrs	r3, r0, #5
 80001c6:	428b      	cmp	r3, r1
 80001c8:	d301      	bcc.n	80001ce <__divsi3+0xc6>
 80001ca:	014b      	lsls	r3, r1, #5
 80001cc:	1ac0      	subs	r0, r0, r3
 80001ce:	4152      	adcs	r2, r2
 80001d0:	0903      	lsrs	r3, r0, #4
 80001d2:	428b      	cmp	r3, r1
 80001d4:	d301      	bcc.n	80001da <__divsi3+0xd2>
 80001d6:	010b      	lsls	r3, r1, #4
 80001d8:	1ac0      	subs	r0, r0, r3
 80001da:	4152      	adcs	r2, r2
 80001dc:	08c3      	lsrs	r3, r0, #3
 80001de:	428b      	cmp	r3, r1
 80001e0:	d301      	bcc.n	80001e6 <__divsi3+0xde>
 80001e2:	00cb      	lsls	r3, r1, #3
 80001e4:	1ac0      	subs	r0, r0, r3
 80001e6:	4152      	adcs	r2, r2
 80001e8:	0883      	lsrs	r3, r0, #2
 80001ea:	428b      	cmp	r3, r1
 80001ec:	d301      	bcc.n	80001f2 <__divsi3+0xea>
 80001ee:	008b      	lsls	r3, r1, #2
 80001f0:	1ac0      	subs	r0, r0, r3
 80001f2:	4152      	adcs	r2, r2
 80001f4:	0843      	lsrs	r3, r0, #1
 80001f6:	428b      	cmp	r3, r1
 80001f8:	d301      	bcc.n	80001fe <__divsi3+0xf6>
 80001fa:	004b      	lsls	r3, r1, #1
 80001fc:	1ac0      	subs	r0, r0, r3
 80001fe:	4152      	adcs	r2, r2
 8000200:	1a41      	subs	r1, r0, r1
 8000202:	d200      	bcs.n	8000206 <__divsi3+0xfe>
 8000204:	4601      	mov	r1, r0
 8000206:	4152      	adcs	r2, r2
 8000208:	4610      	mov	r0, r2
 800020a:	4770      	bx	lr
 800020c:	e05d      	b.n	80002ca <__divsi3+0x1c2>
 800020e:	0fca      	lsrs	r2, r1, #31
 8000210:	d000      	beq.n	8000214 <__divsi3+0x10c>
 8000212:	4249      	negs	r1, r1
 8000214:	1003      	asrs	r3, r0, #32
 8000216:	d300      	bcc.n	800021a <__divsi3+0x112>
 8000218:	4240      	negs	r0, r0
 800021a:	4053      	eors	r3, r2
 800021c:	2200      	movs	r2, #0
 800021e:	469c      	mov	ip, r3
 8000220:	0903      	lsrs	r3, r0, #4
 8000222:	428b      	cmp	r3, r1
 8000224:	d32d      	bcc.n	8000282 <__divsi3+0x17a>
 8000226:	0a03      	lsrs	r3, r0, #8
 8000228:	428b      	cmp	r3, r1
 800022a:	d312      	bcc.n	8000252 <__divsi3+0x14a>
 800022c:	22fc      	movs	r2, #252	; 0xfc
 800022e:	0189      	lsls	r1, r1, #6
 8000230:	ba12      	rev	r2, r2
 8000232:	0a03      	lsrs	r3, r0, #8
 8000234:	428b      	cmp	r3, r1
 8000236:	d30c      	bcc.n	8000252 <__divsi3+0x14a>
 8000238:	0189      	lsls	r1, r1, #6
 800023a:	1192      	asrs	r2, r2, #6
 800023c:	428b      	cmp	r3, r1
 800023e:	d308      	bcc.n	8000252 <__divsi3+0x14a>
 8000240:	0189      	lsls	r1, r1, #6
 8000242:	1192      	asrs	r2, r2, #6
 8000244:	428b      	cmp	r3, r1
 8000246:	d304      	bcc.n	8000252 <__divsi3+0x14a>
 8000248:	0189      	lsls	r1, r1, #6
 800024a:	d03a      	beq.n	80002c2 <__divsi3+0x1ba>
 800024c:	1192      	asrs	r2, r2, #6
 800024e:	e000      	b.n	8000252 <__divsi3+0x14a>
 8000250:	0989      	lsrs	r1, r1, #6
 8000252:	09c3      	lsrs	r3, r0, #7
 8000254:	428b      	cmp	r3, r1
 8000256:	d301      	bcc.n	800025c <__divsi3+0x154>
 8000258:	01cb      	lsls	r3, r1, #7
 800025a:	1ac0      	subs	r0, r0, r3
 800025c:	4152      	adcs	r2, r2
 800025e:	0983      	lsrs	r3, r0, #6
 8000260:	428b      	cmp	r3, r1
 8000262:	d301      	bcc.n	8000268 <__divsi3+0x160>
 8000264:	018b      	lsls	r3, r1, #6
 8000266:	1ac0      	subs	r0, r0, r3
 8000268:	4152      	adcs	r2, r2
 800026a:	0943      	lsrs	r3, r0, #5
 800026c:	428b      	cmp	r3, r1
 800026e:	d301      	bcc.n	8000274 <__divsi3+0x16c>
 8000270:	014b      	lsls	r3, r1, #5
 8000272:	1ac0      	subs	r0, r0, r3
 8000274:	4152      	adcs	r2, r2
 8000276:	0903      	lsrs	r3, r0, #4
 8000278:	428b      	cmp	r3, r1
 800027a:	d301      	bcc.n	8000280 <__divsi3+0x178>
 800027c:	010b      	lsls	r3, r1, #4
 800027e:	1ac0      	subs	r0, r0, r3
 8000280:	4152      	adcs	r2, r2
 8000282:	08c3      	lsrs	r3, r0, #3
 8000284:	428b      	cmp	r3, r1
 8000286:	d301      	bcc.n	800028c <__divsi3+0x184>
 8000288:	00cb      	lsls	r3, r1, #3
 800028a:	1ac0      	subs	r0, r0, r3
 800028c:	4152      	adcs	r2, r2
 800028e:	0883      	lsrs	r3, r0, #2
 8000290:	428b      	cmp	r3, r1
 8000292:	d301      	bcc.n	8000298 <__divsi3+0x190>
 8000294:	008b      	lsls	r3, r1, #2
 8000296:	1ac0      	subs	r0, r0, r3
 8000298:	4152      	adcs	r2, r2
 800029a:	d2d9      	bcs.n	8000250 <__divsi3+0x148>
 800029c:	0843      	lsrs	r3, r0, #1
 800029e:	428b      	cmp	r3, r1
 80002a0:	d301      	bcc.n	80002a6 <__divsi3+0x19e>
 80002a2:	004b      	lsls	r3, r1, #1
 80002a4:	1ac0      	subs	r0, r0, r3
 80002a6:	4152      	adcs	r2, r2
 80002a8:	1a41      	subs	r1, r0, r1
 80002aa:	d200      	bcs.n	80002ae <__divsi3+0x1a6>
 80002ac:	4601      	mov	r1, r0
 80002ae:	4663      	mov	r3, ip
 80002b0:	4152      	adcs	r2, r2
 80002b2:	105b      	asrs	r3, r3, #1
 80002b4:	4610      	mov	r0, r2
 80002b6:	d301      	bcc.n	80002bc <__divsi3+0x1b4>
 80002b8:	4240      	negs	r0, r0
 80002ba:	2b00      	cmp	r3, #0
 80002bc:	d500      	bpl.n	80002c0 <__divsi3+0x1b8>
 80002be:	4249      	negs	r1, r1
 80002c0:	4770      	bx	lr
 80002c2:	4663      	mov	r3, ip
 80002c4:	105b      	asrs	r3, r3, #1
 80002c6:	d300      	bcc.n	80002ca <__divsi3+0x1c2>
 80002c8:	4240      	negs	r0, r0
 80002ca:	b501      	push	{r0, lr}
 80002cc:	2000      	movs	r0, #0
 80002ce:	f000 f805 	bl	80002dc <__aeabi_idiv0>
 80002d2:	bd02      	pop	{r1, pc}

080002d4 <__aeabi_idivmod>:
 80002d4:	2900      	cmp	r1, #0
 80002d6:	d0f8      	beq.n	80002ca <__divsi3+0x1c2>
 80002d8:	e716      	b.n	8000108 <__divsi3>
 80002da:	4770      	bx	lr

080002dc <__aeabi_idiv0>:
 80002dc:	4770      	bx	lr
 80002de:	46c0      	nop			; (mov r8, r8)

080002e0 <Reset_Handler>:
 80002e0:	480d      	ldr	r0, [pc, #52]	; (8000318 <LoopForever+0x2>)
 80002e2:	4685      	mov	sp, r0
 80002e4:	480d      	ldr	r0, [pc, #52]	; (800031c <LoopForever+0x6>)
 80002e6:	490e      	ldr	r1, [pc, #56]	; (8000320 <LoopForever+0xa>)
 80002e8:	4a0e      	ldr	r2, [pc, #56]	; (8000324 <LoopForever+0xe>)
 80002ea:	2300      	movs	r3, #0
 80002ec:	e002      	b.n	80002f4 <LoopCopyDataInit>

080002ee <CopyDataInit>:
 80002ee:	58d4      	ldr	r4, [r2, r3]
 80002f0:	50c4      	str	r4, [r0, r3]
 80002f2:	3304      	adds	r3, #4

080002f4 <LoopCopyDataInit>:
 80002f4:	18c4      	adds	r4, r0, r3
 80002f6:	428c      	cmp	r4, r1
 80002f8:	d3f9      	bcc.n	80002ee <CopyDataInit>
 80002fa:	4a0b      	ldr	r2, [pc, #44]	; (8000328 <LoopForever+0x12>)
 80002fc:	4c0b      	ldr	r4, [pc, #44]	; (800032c <LoopForever+0x16>)
 80002fe:	2300      	movs	r3, #0
 8000300:	e001      	b.n	8000306 <LoopFillZerobss>

08000302 <FillZerobss>:
 8000302:	6013      	str	r3, [r2, #0]
 8000304:	3204      	adds	r2, #4

08000306 <LoopFillZerobss>:
 8000306:	42a2      	cmp	r2, r4
 8000308:	d3fb      	bcc.n	8000302 <FillZerobss>
 800030a:	f000 fd53 	bl	8000db4 <SystemInit>
 800030e:	f000 fda7 	bl	8000e60 <__libc_init_array>
 8000312:	f000 fd43 	bl	8000d9c <main>

08000316 <LoopForever>:
 8000316:	e7fe      	b.n	8000316 <LoopForever>
 8000318:	20002000 	.word	0x20002000
 800031c:	20000000 	.word	0x20000000
 8000320:	20000434 	.word	0x20000434
 8000324:	08001044 	.word	0x08001044
 8000328:	20000434 	.word	0x20000434
 800032c:	2000047c 	.word	0x2000047c

08000330 <ADC1_COMP_IRQHandler>:
 8000330:	e7fe      	b.n	8000330 <ADC1_COMP_IRQHandler>
	...

08000334 <NVIC_EnableIRQ>:
 8000334:	b580      	push	{r7, lr}
 8000336:	b082      	sub	sp, #8
 8000338:	af00      	add	r7, sp, #0
 800033a:	0002      	movs	r2, r0
 800033c:	1dfb      	adds	r3, r7, #7
 800033e:	701a      	strb	r2, [r3, #0]
 8000340:	1dfb      	adds	r3, r7, #7
 8000342:	781b      	ldrb	r3, [r3, #0]
 8000344:	001a      	movs	r2, r3
 8000346:	231f      	movs	r3, #31
 8000348:	401a      	ands	r2, r3
 800034a:	4b04      	ldr	r3, [pc, #16]	; (800035c <NVIC_EnableIRQ+0x28>)
 800034c:	2101      	movs	r1, #1
 800034e:	4091      	lsls	r1, r2
 8000350:	000a      	movs	r2, r1
 8000352:	601a      	str	r2, [r3, #0]
 8000354:	46c0      	nop			; (mov r8, r8)
 8000356:	46bd      	mov	sp, r7
 8000358:	b002      	add	sp, #8
 800035a:	bd80      	pop	{r7, pc}
 800035c:	e000e100 	.word	0xe000e100

08000360 <NVIC_SetPriority>:
 8000360:	b590      	push	{r4, r7, lr}
 8000362:	b083      	sub	sp, #12
 8000364:	af00      	add	r7, sp, #0
 8000366:	0002      	movs	r2, r0
 8000368:	6039      	str	r1, [r7, #0]
 800036a:	1dfb      	adds	r3, r7, #7
 800036c:	701a      	strb	r2, [r3, #0]
 800036e:	1dfb      	adds	r3, r7, #7
 8000370:	781b      	ldrb	r3, [r3, #0]
 8000372:	2b7f      	cmp	r3, #127	; 0x7f
 8000374:	d932      	bls.n	80003dc <NVIC_SetPriority+0x7c>
 8000376:	4a2f      	ldr	r2, [pc, #188]	; (8000434 <NVIC_SetPriority+0xd4>)
 8000378:	1dfb      	adds	r3, r7, #7
 800037a:	781b      	ldrb	r3, [r3, #0]
 800037c:	0019      	movs	r1, r3
 800037e:	230f      	movs	r3, #15
 8000380:	400b      	ands	r3, r1
 8000382:	3b08      	subs	r3, #8
 8000384:	089b      	lsrs	r3, r3, #2
 8000386:	3306      	adds	r3, #6
 8000388:	009b      	lsls	r3, r3, #2
 800038a:	18d3      	adds	r3, r2, r3
 800038c:	3304      	adds	r3, #4
 800038e:	681b      	ldr	r3, [r3, #0]
 8000390:	1dfa      	adds	r2, r7, #7
 8000392:	7812      	ldrb	r2, [r2, #0]
 8000394:	0011      	movs	r1, r2
 8000396:	2203      	movs	r2, #3
 8000398:	400a      	ands	r2, r1
 800039a:	00d2      	lsls	r2, r2, #3
 800039c:	21ff      	movs	r1, #255	; 0xff
 800039e:	4091      	lsls	r1, r2
 80003a0:	000a      	movs	r2, r1
 80003a2:	43d2      	mvns	r2, r2
 80003a4:	401a      	ands	r2, r3
 80003a6:	0011      	movs	r1, r2
 80003a8:	683b      	ldr	r3, [r7, #0]
 80003aa:	019b      	lsls	r3, r3, #6
 80003ac:	22ff      	movs	r2, #255	; 0xff
 80003ae:	401a      	ands	r2, r3
 80003b0:	1dfb      	adds	r3, r7, #7
 80003b2:	781b      	ldrb	r3, [r3, #0]
 80003b4:	0018      	movs	r0, r3
 80003b6:	2303      	movs	r3, #3
 80003b8:	4003      	ands	r3, r0
 80003ba:	00db      	lsls	r3, r3, #3
 80003bc:	409a      	lsls	r2, r3
 80003be:	481d      	ldr	r0, [pc, #116]	; (8000434 <NVIC_SetPriority+0xd4>)
 80003c0:	1dfb      	adds	r3, r7, #7
 80003c2:	781b      	ldrb	r3, [r3, #0]
 80003c4:	001c      	movs	r4, r3
 80003c6:	230f      	movs	r3, #15
 80003c8:	4023      	ands	r3, r4
 80003ca:	3b08      	subs	r3, #8
 80003cc:	089b      	lsrs	r3, r3, #2
 80003ce:	430a      	orrs	r2, r1
 80003d0:	3306      	adds	r3, #6
 80003d2:	009b      	lsls	r3, r3, #2
 80003d4:	18c3      	adds	r3, r0, r3
 80003d6:	3304      	adds	r3, #4
 80003d8:	601a      	str	r2, [r3, #0]
 80003da:	e027      	b.n	800042c <NVIC_SetPriority+0xcc>
 80003dc:	4a16      	ldr	r2, [pc, #88]	; (8000438 <NVIC_SetPriority+0xd8>)
 80003de:	1dfb      	adds	r3, r7, #7
 80003e0:	781b      	ldrb	r3, [r3, #0]
 80003e2:	b25b      	sxtb	r3, r3
 80003e4:	089b      	lsrs	r3, r3, #2
 80003e6:	33c0      	adds	r3, #192	; 0xc0
 80003e8:	009b      	lsls	r3, r3, #2
 80003ea:	589b      	ldr	r3, [r3, r2]
 80003ec:	1dfa      	adds	r2, r7, #7
 80003ee:	7812      	ldrb	r2, [r2, #0]
 80003f0:	0011      	movs	r1, r2
 80003f2:	2203      	movs	r2, #3
 80003f4:	400a      	ands	r2, r1
 80003f6:	00d2      	lsls	r2, r2, #3
 80003f8:	21ff      	movs	r1, #255	; 0xff
 80003fa:	4091      	lsls	r1, r2
 80003fc:	000a      	movs	r2, r1
 80003fe:	43d2      	mvns	r2, r2
 8000400:	401a      	ands	r2, r3
 8000402:	0011      	movs	r1, r2
 8000404:	683b      	ldr	r3, [r7, #0]
 8000406:	019b      	lsls	r3, r3, #6
 8000408:	22ff      	movs	r2, #255	; 0xff
 800040a:	401a      	ands	r2, r3
 800040c:	1dfb      	adds	r3, r7, #7
 800040e:	781b      	ldrb	r3, [r3, #0]
 8000410:	0018      	movs	r0, r3
 8000412:	2303      	movs	r3, #3
 8000414:	4003      	ands	r3, r0
 8000416:	00db      	lsls	r3, r3, #3
 8000418:	409a      	lsls	r2, r3
 800041a:	4807      	ldr	r0, [pc, #28]	; (8000438 <NVIC_SetPriority+0xd8>)
 800041c:	1dfb      	adds	r3, r7, #7
 800041e:	781b      	ldrb	r3, [r3, #0]
 8000420:	b25b      	sxtb	r3, r3
 8000422:	089b      	lsrs	r3, r3, #2
 8000424:	430a      	orrs	r2, r1
 8000426:	33c0      	adds	r3, #192	; 0xc0
 8000428:	009b      	lsls	r3, r3, #2
 800042a:	501a      	str	r2, [r3, r0]
 800042c:	46c0      	nop			; (mov r8, r8)
 800042e:	46bd      	mov	sp, r7
 8000430:	b003      	add	sp, #12
 8000432:	bd90      	pop	{r4, r7, pc}
 8000434:	e000ed00 	.word	0xe000ed00
 8000438:	e000e100 	.word	0xe000e100

0800043c <LL_RCC_HSI_Enable>:
 800043c:	b580      	push	{r7, lr}
 800043e:	af00      	add	r7, sp, #0
 8000440:	4b04      	ldr	r3, [pc, #16]	; (8000454 <LL_RCC_HSI_Enable+0x18>)
 8000442:	681a      	ldr	r2, [r3, #0]
 8000444:	4b03      	ldr	r3, [pc, #12]	; (8000454 <LL_RCC_HSI_Enable+0x18>)
 8000446:	2101      	movs	r1, #1
 8000448:	430a      	orrs	r2, r1
 800044a:	601a      	str	r2, [r3, #0]
 800044c:	46c0      	nop			; (mov r8, r8)
 800044e:	46bd      	mov	sp, r7
 8000450:	bd80      	pop	{r7, pc}
 8000452:	46c0      	nop			; (mov r8, r8)
 8000454:	40021000 	.word	0x40021000

08000458 <LL_RCC_HSI_IsReady>:
 8000458:	b580      	push	{r7, lr}
 800045a:	af00      	add	r7, sp, #0
 800045c:	4b05      	ldr	r3, [pc, #20]	; (8000474 <LL_RCC_HSI_IsReady+0x1c>)
 800045e:	681b      	ldr	r3, [r3, #0]
 8000460:	2202      	movs	r2, #2
 8000462:	4013      	ands	r3, r2
 8000464:	3b02      	subs	r3, #2
 8000466:	425a      	negs	r2, r3
 8000468:	4153      	adcs	r3, r2
 800046a:	b2db      	uxtb	r3, r3
 800046c:	0018      	movs	r0, r3
 800046e:	46bd      	mov	sp, r7
 8000470:	bd80      	pop	{r7, pc}
 8000472:	46c0      	nop			; (mov r8, r8)
 8000474:	40021000 	.word	0x40021000

08000478 <LL_RCC_SetSysClkSource>:
 8000478:	b580      	push	{r7, lr}
 800047a:	b082      	sub	sp, #8
 800047c:	af00      	add	r7, sp, #0
 800047e:	6078      	str	r0, [r7, #4]
 8000480:	4b06      	ldr	r3, [pc, #24]	; (800049c <LL_RCC_SetSysClkSource+0x24>)
 8000482:	685b      	ldr	r3, [r3, #4]
 8000484:	2203      	movs	r2, #3
 8000486:	4393      	bics	r3, r2
 8000488:	0019      	movs	r1, r3
 800048a:	4b04      	ldr	r3, [pc, #16]	; (800049c <LL_RCC_SetSysClkSource+0x24>)
 800048c:	687a      	ldr	r2, [r7, #4]
 800048e:	430a      	orrs	r2, r1
 8000490:	605a      	str	r2, [r3, #4]
 8000492:	46c0      	nop			; (mov r8, r8)
 8000494:	46bd      	mov	sp, r7
 8000496:	b002      	add	sp, #8
 8000498:	bd80      	pop	{r7, pc}
 800049a:	46c0      	nop			; (mov r8, r8)
 800049c:	40021000 	.word	0x40021000

080004a0 <LL_RCC_GetSysClkSource>:
 80004a0:	b580      	push	{r7, lr}
 80004a2:	af00      	add	r7, sp, #0
 80004a4:	4b03      	ldr	r3, [pc, #12]	; (80004b4 <LL_RCC_GetSysClkSource+0x14>)
 80004a6:	685b      	ldr	r3, [r3, #4]
 80004a8:	220c      	movs	r2, #12
 80004aa:	4013      	ands	r3, r2
 80004ac:	0018      	movs	r0, r3
 80004ae:	46bd      	mov	sp, r7
 80004b0:	bd80      	pop	{r7, pc}
 80004b2:	46c0      	nop			; (mov r8, r8)
 80004b4:	40021000 	.word	0x40021000

080004b8 <LL_RCC_SetAHBPrescaler>:
 80004b8:	b580      	push	{r7, lr}
 80004ba:	b082      	sub	sp, #8
 80004bc:	af00      	add	r7, sp, #0
 80004be:	6078      	str	r0, [r7, #4]
 80004c0:	4b06      	ldr	r3, [pc, #24]	; (80004dc <LL_RCC_SetAHBPrescaler+0x24>)
 80004c2:	685b      	ldr	r3, [r3, #4]
 80004c4:	22f0      	movs	r2, #240	; 0xf0
 80004c6:	4393      	bics	r3, r2
 80004c8:	0019      	movs	r1, r3
 80004ca:	4b04      	ldr	r3, [pc, #16]	; (80004dc <LL_RCC_SetAHBPrescaler+0x24>)
 80004cc:	687a      	ldr	r2, [r7, #4]
 80004ce:	430a      	orrs	r2, r1
 80004d0:	605a      	str	r2, [r3, #4]
 80004d2:	46c0      	nop			; (mov r8, r8)
 80004d4:	46bd      	mov	sp, r7
 80004d6:	b002      	add	sp, #8
 80004d8:	bd80      	pop	{r7, pc}
 80004da:	46c0      	nop			; (mov r8, r8)
 80004dc:	40021000 	.word	0x40021000

080004e0 <LL_RCC_SetAPB1Prescaler>:
 80004e0:	b580      	push	{r7, lr}
 80004e2:	b082      	sub	sp, #8
 80004e4:	af00      	add	r7, sp, #0
 80004e6:	6078      	str	r0, [r7, #4]
 80004e8:	4b06      	ldr	r3, [pc, #24]	; (8000504 <LL_RCC_SetAPB1Prescaler+0x24>)
 80004ea:	685b      	ldr	r3, [r3, #4]
 80004ec:	4a06      	ldr	r2, [pc, #24]	; (8000508 <LL_RCC_SetAPB1Prescaler+0x28>)
 80004ee:	4013      	ands	r3, r2
 80004f0:	0019      	movs	r1, r3
 80004f2:	4b04      	ldr	r3, [pc, #16]	; (8000504 <LL_RCC_SetAPB1Prescaler+0x24>)
 80004f4:	687a      	ldr	r2, [r7, #4]
 80004f6:	430a      	orrs	r2, r1
 80004f8:	605a      	str	r2, [r3, #4]
 80004fa:	46c0      	nop			; (mov r8, r8)
 80004fc:	46bd      	mov	sp, r7
 80004fe:	b002      	add	sp, #8
 8000500:	bd80      	pop	{r7, pc}
 8000502:	46c0      	nop			; (mov r8, r8)
 8000504:	40021000 	.word	0x40021000
 8000508:	fffff8ff 	.word	0xfffff8ff

0800050c <LL_RCC_PLL_Enable>:
 800050c:	b580      	push	{r7, lr}
 800050e:	af00      	add	r7, sp, #0
 8000510:	4b04      	ldr	r3, [pc, #16]	; (8000524 <LL_RCC_PLL_Enable+0x18>)
 8000512:	681a      	ldr	r2, [r3, #0]
 8000514:	4b03      	ldr	r3, [pc, #12]	; (8000524 <LL_RCC_PLL_Enable+0x18>)
 8000516:	2180      	movs	r1, #128	; 0x80
 8000518:	0449      	lsls	r1, r1, #17
 800051a:	430a      	orrs	r2, r1
 800051c:	601a      	str	r2, [r3, #0]
 800051e:	46c0      	nop			; (mov r8, r8)
 8000520:	46bd      	mov	sp, r7
 8000522:	bd80      	pop	{r7, pc}
 8000524:	40021000 	.word	0x40021000

08000528 <LL_RCC_PLL_IsReady>:
 8000528:	b580      	push	{r7, lr}
 800052a:	af00      	add	r7, sp, #0
 800052c:	4b07      	ldr	r3, [pc, #28]	; (800054c <LL_RCC_PLL_IsReady+0x24>)
 800052e:	681a      	ldr	r2, [r3, #0]
 8000530:	2380      	movs	r3, #128	; 0x80
 8000532:	049b      	lsls	r3, r3, #18
 8000534:	4013      	ands	r3, r2
 8000536:	22fe      	movs	r2, #254	; 0xfe
 8000538:	0612      	lsls	r2, r2, #24
 800053a:	4694      	mov	ip, r2
 800053c:	4463      	add	r3, ip
 800053e:	425a      	negs	r2, r3
 8000540:	4153      	adcs	r3, r2
 8000542:	b2db      	uxtb	r3, r3
 8000544:	0018      	movs	r0, r3
 8000546:	46bd      	mov	sp, r7
 8000548:	bd80      	pop	{r7, pc}
 800054a:	46c0      	nop			; (mov r8, r8)
 800054c:	40021000 	.word	0x40021000

08000550 <LL_RCC_PLL_ConfigDomain_SYS>:
 8000550:	b580      	push	{r7, lr}
 8000552:	b082      	sub	sp, #8
 8000554:	af00      	add	r7, sp, #0
 8000556:	6078      	str	r0, [r7, #4]
 8000558:	6039      	str	r1, [r7, #0]
 800055a:	4b0e      	ldr	r3, [pc, #56]	; (8000594 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 800055c:	685b      	ldr	r3, [r3, #4]
 800055e:	4a0e      	ldr	r2, [pc, #56]	; (8000598 <LL_RCC_PLL_ConfigDomain_SYS+0x48>)
 8000560:	4013      	ands	r3, r2
 8000562:	0019      	movs	r1, r3
 8000564:	687a      	ldr	r2, [r7, #4]
 8000566:	2380      	movs	r3, #128	; 0x80
 8000568:	025b      	lsls	r3, r3, #9
 800056a:	401a      	ands	r2, r3
 800056c:	683b      	ldr	r3, [r7, #0]
 800056e:	431a      	orrs	r2, r3
 8000570:	4b08      	ldr	r3, [pc, #32]	; (8000594 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8000572:	430a      	orrs	r2, r1
 8000574:	605a      	str	r2, [r3, #4]
 8000576:	4b07      	ldr	r3, [pc, #28]	; (8000594 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8000578:	6adb      	ldr	r3, [r3, #44]	; 0x2c
 800057a:	220f      	movs	r2, #15
 800057c:	4393      	bics	r3, r2
 800057e:	0019      	movs	r1, r3
 8000580:	687b      	ldr	r3, [r7, #4]
 8000582:	220f      	movs	r2, #15
 8000584:	401a      	ands	r2, r3
 8000586:	4b03      	ldr	r3, [pc, #12]	; (8000594 <LL_RCC_PLL_ConfigDomain_SYS+0x44>)
 8000588:	430a      	orrs	r2, r1
 800058a:	62da      	str	r2, [r3, #44]	; 0x2c
 800058c:	46c0      	nop			; (mov r8, r8)
 800058e:	46bd      	mov	sp, r7
 8000590:	b002      	add	sp, #8
 8000592:	bd80      	pop	{r7, pc}
 8000594:	40021000 	.word	0x40021000
 8000598:	ffc2ffff 	.word	0xffc2ffff

0800059c <LL_SYSCFG_SetEXTISource>:
 800059c:	b590      	push	{r4, r7, lr}
 800059e:	b083      	sub	sp, #12
 80005a0:	af00      	add	r7, sp, #0
 80005a2:	6078      	str	r0, [r7, #4]
 80005a4:	6039      	str	r1, [r7, #0]
 80005a6:	4a0f      	ldr	r2, [pc, #60]	; (80005e4 <LL_SYSCFG_SetEXTISource+0x48>)
 80005a8:	683b      	ldr	r3, [r7, #0]
 80005aa:	21ff      	movs	r1, #255	; 0xff
 80005ac:	400b      	ands	r3, r1
 80005ae:	3302      	adds	r3, #2
 80005b0:	009b      	lsls	r3, r3, #2
 80005b2:	589b      	ldr	r3, [r3, r2]
 80005b4:	683a      	ldr	r2, [r7, #0]
 80005b6:	0c12      	lsrs	r2, r2, #16
 80005b8:	210f      	movs	r1, #15
 80005ba:	4091      	lsls	r1, r2
 80005bc:	000a      	movs	r2, r1
 80005be:	43d2      	mvns	r2, r2
 80005c0:	401a      	ands	r2, r3
 80005c2:	0011      	movs	r1, r2
 80005c4:	683b      	ldr	r3, [r7, #0]
 80005c6:	0c1b      	lsrs	r3, r3, #16
 80005c8:	687a      	ldr	r2, [r7, #4]
 80005ca:	409a      	lsls	r2, r3
 80005cc:	4805      	ldr	r0, [pc, #20]	; (80005e4 <LL_SYSCFG_SetEXTISource+0x48>)
 80005ce:	683b      	ldr	r3, [r7, #0]
 80005d0:	24ff      	movs	r4, #255	; 0xff
 80005d2:	4023      	ands	r3, r4
 80005d4:	430a      	orrs	r2, r1
 80005d6:	3302      	adds	r3, #2
 80005d8:	009b      	lsls	r3, r3, #2
 80005da:	501a      	str	r2, [r3, r0]
 80005dc:	46c0      	nop			; (mov r8, r8)
 80005de:	46bd      	mov	sp, r7
 80005e0:	b003      	add	sp, #12
 80005e2:	bd90      	pop	{r4, r7, pc}
 80005e4:	40010000 	.word	0x40010000

080005e8 <LL_FLASH_SetLatency>:
 80005e8:	b580      	push	{r7, lr}
 80005ea:	b082      	sub	sp, #8
 80005ec:	af00      	add	r7, sp, #0
 80005ee:	6078      	str	r0, [r7, #4]
 80005f0:	4b06      	ldr	r3, [pc, #24]	; (800060c <LL_FLASH_SetLatency+0x24>)
 80005f2:	681b      	ldr	r3, [r3, #0]
 80005f4:	2201      	movs	r2, #1
 80005f6:	4393      	bics	r3, r2
 80005f8:	0019      	movs	r1, r3
 80005fa:	4b04      	ldr	r3, [pc, #16]	; (800060c <LL_FLASH_SetLatency+0x24>)
 80005fc:	687a      	ldr	r2, [r7, #4]
 80005fe:	430a      	orrs	r2, r1
 8000600:	601a      	str	r2, [r3, #0]
 8000602:	46c0      	nop			; (mov r8, r8)
 8000604:	46bd      	mov	sp, r7
 8000606:	b002      	add	sp, #8
 8000608:	bd80      	pop	{r7, pc}
 800060a:	46c0      	nop			; (mov r8, r8)
 800060c:	40022000 	.word	0x40022000

08000610 <LL_AHB1_GRP1_EnableClock>:
 8000610:	b580      	push	{r7, lr}
 8000612:	b084      	sub	sp, #16
 8000614:	af00      	add	r7, sp, #0
 8000616:	6078      	str	r0, [r7, #4]
 8000618:	4b07      	ldr	r3, [pc, #28]	; (8000638 <LL_AHB1_GRP1_EnableClock+0x28>)
 800061a:	6959      	ldr	r1, [r3, #20]
 800061c:	4b06      	ldr	r3, [pc, #24]	; (8000638 <LL_AHB1_GRP1_EnableClock+0x28>)
 800061e:	687a      	ldr	r2, [r7, #4]
 8000620:	430a      	orrs	r2, r1
 8000622:	615a      	str	r2, [r3, #20]
 8000624:	4b04      	ldr	r3, [pc, #16]	; (8000638 <LL_AHB1_GRP1_EnableClock+0x28>)
 8000626:	695b      	ldr	r3, [r3, #20]
 8000628:	687a      	ldr	r2, [r7, #4]
 800062a:	4013      	ands	r3, r2
 800062c:	60fb      	str	r3, [r7, #12]
 800062e:	68fb      	ldr	r3, [r7, #12]
 8000630:	46c0      	nop			; (mov r8, r8)
 8000632:	46bd      	mov	sp, r7
 8000634:	b004      	add	sp, #16
 8000636:	bd80      	pop	{r7, pc}
 8000638:	40021000 	.word	0x40021000

0800063c <LL_APB1_GRP2_EnableClock>:
 800063c:	b580      	push	{r7, lr}
 800063e:	b084      	sub	sp, #16
 8000640:	af00      	add	r7, sp, #0
 8000642:	6078      	str	r0, [r7, #4]
 8000644:	4b07      	ldr	r3, [pc, #28]	; (8000664 <LL_APB1_GRP2_EnableClock+0x28>)
 8000646:	6999      	ldr	r1, [r3, #24]
 8000648:	4b06      	ldr	r3, [pc, #24]	; (8000664 <LL_APB1_GRP2_EnableClock+0x28>)
 800064a:	687a      	ldr	r2, [r7, #4]
 800064c:	430a      	orrs	r2, r1
 800064e:	619a      	str	r2, [r3, #24]
 8000650:	4b04      	ldr	r3, [pc, #16]	; (8000664 <LL_APB1_GRP2_EnableClock+0x28>)
 8000652:	699b      	ldr	r3, [r3, #24]
 8000654:	687a      	ldr	r2, [r7, #4]
 8000656:	4013      	ands	r3, r2
 8000658:	60fb      	str	r3, [r7, #12]
 800065a:	68fb      	ldr	r3, [r7, #12]
 800065c:	46c0      	nop			; (mov r8, r8)
 800065e:	46bd      	mov	sp, r7
 8000660:	b004      	add	sp, #16
 8000662:	bd80      	pop	{r7, pc}
 8000664:	40021000 	.word	0x40021000

08000668 <LL_GPIO_SetPinMode>:
 8000668:	b580      	push	{r7, lr}
 800066a:	b084      	sub	sp, #16
 800066c:	af00      	add	r7, sp, #0
 800066e:	60f8      	str	r0, [r7, #12]
 8000670:	60b9      	str	r1, [r7, #8]
 8000672:	607a      	str	r2, [r7, #4]
 8000674:	68fb      	ldr	r3, [r7, #12]
 8000676:	6819      	ldr	r1, [r3, #0]
 8000678:	68bb      	ldr	r3, [r7, #8]
 800067a:	68ba      	ldr	r2, [r7, #8]
 800067c:	435a      	muls	r2, r3
 800067e:	0013      	movs	r3, r2
 8000680:	005b      	lsls	r3, r3, #1
 8000682:	189b      	adds	r3, r3, r2
 8000684:	43db      	mvns	r3, r3
 8000686:	400b      	ands	r3, r1
 8000688:	001a      	movs	r2, r3
 800068a:	68bb      	ldr	r3, [r7, #8]
 800068c:	68b9      	ldr	r1, [r7, #8]
 800068e:	434b      	muls	r3, r1
 8000690:	6879      	ldr	r1, [r7, #4]
 8000692:	434b      	muls	r3, r1
 8000694:	431a      	orrs	r2, r3
 8000696:	68fb      	ldr	r3, [r7, #12]
 8000698:	601a      	str	r2, [r3, #0]
 800069a:	46c0      	nop			; (mov r8, r8)
 800069c:	46bd      	mov	sp, r7
 800069e:	b004      	add	sp, #16
 80006a0:	bd80      	pop	{r7, pc}

080006a2 <LL_GPIO_SetPinOutputType>:
 80006a2:	b580      	push	{r7, lr}
 80006a4:	b084      	sub	sp, #16
 80006a6:	af00      	add	r7, sp, #0
 80006a8:	60f8      	str	r0, [r7, #12]
 80006aa:	60b9      	str	r1, [r7, #8]
 80006ac:	607a      	str	r2, [r7, #4]
 80006ae:	68fb      	ldr	r3, [r7, #12]
 80006b0:	685b      	ldr	r3, [r3, #4]
 80006b2:	68ba      	ldr	r2, [r7, #8]
 80006b4:	43d2      	mvns	r2, r2
 80006b6:	401a      	ands	r2, r3
 80006b8:	68bb      	ldr	r3, [r7, #8]
 80006ba:	6879      	ldr	r1, [r7, #4]
 80006bc:	434b      	muls	r3, r1
 80006be:	431a      	orrs	r2, r3
 80006c0:	68fb      	ldr	r3, [r7, #12]
 80006c2:	605a      	str	r2, [r3, #4]
 80006c4:	46c0      	nop			; (mov r8, r8)
 80006c6:	46bd      	mov	sp, r7
 80006c8:	b004      	add	sp, #16
 80006ca:	bd80      	pop	{r7, pc}

080006cc <LL_GPIO_IsInputPinSet>:
 80006cc:	b580      	push	{r7, lr}
 80006ce:	b082      	sub	sp, #8
 80006d0:	af00      	add	r7, sp, #0
 80006d2:	6078      	str	r0, [r7, #4]
 80006d4:	6039      	str	r1, [r7, #0]
 80006d6:	687b      	ldr	r3, [r7, #4]
 80006d8:	691b      	ldr	r3, [r3, #16]
 80006da:	683a      	ldr	r2, [r7, #0]
 80006dc:	4013      	ands	r3, r2
 80006de:	683a      	ldr	r2, [r7, #0]
 80006e0:	1ad3      	subs	r3, r2, r3
 80006e2:	425a      	negs	r2, r3
 80006e4:	4153      	adcs	r3, r2
 80006e6:	b2db      	uxtb	r3, r3
 80006e8:	0018      	movs	r0, r3
 80006ea:	46bd      	mov	sp, r7
 80006ec:	b002      	add	sp, #8
 80006ee:	bd80      	pop	{r7, pc}

080006f0 <LL_GPIO_SetOutputPin>:
 80006f0:	b580      	push	{r7, lr}
 80006f2:	b082      	sub	sp, #8
 80006f4:	af00      	add	r7, sp, #0
 80006f6:	6078      	str	r0, [r7, #4]
 80006f8:	6039      	str	r1, [r7, #0]
 80006fa:	687b      	ldr	r3, [r7, #4]
 80006fc:	683a      	ldr	r2, [r7, #0]
 80006fe:	619a      	str	r2, [r3, #24]
 8000700:	46c0      	nop			; (mov r8, r8)
 8000702:	46bd      	mov	sp, r7
 8000704:	b002      	add	sp, #8
 8000706:	bd80      	pop	{r7, pc}

08000708 <LL_GPIO_ResetOutputPin>:
 8000708:	b580      	push	{r7, lr}
 800070a:	b082      	sub	sp, #8
 800070c:	af00      	add	r7, sp, #0
 800070e:	6078      	str	r0, [r7, #4]
 8000710:	6039      	str	r1, [r7, #0]
 8000712:	687b      	ldr	r3, [r7, #4]
 8000714:	683a      	ldr	r2, [r7, #0]
 8000716:	629a      	str	r2, [r3, #40]	; 0x28
 8000718:	46c0      	nop			; (mov r8, r8)
 800071a:	46bd      	mov	sp, r7
 800071c:	b002      	add	sp, #8
 800071e:	bd80      	pop	{r7, pc}

08000720 <LL_GPIO_TogglePin>:
 8000720:	b580      	push	{r7, lr}
 8000722:	b082      	sub	sp, #8
 8000724:	af00      	add	r7, sp, #0
 8000726:	6078      	str	r0, [r7, #4]
 8000728:	6039      	str	r1, [r7, #0]
 800072a:	687b      	ldr	r3, [r7, #4]
 800072c:	695a      	ldr	r2, [r3, #20]
 800072e:	683b      	ldr	r3, [r7, #0]
 8000730:	405a      	eors	r2, r3
 8000732:	687b      	ldr	r3, [r7, #4]
 8000734:	615a      	str	r2, [r3, #20]
 8000736:	46c0      	nop			; (mov r8, r8)
 8000738:	46bd      	mov	sp, r7
 800073a:	b002      	add	sp, #8
 800073c:	bd80      	pop	{r7, pc}
	...

08000740 <LL_EXTI_EnableIT_0_31>:
 8000740:	b580      	push	{r7, lr}
 8000742:	b082      	sub	sp, #8
 8000744:	af00      	add	r7, sp, #0
 8000746:	6078      	str	r0, [r7, #4]
 8000748:	4b04      	ldr	r3, [pc, #16]	; (800075c <LL_EXTI_EnableIT_0_31+0x1c>)
 800074a:	6819      	ldr	r1, [r3, #0]
 800074c:	4b03      	ldr	r3, [pc, #12]	; (800075c <LL_EXTI_EnableIT_0_31+0x1c>)
 800074e:	687a      	ldr	r2, [r7, #4]
 8000750:	430a      	orrs	r2, r1
 8000752:	601a      	str	r2, [r3, #0]
 8000754:	46c0      	nop			; (mov r8, r8)
 8000756:	46bd      	mov	sp, r7
 8000758:	b002      	add	sp, #8
 800075a:	bd80      	pop	{r7, pc}
 800075c:	40010400 	.word	0x40010400

08000760 <LL_EXTI_EnableRisingTrig_0_31>:
 8000760:	b580      	push	{r7, lr}
 8000762:	b082      	sub	sp, #8
 8000764:	af00      	add	r7, sp, #0
 8000766:	6078      	str	r0, [r7, #4]
 8000768:	4b04      	ldr	r3, [pc, #16]	; (800077c <LL_EXTI_EnableRisingTrig_0_31+0x1c>)
 800076a:	6899      	ldr	r1, [r3, #8]
 800076c:	4b03      	ldr	r3, [pc, #12]	; (800077c <LL_EXTI_EnableRisingTrig_0_31+0x1c>)
 800076e:	687a      	ldr	r2, [r7, #4]
 8000770:	430a      	orrs	r2, r1
 8000772:	609a      	str	r2, [r3, #8]
 8000774:	46c0      	nop			; (mov r8, r8)
 8000776:	46bd      	mov	sp, r7
 8000778:	b002      	add	sp, #8
 800077a:	bd80      	pop	{r7, pc}
 800077c:	40010400 	.word	0x40010400

08000780 <LL_EXTI_ClearFlag_0_31>:
 8000780:	b580      	push	{r7, lr}
 8000782:	b082      	sub	sp, #8
 8000784:	af00      	add	r7, sp, #0
 8000786:	6078      	str	r0, [r7, #4]
 8000788:	4b03      	ldr	r3, [pc, #12]	; (8000798 <LL_EXTI_ClearFlag_0_31+0x18>)
 800078a:	687a      	ldr	r2, [r7, #4]
 800078c:	615a      	str	r2, [r3, #20]
 800078e:	46c0      	nop			; (mov r8, r8)
 8000790:	46bd      	mov	sp, r7
 8000792:	b002      	add	sp, #8
 8000794:	bd80      	pop	{r7, pc}
 8000796:	46c0      	nop			; (mov r8, r8)
 8000798:	40010400 	.word	0x40010400

0800079c <delay>:
 800079c:	b580      	push	{r7, lr}
 800079e:	4e02      	ldr	r6, [pc, #8]	; (80007a8 <delay+0xc>)
 80007a0:	3e01      	subs	r6, #1
 80007a2:	2e00      	cmp	r6, #0
 80007a4:	d1fc      	bne.n	80007a0 <delay+0x4>
 80007a6:	bd80      	pop	{r7, pc}
 80007a8:	00001f40 	.word	0x00001f40
 80007ac:	46c0      	nop			; (mov r8, r8)

080007ae <delay_10ms>:
 80007ae:	b580      	push	{r7, lr}
 80007b0:	4e02      	ldr	r6, [pc, #8]	; (80007bc <delay_10ms+0xe>)
 80007b2:	3e01      	subs	r6, #1
 80007b4:	2e00      	cmp	r6, #0
 80007b6:	d1fc      	bne.n	80007b2 <delay_10ms+0x4>
 80007b8:	bd80      	pop	{r7, pc}
 80007ba:	ea60      	.short	0xea60
 80007bc:	0000      	.short	0x0000
 80007be:	46c0      	nop			; (mov r8, r8)

080007c0 <rcc_config>:
 80007c0:	b580      	push	{r7, lr}
 80007c2:	af00      	add	r7, sp, #0
 80007c4:	2001      	movs	r0, #1
 80007c6:	f7ff ff0f 	bl	80005e8 <LL_FLASH_SetLatency>
 80007ca:	f7ff fe37 	bl	800043c <LL_RCC_HSI_Enable>
 80007ce:	46c0      	nop			; (mov r8, r8)
 80007d0:	f7ff fe42 	bl	8000458 <LL_RCC_HSI_IsReady>
 80007d4:	0003      	movs	r3, r0
 80007d6:	2b01      	cmp	r3, #1
 80007d8:	d1fa      	bne.n	80007d0 <rcc_config+0x10>
 80007da:	23a0      	movs	r3, #160	; 0xa0
 80007dc:	039b      	lsls	r3, r3, #14
 80007de:	0019      	movs	r1, r3
 80007e0:	2000      	movs	r0, #0
 80007e2:	f7ff feb5 	bl	8000550 <LL_RCC_PLL_ConfigDomain_SYS>
 80007e6:	f7ff fe91 	bl	800050c <LL_RCC_PLL_Enable>
 80007ea:	46c0      	nop			; (mov r8, r8)
 80007ec:	f7ff fe9c 	bl	8000528 <LL_RCC_PLL_IsReady>
 80007f0:	0003      	movs	r3, r0
 80007f2:	2b01      	cmp	r3, #1
 80007f4:	d1fa      	bne.n	80007ec <rcc_config+0x2c>
 80007f6:	2000      	movs	r0, #0
 80007f8:	f7ff fe5e 	bl	80004b8 <LL_RCC_SetAHBPrescaler>
 80007fc:	2002      	movs	r0, #2
 80007fe:	f7ff fe3b 	bl	8000478 <LL_RCC_SetSysClkSource>
 8000802:	46c0      	nop			; (mov r8, r8)
 8000804:	f7ff fe4c 	bl	80004a0 <LL_RCC_GetSysClkSource>
 8000808:	0003      	movs	r3, r0
 800080a:	2b08      	cmp	r3, #8
 800080c:	d1fa      	bne.n	8000804 <rcc_config+0x44>
 800080e:	2000      	movs	r0, #0
 8000810:	f7ff fe66 	bl	80004e0 <LL_RCC_SetAPB1Prescaler>
 8000814:	4b02      	ldr	r3, [pc, #8]	; (8000820 <rcc_config+0x60>)
 8000816:	4a03      	ldr	r2, [pc, #12]	; (8000824 <rcc_config+0x64>)
 8000818:	601a      	str	r2, [r3, #0]
 800081a:	46c0      	nop			; (mov r8, r8)
 800081c:	46bd      	mov	sp, r7
 800081e:	bd80      	pop	{r7, pc}
 8000820:	20000004 	.word	0x20000004
 8000824:	02dc6c00 	.word	0x02dc6c00

08000828 <digital_clock>:
 8000828:	b580      	push	{r7, lr}
 800082a:	af00      	add	r7, sp, #0
 800082c:	2380      	movs	r3, #128	; 0x80
 800082e:	029b      	lsls	r3, r3, #10
 8000830:	0018      	movs	r0, r3
 8000832:	f7ff feed 	bl	8000610 <LL_AHB1_GRP1_EnableClock>
 8000836:	2380      	movs	r3, #128	; 0x80
 8000838:	02db      	lsls	r3, r3, #11
 800083a:	0018      	movs	r0, r3
 800083c:	f7ff fee8 	bl	8000610 <LL_AHB1_GRP1_EnableClock>
 8000840:	2380      	movs	r3, #128	; 0x80
 8000842:	031b      	lsls	r3, r3, #12
 8000844:	0018      	movs	r0, r3
 8000846:	f7ff fee3 	bl	8000610 <LL_AHB1_GRP1_EnableClock>
 800084a:	4b4d      	ldr	r3, [pc, #308]	; (8000980 <digital_clock+0x158>)
 800084c:	2201      	movs	r2, #1
 800084e:	2108      	movs	r1, #8
 8000850:	0018      	movs	r0, r3
 8000852:	f7ff ff09 	bl	8000668 <LL_GPIO_SetPinMode>
 8000856:	4b4a      	ldr	r3, [pc, #296]	; (8000980 <digital_clock+0x158>)
 8000858:	2201      	movs	r2, #1
 800085a:	2110      	movs	r1, #16
 800085c:	0018      	movs	r0, r3
 800085e:	f7ff ff03 	bl	8000668 <LL_GPIO_SetPinMode>
 8000862:	4b47      	ldr	r3, [pc, #284]	; (8000980 <digital_clock+0x158>)
 8000864:	2201      	movs	r2, #1
 8000866:	2120      	movs	r1, #32
 8000868:	0018      	movs	r0, r3
 800086a:	f7ff fefd 	bl	8000668 <LL_GPIO_SetPinMode>
 800086e:	4b44      	ldr	r3, [pc, #272]	; (8000980 <digital_clock+0x158>)
 8000870:	2201      	movs	r2, #1
 8000872:	2140      	movs	r1, #64	; 0x40
 8000874:	0018      	movs	r0, r3
 8000876:	f7ff fef7 	bl	8000668 <LL_GPIO_SetPinMode>
 800087a:	4b41      	ldr	r3, [pc, #260]	; (8000980 <digital_clock+0x158>)
 800087c:	2201      	movs	r2, #1
 800087e:	2180      	movs	r1, #128	; 0x80
 8000880:	0018      	movs	r0, r3
 8000882:	f7ff fef1 	bl	8000668 <LL_GPIO_SetPinMode>
 8000886:	2380      	movs	r3, #128	; 0x80
 8000888:	01db      	lsls	r3, r3, #7
 800088a:	483d      	ldr	r0, [pc, #244]	; (8000980 <digital_clock+0x158>)
 800088c:	2201      	movs	r2, #1
 800088e:	0019      	movs	r1, r3
 8000890:	f7ff feea 	bl	8000668 <LL_GPIO_SetPinMode>
 8000894:	2380      	movs	r3, #128	; 0x80
 8000896:	021b      	lsls	r3, r3, #8
 8000898:	4839      	ldr	r0, [pc, #228]	; (8000980 <digital_clock+0x158>)
 800089a:	2201      	movs	r2, #1
 800089c:	0019      	movs	r1, r3
 800089e:	f7ff fee3 	bl	8000668 <LL_GPIO_SetPinMode>
 80008a2:	2380      	movs	r3, #128	; 0x80
 80008a4:	005b      	lsls	r3, r3, #1
 80008a6:	4836      	ldr	r0, [pc, #216]	; (8000980 <digital_clock+0x158>)
 80008a8:	2201      	movs	r2, #1
 80008aa:	0019      	movs	r1, r3
 80008ac:	f7ff fedc 	bl	8000668 <LL_GPIO_SetPinMode>
 80008b0:	2380      	movs	r3, #128	; 0x80
 80008b2:	009b      	lsls	r3, r3, #2
 80008b4:	4832      	ldr	r0, [pc, #200]	; (8000980 <digital_clock+0x158>)
 80008b6:	2201      	movs	r2, #1
 80008b8:	0019      	movs	r1, r3
 80008ba:	f7ff fed5 	bl	8000668 <LL_GPIO_SetPinMode>
 80008be:	2380      	movs	r3, #128	; 0x80
 80008c0:	00db      	lsls	r3, r3, #3
 80008c2:	482f      	ldr	r0, [pc, #188]	; (8000980 <digital_clock+0x158>)
 80008c4:	2201      	movs	r2, #1
 80008c6:	0019      	movs	r1, r3
 80008c8:	f7ff fece 	bl	8000668 <LL_GPIO_SetPinMode>
 80008cc:	2380      	movs	r3, #128	; 0x80
 80008ce:	011b      	lsls	r3, r3, #4
 80008d0:	482b      	ldr	r0, [pc, #172]	; (8000980 <digital_clock+0x158>)
 80008d2:	2201      	movs	r2, #1
 80008d4:	0019      	movs	r1, r3
 80008d6:	f7ff fec7 	bl	8000668 <LL_GPIO_SetPinMode>
 80008da:	2390      	movs	r3, #144	; 0x90
 80008dc:	05db      	lsls	r3, r3, #23
 80008de:	2200      	movs	r2, #0
 80008e0:	2101      	movs	r1, #1
 80008e2:	0018      	movs	r0, r3
 80008e4:	f7ff fec0 	bl	8000668 <LL_GPIO_SetPinMode>
 80008e8:	4b25      	ldr	r3, [pc, #148]	; (8000980 <digital_clock+0x158>)
 80008ea:	2200      	movs	r2, #0
 80008ec:	2108      	movs	r1, #8
 80008ee:	0018      	movs	r0, r3
 80008f0:	f7ff fed7 	bl	80006a2 <LL_GPIO_SetPinOutputType>
 80008f4:	4b22      	ldr	r3, [pc, #136]	; (8000980 <digital_clock+0x158>)
 80008f6:	2200      	movs	r2, #0
 80008f8:	2110      	movs	r1, #16
 80008fa:	0018      	movs	r0, r3
 80008fc:	f7ff fed1 	bl	80006a2 <LL_GPIO_SetPinOutputType>
 8000900:	4b1f      	ldr	r3, [pc, #124]	; (8000980 <digital_clock+0x158>)
 8000902:	2200      	movs	r2, #0
 8000904:	2120      	movs	r1, #32
 8000906:	0018      	movs	r0, r3
 8000908:	f7ff fecb 	bl	80006a2 <LL_GPIO_SetPinOutputType>
 800090c:	4b1c      	ldr	r3, [pc, #112]	; (8000980 <digital_clock+0x158>)
 800090e:	2200      	movs	r2, #0
 8000910:	2140      	movs	r1, #64	; 0x40
 8000912:	0018      	movs	r0, r3
 8000914:	f7ff fec5 	bl	80006a2 <LL_GPIO_SetPinOutputType>
 8000918:	4b19      	ldr	r3, [pc, #100]	; (8000980 <digital_clock+0x158>)
 800091a:	2200      	movs	r2, #0
 800091c:	2180      	movs	r1, #128	; 0x80
 800091e:	0018      	movs	r0, r3
 8000920:	f7ff febf 	bl	80006a2 <LL_GPIO_SetPinOutputType>
 8000924:	2380      	movs	r3, #128	; 0x80
 8000926:	01db      	lsls	r3, r3, #7
 8000928:	4815      	ldr	r0, [pc, #84]	; (8000980 <digital_clock+0x158>)
 800092a:	2200      	movs	r2, #0
 800092c:	0019      	movs	r1, r3
 800092e:	f7ff feb8 	bl	80006a2 <LL_GPIO_SetPinOutputType>
 8000932:	2380      	movs	r3, #128	; 0x80
 8000934:	021b      	lsls	r3, r3, #8
 8000936:	4812      	ldr	r0, [pc, #72]	; (8000980 <digital_clock+0x158>)
 8000938:	2200      	movs	r2, #0
 800093a:	0019      	movs	r1, r3
 800093c:	f7ff feb1 	bl	80006a2 <LL_GPIO_SetPinOutputType>
 8000940:	2380      	movs	r3, #128	; 0x80
 8000942:	005b      	lsls	r3, r3, #1
 8000944:	480e      	ldr	r0, [pc, #56]	; (8000980 <digital_clock+0x158>)
 8000946:	2200      	movs	r2, #0
 8000948:	0019      	movs	r1, r3
 800094a:	f7ff feaa 	bl	80006a2 <LL_GPIO_SetPinOutputType>
 800094e:	2380      	movs	r3, #128	; 0x80
 8000950:	009b      	lsls	r3, r3, #2
 8000952:	480b      	ldr	r0, [pc, #44]	; (8000980 <digital_clock+0x158>)
 8000954:	2200      	movs	r2, #0
 8000956:	0019      	movs	r1, r3
 8000958:	f7ff fea3 	bl	80006a2 <LL_GPIO_SetPinOutputType>
 800095c:	2380      	movs	r3, #128	; 0x80
 800095e:	00db      	lsls	r3, r3, #3
 8000960:	4807      	ldr	r0, [pc, #28]	; (8000980 <digital_clock+0x158>)
 8000962:	2200      	movs	r2, #0
 8000964:	0019      	movs	r1, r3
 8000966:	f7ff fe9c 	bl	80006a2 <LL_GPIO_SetPinOutputType>
 800096a:	2380      	movs	r3, #128	; 0x80
 800096c:	011b      	lsls	r3, r3, #4
 800096e:	4804      	ldr	r0, [pc, #16]	; (8000980 <digital_clock+0x158>)
 8000970:	2200      	movs	r2, #0
 8000972:	0019      	movs	r1, r3
 8000974:	f7ff fe95 	bl	80006a2 <LL_GPIO_SetPinOutputType>
 8000978:	46c0      	nop			; (mov r8, r8)
 800097a:	46bd      	mov	sp, r7
 800097c:	bd80      	pop	{r7, pc}
 800097e:	46c0      	nop			; (mov r8, r8)
 8000980:	48000400 	.word	0x48000400

08000984 <disp_digital_indicator>:
 8000984:	b5b0      	push	{r4, r5, r7, lr}
 8000986:	b08a      	sub	sp, #40	; 0x28
 8000988:	af00      	add	r7, sp, #0
 800098a:	6078      	str	r0, [r7, #4]
 800098c:	210c      	movs	r1, #12
 800098e:	187b      	adds	r3, r7, r1
 8000990:	4a0f      	ldr	r2, [pc, #60]	; (80009d0 <disp_digital_indicator+0x4c>)
 8000992:	ca31      	ldmia	r2!, {r0, r4, r5}
 8000994:	c331      	stmia	r3!, {r0, r4, r5}
 8000996:	ca31      	ldmia	r2!, {r0, r4, r5}
 8000998:	c331      	stmia	r3!, {r0, r4, r5}
 800099a:	6812      	ldr	r2, [r2, #0]
 800099c:	601a      	str	r2, [r3, #0]
 800099e:	000c      	movs	r4, r1
 80009a0:	187b      	adds	r3, r7, r1
 80009a2:	8a9b      	ldrh	r3, [r3, #20]
 80009a4:	001a      	movs	r2, r3
 80009a6:	4b0b      	ldr	r3, [pc, #44]	; (80009d4 <disp_digital_indicator+0x50>)
 80009a8:	0011      	movs	r1, r2
 80009aa:	0018      	movs	r0, r3
 80009ac:	f7ff feac 	bl	8000708 <LL_GPIO_ResetOutputPin>
 80009b0:	0021      	movs	r1, r4
 80009b2:	187b      	adds	r3, r7, r1
 80009b4:	687a      	ldr	r2, [r7, #4]
 80009b6:	0052      	lsls	r2, r2, #1
 80009b8:	5ad3      	ldrh	r3, [r2, r3]
 80009ba:	001a      	movs	r2, r3
 80009bc:	4b05      	ldr	r3, [pc, #20]	; (80009d4 <disp_digital_indicator+0x50>)
 80009be:	0011      	movs	r1, r2
 80009c0:	0018      	movs	r0, r3
 80009c2:	f7ff fe95 	bl	80006f0 <LL_GPIO_SetOutputPin>
 80009c6:	46c0      	nop			; (mov r8, r8)
 80009c8:	46bd      	mov	sp, r7
 80009ca:	b00a      	add	sp, #40	; 0x28
 80009cc:	bdb0      	pop	{r4, r5, r7, pc}
 80009ce:	46c0      	nop			; (mov r8, r8)
 80009d0:	08001018 	.word	0x08001018
 80009d4:	48000400 	.word	0x48000400

080009d8 <digital_rank>:
 80009d8:	b580      	push	{r7, lr}
 80009da:	b082      	sub	sp, #8
 80009dc:	af00      	add	r7, sp, #0
 80009de:	6078      	str	r0, [r7, #4]
 80009e0:	687b      	ldr	r3, [r7, #4]
 80009e2:	2b01      	cmp	r3, #1
 80009e4:	d026      	beq.n	8000a34 <digital_rank+0x5c>
 80009e6:	dc02      	bgt.n	80009ee <digital_rank+0x16>
 80009e8:	2b00      	cmp	r3, #0
 80009ea:	d032      	beq.n	8000a52 <digital_rank+0x7a>
 80009ec:	e040      	b.n	8000a70 <digital_rank+0x98>
 80009ee:	2b02      	cmp	r3, #2
 80009f0:	d011      	beq.n	8000a16 <digital_rank+0x3e>
 80009f2:	2b03      	cmp	r3, #3
 80009f4:	d000      	beq.n	80009f8 <digital_rank+0x20>
 80009f6:	e03b      	b.n	8000a70 <digital_rank+0x98>
 80009f8:	23e0      	movs	r3, #224	; 0xe0
 80009fa:	011b      	lsls	r3, r3, #4
 80009fc:	4a1e      	ldr	r2, [pc, #120]	; (8000a78 <digital_rank+0xa0>)
 80009fe:	0019      	movs	r1, r3
 8000a00:	0010      	movs	r0, r2
 8000a02:	f7ff fe75 	bl	80006f0 <LL_GPIO_SetOutputPin>
 8000a06:	2380      	movs	r3, #128	; 0x80
 8000a08:	005b      	lsls	r3, r3, #1
 8000a0a:	4a1b      	ldr	r2, [pc, #108]	; (8000a78 <digital_rank+0xa0>)
 8000a0c:	0019      	movs	r1, r3
 8000a0e:	0010      	movs	r0, r2
 8000a10:	f7ff fe7a 	bl	8000708 <LL_GPIO_ResetOutputPin>
 8000a14:	e02c      	b.n	8000a70 <digital_rank+0x98>
 8000a16:	23d0      	movs	r3, #208	; 0xd0
 8000a18:	011b      	lsls	r3, r3, #4
 8000a1a:	4a17      	ldr	r2, [pc, #92]	; (8000a78 <digital_rank+0xa0>)
 8000a1c:	0019      	movs	r1, r3
 8000a1e:	0010      	movs	r0, r2
 8000a20:	f7ff fe66 	bl	80006f0 <LL_GPIO_SetOutputPin>
 8000a24:	2380      	movs	r3, #128	; 0x80
 8000a26:	009b      	lsls	r3, r3, #2
 8000a28:	4a13      	ldr	r2, [pc, #76]	; (8000a78 <digital_rank+0xa0>)
 8000a2a:	0019      	movs	r1, r3
 8000a2c:	0010      	movs	r0, r2
 8000a2e:	f7ff fe6b 	bl	8000708 <LL_GPIO_ResetOutputPin>
 8000a32:	e01d      	b.n	8000a70 <digital_rank+0x98>
 8000a34:	23b0      	movs	r3, #176	; 0xb0
 8000a36:	011b      	lsls	r3, r3, #4
 8000a38:	4a0f      	ldr	r2, [pc, #60]	; (8000a78 <digital_rank+0xa0>)
 8000a3a:	0019      	movs	r1, r3
 8000a3c:	0010      	movs	r0, r2
 8000a3e:	f7ff fe57 	bl	80006f0 <LL_GPIO_SetOutputPin>
 8000a42:	2380      	movs	r3, #128	; 0x80
 8000a44:	00db      	lsls	r3, r3, #3
 8000a46:	4a0c      	ldr	r2, [pc, #48]	; (8000a78 <digital_rank+0xa0>)
 8000a48:	0019      	movs	r1, r3
 8000a4a:	0010      	movs	r0, r2
 8000a4c:	f7ff fe5c 	bl	8000708 <LL_GPIO_ResetOutputPin>
 8000a50:	e00e      	b.n	8000a70 <digital_rank+0x98>
 8000a52:	23e0      	movs	r3, #224	; 0xe0
 8000a54:	00db      	lsls	r3, r3, #3
 8000a56:	4a08      	ldr	r2, [pc, #32]	; (8000a78 <digital_rank+0xa0>)
 8000a58:	0019      	movs	r1, r3
 8000a5a:	0010      	movs	r0, r2
 8000a5c:	f7ff fe48 	bl	80006f0 <LL_GPIO_SetOutputPin>
 8000a60:	2380      	movs	r3, #128	; 0x80
 8000a62:	011b      	lsls	r3, r3, #4
 8000a64:	4a04      	ldr	r2, [pc, #16]	; (8000a78 <digital_rank+0xa0>)
 8000a66:	0019      	movs	r1, r3
 8000a68:	0010      	movs	r0, r2
 8000a6a:	f7ff fe4d 	bl	8000708 <LL_GPIO_ResetOutputPin>
 8000a6e:	46c0      	nop			; (mov r8, r8)
 8000a70:	46c0      	nop			; (mov r8, r8)
 8000a72:	46bd      	mov	sp, r7
 8000a74:	b002      	add	sp, #8
 8000a76:	bd80      	pop	{r7, pc}
 8000a78:	48000400 	.word	0x48000400

08000a7c <gpio_config>:
 8000a7c:	b580      	push	{r7, lr}
 8000a7e:	af00      	add	r7, sp, #0
 8000a80:	2380      	movs	r3, #128	; 0x80
 8000a82:	031b      	lsls	r3, r3, #12
 8000a84:	0018      	movs	r0, r3
 8000a86:	f7ff fdc3 	bl	8000610 <LL_AHB1_GRP1_EnableClock>
 8000a8a:	2380      	movs	r3, #128	; 0x80
 8000a8c:	005b      	lsls	r3, r3, #1
 8000a8e:	4812      	ldr	r0, [pc, #72]	; (8000ad8 <gpio_config+0x5c>)
 8000a90:	2201      	movs	r2, #1
 8000a92:	0019      	movs	r1, r3
 8000a94:	f7ff fde8 	bl	8000668 <LL_GPIO_SetPinMode>
 8000a98:	2380      	movs	r3, #128	; 0x80
 8000a9a:	009b      	lsls	r3, r3, #2
 8000a9c:	480e      	ldr	r0, [pc, #56]	; (8000ad8 <gpio_config+0x5c>)
 8000a9e:	2201      	movs	r2, #1
 8000aa0:	0019      	movs	r1, r3
 8000aa2:	f7ff fde1 	bl	8000668 <LL_GPIO_SetPinMode>
 8000aa6:	2380      	movs	r3, #128	; 0x80
 8000aa8:	005b      	lsls	r3, r3, #1
 8000aaa:	480b      	ldr	r0, [pc, #44]	; (8000ad8 <gpio_config+0x5c>)
 8000aac:	2200      	movs	r2, #0
 8000aae:	0019      	movs	r1, r3
 8000ab0:	f7ff fdf7 	bl	80006a2 <LL_GPIO_SetPinOutputType>
 8000ab4:	2380      	movs	r3, #128	; 0x80
 8000ab6:	009b      	lsls	r3, r3, #2
 8000ab8:	4807      	ldr	r0, [pc, #28]	; (8000ad8 <gpio_config+0x5c>)
 8000aba:	2200      	movs	r2, #0
 8000abc:	0019      	movs	r1, r3
 8000abe:	f7ff fdf0 	bl	80006a2 <LL_GPIO_SetPinOutputType>
 8000ac2:	2380      	movs	r3, #128	; 0x80
 8000ac4:	009b      	lsls	r3, r3, #2
 8000ac6:	4a04      	ldr	r2, [pc, #16]	; (8000ad8 <gpio_config+0x5c>)
 8000ac8:	0019      	movs	r1, r3
 8000aca:	0010      	movs	r0, r2
 8000acc:	f7ff fe10 	bl	80006f0 <LL_GPIO_SetOutputPin>
 8000ad0:	46c0      	nop			; (mov r8, r8)
 8000ad2:	46bd      	mov	sp, r7
 8000ad4:	bd80      	pop	{r7, pc}
 8000ad6:	46c0      	nop			; (mov r8, r8)
 8000ad8:	48000800 	.word	0x48000800

08000adc <Numb_rank>:
 8000adc:	b580      	push	{r7, lr}
 8000ade:	b084      	sub	sp, #16
 8000ae0:	af00      	add	r7, sp, #0
 8000ae2:	6078      	str	r0, [r7, #4]
 8000ae4:	6039      	str	r1, [r7, #0]
 8000ae6:	683b      	ldr	r3, [r7, #0]
 8000ae8:	2b01      	cmp	r3, #1
 8000aea:	d010      	beq.n	8000b0e <Numb_rank+0x32>
 8000aec:	dc02      	bgt.n	8000af4 <Numb_rank+0x18>
 8000aee:	2b00      	cmp	r3, #0
 8000af0:	d005      	beq.n	8000afe <Numb_rank+0x22>
 8000af2:	e030      	b.n	8000b56 <Numb_rank+0x7a>
 8000af4:	2b02      	cmp	r3, #2
 8000af6:	d017      	beq.n	8000b28 <Numb_rank+0x4c>
 8000af8:	2b03      	cmp	r3, #3
 8000afa:	d023      	beq.n	8000b44 <Numb_rank+0x68>
 8000afc:	e02b      	b.n	8000b56 <Numb_rank+0x7a>
 8000afe:	687b      	ldr	r3, [r7, #4]
 8000b00:	210a      	movs	r1, #10
 8000b02:	0018      	movs	r0, r3
 8000b04:	f7ff fbe6 	bl	80002d4 <__aeabi_idivmod>
 8000b08:	000b      	movs	r3, r1
 8000b0a:	60fb      	str	r3, [r7, #12]
 8000b0c:	e023      	b.n	8000b56 <Numb_rank+0x7a>
 8000b0e:	687b      	ldr	r3, [r7, #4]
 8000b10:	2164      	movs	r1, #100	; 0x64
 8000b12:	0018      	movs	r0, r3
 8000b14:	f7ff fbde 	bl	80002d4 <__aeabi_idivmod>
 8000b18:	000b      	movs	r3, r1
 8000b1a:	210a      	movs	r1, #10
 8000b1c:	0018      	movs	r0, r3
 8000b1e:	f7ff faf3 	bl	8000108 <__divsi3>
 8000b22:	0003      	movs	r3, r0
 8000b24:	60fb      	str	r3, [r7, #12]
 8000b26:	e016      	b.n	8000b56 <Numb_rank+0x7a>
 8000b28:	687a      	ldr	r2, [r7, #4]
 8000b2a:	23fa      	movs	r3, #250	; 0xfa
 8000b2c:	0099      	lsls	r1, r3, #2
 8000b2e:	0010      	movs	r0, r2
 8000b30:	f7ff fbd0 	bl	80002d4 <__aeabi_idivmod>
 8000b34:	000b      	movs	r3, r1
 8000b36:	2164      	movs	r1, #100	; 0x64
 8000b38:	0018      	movs	r0, r3
 8000b3a:	f7ff fae5 	bl	8000108 <__divsi3>
 8000b3e:	0003      	movs	r3, r0
 8000b40:	60fb      	str	r3, [r7, #12]
 8000b42:	e008      	b.n	8000b56 <Numb_rank+0x7a>
 8000b44:	687a      	ldr	r2, [r7, #4]
 8000b46:	23fa      	movs	r3, #250	; 0xfa
 8000b48:	0099      	lsls	r1, r3, #2
 8000b4a:	0010      	movs	r0, r2
 8000b4c:	f7ff fadc 	bl	8000108 <__divsi3>
 8000b50:	0003      	movs	r3, r0
 8000b52:	60fb      	str	r3, [r7, #12]
 8000b54:	46c0      	nop			; (mov r8, r8)
 8000b56:	68fb      	ldr	r3, [r7, #12]
 8000b58:	0018      	movs	r0, r3
 8000b5a:	46bd      	mov	sp, r7
 8000b5c:	b004      	add	sp, #16
 8000b5e:	bd80      	pop	{r7, pc}

08000b60 <out_off_range>:
 8000b60:	b580      	push	{r7, lr}
 8000b62:	b084      	sub	sp, #16
 8000b64:	af00      	add	r7, sp, #0
 8000b66:	6078      	str	r0, [r7, #4]
 8000b68:	687b      	ldr	r3, [r7, #4]
 8000b6a:	4a24      	ldr	r2, [pc, #144]	; (8000bfc <out_off_range+0x9c>)
 8000b6c:	4293      	cmp	r3, r2
 8000b6e:	dd21      	ble.n	8000bb4 <out_off_range+0x54>
 8000b70:	2300      	movs	r3, #0
 8000b72:	60fb      	str	r3, [r7, #12]
 8000b74:	e01a      	b.n	8000bac <out_off_range+0x4c>
 8000b76:	2002      	movs	r0, #2
 8000b78:	f7ff ff2e 	bl	80009d8 <digital_rank>
 8000b7c:	200b      	movs	r0, #11
 8000b7e:	f7ff ff01 	bl	8000984 <disp_digital_indicator>
 8000b82:	f7ff fe0b 	bl	800079c <delay>
 8000b86:	2001      	movs	r0, #1
 8000b88:	f7ff ff26 	bl	80009d8 <digital_rank>
 8000b8c:	200c      	movs	r0, #12
 8000b8e:	f7ff fef9 	bl	8000984 <disp_digital_indicator>
 8000b92:	f7ff fe03 	bl	800079c <delay>
 8000b96:	2000      	movs	r0, #0
 8000b98:	f7ff ff1e 	bl	80009d8 <digital_rank>
 8000b9c:	200c      	movs	r0, #12
 8000b9e:	f7ff fef1 	bl	8000984 <disp_digital_indicator>
 8000ba2:	f7ff fdfb 	bl	800079c <delay>
 8000ba6:	68fb      	ldr	r3, [r7, #12]
 8000ba8:	3301      	adds	r3, #1
 8000baa:	60fb      	str	r3, [r7, #12]
 8000bac:	68fb      	ldr	r3, [r7, #12]
 8000bae:	2b0f      	cmp	r3, #15
 8000bb0:	dde1      	ble.n	8000b76 <out_off_range+0x16>
 8000bb2:	e01f      	b.n	8000bf4 <out_off_range+0x94>
 8000bb4:	2003      	movs	r0, #3
 8000bb6:	f7ff ff0f 	bl	80009d8 <digital_rank>
 8000bba:	200d      	movs	r0, #13
 8000bbc:	f7ff fee2 	bl	8000984 <disp_digital_indicator>
 8000bc0:	f7ff fdec 	bl	800079c <delay>
 8000bc4:	2002      	movs	r0, #2
 8000bc6:	f7ff ff07 	bl	80009d8 <digital_rank>
 8000bca:	200b      	movs	r0, #11
 8000bcc:	f7ff feda 	bl	8000984 <disp_digital_indicator>
 8000bd0:	f7ff fde4 	bl	800079c <delay>
 8000bd4:	2001      	movs	r0, #1
 8000bd6:	f7ff feff 	bl	80009d8 <digital_rank>
 8000bda:	200c      	movs	r0, #12
 8000bdc:	f7ff fed2 	bl	8000984 <disp_digital_indicator>
 8000be0:	f7ff fddc 	bl	800079c <delay>
 8000be4:	2000      	movs	r0, #0
 8000be6:	f7ff fef7 	bl	80009d8 <digital_rank>
 8000bea:	200c      	movs	r0, #12
 8000bec:	f7ff feca 	bl	8000984 <disp_digital_indicator>
 8000bf0:	f7ff fdd4 	bl	800079c <delay>
 8000bf4:	46c0      	nop			; (mov r8, r8)
 8000bf6:	46bd      	mov	sp, r7
 8000bf8:	b004      	add	sp, #16
 8000bfa:	bd80      	pop	{r7, pc}
 8000bfc:	0000270f 	.word	0x0000270f

08000c00 <show_digital>:
 8000c00:	b590      	push	{r4, r7, lr}
 8000c02:	b085      	sub	sp, #20
 8000c04:	af00      	add	r7, sp, #0
 8000c06:	6078      	str	r0, [r7, #4]
 8000c08:	687b      	ldr	r3, [r7, #4]
 8000c0a:	4a30      	ldr	r2, [pc, #192]	; (8000ccc <show_digital+0xcc>)
 8000c0c:	4293      	cmp	r3, r2
 8000c0e:	dc55      	bgt.n	8000cbc <show_digital+0xbc>
 8000c10:	687b      	ldr	r3, [r7, #4]
 8000c12:	4a2f      	ldr	r2, [pc, #188]	; (8000cd0 <show_digital+0xd0>)
 8000c14:	4293      	cmp	r3, r2
 8000c16:	db51      	blt.n	8000cbc <show_digital+0xbc>
 8000c18:	2300      	movs	r3, #0
 8000c1a:	60fb      	str	r3, [r7, #12]
 8000c1c:	e04a      	b.n	8000cb4 <show_digital+0xb4>
 8000c1e:	687b      	ldr	r3, [r7, #4]
 8000c20:	2b00      	cmp	r3, #0
 8000c22:	db21      	blt.n	8000c68 <show_digital+0x68>
 8000c24:	68fb      	ldr	r3, [r7, #12]
 8000c26:	4a2b      	ldr	r2, [pc, #172]	; (8000cd4 <show_digital+0xd4>)
 8000c28:	4013      	ands	r3, r2
 8000c2a:	d504      	bpl.n	8000c36 <show_digital+0x36>
 8000c2c:	3b01      	subs	r3, #1
 8000c2e:	2204      	movs	r2, #4
 8000c30:	4252      	negs	r2, r2
 8000c32:	4313      	orrs	r3, r2
 8000c34:	3301      	adds	r3, #1
 8000c36:	0018      	movs	r0, r3
 8000c38:	f7ff fece 	bl	80009d8 <digital_rank>
 8000c3c:	68fb      	ldr	r3, [r7, #12]
 8000c3e:	4a25      	ldr	r2, [pc, #148]	; (8000cd4 <show_digital+0xd4>)
 8000c40:	4013      	ands	r3, r2
 8000c42:	d504      	bpl.n	8000c4e <show_digital+0x4e>
 8000c44:	3b01      	subs	r3, #1
 8000c46:	2204      	movs	r2, #4
 8000c48:	4252      	negs	r2, r2
 8000c4a:	4313      	orrs	r3, r2
 8000c4c:	3301      	adds	r3, #1
 8000c4e:	001a      	movs	r2, r3
 8000c50:	687b      	ldr	r3, [r7, #4]
 8000c52:	0011      	movs	r1, r2
 8000c54:	0018      	movs	r0, r3
 8000c56:	f7ff ff41 	bl	8000adc <Numb_rank>
 8000c5a:	0003      	movs	r3, r0
 8000c5c:	0018      	movs	r0, r3
 8000c5e:	f7ff fe91 	bl	8000984 <disp_digital_indicator>
 8000c62:	f7ff fd9b 	bl	800079c <delay>
 8000c66:	e022      	b.n	8000cae <show_digital+0xae>
 8000c68:	2003      	movs	r0, #3
 8000c6a:	f7ff feb5 	bl	80009d8 <digital_rank>
 8000c6e:	200d      	movs	r0, #13
 8000c70:	f7ff fe88 	bl	8000984 <disp_digital_indicator>
 8000c74:	f7ff fd92 	bl	800079c <delay>
 8000c78:	68fb      	ldr	r3, [r7, #12]
 8000c7a:	2103      	movs	r1, #3
 8000c7c:	0018      	movs	r0, r3
 8000c7e:	f7ff fb29 	bl	80002d4 <__aeabi_idivmod>
 8000c82:	000b      	movs	r3, r1
 8000c84:	0018      	movs	r0, r3
 8000c86:	f7ff fea7 	bl	80009d8 <digital_rank>
 8000c8a:	687b      	ldr	r3, [r7, #4]
 8000c8c:	425c      	negs	r4, r3
 8000c8e:	68fb      	ldr	r3, [r7, #12]
 8000c90:	2103      	movs	r1, #3
 8000c92:	0018      	movs	r0, r3
 8000c94:	f7ff fb1e 	bl	80002d4 <__aeabi_idivmod>
 8000c98:	000b      	movs	r3, r1
 8000c9a:	0019      	movs	r1, r3
 8000c9c:	0020      	movs	r0, r4
 8000c9e:	f7ff ff1d 	bl	8000adc <Numb_rank>
 8000ca2:	0003      	movs	r3, r0
 8000ca4:	0018      	movs	r0, r3
 8000ca6:	f7ff fe6d 	bl	8000984 <disp_digital_indicator>
 8000caa:	f7ff fd77 	bl	800079c <delay>
 8000cae:	68fb      	ldr	r3, [r7, #12]
 8000cb0:	3301      	adds	r3, #1
 8000cb2:	60fb      	str	r3, [r7, #12]
 8000cb4:	68fb      	ldr	r3, [r7, #12]
 8000cb6:	2b0f      	cmp	r3, #15
 8000cb8:	ddb1      	ble.n	8000c1e <show_digital+0x1e>
 8000cba:	e003      	b.n	8000cc4 <show_digital+0xc4>
 8000cbc:	687b      	ldr	r3, [r7, #4]
 8000cbe:	0018      	movs	r0, r3
 8000cc0:	f7ff ff4e 	bl	8000b60 <out_off_range>
 8000cc4:	46c0      	nop			; (mov r8, r8)
 8000cc6:	46bd      	mov	sp, r7
 8000cc8:	b005      	add	sp, #20
 8000cca:	bd90      	pop	{r4, r7, pc}
 8000ccc:	0000270f 	.word	0x0000270f
 8000cd0:	fffffc19 	.word	0xfffffc19
 8000cd4:	80000003 	.word	0x80000003

08000cd8 <exti_config>:
 8000cd8:	b580      	push	{r7, lr}
 8000cda:	af00      	add	r7, sp, #0
 8000cdc:	2001      	movs	r0, #1
 8000cde:	f7ff fcad 	bl	800063c <LL_APB1_GRP2_EnableClock>
 8000ce2:	2100      	movs	r1, #0
 8000ce4:	2000      	movs	r0, #0
 8000ce6:	f7ff fc59 	bl	800059c <LL_SYSCFG_SetEXTISource>
 8000cea:	2001      	movs	r0, #1
 8000cec:	f7ff fd28 	bl	8000740 <LL_EXTI_EnableIT_0_31>
 8000cf0:	2001      	movs	r0, #1
 8000cf2:	f7ff fd35 	bl	8000760 <LL_EXTI_EnableRisingTrig_0_31>
 8000cf6:	2005      	movs	r0, #5
 8000cf8:	f7ff fb1c 	bl	8000334 <NVIC_EnableIRQ>
 8000cfc:	2100      	movs	r1, #0
 8000cfe:	2005      	movs	r0, #5
 8000d00:	f7ff fb2e 	bl	8000360 <NVIC_SetPriority>
 8000d04:	46c0      	nop			; (mov r8, r8)
 8000d06:	46bd      	mov	sp, r7
 8000d08:	bd80      	pop	{r7, pc}
	...

08000d0c <EXTI0_1_IRQHandler>:
 8000d0c:	b580      	push	{r7, lr}
 8000d0e:	af00      	add	r7, sp, #0
 8000d10:	2390      	movs	r3, #144	; 0x90
 8000d12:	05db      	lsls	r3, r3, #23
 8000d14:	2101      	movs	r1, #1
 8000d16:	0018      	movs	r0, r3
 8000d18:	f7ff fcd8 	bl	80006cc <LL_GPIO_IsInputPinSet>
 8000d1c:	1e03      	subs	r3, r0, #0
 8000d1e:	d023      	beq.n	8000d68 <EXTI0_1_IRQHandler+0x5c>
 8000d20:	4b14      	ldr	r3, [pc, #80]	; (8000d74 <EXTI0_1_IRQHandler+0x68>)
 8000d22:	2201      	movs	r2, #1
 8000d24:	601a      	str	r2, [r3, #0]
 8000d26:	4b13      	ldr	r3, [pc, #76]	; (8000d74 <EXTI0_1_IRQHandler+0x68>)
 8000d28:	681b      	ldr	r3, [r3, #0]
 8000d2a:	2b01      	cmp	r3, #1
 8000d2c:	d106      	bne.n	8000d3c <EXTI0_1_IRQHandler+0x30>
 8000d2e:	4b12      	ldr	r3, [pc, #72]	; (8000d78 <EXTI0_1_IRQHandler+0x6c>)
 8000d30:	681b      	ldr	r3, [r3, #0]
 8000d32:	1c5a      	adds	r2, r3, #1
 8000d34:	4b10      	ldr	r3, [pc, #64]	; (8000d78 <EXTI0_1_IRQHandler+0x6c>)
 8000d36:	601a      	str	r2, [r3, #0]
 8000d38:	f7ff fd39 	bl	80007ae <delay_10ms>
 8000d3c:	4b0e      	ldr	r3, [pc, #56]	; (8000d78 <EXTI0_1_IRQHandler+0x6c>)
 8000d3e:	681b      	ldr	r3, [r3, #0]
 8000d40:	2b0e      	cmp	r3, #14
 8000d42:	d911      	bls.n	8000d68 <EXTI0_1_IRQHandler+0x5c>
 8000d44:	4b0b      	ldr	r3, [pc, #44]	; (8000d74 <EXTI0_1_IRQHandler+0x68>)
 8000d46:	2200      	movs	r2, #0
 8000d48:	601a      	str	r2, [r3, #0]
 8000d4a:	4b0b      	ldr	r3, [pc, #44]	; (8000d78 <EXTI0_1_IRQHandler+0x6c>)
 8000d4c:	2200      	movs	r2, #0
 8000d4e:	601a      	str	r2, [r3, #0]
 8000d50:	4b0a      	ldr	r3, [pc, #40]	; (8000d7c <EXTI0_1_IRQHandler+0x70>)
 8000d52:	681b      	ldr	r3, [r3, #0]
 8000d54:	1c5a      	adds	r2, r3, #1
 8000d56:	4b09      	ldr	r3, [pc, #36]	; (8000d7c <EXTI0_1_IRQHandler+0x70>)
 8000d58:	601a      	str	r2, [r3, #0]
 8000d5a:	2380      	movs	r3, #128	; 0x80
 8000d5c:	005b      	lsls	r3, r3, #1
 8000d5e:	4a08      	ldr	r2, [pc, #32]	; (8000d80 <EXTI0_1_IRQHandler+0x74>)
 8000d60:	0019      	movs	r1, r3
 8000d62:	0010      	movs	r0, r2
 8000d64:	f7ff fcdc 	bl	8000720 <LL_GPIO_TogglePin>
 8000d68:	2001      	movs	r0, #1
 8000d6a:	f7ff fd09 	bl	8000780 <LL_EXTI_ClearFlag_0_31>
 8000d6e:	46c0      	nop			; (mov r8, r8)
 8000d70:	46bd      	mov	sp, r7
 8000d72:	bd80      	pop	{r7, pc}
 8000d74:	20000454 	.word	0x20000454
 8000d78:	20000450 	.word	0x20000450
 8000d7c:	20000000 	.word	0x20000000
 8000d80:	48000800 	.word	0x48000800

08000d84 <SysTick_Handler>:
 8000d84:	b580      	push	{r7, lr}
 8000d86:	af00      	add	r7, sp, #0
 8000d88:	4b03      	ldr	r3, [pc, #12]	; (8000d98 <SysTick_Handler+0x14>)
 8000d8a:	681b      	ldr	r3, [r3, #0]
 8000d8c:	0018      	movs	r0, r3
 8000d8e:	f7ff ff37 	bl	8000c00 <show_digital>
 8000d92:	46c0      	nop			; (mov r8, r8)
 8000d94:	46bd      	mov	sp, r7
 8000d96:	bd80      	pop	{r7, pc}
 8000d98:	20000000 	.word	0x20000000

08000d9c <main>:
 8000d9c:	b580      	push	{r7, lr}
 8000d9e:	af00      	add	r7, sp, #0
 8000da0:	f7ff fd0e 	bl	80007c0 <rcc_config>
 8000da4:	f7ff fe6a 	bl	8000a7c <gpio_config>
 8000da8:	f7ff fd3e 	bl	8000828 <digital_clock>
 8000dac:	f7ff ff94 	bl	8000cd8 <exti_config>
 8000db0:	e7fe      	b.n	8000db0 <main+0x14>
	...

08000db4 <SystemInit>:
 8000db4:	b580      	push	{r7, lr}
 8000db6:	af00      	add	r7, sp, #0
 8000db8:	4b1a      	ldr	r3, [pc, #104]	; (8000e24 <SystemInit+0x70>)
 8000dba:	681a      	ldr	r2, [r3, #0]
 8000dbc:	4b19      	ldr	r3, [pc, #100]	; (8000e24 <SystemInit+0x70>)
 8000dbe:	2101      	movs	r1, #1
 8000dc0:	430a      	orrs	r2, r1
 8000dc2:	601a      	str	r2, [r3, #0]
 8000dc4:	4b17      	ldr	r3, [pc, #92]	; (8000e24 <SystemInit+0x70>)
 8000dc6:	685a      	ldr	r2, [r3, #4]
 8000dc8:	4b16      	ldr	r3, [pc, #88]	; (8000e24 <SystemInit+0x70>)
 8000dca:	4917      	ldr	r1, [pc, #92]	; (8000e28 <SystemInit+0x74>)
 8000dcc:	400a      	ands	r2, r1
 8000dce:	605a      	str	r2, [r3, #4]
 8000dd0:	4b14      	ldr	r3, [pc, #80]	; (8000e24 <SystemInit+0x70>)
 8000dd2:	681a      	ldr	r2, [r3, #0]
 8000dd4:	4b13      	ldr	r3, [pc, #76]	; (8000e24 <SystemInit+0x70>)
 8000dd6:	4915      	ldr	r1, [pc, #84]	; (8000e2c <SystemInit+0x78>)
 8000dd8:	400a      	ands	r2, r1
 8000dda:	601a      	str	r2, [r3, #0]
 8000ddc:	4b11      	ldr	r3, [pc, #68]	; (8000e24 <SystemInit+0x70>)
 8000dde:	681a      	ldr	r2, [r3, #0]
 8000de0:	4b10      	ldr	r3, [pc, #64]	; (8000e24 <SystemInit+0x70>)
 8000de2:	4913      	ldr	r1, [pc, #76]	; (8000e30 <SystemInit+0x7c>)
 8000de4:	400a      	ands	r2, r1
 8000de6:	601a      	str	r2, [r3, #0]
 8000de8:	4b0e      	ldr	r3, [pc, #56]	; (8000e24 <SystemInit+0x70>)
 8000dea:	685a      	ldr	r2, [r3, #4]
 8000dec:	4b0d      	ldr	r3, [pc, #52]	; (8000e24 <SystemInit+0x70>)
 8000dee:	4911      	ldr	r1, [pc, #68]	; (8000e34 <SystemInit+0x80>)
 8000df0:	400a      	ands	r2, r1
 8000df2:	605a      	str	r2, [r3, #4]
 8000df4:	4b0b      	ldr	r3, [pc, #44]	; (8000e24 <SystemInit+0x70>)
 8000df6:	6ada      	ldr	r2, [r3, #44]	; 0x2c
 8000df8:	4b0a      	ldr	r3, [pc, #40]	; (8000e24 <SystemInit+0x70>)
 8000dfa:	210f      	movs	r1, #15
 8000dfc:	438a      	bics	r2, r1
 8000dfe:	62da      	str	r2, [r3, #44]	; 0x2c
 8000e00:	4b08      	ldr	r3, [pc, #32]	; (8000e24 <SystemInit+0x70>)
 8000e02:	6b1a      	ldr	r2, [r3, #48]	; 0x30
 8000e04:	4b07      	ldr	r3, [pc, #28]	; (8000e24 <SystemInit+0x70>)
 8000e06:	490c      	ldr	r1, [pc, #48]	; (8000e38 <SystemInit+0x84>)
 8000e08:	400a      	ands	r2, r1
 8000e0a:	631a      	str	r2, [r3, #48]	; 0x30
 8000e0c:	4b05      	ldr	r3, [pc, #20]	; (8000e24 <SystemInit+0x70>)
 8000e0e:	6b5a      	ldr	r2, [r3, #52]	; 0x34
 8000e10:	4b04      	ldr	r3, [pc, #16]	; (8000e24 <SystemInit+0x70>)
 8000e12:	2101      	movs	r1, #1
 8000e14:	438a      	bics	r2, r1
 8000e16:	635a      	str	r2, [r3, #52]	; 0x34
 8000e18:	4b02      	ldr	r3, [pc, #8]	; (8000e24 <SystemInit+0x70>)
 8000e1a:	2200      	movs	r2, #0
 8000e1c:	609a      	str	r2, [r3, #8]
 8000e1e:	46c0      	nop			; (mov r8, r8)
 8000e20:	46bd      	mov	sp, r7
 8000e22:	bd80      	pop	{r7, pc}
 8000e24:	40021000 	.word	0x40021000
 8000e28:	f8ffb80c 	.word	0xf8ffb80c
 8000e2c:	fef6ffff 	.word	0xfef6ffff
 8000e30:	fffbffff 	.word	0xfffbffff
 8000e34:	ffc0ffff 	.word	0xffc0ffff
 8000e38:	fffffeac 	.word	0xfffffeac

08000e3c <NMI_Handler>:
 8000e3c:	b580      	push	{r7, lr}
 8000e3e:	af00      	add	r7, sp, #0
 8000e40:	46c0      	nop			; (mov r8, r8)
 8000e42:	46bd      	mov	sp, r7
 8000e44:	bd80      	pop	{r7, pc}

08000e46 <HardFault_Handler>:
 8000e46:	b580      	push	{r7, lr}
 8000e48:	af00      	add	r7, sp, #0
 8000e4a:	e7fe      	b.n	8000e4a <HardFault_Handler+0x4>

08000e4c <SVC_Handler>:
 8000e4c:	b580      	push	{r7, lr}
 8000e4e:	af00      	add	r7, sp, #0
 8000e50:	46c0      	nop			; (mov r8, r8)
 8000e52:	46bd      	mov	sp, r7
 8000e54:	bd80      	pop	{r7, pc}

08000e56 <PendSV_Handler>:
 8000e56:	b580      	push	{r7, lr}
 8000e58:	af00      	add	r7, sp, #0
 8000e5a:	46c0      	nop			; (mov r8, r8)
 8000e5c:	46bd      	mov	sp, r7
 8000e5e:	bd80      	pop	{r7, pc}

08000e60 <__libc_init_array>:
 8000e60:	b570      	push	{r4, r5, r6, lr}
 8000e62:	4e0d      	ldr	r6, [pc, #52]	; (8000e98 <__libc_init_array+0x38>)
 8000e64:	4d0d      	ldr	r5, [pc, #52]	; (8000e9c <__libc_init_array+0x3c>)
 8000e66:	1bad      	subs	r5, r5, r6
 8000e68:	10ad      	asrs	r5, r5, #2
 8000e6a:	d006      	beq.n	8000e7a <__libc_init_array+0x1a>
 8000e6c:	2400      	movs	r4, #0
 8000e6e:	00a3      	lsls	r3, r4, #2
 8000e70:	58f3      	ldr	r3, [r6, r3]
 8000e72:	3401      	adds	r4, #1
 8000e74:	4798      	blx	r3
 8000e76:	42a5      	cmp	r5, r4
 8000e78:	d1f9      	bne.n	8000e6e <__libc_init_array+0xe>
 8000e7a:	f000 f8c1 	bl	8001000 <_init>
 8000e7e:	4e08      	ldr	r6, [pc, #32]	; (8000ea0 <__libc_init_array+0x40>)
 8000e80:	4d08      	ldr	r5, [pc, #32]	; (8000ea4 <__libc_init_array+0x44>)
 8000e82:	1bad      	subs	r5, r5, r6
 8000e84:	10ad      	asrs	r5, r5, #2
 8000e86:	d006      	beq.n	8000e96 <__libc_init_array+0x36>
 8000e88:	2400      	movs	r4, #0
 8000e8a:	00a3      	lsls	r3, r4, #2
 8000e8c:	58f3      	ldr	r3, [r6, r3]
 8000e8e:	3401      	adds	r4, #1
 8000e90:	4798      	blx	r3
 8000e92:	42a5      	cmp	r5, r4
 8000e94:	d1f9      	bne.n	8000e8a <__libc_init_array+0x2a>
 8000e96:	bd70      	pop	{r4, r5, r6, pc}
 8000e98:	08001038 	.word	0x08001038
 8000e9c:	08001038 	.word	0x08001038
 8000ea0:	08001038 	.word	0x08001038
 8000ea4:	08001040 	.word	0x08001040

08000ea8 <register_fini>:
 8000ea8:	4b03      	ldr	r3, [pc, #12]	; (8000eb8 <register_fini+0x10>)
 8000eaa:	b510      	push	{r4, lr}
 8000eac:	2b00      	cmp	r3, #0
 8000eae:	d002      	beq.n	8000eb6 <register_fini+0xe>
 8000eb0:	4802      	ldr	r0, [pc, #8]	; (8000ebc <register_fini+0x14>)
 8000eb2:	f000 f805 	bl	8000ec0 <atexit>
 8000eb6:	bd10      	pop	{r4, pc}
 8000eb8:	00000000 	.word	0x00000000
 8000ebc:	08000ed1 	.word	0x08000ed1

08000ec0 <atexit>:
 8000ec0:	b510      	push	{r4, lr}
 8000ec2:	0001      	movs	r1, r0
 8000ec4:	2300      	movs	r3, #0
 8000ec6:	2200      	movs	r2, #0
 8000ec8:	2000      	movs	r0, #0
 8000eca:	f000 f81f 	bl	8000f0c <__register_exitproc>
 8000ece:	bd10      	pop	{r4, pc}

08000ed0 <__libc_fini_array>:
 8000ed0:	b570      	push	{r4, r5, r6, lr}
 8000ed2:	4b09      	ldr	r3, [pc, #36]	; (8000ef8 <__libc_fini_array+0x28>)
 8000ed4:	4c09      	ldr	r4, [pc, #36]	; (8000efc <__libc_fini_array+0x2c>)
 8000ed6:	1ae4      	subs	r4, r4, r3
 8000ed8:	10a4      	asrs	r4, r4, #2
 8000eda:	d009      	beq.n	8000ef0 <__libc_fini_array+0x20>
 8000edc:	4a08      	ldr	r2, [pc, #32]	; (8000f00 <__libc_fini_array+0x30>)
 8000ede:	18a5      	adds	r5, r4, r2
 8000ee0:	00ad      	lsls	r5, r5, #2
 8000ee2:	18ed      	adds	r5, r5, r3
 8000ee4:	682b      	ldr	r3, [r5, #0]
 8000ee6:	3c01      	subs	r4, #1
 8000ee8:	4798      	blx	r3
 8000eea:	3d04      	subs	r5, #4
 8000eec:	2c00      	cmp	r4, #0
 8000eee:	d1f9      	bne.n	8000ee4 <__libc_fini_array+0x14>
 8000ef0:	f000 f88c 	bl	800100c <_fini>
 8000ef4:	bd70      	pop	{r4, r5, r6, pc}
 8000ef6:	46c0      	nop			; (mov r8, r8)
 8000ef8:	08001040 	.word	0x08001040
 8000efc:	08001044 	.word	0x08001044
 8000f00:	3fffffff 	.word	0x3fffffff

08000f04 <__retarget_lock_acquire_recursive>:
 8000f04:	4770      	bx	lr
 8000f06:	46c0      	nop			; (mov r8, r8)

08000f08 <__retarget_lock_release_recursive>:
 8000f08:	4770      	bx	lr
 8000f0a:	46c0      	nop			; (mov r8, r8)

08000f0c <__register_exitproc>:
 8000f0c:	b5f0      	push	{r4, r5, r6, r7, lr}
 8000f0e:	464e      	mov	r6, r9
 8000f10:	4645      	mov	r5, r8
 8000f12:	46de      	mov	lr, fp
 8000f14:	4657      	mov	r7, sl
 8000f16:	b5e0      	push	{r5, r6, r7, lr}
 8000f18:	4d36      	ldr	r5, [pc, #216]	; (8000ff4 <__register_exitproc+0xe8>)
 8000f1a:	b083      	sub	sp, #12
 8000f1c:	0006      	movs	r6, r0
 8000f1e:	6828      	ldr	r0, [r5, #0]
 8000f20:	4698      	mov	r8, r3
 8000f22:	000f      	movs	r7, r1
 8000f24:	4691      	mov	r9, r2
 8000f26:	f7ff ffed 	bl	8000f04 <__retarget_lock_acquire_recursive>
 8000f2a:	4b33      	ldr	r3, [pc, #204]	; (8000ff8 <__register_exitproc+0xec>)
 8000f2c:	681c      	ldr	r4, [r3, #0]
 8000f2e:	23a4      	movs	r3, #164	; 0xa4
 8000f30:	005b      	lsls	r3, r3, #1
 8000f32:	58e0      	ldr	r0, [r4, r3]
 8000f34:	2800      	cmp	r0, #0
 8000f36:	d052      	beq.n	8000fde <__register_exitproc+0xd2>
 8000f38:	6843      	ldr	r3, [r0, #4]
 8000f3a:	2b1f      	cmp	r3, #31
 8000f3c:	dc13      	bgt.n	8000f66 <__register_exitproc+0x5a>
 8000f3e:	1c5a      	adds	r2, r3, #1
 8000f40:	9201      	str	r2, [sp, #4]
 8000f42:	2e00      	cmp	r6, #0
 8000f44:	d128      	bne.n	8000f98 <__register_exitproc+0x8c>
 8000f46:	9a01      	ldr	r2, [sp, #4]
 8000f48:	3302      	adds	r3, #2
 8000f4a:	009b      	lsls	r3, r3, #2
 8000f4c:	6042      	str	r2, [r0, #4]
 8000f4e:	501f      	str	r7, [r3, r0]
 8000f50:	6828      	ldr	r0, [r5, #0]
 8000f52:	f7ff ffd9 	bl	8000f08 <__retarget_lock_release_recursive>
 8000f56:	2000      	movs	r0, #0
 8000f58:	b003      	add	sp, #12
 8000f5a:	bc3c      	pop	{r2, r3, r4, r5}
 8000f5c:	4690      	mov	r8, r2
 8000f5e:	4699      	mov	r9, r3
 8000f60:	46a2      	mov	sl, r4
 8000f62:	46ab      	mov	fp, r5
 8000f64:	bdf0      	pop	{r4, r5, r6, r7, pc}
 8000f66:	4b25      	ldr	r3, [pc, #148]	; (8000ffc <__register_exitproc+0xf0>)
 8000f68:	2b00      	cmp	r3, #0
 8000f6a:	d03d      	beq.n	8000fe8 <__register_exitproc+0xdc>
 8000f6c:	20c8      	movs	r0, #200	; 0xc8
 8000f6e:	0040      	lsls	r0, r0, #1
 8000f70:	e000      	b.n	8000f74 <__register_exitproc+0x68>
 8000f72:	bf00      	nop
 8000f74:	2800      	cmp	r0, #0
 8000f76:	d037      	beq.n	8000fe8 <__register_exitproc+0xdc>
 8000f78:	22a4      	movs	r2, #164	; 0xa4
 8000f7a:	2300      	movs	r3, #0
 8000f7c:	0052      	lsls	r2, r2, #1
 8000f7e:	58a1      	ldr	r1, [r4, r2]
 8000f80:	6043      	str	r3, [r0, #4]
 8000f82:	6001      	str	r1, [r0, #0]
 8000f84:	50a0      	str	r0, [r4, r2]
 8000f86:	3240      	adds	r2, #64	; 0x40
 8000f88:	5083      	str	r3, [r0, r2]
 8000f8a:	3204      	adds	r2, #4
 8000f8c:	5083      	str	r3, [r0, r2]
 8000f8e:	3301      	adds	r3, #1
 8000f90:	9301      	str	r3, [sp, #4]
 8000f92:	2300      	movs	r3, #0
 8000f94:	2e00      	cmp	r6, #0
 8000f96:	d0d6      	beq.n	8000f46 <__register_exitproc+0x3a>
 8000f98:	009a      	lsls	r2, r3, #2
 8000f9a:	4692      	mov	sl, r2
 8000f9c:	4482      	add	sl, r0
 8000f9e:	464a      	mov	r2, r9
 8000fa0:	2188      	movs	r1, #136	; 0x88
 8000fa2:	4654      	mov	r4, sl
 8000fa4:	5062      	str	r2, [r4, r1]
 8000fa6:	22c4      	movs	r2, #196	; 0xc4
 8000fa8:	0052      	lsls	r2, r2, #1
 8000faa:	4691      	mov	r9, r2
 8000fac:	4481      	add	r9, r0
 8000fae:	464a      	mov	r2, r9
 8000fb0:	3987      	subs	r1, #135	; 0x87
 8000fb2:	4099      	lsls	r1, r3
 8000fb4:	6812      	ldr	r2, [r2, #0]
 8000fb6:	468b      	mov	fp, r1
 8000fb8:	430a      	orrs	r2, r1
 8000fba:	4694      	mov	ip, r2
 8000fbc:	464a      	mov	r2, r9
 8000fbe:	4661      	mov	r1, ip
 8000fc0:	6011      	str	r1, [r2, #0]
 8000fc2:	2284      	movs	r2, #132	; 0x84
 8000fc4:	4641      	mov	r1, r8
 8000fc6:	0052      	lsls	r2, r2, #1
 8000fc8:	50a1      	str	r1, [r4, r2]
 8000fca:	2e02      	cmp	r6, #2
 8000fcc:	d1bb      	bne.n	8000f46 <__register_exitproc+0x3a>
 8000fce:	0002      	movs	r2, r0
 8000fd0:	465c      	mov	r4, fp
 8000fd2:	328d      	adds	r2, #141	; 0x8d
 8000fd4:	32ff      	adds	r2, #255	; 0xff
 8000fd6:	6811      	ldr	r1, [r2, #0]
 8000fd8:	430c      	orrs	r4, r1
 8000fda:	6014      	str	r4, [r2, #0]
 8000fdc:	e7b3      	b.n	8000f46 <__register_exitproc+0x3a>
 8000fde:	0020      	movs	r0, r4
 8000fe0:	304d      	adds	r0, #77	; 0x4d
 8000fe2:	30ff      	adds	r0, #255	; 0xff
 8000fe4:	50e0      	str	r0, [r4, r3]
 8000fe6:	e7a7      	b.n	8000f38 <__register_exitproc+0x2c>
 8000fe8:	6828      	ldr	r0, [r5, #0]
 8000fea:	f7ff ff8d 	bl	8000f08 <__retarget_lock_release_recursive>
 8000fee:	2001      	movs	r0, #1
 8000ff0:	4240      	negs	r0, r0
 8000ff2:	e7b1      	b.n	8000f58 <__register_exitproc+0x4c>
 8000ff4:	20000430 	.word	0x20000430
 8000ff8:	08001034 	.word	0x08001034
 8000ffc:	00000000 	.word	0x00000000

08001000 <_init>:
 8001000:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 8001002:	46c0      	nop			; (mov r8, r8)
 8001004:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8001006:	bc08      	pop	{r3}
 8001008:	469e      	mov	lr, r3
 800100a:	4770      	bx	lr

0800100c <_fini>:
 800100c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
 800100e:	46c0      	nop			; (mov r8, r8)
 8001010:	bcf8      	pop	{r3, r4, r5, r6, r7}
 8001012:	bc08      	pop	{r3}
 8001014:	469e      	mov	lr, r3
 8001016:	4770      	bx	lr
