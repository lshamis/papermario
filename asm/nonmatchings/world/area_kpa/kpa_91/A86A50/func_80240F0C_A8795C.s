.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240F0C_A8795C
/* A8795C 80240F0C 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* A87960 80240F10 AFB3001C */  sw        $s3, 0x1c($sp)
/* A87964 80240F14 0080982D */  daddu     $s3, $a0, $zero
/* A87968 80240F18 AFBF0020 */  sw        $ra, 0x20($sp)
/* A8796C 80240F1C AFB20018 */  sw        $s2, 0x18($sp)
/* A87970 80240F20 AFB10014 */  sw        $s1, 0x14($sp)
/* A87974 80240F24 AFB00010 */  sw        $s0, 0x10($sp)
/* A87978 80240F28 8E710148 */  lw        $s1, 0x148($s3)
/* A8797C 80240F2C 86240008 */  lh        $a0, 8($s1)
/* A87980 80240F30 0C00EABB */  jal       get_npc_unsafe
/* A87984 80240F34 00A0902D */   daddu    $s2, $a1, $zero
/* A87988 80240F38 0040802D */  daddu     $s0, $v0, $zero
/* A8798C 80240F3C 8602008E */  lh        $v0, 0x8e($s0)
/* A87990 80240F40 9603008E */  lhu       $v1, 0x8e($s0)
/* A87994 80240F44 18400005 */  blez      $v0, .L80240F5C
/* A87998 80240F48 2462FFFF */   addiu    $v0, $v1, -1
/* A8799C 80240F4C A602008E */  sh        $v0, 0x8e($s0)
/* A879A0 80240F50 00021400 */  sll       $v0, $v0, 0x10
/* A879A4 80240F54 1C400033 */  bgtz      $v0, .L80241024
/* A879A8 80240F58 00000000 */   nop      
.L80240F5C:
/* A879AC 80240F5C 8602008C */  lh        $v0, 0x8c($s0)
/* A879B0 80240F60 14400030 */  bnez      $v0, .L80241024
/* A879B4 80240F64 00000000 */   nop      
/* A879B8 80240F68 8E2200CC */  lw        $v0, 0xcc($s1)
/* A879BC 80240F6C 8C420024 */  lw        $v0, 0x24($v0)
/* A879C0 80240F70 AE020028 */  sw        $v0, 0x28($s0)
/* A879C4 80240F74 C6400018 */  lwc1      $f0, 0x18($s2)
/* A879C8 80240F78 E6000018 */  swc1      $f0, 0x18($s0)
/* A879CC 80240F7C 8E230088 */  lw        $v1, 0x88($s1)
/* A879D0 80240F80 24020005 */  addiu     $v0, $zero, 5
/* A879D4 80240F84 10620005 */  beq       $v1, $v0, .L80240F9C
/* A879D8 80240F88 00000000 */   nop      
/* A879DC 80240F8C 10600003 */  beqz      $v1, .L80240F9C
/* A879E0 80240F90 24020001 */   addiu    $v0, $zero, 1
/* A879E4 80240F94 14620006 */  bne       $v1, $v0, .L80240FB0
/* A879E8 80240F98 00000000 */   nop      
.L80240F9C:
/* A879EC 80240F9C 8E220084 */  lw        $v0, 0x84($s1)
/* A879F0 80240FA0 00021FC2 */  srl       $v1, $v0, 0x1f
/* A879F4 80240FA4 00431021 */  addu      $v0, $v0, $v1
/* A879F8 80240FA8 00021043 */  sra       $v0, $v0, 1
/* A879FC 80240FAC A60200A8 */  sh        $v0, 0xa8($s0)
.L80240FB0:
/* A87A00 80240FB0 3C02800F */  lui       $v0, %hi(gPlayerStatusPtr)
/* A87A04 80240FB4 8C427B30 */  lw        $v0, %lo(gPlayerStatusPtr)($v0)
/* A87A08 80240FB8 C60C0038 */  lwc1      $f12, 0x38($s0)
/* A87A0C 80240FBC C60E0040 */  lwc1      $f14, 0x40($s0)
/* A87A10 80240FC0 8C460028 */  lw        $a2, 0x28($v0)
/* A87A14 80240FC4 0C00A7B5 */  jal       dist2D
/* A87A18 80240FC8 8C470030 */   lw       $a3, 0x30($v0)
/* A87A1C 80240FCC C6020018 */  lwc1      $f2, 0x18($s0)
/* A87A20 80240FD0 46020003 */  div.s     $f0, $f0, $f2
/* A87A24 80240FD4 3C018024 */  lui       $at, %hi(D_80245BD0)
/* A87A28 80240FD8 D4225BD0 */  ldc1      $f2, %lo(D_80245BD0)($at)
/* A87A2C 80240FDC 46000021 */  cvt.d.s   $f0, $f0
/* A87A30 80240FE0 46220000 */  add.d     $f0, $f0, $f2
/* A87A34 80240FE4 4620010D */  trunc.w.d $f4, $f0
/* A87A38 80240FE8 44022000 */  mfc1      $v0, $f4
/* A87A3C 80240FEC 00000000 */  nop       
/* A87A40 80240FF0 A602008E */  sh        $v0, 0x8e($s0)
/* A87A44 80240FF4 00021400 */  sll       $v0, $v0, 0x10
/* A87A48 80240FF8 8E230078 */  lw        $v1, 0x78($s1)
/* A87A4C 80240FFC 00021403 */  sra       $v0, $v0, 0x10
/* A87A50 80241000 0043102A */  slt       $v0, $v0, $v1
/* A87A54 80241004 10400003 */  beqz      $v0, .L80241014
/* A87A58 80241008 00000000 */   nop      
/* A87A5C 8024100C 9622007A */  lhu       $v0, 0x7a($s1)
/* A87A60 80241010 A602008E */  sh        $v0, 0x8e($s0)
.L80241014:
/* A87A64 80241014 8602008E */  lh        $v0, 0x8e($s0)
/* A87A68 80241018 AE22007C */  sw        $v0, 0x7c($s1)
/* A87A6C 8024101C 2402000E */  addiu     $v0, $zero, 0xe
/* A87A70 80241020 AE620070 */  sw        $v0, 0x70($s3)
.L80241024:
/* A87A74 80241024 8FBF0020 */  lw        $ra, 0x20($sp)
/* A87A78 80241028 8FB3001C */  lw        $s3, 0x1c($sp)
/* A87A7C 8024102C 8FB20018 */  lw        $s2, 0x18($sp)
/* A87A80 80241030 8FB10014 */  lw        $s1, 0x14($sp)
/* A87A84 80241034 8FB00010 */  lw        $s0, 0x10($sp)
/* A87A88 80241038 03E00008 */  jr        $ra
/* A87A8C 8024103C 27BD0028 */   addiu    $sp, $sp, 0x28
