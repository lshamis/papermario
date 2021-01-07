.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel guLookAtF
/* 3D5B0 800621B0 27BDFF90 */  addiu     $sp, $sp, -0x70
/* 3D5B4 800621B4 AFB30024 */  sw        $s3, 0x24($sp)
/* 3D5B8 800621B8 8FB3008C */  lw        $s3, 0x8c($sp)
/* 3D5BC 800621BC AFB20020 */  sw        $s2, 0x20($sp)
/* 3D5C0 800621C0 8FB20090 */  lw        $s2, 0x90($sp)
/* 3D5C4 800621C4 F7BA0058 */  sdc1      $f26, 0x58($sp)
/* 3D5C8 800621C8 C7BA0094 */  lwc1      $f26, 0x94($sp)
/* 3D5CC 800621CC F7B40040 */  sdc1      $f20, 0x40($sp)
/* 3D5D0 800621D0 C7B40080 */  lwc1      $f20, 0x80($sp)
/* 3D5D4 800621D4 F7B60048 */  sdc1      $f22, 0x48($sp)
/* 3D5D8 800621D8 C7B60084 */  lwc1      $f22, 0x84($sp)
/* 3D5DC 800621DC F7B80050 */  sdc1      $f24, 0x50($sp)
/* 3D5E0 800621E0 C7B80088 */  lwc1      $f24, 0x88($sp)
/* 3D5E4 800621E4 AFB00018 */  sw        $s0, 0x18($sp)
/* 3D5E8 800621E8 00808021 */  addu      $s0, $a0, $zero
/* 3D5EC 800621EC AFB40028 */  sw        $s4, 0x28($sp)
/* 3D5F0 800621F0 00A0A021 */  addu      $s4, $a1, $zero
/* 3D5F4 800621F4 AFB5002C */  sw        $s5, 0x2c($sp)
/* 3D5F8 800621F8 00C0A821 */  addu      $s5, $a2, $zero
/* 3D5FC 800621FC AFBE0038 */  sw        $fp, 0x38($sp)
/* 3D600 80062200 AFBF003C */  sw        $ra, 0x3c($sp)
/* 3D604 80062204 AFB70034 */  sw        $s7, 0x34($sp)
/* 3D608 80062208 AFB60030 */  sw        $s6, 0x30($sp)
/* 3D60C 8006220C AFB1001C */  sw        $s1, 0x1c($sp)
/* 3D610 80062210 F7BE0068 */  sdc1      $f30, 0x68($sp)
/* 3D614 80062214 F7BC0060 */  sdc1      $f28, 0x60($sp)
/* 3D618 80062218 0C019D28 */  jal       guMtxIdentF
/* 3D61C 8006221C 00E0F021 */   addu     $fp, $a3, $zero
/* 3D620 80062220 44947000 */  mtc1      $s4, $f14
/* 3D624 80062224 00000000 */  nop       
/* 3D628 80062228 460EA701 */  sub.s     $f28, $f20, $f14
/* 3D62C 8006222C 44959000 */  mtc1      $s5, $f18
/* 3D630 80062230 461CE002 */  mul.s     $f0, $f28, $f28
/* 3D634 80062234 4612B781 */  sub.s     $f30, $f22, $f18
/* 3D638 80062238 449E7000 */  mtc1      $fp, $f14
/* 3D63C 8006223C 00000000 */  nop       
/* 3D640 80062240 460EC381 */  sub.s     $f14, $f24, $f14
/* 3D644 80062244 461EF102 */  mul.s     $f4, $f30, $f30
/* 3D648 80062248 44117000 */  mfc1      $s1, $f14
/* 3D64C 8006224C 00000000 */  nop       
/* 3D650 80062250 44919000 */  mtc1      $s1, $f18
/* 3D654 80062254 00000000 */  nop       
/* 3D658 80062258 46127082 */  mul.s     $f2, $f14, $f18
/* 3D65C 8006225C 46040000 */  add.s     $f0, $f0, $f4
/* 3D660 80062260 46020300 */  add.s     $f12, $f0, $f2
/* 3D664 80062264 46006084 */  sqrt.s    $f2, $f12
/* 3D668 80062268 46021032 */  c.eq.s    $f2, $f2
/* 3D66C 8006226C 00000000 */  nop       
/* 3D670 80062270 45010004 */  bc1t      .L80062284
/* 3D674 80062274 00000000 */   nop      
/* 3D678 80062278 0C0187BC */  jal       sqrtf
/* 3D67C 8006227C 00000000 */   nop      
/* 3D680 80062280 46000086 */  mov.s     $f2, $f0
.L80062284:
/* 3D684 80062284 3C01800A */  lui       $at, %hi(D_80099B50)
/* 3D688 80062288 D4209B50 */  ldc1      $f0, %lo(D_80099B50)($at)
/* 3D68C 8006228C 460010A1 */  cvt.d.s   $f2, $f2
/* 3D690 80062290 46220003 */  div.d     $f0, $f0, $f2
/* 3D694 80062294 46200420 */  cvt.s.d   $f16, $f0
/* 3D698 80062298 4610E702 */  mul.s     $f28, $f28, $f16
/* 3D69C 8006229C 44917000 */  mtc1      $s1, $f14
/* 3D6A0 800622A0 00000000 */  nop       
/* 3D6A4 800622A4 46107382 */  mul.s     $f14, $f14, $f16
/* 3D6A8 800622A8 00000000 */  nop       
/* 3D6AC 800622AC 4610F782 */  mul.s     $f30, $f30, $f16
/* 3D6B0 800622B0 44929000 */  mtc1      $s2, $f18
/* 3D6B4 800622B4 00000000 */  nop       
/* 3D6B8 800622B8 460E9102 */  mul.s     $f4, $f18, $f14
/* 3D6BC 800622BC 00000000 */  nop       
/* 3D6C0 800622C0 461ED002 */  mul.s     $f0, $f26, $f30
/* 3D6C4 800622C4 00000000 */  nop       
/* 3D6C8 800622C8 461CD202 */  mul.s     $f8, $f26, $f28
/* 3D6CC 800622CC 44939000 */  mtc1      $s3, $f18
/* 3D6D0 800622D0 00000000 */  nop       
/* 3D6D4 800622D4 460E9082 */  mul.s     $f2, $f18, $f14
/* 3D6D8 800622D8 00000000 */  nop       
/* 3D6DC 800622DC 461E9282 */  mul.s     $f10, $f18, $f30
/* 3D6E0 800622E0 44117000 */  mfc1      $s1, $f14
/* 3D6E4 800622E4 44927000 */  mtc1      $s2, $f14
/* 3D6E8 800622E8 00000000 */  nop       
/* 3D6EC 800622EC 461C7182 */  mul.s     $f6, $f14, $f28
/* 3D6F0 800622F0 46002601 */  sub.s     $f24, $f4, $f0
/* 3D6F4 800622F4 4618C002 */  mul.s     $f0, $f24, $f24
/* 3D6F8 800622F8 46024581 */  sub.s     $f22, $f8, $f2
/* 3D6FC 800622FC 4616B102 */  mul.s     $f4, $f22, $f22
/* 3D700 80062300 46065501 */  sub.s     $f20, $f10, $f6
/* 3D704 80062304 4614A082 */  mul.s     $f2, $f20, $f20
/* 3D708 80062308 46040000 */  add.s     $f0, $f0, $f4
/* 3D70C 8006230C 46020300 */  add.s     $f12, $f0, $f2
/* 3D710 80062310 46006004 */  sqrt.s    $f0, $f12
/* 3D714 80062314 46000032 */  c.eq.s    $f0, $f0
/* 3D718 80062318 00000000 */  nop       
/* 3D71C 8006231C 45010003 */  bc1t      .L8006232C
/* 3D720 80062320 00000000 */   nop      
/* 3D724 80062324 0C0187BC */  jal       sqrtf
/* 3D728 80062328 00000000 */   nop      
.L8006232C:
/* 3D72C 8006232C 3C01800A */  lui       $at, %hi(D_80099B58)
/* 3D730 80062330 8C369B58 */  lw        $s6, %lo(D_80099B58)($at)
/* 3D734 80062334 8C379B5C */  lw        $s7, -0x64a4($at)
/* 3D738 80062338 44979000 */  mtc1      $s7, $f18
/* 3D73C 8006233C 44969800 */  mtc1      $s6, $f19
/* 3D740 80062340 46000021 */  cvt.d.s   $f0, $f0
/* 3D744 80062344 46209003 */  div.d     $f0, $f18, $f0
/* 3D748 80062348 46200420 */  cvt.s.d   $f16, $f0
/* 3D74C 8006234C 4610C602 */  mul.s     $f24, $f24, $f16
/* 3D750 80062350 00000000 */  nop       
/* 3D754 80062354 4610A502 */  mul.s     $f20, $f20, $f16
/* 3D758 80062358 00000000 */  nop       
/* 3D75C 8006235C 4610B582 */  mul.s     $f22, $f22, $f16
/* 3D760 80062360 00000000 */  nop       
/* 3D764 80062364 4614F102 */  mul.s     $f4, $f30, $f20
/* 3D768 80062368 44917000 */  mtc1      $s1, $f14
/* 3D76C 8006236C 00000000 */  nop       
/* 3D770 80062370 46167002 */  mul.s     $f0, $f14, $f22
/* 3D774 80062374 00000000 */  nop       
/* 3D778 80062378 46187202 */  mul.s     $f8, $f14, $f24
/* 3D77C 8006237C 00000000 */  nop       
/* 3D780 80062380 4614E082 */  mul.s     $f2, $f28, $f20
/* 3D784 80062384 00000000 */  nop       
/* 3D788 80062388 4616E282 */  mul.s     $f10, $f28, $f22
/* 3D78C 8006238C 00000000 */  nop       
/* 3D790 80062390 4618F182 */  mul.s     $f6, $f30, $f24
/* 3D794 80062394 46002101 */  sub.s     $f4, $f4, $f0
/* 3D798 80062398 46042002 */  mul.s     $f0, $f4, $f4
/* 3D79C 8006239C 46024201 */  sub.s     $f8, $f8, $f2
/* 3D7A0 800623A0 44132000 */  mfc1      $s3, $f4
/* 3D7A4 800623A4 46084102 */  mul.s     $f4, $f8, $f8
/* 3D7A8 800623A8 46065681 */  sub.s     $f26, $f10, $f6
/* 3D7AC 800623AC 461AD082 */  mul.s     $f2, $f26, $f26
/* 3D7B0 800623B0 46040000 */  add.s     $f0, $f0, $f4
/* 3D7B4 800623B4 46020300 */  add.s     $f12, $f0, $f2
/* 3D7B8 800623B8 46006004 */  sqrt.s    $f0, $f12
/* 3D7BC 800623BC 46000032 */  c.eq.s    $f0, $f0
/* 3D7C0 800623C0 44124000 */  mfc1      $s2, $f8
/* 3D7C4 800623C4 00000000 */  nop       
/* 3D7C8 800623C8 45030006 */  bc1tl     .L800623E4
/* 3D7CC 800623CC 46000021 */   cvt.d.s  $f0, $f0
/* 3D7D0 800623D0 0C0187BC */  jal       sqrtf
/* 3D7D4 800623D4 00000000 */   nop      
/* 3D7D8 800623D8 44979000 */  mtc1      $s7, $f18
/* 3D7DC 800623DC 44969800 */  mtc1      $s6, $f19
/* 3D7E0 800623E0 46000021 */  cvt.d.s   $f0, $f0
.L800623E4:
/* 3D7E4 800623E4 46209003 */  div.d     $f0, $f18, $f0
/* 3D7E8 800623E8 44937000 */  mtc1      $s3, $f14
/* 3D7EC 800623EC 46200420 */  cvt.s.d   $f16, $f0
/* 3D7F0 800623F0 46107382 */  mul.s     $f14, $f14, $f16
/* 3D7F4 800623F4 44929000 */  mtc1      $s2, $f18
/* 3D7F8 800623F8 00000000 */  nop       
/* 3D7FC 800623FC 46109482 */  mul.s     $f18, $f18, $f16
/* 3D800 80062400 00000000 */  nop       
/* 3D804 80062404 4610D682 */  mul.s     $f26, $f26, $f16
/* 3D808 80062408 44137000 */  mfc1      $s3, $f14
/* 3D80C 8006240C 44947000 */  mtc1      $s4, $f14
/* 3D810 80062410 00000000 */  nop       
/* 3D814 80062414 46187082 */  mul.s     $f2, $f14, $f24
/* 3D818 80062418 44129000 */  mfc1      $s2, $f18
/* 3D81C 8006241C 44959000 */  mtc1      $s5, $f18
/* 3D820 80062420 00000000 */  nop       
/* 3D824 80062424 46169182 */  mul.s     $f6, $f18, $f22
/* 3D828 80062428 449E7000 */  mtc1      $fp, $f14
/* 3D82C 8006242C 00000000 */  nop       
/* 3D830 80062430 46147202 */  mul.s     $f8, $f14, $f20
/* 3D834 80062434 44949000 */  mtc1      $s4, $f18
/* 3D838 80062438 44937000 */  mtc1      $s3, $f14
/* 3D83C 8006243C 00000000 */  nop       
/* 3D840 80062440 460E9102 */  mul.s     $f4, $f18, $f14
/* 3D844 80062444 44959000 */  mtc1      $s5, $f18
/* 3D848 80062448 44927000 */  mtc1      $s2, $f14
/* 3D84C 8006244C 00000000 */  nop       
/* 3D850 80062450 460E9282 */  mul.s     $f10, $f18, $f14
/* 3D854 80062454 44949000 */  mtc1      $s4, $f18
/* 3D858 80062458 00000000 */  nop       
/* 3D85C 8006245C 461C9002 */  mul.s     $f0, $f18, $f28
/* 3D860 80062460 44957000 */  mtc1      $s5, $f14
/* 3D864 80062464 00000000 */  nop       
/* 3D868 80062468 461E7302 */  mul.s     $f12, $f14, $f30
/* 3D86C 8006246C 46061080 */  add.s     $f2, $f2, $f6
/* 3D870 80062470 44917000 */  mtc1      $s1, $f14
/* 3D874 80062474 449E9000 */  mtc1      $fp, $f18
/* 3D878 80062478 46081080 */  add.s     $f2, $f2, $f8
/* 3D87C 8006247C E6180000 */  swc1      $f24, ($s0)
/* 3D880 80062480 460E9382 */  mul.s     $f14, $f18, $f14
/* 3D884 80062484 E6160010 */  swc1      $f22, 0x10($s0)
/* 3D888 80062488 460A2100 */  add.s     $f4, $f4, $f10
/* 3D88C 8006248C E6140020 */  swc1      $f20, 0x20($s0)
/* 3D890 80062490 E61C0008 */  swc1      $f28, 8($s0)
/* 3D894 80062494 3C013F80 */  lui       $at, 0x3f80
/* 3D898 80062498 44813000 */  mtc1      $at, $f6
/* 3D89C 8006249C 460C0000 */  add.s     $f0, $f0, $f12
/* 3D8A0 800624A0 461A9202 */  mul.s     $f8, $f18, $f26
/* 3D8A4 800624A4 E61E0018 */  swc1      $f30, 0x18($s0)
/* 3D8A8 800624A8 AE110028 */  sw        $s1, 0x28($s0)
/* 3D8AC 800624AC 460E0000 */  add.s     $f0, $f0, $f14
/* 3D8B0 800624B0 AE00000C */  sw        $zero, 0xc($s0)
/* 3D8B4 800624B4 AE00001C */  sw        $zero, 0x1c($s0)
/* 3D8B8 800624B8 AE00002C */  sw        $zero, 0x2c($s0)
/* 3D8BC 800624BC 46082100 */  add.s     $f4, $f4, $f8
/* 3D8C0 800624C0 E61A0024 */  swc1      $f26, 0x24($s0)
/* 3D8C4 800624C4 AE130004 */  sw        $s3, 4($s0)
/* 3D8C8 800624C8 AE120014 */  sw        $s2, 0x14($s0)
/* 3D8CC 800624CC 46001087 */  neg.s     $f2, $f2
/* 3D8D0 800624D0 E606003C */  swc1      $f6, 0x3c($s0)
/* 3D8D4 800624D4 46000007 */  neg.s     $f0, $f0
/* 3D8D8 800624D8 E6020030 */  swc1      $f2, 0x30($s0)
/* 3D8DC 800624DC 46002107 */  neg.s     $f4, $f4
/* 3D8E0 800624E0 E6000038 */  swc1      $f0, 0x38($s0)
/* 3D8E4 800624E4 E6040034 */  swc1      $f4, 0x34($s0)
/* 3D8E8 800624E8 8FBF003C */  lw        $ra, 0x3c($sp)
/* 3D8EC 800624EC 8FBE0038 */  lw        $fp, 0x38($sp)
/* 3D8F0 800624F0 8FB70034 */  lw        $s7, 0x34($sp)
/* 3D8F4 800624F4 8FB60030 */  lw        $s6, 0x30($sp)
/* 3D8F8 800624F8 8FB5002C */  lw        $s5, 0x2c($sp)
/* 3D8FC 800624FC 8FB40028 */  lw        $s4, 0x28($sp)
/* 3D900 80062500 8FB30024 */  lw        $s3, 0x24($sp)
/* 3D904 80062504 8FB20020 */  lw        $s2, 0x20($sp)
/* 3D908 80062508 8FB1001C */  lw        $s1, 0x1c($sp)
/* 3D90C 8006250C 8FB00018 */  lw        $s0, 0x18($sp)
/* 3D910 80062510 D7BE0068 */  ldc1      $f30, 0x68($sp)
/* 3D914 80062514 D7BC0060 */  ldc1      $f28, 0x60($sp)
/* 3D918 80062518 D7BA0058 */  ldc1      $f26, 0x58($sp)
/* 3D91C 8006251C D7B80050 */  ldc1      $f24, 0x50($sp)
/* 3D920 80062520 D7B60048 */  ldc1      $f22, 0x48($sp)
/* 3D924 80062524 D7B40040 */  ldc1      $f20, 0x40($sp)
/* 3D928 80062528 03E00008 */  jr        $ra
/* 3D92C 8006252C 27BD0070 */   addiu    $sp, $sp, 0x70
