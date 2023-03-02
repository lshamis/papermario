.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

/* Generated by spimdisasm 1.11.1 */

glabel update_camera_mode_2
/* 97A8 8002E3A8 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* 97AC 8002E3AC AFB00010 */  sw        $s0, 0x10($sp)
/* 97B0 8002E3B0 0080802D */  daddu     $s0, $a0, $zero
/* 97B4 8002E3B4 AFBF0014 */  sw        $ra, 0x14($sp)
/* 97B8 8002E3B8 F7BE0040 */  sdc1      $f30, 0x40($sp)
/* 97BC 8002E3BC F7BC0038 */  sdc1      $f28, 0x38($sp)
/* 97C0 8002E3C0 F7BA0030 */  sdc1      $f26, 0x30($sp)
/* 97C4 8002E3C4 F7B80028 */  sdc1      $f24, 0x28($sp)
/* 97C8 8002E3C8 F7B60020 */  sdc1      $f22, 0x20($sp)
/* 97CC 8002E3CC F7B40018 */  sdc1      $f20, 0x18($sp)
/* 97D0 8002E3D0 86020020 */  lh        $v0, 0x20($s0)
/* 97D4 8002E3D4 3C01800A */  lui       $at, %hi(D_8009A5EC)
/* 97D8 8002E3D8 C42691B8 */  lwc1      $f6, %lo(D_8009A5EC)($at)
/* 97DC 8002E3DC 86030022 */  lh        $v1, 0x22($s0)
/* 97E0 8002E3E0 44822000 */  mtc1      $v0, $f4
/* 97E4 8002E3E4 00000000 */  nop
/* 97E8 8002E3E8 46802120 */  cvt.s.w   $f4, $f4
/* 97EC 8002E3EC 44831000 */  mtc1      $v1, $f2
/* 97F0 8002E3F0 00000000 */  nop
/* 97F4 8002E3F4 468010A0 */  cvt.s.w   $f2, $f2
/* 97F8 8002E3F8 46062102 */  mul.s     $f4, $f4, $f6
/* 97FC 8002E3FC 00000000 */  nop
/* 9800 8002E400 8602001E */  lh        $v0, 0x1E($s0)
/* 9804 8002E404 86030006 */  lh        $v1, 0x6($s0)
/* 9808 8002E408 44820000 */  mtc1      $v0, $f0
/* 980C 8002E40C 00000000 */  nop
/* 9810 8002E410 46800020 */  cvt.s.w   $f0, $f0
/* 9814 8002E414 8602001C */  lh        $v0, 0x1C($s0)
/* 9818 8002E418 46061082 */  mul.s     $f2, $f2, $f6
/* 981C 8002E41C 00000000 */  nop
/* 9820 8002E420 E6000070 */  swc1      $f0, 0x70($s0)
/* 9824 8002E424 46000186 */  mov.s     $f6, $f0
/* 9828 8002E428 E6060084 */  swc1      $f6, 0x84($s0)
/* 982C 8002E42C 44820000 */  mtc1      $v0, $f0
/* 9830 8002E430 00000000 */  nop
/* 9834 8002E434 46800020 */  cvt.s.w   $f0, $f0
/* 9838 8002E438 E6000074 */  swc1      $f0, 0x74($s0)
/* 983C 8002E43C E6040078 */  swc1      $f4, 0x78($s0)
/* 9840 8002E440 10600047 */  beqz      $v1, .LIQUE_8002E560
/* 9844 8002E444 E602007C */   swc1     $f2, 0x7C($s0)
/* 9848 8002E448 46000086 */  mov.s     $f2, $f0
/* 984C 8002E44C 4480C000 */  mtc1      $zero, $f24
/* 9850 8002E450 3C0140C9 */  lui       $at, (0x40C90FD0 >> 16)
/* 9854 8002E454 34210FD0 */  ori       $at, $at, (0x40C90FD0 & 0xFFFF)
/* 9858 8002E458 4481B000 */  mtc1      $at, $f22
/* 985C 8002E45C C6080054 */  lwc1      $f8, 0x54($s0)
/* 9860 8002E460 C6000058 */  lwc1      $f0, 0x58($s0)
/* 9864 8002E464 C604007C */  lwc1      $f4, 0x7C($s0)
/* 9868 8002E468 C606005C */  lwc1      $f6, 0x5C($s0)
/* 986C 8002E46C 3C0143B4 */  lui       $at, (0x43B40000 >> 16)
/* 9870 8002E470 4481A000 */  mtc1      $at, $f20
/* 9874 8002E474 46161082 */  mul.s     $f2, $f2, $f22
/* 9878 8002E478 00000000 */  nop
/* 987C 8002E47C A6000006 */  sh        $zero, 0x6($s0)
/* 9880 8002E480 E6180098 */  swc1      $f24, 0x98($s0)
/* 9884 8002E484 E618009C */  swc1      $f24, 0x9C($s0)
/* 9888 8002E488 46040000 */  add.s     $f0, $f0, $f4
/* 988C 8002E48C E6080048 */  swc1      $f8, 0x48($s0)
/* 9890 8002E490 E6060050 */  swc1      $f6, 0x50($s0)
/* 9894 8002E494 E600004C */  swc1      $f0, 0x4C($s0)
/* 9898 8002E498 46141683 */  div.s     $f26, $f2, $f20
/* 989C 8002E49C 0C00A78F */  jal       sin_rad
/* 98A0 8002E4A0 4600D306 */   mov.s    $f12, $f26
/* 98A4 8002E4A4 46000786 */  mov.s     $f30, $f0
/* 98A8 8002E4A8 0C00A7A8 */  jal       cos_rad
/* 98AC 8002E4AC 4600D306 */   mov.s    $f12, $f26
/* 98B0 8002E4B0 46000306 */  mov.s     $f12, $f0
/* 98B4 8002E4B4 46186202 */  mul.s     $f8, $f12, $f24
/* 98B8 8002E4B8 00000000 */  nop
/* 98BC 8002E4BC 4600C087 */  neg.s     $f2, $f24
/* 98C0 8002E4C0 4602F082 */  mul.s     $f2, $f30, $f2
/* 98C4 8002E4C4 00000000 */  nop
/* 98C8 8002E4C8 C61C0078 */  lwc1      $f28, 0x78($s0)
/* 98CC 8002E4CC 461EE102 */  mul.s     $f4, $f28, $f30
/* 98D0 8002E4D0 00000000 */  nop
/* 98D4 8002E4D4 460CE182 */  mul.s     $f6, $f28, $f12
/* 98D8 8002E4D8 00000000 */  nop
/* 98DC 8002E4DC C6000070 */  lwc1      $f0, 0x70($s0)
/* 98E0 8002E4E0 46160002 */  mul.s     $f0, $f0, $f22
/* 98E4 8002E4E4 00000000 */  nop
/* 98E8 8002E4E8 4600C286 */  mov.s     $f10, $f24
/* 98EC 8002E4EC 46005586 */  mov.s     $f22, $f10
/* 98F0 8002E4F0 46044600 */  add.s     $f24, $f8, $f4
/* 98F4 8002E4F4 46140683 */  div.s     $f26, $f0, $f20
/* 98F8 8002E4F8 4600D306 */  mov.s     $f12, $f26
/* 98FC 8002E4FC 0C00A78F */  jal       sin_rad
/* 9900 8002E500 46061700 */   add.s    $f28, $f2, $f6
/* 9904 8002E504 46000786 */  mov.s     $f30, $f0
/* 9908 8002E508 0C00A7A8 */  jal       cos_rad
/* 990C 8002E50C 4600D306 */   mov.s    $f12, $f26
/* 9910 8002E510 46000306 */  mov.s     $f12, $f0
/* 9914 8002E514 46166202 */  mul.s     $f8, $f12, $f22
/* 9918 8002E518 00000000 */  nop
/* 991C 8002E51C 4616F182 */  mul.s     $f6, $f30, $f22
/* 9920 8002E520 00000000 */  nop
/* 9924 8002E524 461EE102 */  mul.s     $f4, $f28, $f30
/* 9928 8002E528 00000000 */  nop
/* 992C 8002E52C 460CE082 */  mul.s     $f2, $f28, $f12
/* 9930 8002E530 00000000 */  nop
/* 9934 8002E534 C600004C */  lwc1      $f0, 0x4C($s0)
/* 9938 8002E538 46180400 */  add.s     $f16, $f0, $f24
/* 993C 8002E53C 46044281 */  sub.s     $f10, $f8, $f4
/* 9940 8002E540 46023080 */  add.s     $f2, $f6, $f2
/* 9944 8002E544 C6000048 */  lwc1      $f0, 0x48($s0)
/* 9948 8002E548 460A0100 */  add.s     $f4, $f0, $f10
/* 994C 8002E54C C6000050 */  lwc1      $f0, 0x50($s0)
/* 9950 8002E550 46020200 */  add.s     $f8, $f0, $f2
/* 9954 8002E554 E6100040 */  swc1      $f16, 0x40($s0)
/* 9958 8002E558 E604003C */  swc1      $f4, 0x3C($s0)
/* 995C 8002E55C E6080044 */  swc1      $f8, 0x44($s0)
.LIQUE_8002E560:
/* 9960 8002E560 C6020054 */  lwc1      $f2, 0x54($s0)
/* 9964 8002E564 C6000048 */  lwc1      $f0, 0x48($s0)
/* 9968 8002E568 46001101 */  sub.s     $f4, $f2, $f0
/* 996C 8002E56C C602005C */  lwc1      $f2, 0x5C($s0)
/* 9970 8002E570 C6000050 */  lwc1      $f0, 0x50($s0)
/* 9974 8002E574 46001201 */  sub.s     $f8, $f2, $f0
/* 9978 8002E578 C6000058 */  lwc1      $f0, 0x58($s0)
/* 997C 8002E57C C602007C */  lwc1      $f2, 0x7C($s0)
/* 9980 8002E580 46020000 */  add.s     $f0, $f0, $f2
/* 9984 8002E584 C602004C */  lwc1      $f2, 0x4C($s0)
/* 9988 8002E588 46020401 */  sub.s     $f16, $f0, $f2
/* 998C 8002E58C 3C014180 */  lui       $at, (0x41800000 >> 16)
/* 9990 8002E590 44811000 */  mtc1      $at, $f2
/* 9994 8002E594 46002005 */  abs.s     $f0, $f4
/* 9998 8002E598 4600103C */  c.lt.s    $f2, $f0
/* 999C 8002E59C 00000000 */  nop
/* 99A0 8002E5A0 4502000C */  bc1fl     .LIQUE_8002E5D4
/* 99A4 8002E5A4 46008005 */   abs.s    $f0, $f16
/* 99A8 8002E5A8 44800000 */  mtc1      $zero, $f0
/* 99AC 8002E5AC 00000000 */  nop
/* 99B0 8002E5B0 4600203C */  c.lt.s    $f4, $f0
/* 99B4 8002E5B4 00000000 */  nop
/* 99B8 8002E5B8 45000005 */  bc1f      .LIQUE_8002E5D0
/* 99BC 8002E5BC 46001106 */   mov.s    $f4, $f2
/* 99C0 8002E5C0 3C01C180 */  lui       $at, (0xC1800000 >> 16)
/* 99C4 8002E5C4 44812000 */  mtc1      $at, $f4
/* 99C8 8002E5C8 3C014180 */  lui       $at, (0x41800000 >> 16)
/* 99CC 8002E5CC 44811000 */  mtc1      $at, $f2
.LIQUE_8002E5D0:
/* 99D0 8002E5D0 46008005 */  abs.s     $f0, $f16
.LIQUE_8002E5D4:
/* 99D4 8002E5D4 4600103C */  c.lt.s    $f2, $f0
/* 99D8 8002E5D8 00000000 */  nop
/* 99DC 8002E5DC 45000009 */  bc1f      .LIQUE_8002E604
/* 99E0 8002E5E0 00000000 */   nop
/* 99E4 8002E5E4 44800000 */  mtc1      $zero, $f0
/* 99E8 8002E5E8 00000000 */  nop
/* 99EC 8002E5EC 4600803C */  c.lt.s    $f16, $f0
/* 99F0 8002E5F0 00000000 */  nop
/* 99F4 8002E5F4 45000003 */  bc1f      .LIQUE_8002E604
/* 99F8 8002E5F8 46001406 */   mov.s    $f16, $f2
/* 99FC 8002E5FC 3C01C180 */  lui       $at, (0xC1800000 >> 16)
/* 9A00 8002E600 44818000 */  mtc1      $at, $f16
.LIQUE_8002E604:
/* 9A04 8002E604 3C014180 */  lui       $at, (0x41800000 >> 16)
/* 9A08 8002E608 44811000 */  mtc1      $at, $f2
/* 9A0C 8002E60C 46004005 */  abs.s     $f0, $f8
/* 9A10 8002E610 4600103C */  c.lt.s    $f2, $f0
/* 9A14 8002E614 00000000 */  nop
/* 9A18 8002E618 45000009 */  bc1f      .LIQUE_8002E640
/* 9A1C 8002E61C 00000000 */   nop
/* 9A20 8002E620 44800000 */  mtc1      $zero, $f0
/* 9A24 8002E624 00000000 */  nop
/* 9A28 8002E628 4600403C */  c.lt.s    $f8, $f0
/* 9A2C 8002E62C 00000000 */  nop
/* 9A30 8002E630 45000003 */  bc1f      .LIQUE_8002E640
/* 9A34 8002E634 46001206 */   mov.s    $f8, $f2
/* 9A38 8002E638 3C01C180 */  lui       $at, (0xC1800000 >> 16)
/* 9A3C 8002E63C 44814000 */  mtc1      $at, $f8
.LIQUE_8002E640:
/* 9A40 8002E640 3C013F00 */  lui       $at, (0x3F000000 >> 16)
/* 9A44 8002E644 4481A000 */  mtc1      $at, $f20
/* 9A48 8002E648 00000000 */  nop
/* 9A4C 8002E64C 46142082 */  mul.s     $f2, $f4, $f20
/* 9A50 8002E650 00000000 */  nop
/* 9A54 8002E654 46148182 */  mul.s     $f6, $f16, $f20
/* 9A58 8002E658 00000000 */  nop
/* 9A5C 8002E65C 46144202 */  mul.s     $f8, $f8, $f20
/* 9A60 8002E660 00000000 */  nop
/* 9A64 8002E664 C6000074 */  lwc1      $f0, 0x74($s0)
/* 9A68 8002E668 3C0140C9 */  lui       $at, (0x40C90FD0 >> 16)
/* 9A6C 8002E66C 34210FD0 */  ori       $at, $at, (0x40C90FD0 & 0xFFFF)
/* 9A70 8002E670 4481B000 */  mtc1      $at, $f22
/* 9A74 8002E674 00000000 */  nop
/* 9A78 8002E678 46160002 */  mul.s     $f0, $f0, $f22
/* 9A7C 8002E67C 00000000 */  nop
/* 9A80 8002E680 4480C000 */  mtc1      $zero, $f24
/* 9A84 8002E684 C6040048 */  lwc1      $f4, 0x48($s0)
/* 9A88 8002E688 3C0143B4 */  lui       $at, (0x43B40000 >> 16)
/* 9A8C 8002E68C 44819000 */  mtc1      $at, $f18
/* 9A90 8002E690 46022100 */  add.s     $f4, $f4, $f2
/* 9A94 8002E694 C602004C */  lwc1      $f2, 0x4C($s0)
/* 9A98 8002E698 46120683 */  div.s     $f26, $f0, $f18
/* 9A9C 8002E69C 46061080 */  add.s     $f2, $f2, $f6
/* 9AA0 8002E6A0 C6000050 */  lwc1      $f0, 0x50($s0)
/* 9AA4 8002E6A4 4600D306 */  mov.s     $f12, $f26
/* 9AA8 8002E6A8 46080000 */  add.s     $f0, $f0, $f8
/* 9AAC 8002E6AC E6040048 */  swc1      $f4, 0x48($s0)
/* 9AB0 8002E6B0 E602004C */  swc1      $f2, 0x4C($s0)
/* 9AB4 8002E6B4 0C00A78F */  jal       sin_rad
/* 9AB8 8002E6B8 E6000050 */   swc1     $f0, 0x50($s0)
/* 9ABC 8002E6BC 46000786 */  mov.s     $f30, $f0
/* 9AC0 8002E6C0 0C00A7A8 */  jal       cos_rad
/* 9AC4 8002E6C4 4600D306 */   mov.s    $f12, $f26
/* 9AC8 8002E6C8 46000306 */  mov.s     $f12, $f0
/* 9ACC 8002E6CC 46186202 */  mul.s     $f8, $f12, $f24
/* 9AD0 8002E6D0 00000000 */  nop
/* 9AD4 8002E6D4 4600C087 */  neg.s     $f2, $f24
/* 9AD8 8002E6D8 4602F082 */  mul.s     $f2, $f30, $f2
/* 9ADC 8002E6DC 00000000 */  nop
/* 9AE0 8002E6E0 C61C0078 */  lwc1      $f28, 0x78($s0)
/* 9AE4 8002E6E4 461EE102 */  mul.s     $f4, $f28, $f30
/* 9AE8 8002E6E8 00000000 */  nop
/* 9AEC 8002E6EC 460CE182 */  mul.s     $f6, $f28, $f12
/* 9AF0 8002E6F0 00000000 */  nop
/* 9AF4 8002E6F4 C6000070 */  lwc1      $f0, 0x70($s0)
/* 9AF8 8002E6F8 46160002 */  mul.s     $f0, $f0, $f22
/* 9AFC 8002E6FC 00000000 */  nop
/* 9B00 8002E700 4600C286 */  mov.s     $f10, $f24
/* 9B04 8002E704 3C0143B4 */  lui       $at, (0x43B40000 >> 16)
/* 9B08 8002E708 44819000 */  mtc1      $at, $f18
/* 9B0C 8002E70C 46005586 */  mov.s     $f22, $f10
/* 9B10 8002E710 46044600 */  add.s     $f24, $f8, $f4
/* 9B14 8002E714 46120683 */  div.s     $f26, $f0, $f18
/* 9B18 8002E718 4600D306 */  mov.s     $f12, $f26
/* 9B1C 8002E71C 0C00A78F */  jal       sin_rad
/* 9B20 8002E720 46061700 */   add.s    $f28, $f2, $f6
/* 9B24 8002E724 46000786 */  mov.s     $f30, $f0
/* 9B28 8002E728 0C00A7A8 */  jal       cos_rad
/* 9B2C 8002E72C 4600D306 */   mov.s    $f12, $f26
/* 9B30 8002E730 46000306 */  mov.s     $f12, $f0
/* 9B34 8002E734 461EE002 */  mul.s     $f0, $f28, $f30
/* 9B38 8002E738 00000000 */  nop
/* 9B3C 8002E73C C602004C */  lwc1      $f2, 0x4C($s0)
/* 9B40 8002E740 46181400 */  add.s     $f16, $f2, $f24
/* 9B44 8002E744 C6020040 */  lwc1      $f2, 0x40($s0)
/* 9B48 8002E748 46028081 */  sub.s     $f2, $f16, $f2
/* 9B4C 8002E74C 46141402 */  mul.s     $f16, $f2, $f20
/* 9B50 8002E750 00000000 */  nop
/* 9B54 8002E754 46166082 */  mul.s     $f2, $f12, $f22
/* 9B58 8002E758 00000000 */  nop
/* 9B5C 8002E75C 46001281 */  sub.s     $f10, $f2, $f0
/* 9B60 8002E760 4616F082 */  mul.s     $f2, $f30, $f22
/* 9B64 8002E764 00000000 */  nop
/* 9B68 8002E768 C6000048 */  lwc1      $f0, 0x48($s0)
/* 9B6C 8002E76C 460A0100 */  add.s     $f4, $f0, $f10
/* 9B70 8002E770 C600003C */  lwc1      $f0, 0x3C($s0)
/* 9B74 8002E774 46002001 */  sub.s     $f0, $f4, $f0
/* 9B78 8002E778 46140102 */  mul.s     $f4, $f0, $f20
/* 9B7C 8002E77C 00000000 */  nop
/* 9B80 8002E780 460CE002 */  mul.s     $f0, $f28, $f12
/* 9B84 8002E784 00000000 */  nop
/* 9B88 8002E788 46001080 */  add.s     $f2, $f2, $f0
/* 9B8C 8002E78C C6000050 */  lwc1      $f0, 0x50($s0)
/* 9B90 8002E790 46020200 */  add.s     $f8, $f0, $f2
/* 9B94 8002E794 C6000044 */  lwc1      $f0, 0x44($s0)
/* 9B98 8002E798 46004001 */  sub.s     $f0, $f8, $f0
/* 9B9C 8002E79C 46140202 */  mul.s     $f8, $f0, $f20
/* 9BA0 8002E7A0 00000000 */  nop
/* 9BA4 8002E7A4 3C014180 */  lui       $at, (0x41800000 >> 16)
/* 9BA8 8002E7A8 44811000 */  mtc1      $at, $f2
/* 9BAC 8002E7AC 46002005 */  abs.s     $f0, $f4
/* 9BB0 8002E7B0 4600103C */  c.lt.s    $f2, $f0
/* 9BB4 8002E7B4 00000000 */  nop
/* 9BB8 8002E7B8 4502000A */  bc1fl     .LIQUE_8002E7E4
/* 9BBC 8002E7BC 46008005 */   abs.s    $f0, $f16
/* 9BC0 8002E7C0 4616203C */  c.lt.s    $f4, $f22
/* 9BC4 8002E7C4 00000000 */  nop
/* 9BC8 8002E7C8 45000005 */  bc1f      .LIQUE_8002E7E0
/* 9BCC 8002E7CC 46001106 */   mov.s    $f4, $f2
/* 9BD0 8002E7D0 3C01C180 */  lui       $at, (0xC1800000 >> 16)
/* 9BD4 8002E7D4 44812000 */  mtc1      $at, $f4
/* 9BD8 8002E7D8 3C014180 */  lui       $at, (0x41800000 >> 16)
/* 9BDC 8002E7DC 44811000 */  mtc1      $at, $f2
.LIQUE_8002E7E0:
/* 9BE0 8002E7E0 46008005 */  abs.s     $f0, $f16
.LIQUE_8002E7E4:
/* 9BE4 8002E7E4 4600103C */  c.lt.s    $f2, $f0
/* 9BE8 8002E7E8 00000000 */  nop
/* 9BEC 8002E7EC 45000009 */  bc1f      .LIQUE_8002E814
/* 9BF0 8002E7F0 00000000 */   nop
/* 9BF4 8002E7F4 44800000 */  mtc1      $zero, $f0
/* 9BF8 8002E7F8 00000000 */  nop
/* 9BFC 8002E7FC 4600803C */  c.lt.s    $f16, $f0
/* 9C00 8002E800 00000000 */  nop
/* 9C04 8002E804 45000003 */  bc1f      .LIQUE_8002E814
/* 9C08 8002E808 46001406 */   mov.s    $f16, $f2
/* 9C0C 8002E80C 3C01C180 */  lui       $at, (0xC1800000 >> 16)
/* 9C10 8002E810 44818000 */  mtc1      $at, $f16
.LIQUE_8002E814:
/* 9C14 8002E814 3C014180 */  lui       $at, (0x41800000 >> 16)
/* 9C18 8002E818 44811000 */  mtc1      $at, $f2
/* 9C1C 8002E81C 46004005 */  abs.s     $f0, $f8
/* 9C20 8002E820 4600103C */  c.lt.s    $f2, $f0
/* 9C24 8002E824 00000000 */  nop
/* 9C28 8002E828 45000009 */  bc1f      .LIQUE_8002E850
/* 9C2C 8002E82C 00000000 */   nop
/* 9C30 8002E830 44800000 */  mtc1      $zero, $f0
/* 9C34 8002E834 00000000 */  nop
/* 9C38 8002E838 4600403C */  c.lt.s    $f8, $f0
/* 9C3C 8002E83C 00000000 */  nop
/* 9C40 8002E840 45000003 */  bc1f      .LIQUE_8002E850
/* 9C44 8002E844 46001206 */   mov.s    $f8, $f2
/* 9C48 8002E848 3C01C180 */  lui       $at, (0xC1800000 >> 16)
/* 9C4C 8002E84C 44814000 */  mtc1      $at, $f8
.LIQUE_8002E850:
/* 9C50 8002E850 C600003C */  lwc1      $f0, 0x3C($s0)
/* 9C54 8002E854 46040000 */  add.s     $f0, $f0, $f4
/* 9C58 8002E858 C60E0044 */  lwc1      $f14, 0x44($s0)
/* 9C5C 8002E85C 8E060048 */  lw        $a2, 0x48($s0)
/* 9C60 8002E860 46087380 */  add.s     $f14, $f14, $f8
/* 9C64 8002E864 C6020040 */  lwc1      $f2, 0x40($s0)
/* 9C68 8002E868 8E070050 */  lw        $a3, 0x50($s0)
/* 9C6C 8002E86C 46101080 */  add.s     $f2, $f2, $f16
/* 9C70 8002E870 E600003C */  swc1      $f0, 0x3C($s0)
/* 9C74 8002E874 46000306 */  mov.s     $f12, $f0
/* 9C78 8002E878 E6020040 */  swc1      $f2, 0x40($s0)
/* 9C7C 8002E87C 0C00A654 */  jal       atan2
/* 9C80 8002E880 E60E0044 */   swc1     $f14, 0x44($s0)
/* 9C84 8002E884 C6040048 */  lwc1      $f4, 0x48($s0)
/* 9C88 8002E888 4480A000 */  mtc1      $zero, $f20
/* 9C8C 8002E88C C602003C */  lwc1      $f2, 0x3C($s0)
/* 9C90 8002E890 E600006C */  swc1      $f0, 0x6C($s0)
/* 9C94 8002E894 46022581 */  sub.s     $f22, $f4, $f2
/* 9C98 8002E898 C6040050 */  lwc1      $f4, 0x50($s0)
/* 9C9C 8002E89C C6020044 */  lwc1      $f2, 0x44($s0)
/* 9CA0 8002E8A0 4600A306 */  mov.s     $f12, $f20
/* 9CA4 8002E8A4 46022701 */  sub.s     $f28, $f4, $f2
/* 9CA8 8002E8A8 C604004C */  lwc1      $f4, 0x4C($s0)
/* 9CAC 8002E8AC C6020040 */  lwc1      $f2, 0x40($s0)
/* 9CB0 8002E8B0 4406B000 */  mfc1      $a2, $f22
/* 9CB4 8002E8B4 46022601 */  sub.s     $f24, $f4, $f2
/* 9CB8 8002E8B8 4407E000 */  mfc1      $a3, $f28
/* 9CBC 8002E8BC 0C00A654 */  jal       atan2
/* 9CC0 8002E8C0 4600A386 */   mov.s    $f14, $f20
/* 9CC4 8002E8C4 4616B102 */  mul.s     $f4, $f22, $f22
/* 9CC8 8002E8C8 00000000 */  nop
/* 9CCC 8002E8CC 461CE082 */  mul.s     $f2, $f28, $f28
/* 9CD0 8002E8D0 00000000 */  nop
/* 9CD4 8002E8D4 46022300 */  add.s     $f12, $f4, $f2
/* 9CD8 8002E8D8 46000007 */  neg.s     $f0, $f0
/* 9CDC 8002E8DC E6000090 */  swc1      $f0, 0x90($s0)
/* 9CE0 8002E8E0 46006004 */  sqrt.s    $f0, $f12
/* 9CE4 8002E8E4 46000032 */  c.eq.s    $f0, $f0
/* 9CE8 8002E8E8 00000000 */  nop
/* 9CEC 8002E8EC 45030004 */  bc1tl     .LIQUE_8002E900
/* 9CF0 8002E8F0 4600A306 */   mov.s    $f12, $f20
/* 9CF4 8002E8F4 0C0183A0 */  jal       sqrtf
/* 9CF8 8002E8F8 00000000 */   nop
/* 9CFC 8002E8FC 4600A306 */  mov.s     $f12, $f20
.LIQUE_8002E900:
/* 9D00 8002E900 46000007 */  neg.s     $f0, $f0
/* 9D04 8002E904 4406C000 */  mfc1      $a2, $f24
/* 9D08 8002E908 44070000 */  mfc1      $a3, $f0
/* 9D0C 8002E90C 0C00A654 */  jal       atan2
/* 9D10 8002E910 46006386 */   mov.s    $f14, $f12
/* 9D14 8002E914 E6000094 */  swc1      $f0, 0x94($s0)
/* 9D18 8002E918 8FBF0014 */  lw        $ra, 0x14($sp)
/* 9D1C 8002E91C 8FB00010 */  lw        $s0, 0x10($sp)
/* 9D20 8002E920 D7BE0040 */  ldc1      $f30, 0x40($sp)
/* 9D24 8002E924 D7BC0038 */  ldc1      $f28, 0x38($sp)
/* 9D28 8002E928 D7BA0030 */  ldc1      $f26, 0x30($sp)
/* 9D2C 8002E92C D7B80028 */  ldc1      $f24, 0x28($sp)
/* 9D30 8002E930 D7B60020 */  ldc1      $f22, 0x20($sp)
/* 9D34 8002E934 D7B40018 */  ldc1      $f20, 0x18($sp)
/* 9D38 8002E938 03E00008 */  jr        $ra
/* 9D3C 8002E93C 27BD0048 */   addiu    $sp, $sp, 0x48