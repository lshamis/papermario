.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_E0084660
/* 389030 E0084660 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 389034 E0084664 AFBF0010 */  sw        $ra, 0x10($sp)
/* 389038 E0084668 F7B80028 */  sdc1      $f24, 0x28($sp)
/* 38903C E008466C F7B60020 */  sdc1      $f22, 0x20($sp)
/* 389040 E0084670 F7B40018 */  sdc1      $f20, 0x18($sp)
/* 389044 E0084674 8C85000C */  lw        $a1, 0xc($a0)
/* 389048 E0084678 8CA20048 */  lw        $v0, 0x48($a1)
/* 38904C E008467C 8CA30044 */  lw        $v1, 0x44($a1)
/* 389050 E0084680 24420001 */  addiu     $v0, $v0, 1
/* 389054 E0084684 2463FFFF */  addiu     $v1, $v1, -1
/* 389058 E0084688 ACA20048 */  sw        $v0, 0x48($a1)
/* 38905C E008468C 04610005 */  bgez      $v1, .LE00846A4
/* 389060 E0084690 ACA30044 */   sw       $v1, 0x44($a1)
/* 389064 E0084694 0C080128 */  jal       func_E02004A0
/* 389068 E0084698 00000000 */   nop      
/* 38906C E008469C 08021233 */  j         .LE00848CC
/* 389070 E00846A0 00000000 */   nop      
.LE00846A4:
/* 389074 E00846A4 44831000 */  mtc1      $v1, $f2
/* 389078 E00846A8 00000000 */  nop       
/* 38907C E00846AC 468010A0 */  cvt.s.w   $f2, $f2
/* 389080 E00846B0 3C0141C8 */  lui       $at, 0x41c8
/* 389084 E00846B4 44810000 */  mtc1      $at, $f0
/* 389088 E00846B8 C4AA0004 */  lwc1      $f10, 4($a1)
/* 38908C E00846BC 4600103C */  c.lt.s    $f2, $f0
/* 389090 E00846C0 00000000 */  nop       
/* 389094 E00846C4 45000008 */  bc1f      .LE00846E8
/* 389098 E00846C8 00000000 */   nop      
/* 38909C E00846CC 3C014120 */  lui       $at, 0x4120
/* 3890A0 E00846D0 44810000 */  mtc1      $at, $f0
/* 3890A4 E00846D4 00000000 */  nop       
/* 3890A8 E00846D8 46001002 */  mul.s     $f0, $f2, $f0
/* 3890AC E00846DC 00000000 */  nop       
/* 3890B0 E00846E0 4600060D */  trunc.w.s $f24, $f0
/* 3890B4 E00846E4 E4B8004C */  swc1      $f24, 0x4c($a1)
.LE00846E8:
/* 3890B8 E00846E8 C4A20038 */  lwc1      $f2, 0x38($a1)
/* 3890BC E00846EC C4A0003C */  lwc1      $f0, 0x3c($a1)
/* 3890C0 E00846F0 46020001 */  sub.s     $f0, $f0, $f2
/* 3890C4 E00846F4 3C01E008 */  lui       $at, %hi(D_E0084E50)
/* 3890C8 E00846F8 D4244E50 */  ldc1      $f4, %lo(D_E0084E50)($at)
/* 3890CC E00846FC 46000021 */  cvt.d.s   $f0, $f0
/* 3890D0 E0084700 46240002 */  mul.d     $f0, $f0, $f4
/* 3890D4 E0084704 00000000 */  nop       
/* 3890D8 E0084708 460010A1 */  cvt.d.s   $f2, $f2
/* 3890DC E008470C 46201080 */  add.d     $f2, $f2, $f0
/* 3890E0 E0084710 24060001 */  addiu     $a2, $zero, 1
/* 3890E4 E0084714 462010A0 */  cvt.s.d   $f2, $f2
/* 3890E8 E0084718 E4A20038 */  swc1      $f2, 0x38($a1)
/* 3890EC E008471C 8C820008 */  lw        $v0, 8($a0)
/* 3890F0 E0084720 00C2102A */  slt       $v0, $a2, $v0
/* 3890F4 E0084724 10400069 */  beqz      $v0, .LE00848CC
/* 3890F8 E0084728 24A50050 */   addiu    $a1, $a1, 0x50
/* 3890FC E008472C 24A30030 */  addiu     $v1, $a1, 0x30
/* 389100 E0084730 3C01E008 */  lui       $at, %hi(D_E0084E58)
/* 389104 E0084734 D42C4E58 */  ldc1      $f12, %lo(D_E0084E58)($at)
/* 389108 E0084738 44808000 */  mtc1      $zero, $f16
/* 38910C E008473C 3C01E008 */  lui       $at, %hi(D_E0084E60)
/* 389110 E0084740 D4364E60 */  ldc1      $f22, %lo(D_E0084E60)($at)
/* 389114 E0084744 3C01E008 */  lui       $at, %hi(D_E0084E68)
/* 389118 E0084748 D42E4E68 */  ldc1      $f14, %lo(D_E0084E68)($at)
/* 38911C E008474C 3C01E008 */  lui       $at, %hi(D_E0084E70)
/* 389120 E0084750 D4344E70 */  ldc1      $f20, %lo(D_E0084E70)($at)
/* 389124 E0084754 3C01E008 */  lui       $at, %hi(D_E0084E78)
/* 389128 E0084758 D4324E78 */  ldc1      $f18, %lo(D_E0084E78)($at)
.LE008475C:
/* 38912C E008475C C460FFF0 */  lwc1      $f0, -0x10($v1)
/* 389130 E0084760 46000021 */  cvt.d.s   $f0, $f0
/* 389134 E0084764 462C0002 */  mul.d     $f0, $f0, $f12
/* 389138 E0084768 00000000 */  nop       
/* 38913C E008476C C462FFF4 */  lwc1      $f2, -0xc($v1)
/* 389140 E0084770 460010A1 */  cvt.d.s   $f2, $f2
/* 389144 E0084774 462C1082 */  mul.d     $f2, $f2, $f12
/* 389148 E0084778 00000000 */  nop       
/* 38914C E008477C C464FFF8 */  lwc1      $f4, -8($v1)
/* 389150 E0084780 46002121 */  cvt.d.s   $f4, $f4
/* 389154 E0084784 462C2102 */  mul.d     $f4, $f4, $f12
/* 389158 E0084788 00000000 */  nop       
/* 38915C E008478C C468FFD8 */  lwc1      $f8, -0x28($v1)
/* 389160 E0084790 C466FFDC */  lwc1      $f6, -0x24($v1)
/* 389164 E0084794 46200020 */  cvt.s.d   $f0, $f0
/* 389168 E0084798 462010A0 */  cvt.s.d   $f2, $f2
/* 38916C E008479C E460FFF0 */  swc1      $f0, -0x10($v1)
/* 389170 E00847A0 46004200 */  add.s     $f8, $f8, $f0
/* 389174 E00847A4 E462FFF4 */  swc1      $f2, -0xc($v1)
/* 389178 E00847A8 46001006 */  mov.s     $f0, $f2
/* 38917C E00847AC 46003180 */  add.s     $f6, $f6, $f0
/* 389180 E00847B0 C460FFE0 */  lwc1      $f0, -0x20($v1)
/* 389184 E00847B4 46202120 */  cvt.s.d   $f4, $f4
/* 389188 E00847B8 E464FFF8 */  swc1      $f4, -8($v1)
/* 38918C E00847BC 46002086 */  mov.s     $f2, $f4
/* 389190 E00847C0 46020000 */  add.s     $f0, $f0, $f2
/* 389194 E00847C4 E466FFDC */  swc1      $f6, -0x24($v1)
/* 389198 E00847C8 46003086 */  mov.s     $f2, $f6
/* 38919C E00847CC E468FFD8 */  swc1      $f8, -0x28($v1)
/* 3891A0 E00847D0 460A103C */  c.lt.s    $f2, $f10
/* 3891A4 E00847D4 00000000 */  nop       
/* 3891A8 E00847D8 4500000C */  bc1f      .LE008480C
/* 3891AC E00847DC E460FFE0 */   swc1     $f0, -0x20($v1)
/* 3891B0 E00847E0 C460FFF4 */  lwc1      $f0, -0xc($v1)
/* 3891B4 E00847E4 4610003C */  c.lt.s    $f0, $f16
/* 3891B8 E00847E8 00000000 */  nop       
/* 3891BC E00847EC 45000007 */  bc1f      .LE008480C
/* 3891C0 E00847F0 00000000 */   nop      
/* 3891C4 E00847F4 46000021 */  cvt.d.s   $f0, $f0
/* 3891C8 E00847F8 46360002 */  mul.d     $f0, $f0, $f22
/* 3891CC E00847FC 00000000 */  nop       
/* 3891D0 E0084800 E46AFFDC */  swc1      $f10, -0x24($v1)
/* 3891D4 E0084804 46200020 */  cvt.s.d   $f0, $f0
/* 3891D8 E0084808 E460FFF4 */  swc1      $f0, -0xc($v1)
.LE008480C:
/* 3891DC E008480C C460FFFC */  lwc1      $f0, -4($v1)
/* 3891E0 E0084810 46000021 */  cvt.d.s   $f0, $f0
/* 3891E4 E0084814 462E0002 */  mul.d     $f0, $f0, $f14
/* 3891E8 E0084818 00000000 */  nop       
/* 3891EC E008481C C4640004 */  lwc1      $f4, 4($v1)
/* 3891F0 E0084820 46002121 */  cvt.d.s   $f4, $f4
/* 3891F4 E0084824 462E2102 */  mul.d     $f4, $f4, $f14
/* 3891F8 E0084828 00000000 */  nop       
/* 3891FC E008482C C4620000 */  lwc1      $f2, ($v1)
/* 389200 E0084830 460010A1 */  cvt.d.s   $f2, $f2
/* 389204 E0084834 46341081 */  sub.d     $f2, $f2, $f20
/* 389208 E0084838 C466FFE4 */  lwc1      $f6, -0x1c($v1)
/* 38920C E008483C 462010A0 */  cvt.s.d   $f2, $f2
/* 389210 E0084840 E4620000 */  swc1      $f2, ($v1)
/* 389214 E0084844 C462FFE8 */  lwc1      $f2, -0x18($v1)
/* 389218 E0084848 46200020 */  cvt.s.d   $f0, $f0
/* 38921C E008484C 46003180 */  add.s     $f6, $f6, $f0
/* 389220 E0084850 E460FFFC */  swc1      $f0, -4($v1)
/* 389224 E0084854 C4600000 */  lwc1      $f0, ($v1)
/* 389228 E0084858 46202120 */  cvt.s.d   $f4, $f4
/* 38922C E008485C E4640004 */  swc1      $f4, 4($v1)
/* 389230 E0084860 C464FFEC */  lwc1      $f4, -0x14($v1)
/* 389234 E0084864 46001080 */  add.s     $f2, $f2, $f0
/* 389238 E0084868 C4600004 */  lwc1      $f0, 4($v1)
/* 38923C E008486C 46002100 */  add.s     $f4, $f4, $f0
/* 389240 E0084870 E466FFE4 */  swc1      $f6, -0x1c($v1)
/* 389244 E0084874 E462FFE8 */  swc1      $f2, -0x18($v1)
/* 389248 E0084878 46001006 */  mov.s     $f0, $f2
/* 38924C E008487C 460A003C */  c.lt.s    $f0, $f10
/* 389250 E0084880 00000000 */  nop       
/* 389254 E0084884 4500000C */  bc1f      .LE00848B8
/* 389258 E0084888 E464FFEC */   swc1     $f4, -0x14($v1)
/* 38925C E008488C C4600000 */  lwc1      $f0, ($v1)
/* 389260 E0084890 4610003C */  c.lt.s    $f0, $f16
/* 389264 E0084894 00000000 */  nop       
/* 389268 E0084898 45020008 */  bc1fl     .LE00848BC
/* 38926C E008489C 24C60001 */   addiu    $a2, $a2, 1
/* 389270 E00848A0 46000021 */  cvt.d.s   $f0, $f0
/* 389274 E00848A4 46320002 */  mul.d     $f0, $f0, $f18
/* 389278 E00848A8 00000000 */  nop       
/* 38927C E00848AC E46AFFE8 */  swc1      $f10, -0x18($v1)
/* 389280 E00848B0 46200020 */  cvt.s.d   $f0, $f0
/* 389284 E00848B4 E4600000 */  swc1      $f0, ($v1)
.LE00848B8:
/* 389288 E00848B8 24C60001 */  addiu     $a2, $a2, 1
.LE00848BC:
/* 38928C E00848BC 8C820008 */  lw        $v0, 8($a0)
/* 389290 E00848C0 00C2102A */  slt       $v0, $a2, $v0
/* 389294 E00848C4 1440FFA5 */  bnez      $v0, .LE008475C
/* 389298 E00848C8 24630050 */   addiu    $v1, $v1, 0x50
.LE00848CC:
/* 38929C E00848CC 8FBF0010 */  lw        $ra, 0x10($sp)
/* 3892A0 E00848D0 D7B80028 */  ldc1      $f24, 0x28($sp)
/* 3892A4 E00848D4 D7B60020 */  ldc1      $f22, 0x20($sp)
/* 3892A8 E00848D8 D7B40018 */  ldc1      $f20, 0x18($sp)
/* 3892AC E00848DC 03E00008 */  jr        $ra
/* 3892B0 E00848E0 27BD0030 */   addiu    $sp, $sp, 0x30
