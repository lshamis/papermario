.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240000_8D5E00
/* 8D5E00 80240000 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* 8D5E04 80240004 AFB3002C */  sw        $s3, 0x2c($sp)
/* 8D5E08 80240008 0080982D */  daddu     $s3, $a0, $zero
/* 8D5E0C 8024000C AFBF0030 */  sw        $ra, 0x30($sp)
/* 8D5E10 80240010 AFB20028 */  sw        $s2, 0x28($sp)
/* 8D5E14 80240014 AFB10024 */  sw        $s1, 0x24($sp)
/* 8D5E18 80240018 AFB00020 */  sw        $s0, 0x20($sp)
/* 8D5E1C 8024001C 8E710148 */  lw        $s1, 0x148($s3)
/* 8D5E20 80240020 86240008 */  lh        $a0, 8($s1)
/* 8D5E24 80240024 0C00EABB */  jal       get_npc_unsafe
/* 8D5E28 80240028 00A0902D */   daddu    $s2, $a1, $zero
/* 8D5E2C 8024002C 8E440004 */  lw        $a0, 4($s2)
/* 8D5E30 80240030 0040802D */  daddu     $s0, $v0, $zero
/* 8D5E34 80240034 00041FC2 */  srl       $v1, $a0, 0x1f
/* 8D5E38 80240038 00832021 */  addu      $a0, $a0, $v1
/* 8D5E3C 8024003C 00042043 */  sra       $a0, $a0, 1
/* 8D5E40 80240040 0C00A67F */  jal       rand_int
/* 8D5E44 80240044 24840001 */   addiu    $a0, $a0, 1
/* 8D5E48 80240048 8E430004 */  lw        $v1, 4($s2)
/* 8D5E4C 8024004C 000327C2 */  srl       $a0, $v1, 0x1f
/* 8D5E50 80240050 00641821 */  addu      $v1, $v1, $a0
/* 8D5E54 80240054 00031843 */  sra       $v1, $v1, 1
/* 8D5E58 80240058 00621821 */  addu      $v1, $v1, $v0
/* 8D5E5C 8024005C A603008E */  sh        $v1, 0x8e($s0)
/* 8D5E60 80240060 8E2300D0 */  lw        $v1, 0xd0($s1)
/* 8D5E64 80240064 C6000040 */  lwc1      $f0, 0x40($s0)
/* 8D5E68 80240068 C4640000 */  lwc1      $f4, ($v1)
/* 8D5E6C 8024006C 46802120 */  cvt.s.w   $f4, $f4
/* 8D5E70 80240070 C4620008 */  lwc1      $f2, 8($v1)
/* 8D5E74 80240074 468010A0 */  cvt.s.w   $f2, $f2
/* 8D5E78 80240078 E7A00010 */  swc1      $f0, 0x10($sp)
/* 8D5E7C 8024007C 8E2200D0 */  lw        $v0, 0xd0($s1)
/* 8D5E80 80240080 44061000 */  mfc1      $a2, $f2
/* 8D5E84 80240084 C440000C */  lwc1      $f0, 0xc($v0)
/* 8D5E88 80240088 46800020 */  cvt.s.w   $f0, $f0
/* 8D5E8C 8024008C E7A00014 */  swc1      $f0, 0x14($sp)
/* 8D5E90 80240090 8E2200D0 */  lw        $v0, 0xd0($s1)
/* 8D5E94 80240094 44052000 */  mfc1      $a1, $f4
/* 8D5E98 80240098 C4400010 */  lwc1      $f0, 0x10($v0)
/* 8D5E9C 8024009C 46800020 */  cvt.s.w   $f0, $f0
/* 8D5EA0 802400A0 E7A00018 */  swc1      $f0, 0x18($sp)
/* 8D5EA4 802400A4 8C640018 */  lw        $a0, 0x18($v1)
/* 8D5EA8 802400A8 0C0123F5 */  jal       is_point_within_region
/* 8D5EAC 802400AC 8E070038 */   lw       $a3, 0x38($s0)
/* 8D5EB0 802400B0 1040000E */  beqz      $v0, .L802400EC
/* 8D5EB4 802400B4 00000000 */   nop      
/* 8D5EB8 802400B8 8E2200D0 */  lw        $v0, 0xd0($s1)
/* 8D5EBC 802400BC C60C0038 */  lwc1      $f12, 0x38($s0)
/* 8D5EC0 802400C0 C60E0040 */  lwc1      $f14, 0x40($s0)
/* 8D5EC4 802400C4 C4460000 */  lwc1      $f6, ($v0)
/* 8D5EC8 802400C8 468031A0 */  cvt.s.w   $f6, $f6
/* 8D5ECC 802400CC 44063000 */  mfc1      $a2, $f6
/* 8D5ED0 802400D0 C4460008 */  lwc1      $f6, 8($v0)
/* 8D5ED4 802400D4 468031A0 */  cvt.s.w   $f6, $f6
/* 8D5ED8 802400D8 44073000 */  mfc1      $a3, $f6
/* 8D5EDC 802400DC 0C00A720 */  jal       atan2
/* 8D5EE0 802400E0 00000000 */   nop      
/* 8D5EE4 802400E4 08090047 */  j         .L8024011C
/* 8D5EE8 802400E8 E600000C */   swc1     $f0, 0xc($s0)
.L802400EC:
/* 8D5EEC 802400EC 0C00A67F */  jal       rand_int
/* 8D5EF0 802400F0 2404003C */   addiu    $a0, $zero, 0x3c
/* 8D5EF4 802400F4 C60C000C */  lwc1      $f12, 0xc($s0)
/* 8D5EF8 802400F8 44820000 */  mtc1      $v0, $f0
/* 8D5EFC 802400FC 00000000 */  nop       
/* 8D5F00 80240100 46800020 */  cvt.s.w   $f0, $f0
/* 8D5F04 80240104 46006300 */  add.s     $f12, $f12, $f0
/* 8D5F08 80240108 3C0141F0 */  lui       $at, 0x41f0
/* 8D5F0C 8024010C 44810000 */  mtc1      $at, $f0
/* 8D5F10 80240110 0C00A6C9 */  jal       clamp_angle
/* 8D5F14 80240114 46006301 */   sub.s    $f12, $f12, $f0
/* 8D5F18 80240118 E600000C */  swc1      $f0, 0xc($s0)
.L8024011C:
/* 8D5F1C 8024011C 8E2200CC */  lw        $v0, 0xcc($s1)
/* 8D5F20 80240120 8C420004 */  lw        $v0, 4($v0)
/* 8D5F24 80240124 AE020028 */  sw        $v0, 0x28($s0)
/* 8D5F28 80240128 AE600074 */  sw        $zero, 0x74($s3)
/* 8D5F2C 8024012C 8E2200D0 */  lw        $v0, 0xd0($s1)
/* 8D5F30 80240130 8C420014 */  lw        $v0, 0x14($v0)
/* 8D5F34 80240134 04410004 */  bgez      $v0, .L80240148
/* 8D5F38 80240138 00000000 */   nop      
/* 8D5F3C 8024013C C6400000 */  lwc1      $f0, ($s2)
/* 8D5F40 80240140 0809005A */  j         .L80240168
/* 8D5F44 80240144 E6000018 */   swc1     $f0, 0x18($s0)
.L80240148:
/* 8D5F48 80240148 3C018024 */  lui       $at, %hi(D_80242670)
/* 8D5F4C 8024014C D4222670 */  ldc1      $f2, %lo(D_80242670)($at)
/* 8D5F50 80240150 44820000 */  mtc1      $v0, $f0
/* 8D5F54 80240154 00000000 */  nop       
/* 8D5F58 80240158 46800021 */  cvt.d.w   $f0, $f0
/* 8D5F5C 8024015C 46220003 */  div.d     $f0, $f0, $f2
/* 8D5F60 80240160 46200020 */  cvt.s.d   $f0, $f0
/* 8D5F64 80240164 E6000018 */  swc1      $f0, 0x18($s0)
.L80240168:
/* 8D5F68 80240168 C600003C */  lwc1      $f0, 0x3c($s0)
/* 8D5F6C 8024016C 3C014059 */  lui       $at, 0x4059
/* 8D5F70 80240170 44811800 */  mtc1      $at, $f3
/* 8D5F74 80240174 44801000 */  mtc1      $zero, $f2
/* 8D5F78 80240178 46000021 */  cvt.d.s   $f0, $f0
/* 8D5F7C 8024017C 46220002 */  mul.d     $f0, $f0, $f2
/* 8D5F80 80240180 00000000 */  nop       
/* 8D5F84 80240184 24020001 */  addiu     $v0, $zero, 1
/* 8D5F88 80240188 4620018D */  trunc.w.d $f6, $f0
/* 8D5F8C 8024018C E626007C */  swc1      $f6, 0x7c($s1)
/* 8D5F90 80240190 AE620070 */  sw        $v0, 0x70($s3)
/* 8D5F94 80240194 8FBF0030 */  lw        $ra, 0x30($sp)
/* 8D5F98 80240198 8FB3002C */  lw        $s3, 0x2c($sp)
/* 8D5F9C 8024019C 8FB20028 */  lw        $s2, 0x28($sp)
/* 8D5FA0 802401A0 8FB10024 */  lw        $s1, 0x24($sp)
/* 8D5FA4 802401A4 8FB00020 */  lw        $s0, 0x20($sp)
/* 8D5FA8 802401A8 03E00008 */  jr        $ra
/* 8D5FAC 802401AC 27BD0038 */   addiu    $sp, $sp, 0x38
