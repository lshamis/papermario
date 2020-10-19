.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240040_93DD10
/* 93DD10 80240040 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 93DD14 80240044 AFB3001C */  sw        $s3, 0x1c($sp)
/* 93DD18 80240048 0080982D */  daddu     $s3, $a0, $zero
/* 93DD1C 8024004C AFBF0024 */  sw        $ra, 0x24($sp)
/* 93DD20 80240050 AFB40020 */  sw        $s4, 0x20($sp)
/* 93DD24 80240054 AFB20018 */  sw        $s2, 0x18($sp)
/* 93DD28 80240058 AFB10014 */  sw        $s1, 0x14($sp)
/* 93DD2C 8024005C AFB00010 */  sw        $s0, 0x10($sp)
/* 93DD30 80240060 8E70000C */  lw        $s0, 0xc($s3)
/* 93DD34 80240064 50A0001D */  beql      $a1, $zero, .L802400DC
/* 93DD38 80240068 0260202D */   daddu    $a0, $s3, $zero
/* 93DD3C 8024006C 8E050000 */  lw        $a1, ($s0)
/* 93DD40 80240070 0C0B1EAF */  jal       get_variable
/* 93DD44 80240074 26100004 */   addiu    $s0, $s0, 4
/* 93DD48 80240078 8E050000 */  lw        $a1, ($s0)
/* 93DD4C 8024007C 26100004 */  addiu     $s0, $s0, 4
/* 93DD50 80240080 0260202D */  daddu     $a0, $s3, $zero
/* 93DD54 80240084 0C0B1EAF */  jal       get_variable
/* 93DD58 80240088 0040882D */   daddu    $s1, $v0, $zero
/* 93DD5C 8024008C 0040A02D */  daddu     $s4, $v0, $zero
/* 93DD60 80240090 2402FFFF */  addiu     $v0, $zero, -1
/* 93DD64 80240094 8E120000 */  lw        $s2, ($s0)
/* 93DD68 80240098 16220004 */  bne       $s1, $v0, .L802400AC
/* 93DD6C 8024009C 3C02EFE8 */   lui      $v0, 0xefe8
/* 93DD70 802400A0 8E64014C */  lw        $a0, 0x14c($s3)
/* 93DD74 802400A4 08090030 */  j         .L802400C0
/* 93DD78 802400A8 00000000 */   nop      
.L802400AC:
/* 93DD7C 802400AC 34422080 */  ori       $v0, $v0, 0x2080
/* 93DD80 802400B0 0222102A */  slt       $v0, $s1, $v0
/* 93DD84 802400B4 14400005 */  bnez      $v0, .L802400CC
/* 93DD88 802400B8 0220802D */   daddu    $s0, $s1, $zero
/* 93DD8C 802400BC 0220202D */  daddu     $a0, $s1, $zero
.L802400C0:
/* 93DD90 802400C0 0C00EABB */  jal       get_npc_unsafe
/* 93DD94 802400C4 00000000 */   nop      
/* 93DD98 802400C8 0040802D */  daddu     $s0, $v0, $zero
.L802400CC:
/* 93DD9C 802400CC AE700070 */  sw        $s0, 0x70($s3)
/* 93DDA0 802400D0 AE740074 */  sw        $s4, 0x74($s3)
/* 93DDA4 802400D4 AE720078 */  sw        $s2, 0x78($s3)
/* 93DDA8 802400D8 0260202D */  daddu     $a0, $s3, $zero
.L802400DC:
/* 93DDAC 802400DC 8C900070 */  lw        $s0, 0x70($a0)
/* 93DDB0 802400E0 8C850078 */  lw        $a1, 0x78($a0)
/* 93DDB4 802400E4 0C0B1EAF */  jal       get_variable
/* 93DDB8 802400E8 8C940074 */   lw       $s4, 0x74($a0)
/* 93DDBC 802400EC 1040000C */  beqz      $v0, .L80240120
/* 93DDC0 802400F0 24020002 */   addiu    $v0, $zero, 2
/* 93DDC4 802400F4 C602003C */  lwc1      $f2, 0x3c($s0)
/* 93DDC8 802400F8 3C0141F0 */  lui       $at, 0x41f0
/* 93DDCC 802400FC 44810000 */  mtc1      $at, $f0
/* 93DDD0 80240100 00000000 */  nop       
/* 93DDD4 80240104 46001080 */  add.s     $f2, $f2, $f0
/* 93DDD8 80240108 8E050038 */  lw        $a1, 0x38($s0)
/* 93DDDC 8024010C 8E070040 */  lw        $a3, 0x40($s0)
/* 93DDE0 80240110 44061000 */  mfc1      $a2, $f2
/* 93DDE4 80240114 0C04D083 */  jal       set_item_entity_position
/* 93DDE8 80240118 0280202D */   daddu    $a0, $s4, $zero
/* 93DDEC 8024011C 0000102D */  daddu     $v0, $zero, $zero
.L80240120:
/* 93DDF0 80240120 8FBF0024 */  lw        $ra, 0x24($sp)
/* 93DDF4 80240124 8FB40020 */  lw        $s4, 0x20($sp)
/* 93DDF8 80240128 8FB3001C */  lw        $s3, 0x1c($sp)
/* 93DDFC 8024012C 8FB20018 */  lw        $s2, 0x18($sp)
/* 93DE00 80240130 8FB10014 */  lw        $s1, 0x14($sp)
/* 93DE04 80240134 8FB00010 */  lw        $s0, 0x10($sp)
/* 93DE08 80240138 03E00008 */  jr        $ra
/* 93DE0C 8024013C 27BD0028 */   addiu    $sp, $sp, 0x28