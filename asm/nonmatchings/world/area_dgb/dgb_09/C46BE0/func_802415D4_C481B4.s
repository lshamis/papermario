.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802415D4_C481B4
/* C481B4 802415D4 27BDFF80 */  addiu     $sp, $sp, -0x80
/* C481B8 802415D8 AFB3004C */  sw        $s3, 0x4c($sp)
/* C481BC 802415DC 0080982D */  daddu     $s3, $a0, $zero
/* C481C0 802415E0 AFBF0058 */  sw        $ra, 0x58($sp)
/* C481C4 802415E4 AFB50054 */  sw        $s5, 0x54($sp)
/* C481C8 802415E8 AFB40050 */  sw        $s4, 0x50($sp)
/* C481CC 802415EC AFB20048 */  sw        $s2, 0x48($sp)
/* C481D0 802415F0 AFB10044 */  sw        $s1, 0x44($sp)
/* C481D4 802415F4 AFB00040 */  sw        $s0, 0x40($sp)
/* C481D8 802415F8 F7BA0078 */  sdc1      $f26, 0x78($sp)
/* C481DC 802415FC F7B80070 */  sdc1      $f24, 0x70($sp)
/* C481E0 80241600 F7B60068 */  sdc1      $f22, 0x68($sp)
/* C481E4 80241604 F7B40060 */  sdc1      $f20, 0x60($sp)
/* C481E8 80241608 8E710148 */  lw        $s1, 0x148($s3)
/* C481EC 8024160C 00A0902D */  daddu     $s2, $a1, $zero
/* C481F0 80241610 86240008 */  lh        $a0, 8($s1)
/* C481F4 80241614 0C00EABB */  jal       get_npc_unsafe
/* C481F8 80241618 00C0A82D */   daddu    $s5, $a2, $zero
/* C481FC 8024161C 0040802D */  daddu     $s0, $v0, $zero
/* C48200 80241620 0000A02D */  daddu     $s4, $zero, $zero
/* C48204 80241624 C624007C */  lwc1      $f4, 0x7c($s1)
/* C48208 80241628 46802120 */  cvt.s.w   $f4, $f4
/* C4820C 8024162C C6220088 */  lwc1      $f2, 0x88($s1)
/* C48210 80241630 468010A0 */  cvt.s.w   $f2, $f2
/* C48214 80241634 460010A1 */  cvt.d.s   $f2, $f2
/* C48218 80241638 46002121 */  cvt.d.s   $f4, $f4
/* C4821C 8024163C C600003C */  lwc1      $f0, 0x3c($s0)
/* C48220 80241640 3C014059 */  lui       $at, 0x4059
/* C48224 80241644 44813800 */  mtc1      $at, $f7
/* C48228 80241648 44803000 */  mtc1      $zero, $f6
/* C4822C 8024164C 46000021 */  cvt.d.s   $f0, $f0
/* C48230 80241650 46260002 */  mul.d     $f0, $f0, $f6
/* C48234 80241654 00000000 */  nop       
/* C48238 80241658 24020001 */  addiu     $v0, $zero, 1
/* C4823C 8024165C 8E24006C */  lw        $a0, 0x6c($s1)
/* C48240 80241660 46261083 */  div.d     $f2, $f2, $f6
/* C48244 80241664 462010A0 */  cvt.s.d   $f2, $f2
/* C48248 80241668 46262103 */  div.d     $f4, $f4, $f6
/* C4824C 8024166C 46202520 */  cvt.s.d   $f20, $f4
/* C48250 80241670 30830011 */  andi      $v1, $a0, 0x11
/* C48254 80241674 4620020D */  trunc.w.d $f8, $f0
/* C48258 80241678 E628007C */  swc1      $f8, 0x7c($s1)
/* C4825C 8024167C C6200078 */  lwc1      $f0, 0x78($s1)
/* C48260 80241680 46800020 */  cvt.s.w   $f0, $f0
/* C48264 80241684 46000021 */  cvt.d.s   $f0, $f0
/* C48268 80241688 46260003 */  div.d     $f0, $f0, $f6
/* C4826C 8024168C 462006A0 */  cvt.s.d   $f26, $f0
/* C48270 80241690 C6200070 */  lwc1      $f0, 0x70($s1)
/* C48274 80241694 46800020 */  cvt.s.w   $f0, $f0
/* C48278 80241698 46000021 */  cvt.d.s   $f0, $f0
/* C4827C 8024169C 46260003 */  div.d     $f0, $f0, $f6
/* C48280 802416A0 462005A0 */  cvt.s.d   $f22, $f0
/* C48284 802416A4 14620025 */  bne       $v1, $v0, .L8024173C
/* C48288 802416A8 4602D600 */   add.s    $f24, $f26, $f2
/* C4828C 802416AC 8E020000 */  lw        $v0, ($s0)
/* C48290 802416B0 30420008 */  andi      $v0, $v0, 8
/* C48294 802416B4 10400009 */  beqz      $v0, .L802416DC
/* C48298 802416B8 27A50028 */   addiu    $a1, $sp, 0x28
/* C4829C 802416BC C600003C */  lwc1      $f0, 0x3c($s0)
/* C482A0 802416C0 4600C001 */  sub.s     $f0, $f24, $f0
/* C482A4 802416C4 4600B03C */  c.lt.s    $f22, $f0
/* C482A8 802416C8 00000000 */  nop       
/* C482AC 802416CC 4500001B */  bc1f      .L8024173C
/* C482B0 802416D0 34820010 */   ori      $v0, $a0, 0x10
/* C482B4 802416D4 080905CF */  j         .L8024173C
/* C482B8 802416D8 AE22006C */   sw       $v0, 0x6c($s1)
.L802416DC:
/* C482BC 802416DC 27A6002C */  addiu     $a2, $sp, 0x2c
/* C482C0 802416E0 C6000038 */  lwc1      $f0, 0x38($s0)
/* C482C4 802416E4 C602003C */  lwc1      $f2, 0x3c($s0)
/* C482C8 802416E8 C6040040 */  lwc1      $f4, 0x40($s0)
/* C482CC 802416EC 3C01447A */  lui       $at, 0x447a
/* C482D0 802416F0 44813000 */  mtc1      $at, $f6
/* C482D4 802416F4 27A20034 */  addiu     $v0, $sp, 0x34
/* C482D8 802416F8 E7A00028 */  swc1      $f0, 0x28($sp)
/* C482DC 802416FC E7A2002C */  swc1      $f2, 0x2c($sp)
/* C482E0 80241700 E7A40030 */  swc1      $f4, 0x30($sp)
/* C482E4 80241704 E7A60034 */  swc1      $f6, 0x34($sp)
/* C482E8 80241708 AFA20010 */  sw        $v0, 0x10($sp)
/* C482EC 8024170C 8E040080 */  lw        $a0, 0x80($s0)
/* C482F0 80241710 0C0372DF */  jal       func_800DCB7C
/* C482F4 80241714 27A70030 */   addiu    $a3, $sp, 0x30
/* C482F8 80241718 C7A00034 */  lwc1      $f0, 0x34($sp)
/* C482FC 8024171C 4600D001 */  sub.s     $f0, $f26, $f0
/* C48300 80241720 4600B03C */  c.lt.s    $f22, $f0
/* C48304 80241724 00000000 */  nop       
/* C48308 80241728 45000004 */  bc1f      .L8024173C
/* C4830C 8024172C 00000000 */   nop      
/* C48310 80241730 8E22006C */  lw        $v0, 0x6c($s1)
/* C48314 80241734 34420010 */  ori       $v0, $v0, 0x10
/* C48318 80241738 AE22006C */  sw        $v0, 0x6c($s1)
.L8024173C:
/* C4831C 8024173C 8E22006C */  lw        $v0, 0x6c($s1)
/* C48320 80241740 24030011 */  addiu     $v1, $zero, 0x11
/* C48324 80241744 30420011 */  andi      $v0, $v0, 0x11
/* C48328 80241748 14430039 */  bne       $v0, $v1, .L80241830
/* C4832C 8024174C 00000000 */   nop      
/* C48330 80241750 8E020000 */  lw        $v0, ($s0)
/* C48334 80241754 30420008 */  andi      $v0, $v0, 8
/* C48338 80241758 1040000A */  beqz      $v0, .L80241784
/* C4833C 8024175C 4600C106 */   mov.s    $f4, $f24
/* C48340 80241760 4614C081 */  sub.s     $f2, $f24, $f20
/* C48344 80241764 3C018024 */  lui       $at, %hi(D_802456C8)
/* C48348 80241768 D42056C8 */  ldc1      $f0, %lo(D_802456C8)($at)
/* C4834C 8024176C 460010A1 */  cvt.d.s   $f2, $f2
/* C48350 80241770 46201082 */  mul.d     $f2, $f2, $f0
/* C48354 80241774 00000000 */  nop       
/* C48358 80241778 4600A021 */  cvt.d.s   $f0, $f20
/* C4835C 8024177C 080905FA */  j         .L802417E8
/* C48360 80241780 46220000 */   add.d    $f0, $f0, $f2
.L80241784:
/* C48364 80241784 27A50028 */  addiu     $a1, $sp, 0x28
/* C48368 80241788 27A6002C */  addiu     $a2, $sp, 0x2c
/* C4836C 8024178C C6000038 */  lwc1      $f0, 0x38($s0)
/* C48370 80241790 C6020040 */  lwc1      $f2, 0x40($s0)
/* C48374 80241794 3C01447A */  lui       $at, 0x447a
/* C48378 80241798 44812000 */  mtc1      $at, $f4
/* C4837C 8024179C 27A20034 */  addiu     $v0, $sp, 0x34
/* C48380 802417A0 E7B4002C */  swc1      $f20, 0x2c($sp)
/* C48384 802417A4 E7A00028 */  swc1      $f0, 0x28($sp)
/* C48388 802417A8 E7A20030 */  swc1      $f2, 0x30($sp)
/* C4838C 802417AC E7A40034 */  swc1      $f4, 0x34($sp)
/* C48390 802417B0 AFA20010 */  sw        $v0, 0x10($sp)
/* C48394 802417B4 8E040080 */  lw        $a0, 0x80($s0)
/* C48398 802417B8 0C0372DF */  jal       func_800DCB7C
/* C4839C 802417BC 27A70030 */   addiu    $a3, $sp, 0x30
/* C483A0 802417C0 C7A4002C */  lwc1      $f4, 0x2c($sp)
/* C483A4 802417C4 461A2100 */  add.s     $f4, $f4, $f26
/* C483A8 802417C8 46142081 */  sub.s     $f2, $f4, $f20
/* C483AC 802417CC 3C018024 */  lui       $at, %hi(D_802456D0)
/* C483B0 802417D0 D42056D0 */  ldc1      $f0, %lo(D_802456D0)($at)
/* C483B4 802417D4 460010A1 */  cvt.d.s   $f2, $f2
/* C483B8 802417D8 46201082 */  mul.d     $f2, $f2, $f0
/* C483BC 802417DC 00000000 */  nop       
/* C483C0 802417E0 4600A021 */  cvt.d.s   $f0, $f20
/* C483C4 802417E4 46220000 */  add.d     $f0, $f0, $f2
.L802417E8:
/* C483C8 802417E8 46200020 */  cvt.s.d   $f0, $f0
/* C483CC 802417EC E600003C */  swc1      $f0, 0x3c($s0)
/* C483D0 802417F0 C600003C */  lwc1      $f0, 0x3c($s0)
/* C483D4 802417F4 46002001 */  sub.s     $f0, $f4, $f0
/* C483D8 802417F8 3C013FF0 */  lui       $at, 0x3ff0
/* C483DC 802417FC 44811800 */  mtc1      $at, $f3
/* C483E0 80241800 44801000 */  mtc1      $zero, $f2
/* C483E4 80241804 46000005 */  abs.s     $f0, $f0
/* C483E8 80241808 46000021 */  cvt.d.s   $f0, $f0
/* C483EC 8024180C 4622003C */  c.lt.d    $f0, $f2
/* C483F0 80241810 00000000 */  nop       
/* C483F4 80241814 45000036 */  bc1f      .L802418F0
/* C483F8 80241818 2403FFEF */   addiu    $v1, $zero, -0x11
/* C483FC 8024181C E604003C */  swc1      $f4, 0x3c($s0)
/* C48400 80241820 8E22006C */  lw        $v0, 0x6c($s1)
/* C48404 80241824 00431024 */  and       $v0, $v0, $v1
/* C48408 80241828 0809063C */  j         .L802418F0
/* C4840C 8024182C AE22006C */   sw       $v0, 0x6c($s1)
.L80241830:
/* C48410 80241830 8E220070 */  lw        $v0, 0x70($s1)
/* C48414 80241834 1840002E */  blez      $v0, .L802418F0
/* C48418 80241838 00000000 */   nop      
/* C4841C 8024183C C62C0074 */  lwc1      $f12, 0x74($s1)
/* C48420 80241840 0C00A8BB */  jal       sin_deg
/* C48424 80241844 46806320 */   cvt.s.w  $f12, $f12
/* C48428 80241848 8E020000 */  lw        $v0, ($s0)
/* C4842C 8024184C 30420008 */  andi      $v0, $v0, 8
/* C48430 80241850 10400003 */  beqz      $v0, .L80241860
/* C48434 80241854 46000506 */   mov.s    $f20, $f0
/* C48438 80241858 08090628 */  j         .L802418A0
/* C4843C 8024185C 0000102D */   daddu    $v0, $zero, $zero
.L80241860:
/* C48440 80241860 27A50028 */  addiu     $a1, $sp, 0x28
/* C48444 80241864 27A6002C */  addiu     $a2, $sp, 0x2c
/* C48448 80241868 C6000038 */  lwc1      $f0, 0x38($s0)
/* C4844C 8024186C C602003C */  lwc1      $f2, 0x3c($s0)
/* C48450 80241870 C6040040 */  lwc1      $f4, 0x40($s0)
/* C48454 80241874 3C01447A */  lui       $at, 0x447a
/* C48458 80241878 44813000 */  mtc1      $at, $f6
/* C4845C 8024187C 27A20034 */  addiu     $v0, $sp, 0x34
/* C48460 80241880 E7A00028 */  swc1      $f0, 0x28($sp)
/* C48464 80241884 E7A2002C */  swc1      $f2, 0x2c($sp)
/* C48468 80241888 E7A40030 */  swc1      $f4, 0x30($sp)
/* C4846C 8024188C E7A60034 */  swc1      $f6, 0x34($sp)
/* C48470 80241890 AFA20010 */  sw        $v0, 0x10($sp)
/* C48474 80241894 8E040080 */  lw        $a0, 0x80($s0)
/* C48478 80241898 0C0372DF */  jal       func_800DCB7C
/* C4847C 8024189C 27A70030 */   addiu    $a3, $sp, 0x30
.L802418A0:
/* C48480 802418A0 10400007 */  beqz      $v0, .L802418C0
/* C48484 802418A4 00000000 */   nop      
/* C48488 802418A8 4616A082 */  mul.s     $f2, $f20, $f22
/* C4848C 802418AC 00000000 */  nop       
/* C48490 802418B0 C7A0002C */  lwc1      $f0, 0x2c($sp)
/* C48494 802418B4 461A0000 */  add.s     $f0, $f0, $f26
/* C48498 802418B8 08090633 */  j         .L802418CC
/* C4849C 802418BC 46020000 */   add.s    $f0, $f0, $f2
.L802418C0:
/* C484A0 802418C0 4616A002 */  mul.s     $f0, $f20, $f22
/* C484A4 802418C4 00000000 */  nop       
/* C484A8 802418C8 4600C000 */  add.s     $f0, $f24, $f0
.L802418CC:
/* C484AC 802418CC E600003C */  swc1      $f0, 0x3c($s0)
/* C484B0 802418D0 8E220074 */  lw        $v0, 0x74($s1)
/* C484B4 802418D4 2442000A */  addiu     $v0, $v0, 0xa
/* C484B8 802418D8 44826000 */  mtc1      $v0, $f12
/* C484BC 802418DC 00000000 */  nop       
/* C484C0 802418E0 0C00A6C9 */  jal       clamp_angle
/* C484C4 802418E4 46806320 */   cvt.s.w  $f12, $f12
/* C484C8 802418E8 4600020D */  trunc.w.s $f8, $f0
/* C484CC 802418EC E6280074 */  swc1      $f8, 0x74($s1)
.L802418F0:
/* C484D0 802418F0 8E220090 */  lw        $v0, 0x90($s1)
/* C484D4 802418F4 1C40004A */  bgtz      $v0, .L80241A20
/* C484D8 802418F8 2442FFFF */   addiu    $v0, $v0, -1
/* C484DC 802418FC 8E430014 */  lw        $v1, 0x14($s2)
/* C484E0 80241900 04600048 */  bltz      $v1, .L80241A24
/* C484E4 80241904 00000000 */   nop      
/* C484E8 80241908 8E620074 */  lw        $v0, 0x74($s3)
/* C484EC 8024190C 1C400042 */  bgtz      $v0, .L80241A18
/* C484F0 80241910 2442FFFF */   addiu    $v0, $v0, -1
/* C484F4 80241914 AE630074 */  sw        $v1, 0x74($s3)
/* C484F8 80241918 860200A8 */  lh        $v0, 0xa8($s0)
/* C484FC 8024191C C602003C */  lwc1      $f2, 0x3c($s0)
/* C48500 80241920 44820000 */  mtc1      $v0, $f0
/* C48504 80241924 00000000 */  nop       
/* C48508 80241928 46800020 */  cvt.s.w   $f0, $f0
/* C4850C 8024192C 46001080 */  add.s     $f2, $f2, $f0
/* C48510 80241930 3C014024 */  lui       $at, 0x4024
/* C48514 80241934 44810800 */  mtc1      $at, $f1
/* C48518 80241938 44800000 */  mtc1      $zero, $f0
/* C4851C 8024193C 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* C48520 80241940 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* C48524 80241944 460010A1 */  cvt.d.s   $f2, $f2
/* C48528 80241948 46201080 */  add.d     $f2, $f2, $f0
/* C4852C 8024194C C440002C */  lwc1      $f0, 0x2c($v0)
/* C48530 80241950 46000021 */  cvt.d.s   $f0, $f0
/* C48534 80241954 4622003C */  c.lt.d    $f0, $f2
/* C48538 80241958 00000000 */  nop       
/* C4853C 8024195C 4500002C */  bc1f      .L80241A10
/* C48540 80241960 02A0202D */   daddu    $a0, $s5, $zero
/* C48544 80241964 AFA00010 */  sw        $zero, 0x10($sp)
/* C48548 80241968 8E46000C */  lw        $a2, 0xc($s2)
/* C4854C 8024196C 8E470010 */  lw        $a3, 0x10($s2)
/* C48550 80241970 0C01242D */  jal       func_800490B4
/* C48554 80241974 0220282D */   daddu    $a1, $s1, $zero
/* C48558 80241978 10400025 */  beqz      $v0, .L80241A10
/* C4855C 8024197C 0000202D */   daddu    $a0, $zero, $zero
/* C48560 80241980 0200282D */  daddu     $a1, $s0, $zero
/* C48564 80241984 0000302D */  daddu     $a2, $zero, $zero
/* C48568 80241988 2412000C */  addiu     $s2, $zero, 0xc
/* C4856C 8024198C 860300A8 */  lh        $v1, 0xa8($s0)
/* C48570 80241990 3C013F80 */  lui       $at, 0x3f80
/* C48574 80241994 44810000 */  mtc1      $at, $f0
/* C48578 80241998 3C014000 */  lui       $at, 0x4000
/* C4857C 8024199C 44811000 */  mtc1      $at, $f2
/* C48580 802419A0 3C01C1A0 */  lui       $at, 0xc1a0
/* C48584 802419A4 44812000 */  mtc1      $at, $f4
/* C48588 802419A8 44834000 */  mtc1      $v1, $f8
/* C4858C 802419AC 00000000 */  nop       
/* C48590 802419B0 46804220 */  cvt.s.w   $f8, $f8
/* C48594 802419B4 44074000 */  mfc1      $a3, $f8
/* C48598 802419B8 27A20038 */  addiu     $v0, $sp, 0x38
/* C4859C 802419BC AFB2001C */  sw        $s2, 0x1c($sp)
/* C485A0 802419C0 AFA20020 */  sw        $v0, 0x20($sp)
/* C485A4 802419C4 E7A00010 */  swc1      $f0, 0x10($sp)
/* C485A8 802419C8 E7A20014 */  swc1      $f2, 0x14($sp)
/* C485AC 802419CC 0C01BFA4 */  jal       fx_emote
/* C485B0 802419D0 E7A40018 */   swc1     $f4, 0x18($sp)
/* C485B4 802419D4 0200202D */  daddu     $a0, $s0, $zero
/* C485B8 802419D8 240502F4 */  addiu     $a1, $zero, 0x2f4
/* C485BC 802419DC C480003C */  lwc1      $f0, 0x3c($a0)
/* C485C0 802419E0 3C060020 */  lui       $a2, 0x20
/* C485C4 802419E4 0C012530 */  jal       func_800494C0
/* C485C8 802419E8 E4800064 */   swc1     $f0, 0x64($a0)
/* C485CC 802419EC 8E220018 */  lw        $v0, 0x18($s1)
/* C485D0 802419F0 9442002A */  lhu       $v0, 0x2a($v0)
/* C485D4 802419F4 30420001 */  andi      $v0, $v0, 1
/* C485D8 802419F8 10400003 */  beqz      $v0, .L80241A08
/* C485DC 802419FC 2402000A */   addiu    $v0, $zero, 0xa
/* C485E0 80241A00 080906F2 */  j         .L80241BC8
/* C485E4 80241A04 AE620070 */   sw       $v0, 0x70($s3)
.L80241A08:
/* C485E8 80241A08 080906F2 */  j         .L80241BC8
/* C485EC 80241A0C AE720070 */   sw       $s2, 0x70($s3)
.L80241A10:
/* C485F0 80241A10 8E620074 */  lw        $v0, 0x74($s3)
/* C485F4 80241A14 2442FFFF */  addiu     $v0, $v0, -1
.L80241A18:
/* C485F8 80241A18 08090689 */  j         .L80241A24
/* C485FC 80241A1C AE620074 */   sw       $v0, 0x74($s3)
.L80241A20:
/* C48600 80241A20 AE220090 */  sw        $v0, 0x90($s1)
.L80241A24:
/* C48604 80241A24 8E2300D0 */  lw        $v1, 0xd0($s1)
/* C48608 80241A28 C6000040 */  lwc1      $f0, 0x40($s0)
/* C4860C 80241A2C C4620000 */  lwc1      $f2, ($v1)
/* C48610 80241A30 468010A0 */  cvt.s.w   $f2, $f2
/* C48614 80241A34 C4640008 */  lwc1      $f4, 8($v1)
/* C48618 80241A38 46802120 */  cvt.s.w   $f4, $f4
/* C4861C 80241A3C E7A00010 */  swc1      $f0, 0x10($sp)
/* C48620 80241A40 8E2200D0 */  lw        $v0, 0xd0($s1)
/* C48624 80241A44 44051000 */  mfc1      $a1, $f2
/* C48628 80241A48 C440000C */  lwc1      $f0, 0xc($v0)
/* C4862C 80241A4C 46800020 */  cvt.s.w   $f0, $f0
/* C48630 80241A50 E7A00014 */  swc1      $f0, 0x14($sp)
/* C48634 80241A54 8E2200D0 */  lw        $v0, 0xd0($s1)
/* C48638 80241A58 44062000 */  mfc1      $a2, $f4
/* C4863C 80241A5C C4400010 */  lwc1      $f0, 0x10($v0)
/* C48640 80241A60 46800020 */  cvt.s.w   $f0, $f0
/* C48644 80241A64 E7A00018 */  swc1      $f0, 0x18($sp)
/* C48648 80241A68 8C640018 */  lw        $a0, 0x18($v1)
/* C4864C 80241A6C 0C0123F5 */  jal       is_point_within_region
/* C48650 80241A70 8E070038 */   lw       $a3, 0x38($s0)
/* C48654 80241A74 1040001A */  beqz      $v0, .L80241AE0
/* C48658 80241A78 00000000 */   nop      
/* C4865C 80241A7C 8E060038 */  lw        $a2, 0x38($s0)
/* C48660 80241A80 8E2200D0 */  lw        $v0, 0xd0($s1)
/* C48664 80241A84 8E070040 */  lw        $a3, 0x40($s0)
/* C48668 80241A88 C44C0000 */  lwc1      $f12, ($v0)
/* C4866C 80241A8C 46806320 */  cvt.s.w   $f12, $f12
/* C48670 80241A90 C44E0008 */  lwc1      $f14, 8($v0)
/* C48674 80241A94 0C00A7B5 */  jal       dist2D
/* C48678 80241A98 468073A0 */   cvt.s.w  $f14, $f14
/* C4867C 80241A9C C6020018 */  lwc1      $f2, 0x18($s0)
/* C48680 80241AA0 4600103C */  c.lt.s    $f2, $f0
/* C48684 80241AA4 00000000 */  nop       
/* C48688 80241AA8 4500000D */  bc1f      .L80241AE0
/* C4868C 80241AAC E7A00034 */   swc1     $f0, 0x34($sp)
/* C48690 80241AB0 C60C0038 */  lwc1      $f12, 0x38($s0)
/* C48694 80241AB4 8E2200D0 */  lw        $v0, 0xd0($s1)
/* C48698 80241AB8 C60E0040 */  lwc1      $f14, 0x40($s0)
/* C4869C 80241ABC C4480000 */  lwc1      $f8, ($v0)
/* C486A0 80241AC0 46804220 */  cvt.s.w   $f8, $f8
/* C486A4 80241AC4 44064000 */  mfc1      $a2, $f8
/* C486A8 80241AC8 C4480008 */  lwc1      $f8, 8($v0)
/* C486AC 80241ACC 46804220 */  cvt.s.w   $f8, $f8
/* C486B0 80241AD0 44074000 */  mfc1      $a3, $f8
/* C486B4 80241AD4 0C00A720 */  jal       atan2
/* C486B8 80241AD8 24140001 */   addiu    $s4, $zero, 1
/* C486BC 80241ADC E600000C */  swc1      $f0, 0xc($s0)
.L80241AE0:
/* C486C0 80241AE0 8E2200D0 */  lw        $v0, 0xd0($s1)
/* C486C4 80241AE4 8C43000C */  lw        $v1, 0xc($v0)
/* C486C8 80241AE8 8C420010 */  lw        $v0, 0x10($v0)
/* C486CC 80241AEC 00621825 */  or        $v1, $v1, $v0
/* C486D0 80241AF0 00741825 */  or        $v1, $v1, $s4
/* C486D4 80241AF4 10600008 */  beqz      $v1, .L80241B18
/* C486D8 80241AF8 00000000 */   nop      
/* C486DC 80241AFC 8602008C */  lh        $v0, 0x8c($s0)
/* C486E0 80241B00 14400031 */  bnez      $v0, .L80241BC8
/* C486E4 80241B04 00000000 */   nop      
/* C486E8 80241B08 8E050018 */  lw        $a1, 0x18($s0)
/* C486EC 80241B0C 8E06000C */  lw        $a2, 0xc($s0)
/* C486F0 80241B10 0C00EA95 */  jal       npc_move_heading
/* C486F4 80241B14 0200202D */   daddu    $a0, $s0, $zero
.L80241B18:
/* C486F8 80241B18 C600003C */  lwc1      $f0, 0x3c($s0)
/* C486FC 80241B1C 3C014059 */  lui       $at, 0x4059
/* C48700 80241B20 44811800 */  mtc1      $at, $f3
/* C48704 80241B24 44801000 */  mtc1      $zero, $f2
/* C48708 80241B28 46000021 */  cvt.d.s   $f0, $f0
/* C4870C 80241B2C 46220002 */  mul.d     $f0, $f0, $f2
/* C48710 80241B30 00000000 */  nop       
/* C48714 80241B34 4620020D */  trunc.w.d $f8, $f0
/* C48718 80241B38 E628007C */  swc1      $f8, 0x7c($s1)
/* C4871C 80241B3C 8E420004 */  lw        $v0, 4($s2)
/* C48720 80241B40 18400021 */  blez      $v0, .L80241BC8
/* C48724 80241B44 00000000 */   nop      
/* C48728 80241B48 8602008E */  lh        $v0, 0x8e($s0)
/* C4872C 80241B4C 9603008E */  lhu       $v1, 0x8e($s0)
/* C48730 80241B50 18400005 */  blez      $v0, .L80241B68
/* C48734 80241B54 2462FFFF */   addiu    $v0, $v1, -1
/* C48738 80241B58 A602008E */  sh        $v0, 0x8e($s0)
/* C4873C 80241B5C 00021400 */  sll       $v0, $v0, 0x10
/* C48740 80241B60 1C400019 */  bgtz      $v0, .L80241BC8
/* C48744 80241B64 00000000 */   nop      
.L80241B68:
/* C48748 80241B68 240403E8 */  addiu     $a0, $zero, 0x3e8
/* C4874C 80241B6C 24020002 */  addiu     $v0, $zero, 2
/* C48750 80241B70 0C00A67F */  jal       rand_int
/* C48754 80241B74 AE620070 */   sw       $v0, 0x70($s3)
/* C48758 80241B78 3C035555 */  lui       $v1, 0x5555
/* C4875C 80241B7C 34635556 */  ori       $v1, $v1, 0x5556
/* C48760 80241B80 00430018 */  mult      $v0, $v1
/* C48764 80241B84 000227C3 */  sra       $a0, $v0, 0x1f
/* C48768 80241B88 00004010 */  mfhi      $t0
/* C4876C 80241B8C 01042023 */  subu      $a0, $t0, $a0
/* C48770 80241B90 00041840 */  sll       $v1, $a0, 1
/* C48774 80241B94 00641821 */  addu      $v1, $v1, $a0
/* C48778 80241B98 00431023 */  subu      $v0, $v0, $v1
/* C4877C 80241B9C 24430002 */  addiu     $v1, $v0, 2
/* C48780 80241BA0 AE630074 */  sw        $v1, 0x74($s3)
/* C48784 80241BA4 8E42002C */  lw        $v0, 0x2c($s2)
/* C48788 80241BA8 58400007 */  blezl     $v0, .L80241BC8
/* C4878C 80241BAC AE600070 */   sw       $zero, 0x70($s3)
/* C48790 80241BB0 8E420008 */  lw        $v0, 8($s2)
/* C48794 80241BB4 18400003 */  blez      $v0, .L80241BC4
/* C48798 80241BB8 28620003 */   slti     $v0, $v1, 3
/* C4879C 80241BBC 10400002 */  beqz      $v0, .L80241BC8
/* C487A0 80241BC0 00000000 */   nop      
.L80241BC4:
/* C487A4 80241BC4 AE600070 */  sw        $zero, 0x70($s3)
.L80241BC8:
/* C487A8 80241BC8 8FBF0058 */  lw        $ra, 0x58($sp)
/* C487AC 80241BCC 8FB50054 */  lw        $s5, 0x54($sp)
/* C487B0 80241BD0 8FB40050 */  lw        $s4, 0x50($sp)
/* C487B4 80241BD4 8FB3004C */  lw        $s3, 0x4c($sp)
/* C487B8 80241BD8 8FB20048 */  lw        $s2, 0x48($sp)
/* C487BC 80241BDC 8FB10044 */  lw        $s1, 0x44($sp)
/* C487C0 80241BE0 8FB00040 */  lw        $s0, 0x40($sp)
/* C487C4 80241BE4 D7BA0078 */  ldc1      $f26, 0x78($sp)
/* C487C8 80241BE8 D7B80070 */  ldc1      $f24, 0x70($sp)
/* C487CC 80241BEC D7B60068 */  ldc1      $f22, 0x68($sp)
/* C487D0 80241BF0 D7B40060 */  ldc1      $f20, 0x60($sp)
/* C487D4 80241BF4 03E00008 */  jr        $ra
/* C487D8 80241BF8 27BD0080 */   addiu    $sp, $sp, 0x80
