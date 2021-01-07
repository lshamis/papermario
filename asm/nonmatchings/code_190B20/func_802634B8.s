.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802634B8
/* 191D98 802634B8 27BDFFC8 */  addiu     $sp, $sp, -0x38
/* 191D9C 802634BC AFB40020 */  sw        $s4, 0x20($sp)
/* 191DA0 802634C0 3C14800E */  lui       $s4, %hi(gBattleStatus)
/* 191DA4 802634C4 2694C070 */  addiu     $s4, $s4, %lo(gBattleStatus)
/* 191DA8 802634C8 AFB7002C */  sw        $s7, 0x2c($sp)
/* 191DAC 802634CC 3C178011 */  lui       $s7, %hi(gPlayerData)
/* 191DB0 802634D0 26F7F290 */  addiu     $s7, $s7, %lo(gPlayerData)
/* 191DB4 802634D4 2403FFFF */  addiu     $v1, $zero, -1
/* 191DB8 802634D8 AFBF0034 */  sw        $ra, 0x34($sp)
/* 191DBC 802634DC AFBE0030 */  sw        $fp, 0x30($sp)
/* 191DC0 802634E0 AFB60028 */  sw        $s6, 0x28($sp)
/* 191DC4 802634E4 AFB50024 */  sw        $s5, 0x24($sp)
/* 191DC8 802634E8 AFB3001C */  sw        $s3, 0x1c($sp)
/* 191DCC 802634EC AFB20018 */  sw        $s2, 0x18($sp)
/* 191DD0 802634F0 AFB10014 */  sw        $s1, 0x14($sp)
/* 191DD4 802634F4 AFB00010 */  sw        $s0, 0x10($sp)
/* 191DD8 802634F8 82E20000 */  lb        $v0, ($s7)
/* 191DDC 802634FC 8E9500D8 */  lw        $s5, 0xd8($s4)
/* 191DE0 80263500 14430003 */  bne       $v0, $v1, .L80263510
/* 191DE4 80263504 24120017 */   addiu    $s2, $zero, 0x17
/* 191DE8 80263508 08098DAD */  j         .L802636B4
/* 191DEC 8026350C A280007E */   sb       $zero, 0x7e($s4)
.L80263510:
/* 191DF0 80263510 02921021 */  addu      $v0, $s4, $s2
.L80263514:
/* 191DF4 80263514 A04001DE */  sb        $zero, 0x1de($v0)
/* 191DF8 80263518 2652FFFF */  addiu     $s2, $s2, -1
/* 191DFC 8026351C 0641FFFD */  bgez      $s2, .L80263514
/* 191E00 80263520 2442FFFF */   addiu    $v0, $v0, -1
/* 191E04 80263524 24060001 */  addiu     $a2, $zero, 1
/* 191E08 80263528 92E20000 */  lbu       $v0, ($s7)
/* 191E0C 8026352C 24030155 */  addiu     $v1, $zero, 0x155
/* 191E10 80263530 A68301AE */  sh        $v1, 0x1ae($s4)
/* 191E14 80263534 2442001A */  addiu     $v0, $v0, 0x1a
/* 191E18 80263538 A28201DE */  sb        $v0, 0x1de($s4)
/* 191E1C 8026353C 0000902D */  daddu     $s2, $zero, $zero
/* 191E20 80263540 3C098009 */  lui       $t1, %hi(D_8008F060)
/* 191E24 80263544 2529F060 */  addiu     $t1, $t1, %lo(D_8008F060)
/* 191E28 80263548 3C088008 */  lui       $t0, %hi(gItemTable)
/* 191E2C 8026354C 250878E0 */  addiu     $t0, $t0, %lo(gItemTable)
/* 191E30 80263550 24070002 */  addiu     $a3, $zero, 2
/* 191E34 80263554 02E0202D */  daddu     $a0, $s7, $zero
/* 191E38 80263558 02872821 */  addu      $a1, $s4, $a3
.L8026355C:
/* 191E3C 8026355C 84820208 */  lh        $v0, 0x208($a0)
/* 191E40 80263560 10400011 */  beqz      $v0, .L802635A8
/* 191E44 80263564 26520001 */   addiu    $s2, $s2, 1
/* 191E48 80263568 00021140 */  sll       $v0, $v0, 5
/* 191E4C 8026356C 00481021 */  addu      $v0, $v0, $t0
/* 191E50 80263570 9043001A */  lbu       $v1, 0x1a($v0)
/* 191E54 80263574 00031080 */  sll       $v0, $v1, 2
/* 191E58 80263578 00431021 */  addu      $v0, $v0, $v1
/* 191E5C 8026357C 00021080 */  sll       $v0, $v0, 2
/* 191E60 80263580 00498821 */  addu      $s1, $v0, $t1
/* 191E64 80263584 82220010 */  lb        $v0, 0x10($s1)
/* 191E68 80263588 14470007 */  bne       $v0, $a3, .L802635A8
/* 191E6C 8026358C 00000000 */   nop      
/* 191E70 80263590 02861021 */  addu      $v0, $s4, $a2
/* 191E74 80263594 A04301DE */  sb        $v1, 0x1de($v0)
/* 191E78 80263598 94820208 */  lhu       $v0, 0x208($a0)
/* 191E7C 8026359C 24C60001 */  addiu     $a2, $a2, 1
/* 191E80 802635A0 A4A201AE */  sh        $v0, 0x1ae($a1)
/* 191E84 802635A4 24A50002 */  addiu     $a1, $a1, 2
.L802635A8:
/* 191E88 802635A8 2A420040 */  slti      $v0, $s2, 0x40
/* 191E8C 802635AC 1440FFEB */  bnez      $v0, .L8026355C
/* 191E90 802635B0 24840002 */   addiu    $a0, $a0, 2
/* 191E94 802635B4 A286020E */  sb        $a2, 0x20e($s4)
/* 191E98 802635B8 0000902D */  daddu     $s2, $zero, $zero
/* 191E9C 802635BC 30C200FF */  andi      $v0, $a2, 0xff
/* 191EA0 802635C0 10400038 */  beqz      $v0, .L802636A4
/* 191EA4 802635C4 0240B02D */   daddu    $s6, $s2, $zero
/* 191EA8 802635C8 0286F021 */  addu      $fp, $s4, $a2
/* 191EAC 802635CC 0280982D */  daddu     $s3, $s4, $zero
.L802635D0:
/* 191EB0 802635D0 926301DE */  lbu       $v1, 0x1de($s3)
/* 191EB4 802635D4 3C0A8009 */  lui       $t2, %hi(D_8008F060)
/* 191EB8 802635D8 254AF060 */  addiu     $t2, $t2, %lo(D_8008F060)
/* 191EBC 802635DC 00031080 */  sll       $v0, $v1, 2
/* 191EC0 802635E0 00431021 */  addu      $v0, $v0, $v1
/* 191EC4 802635E4 00021080 */  sll       $v0, $v0, 2
/* 191EC8 802635E8 004A8821 */  addu      $s1, $v0, $t2
/* 191ECC 802635EC 82300011 */  lb        $s0, 0x11($s1)
/* 191ED0 802635F0 1200000B */  beqz      $s0, .L80263620
/* 191ED4 802635F4 02A0202D */   daddu    $a0, $s5, $zero
/* 191ED8 802635F8 0C099CAB */  jal       heroes_is_ability_active
/* 191EDC 802635FC 24050018 */   addiu    $a1, $zero, 0x18
/* 191EE0 80263600 02028023 */  subu      $s0, $s0, $v0
/* 191EE4 80263604 02A0202D */  daddu     $a0, $s5, $zero
/* 191EE8 80263608 0C099CAB */  jal       heroes_is_ability_active
/* 191EEC 8026360C 24050026 */   addiu    $a1, $zero, 0x26
/* 191EF0 80263610 00021040 */  sll       $v0, $v0, 1
/* 191EF4 80263614 02028023 */  subu      $s0, $s0, $v0
/* 191EF8 80263618 5A000001 */  blezl     $s0, .L80263620
/* 191EFC 8026361C 24100001 */   addiu    $s0, $zero, 1
.L80263620:
/* 191F00 80263620 92E20000 */  lbu       $v0, ($s7)
/* 191F04 80263624 A2800178 */  sb        $zero, 0x178($s4)
/* 191F08 80263628 00021600 */  sll       $v0, $v0, 0x18
/* 191F0C 8026362C 00021603 */  sra       $v0, $v0, 0x18
/* 191F10 80263630 A682017A */  sh        $v0, 0x17a($s4)
/* 191F14 80263634 8E220004 */  lw        $v0, 4($s1)
/* 191F18 80263638 02A0202D */  daddu     $a0, $s5, $zero
/* 191F1C 8026363C 0C098C0B */  jal       player_create_target_list
/* 191F20 80263640 AE820184 */   sw       $v0, 0x184($s4)
/* 191F24 80263644 82A2040C */  lb        $v0, 0x40c($s5)
/* 191F28 80263648 10400003 */  beqz      $v0, .L80263658
/* 191F2C 8026364C 00000000 */   nop      
/* 191F30 80263650 24160001 */  addiu     $s6, $zero, 1
/* 191F34 80263654 A27601F6 */  sb        $s6, 0x1f6($s3)
.L80263658:
/* 191F38 80263658 82E20005 */  lb        $v0, 5($s7)
/* 191F3C 8026365C 0050102A */  slt       $v0, $v0, $s0
/* 191F40 80263660 54400001 */  bnel      $v0, $zero, .L80263668
/* 191F44 80263664 A26001F6 */   sb       $zero, 0x1f6($s3)
.L80263668:
/* 191F48 80263668 82A2040C */  lb        $v0, 0x40c($s5)
/* 191F4C 8026366C 14400002 */  bnez      $v0, .L80263678
/* 191F50 80263670 2402FFFE */   addiu    $v0, $zero, -2
/* 191F54 80263674 A26201F6 */  sb        $v0, 0x1f6($s3)
.L80263678:
/* 191F58 80263678 3C02800E */  lui       $v0, %hi(gBattleStatus+0x4)
/* 191F5C 8026367C 8C42C074 */  lw        $v0, %lo(gBattleStatus+0x4)($v0)
/* 191F60 80263680 30421000 */  andi      $v0, $v0, 0x1000
/* 191F64 80263684 10400002 */  beqz      $v0, .L80263690
/* 191F68 80263688 2402FFFF */   addiu    $v0, $zero, -1
/* 191F6C 8026368C A3C201F6 */  sb        $v0, 0x1f6($fp)
.L80263690:
/* 191F70 80263690 9282020E */  lbu       $v0, 0x20e($s4)
/* 191F74 80263694 26520001 */  addiu     $s2, $s2, 1
/* 191F78 80263698 0242102A */  slt       $v0, $s2, $v0
/* 191F7C 8026369C 1440FFCC */  bnez      $v0, .L802635D0
/* 191F80 802636A0 26730001 */   addiu    $s3, $s3, 1
.L802636A4:
/* 191F84 802636A4 16C00002 */  bnez      $s6, .L802636B0
/* 191F88 802636A8 24020001 */   addiu    $v0, $zero, 1
/* 191F8C 802636AC 2402FFFF */  addiu     $v0, $zero, -1
.L802636B0:
/* 191F90 802636B0 A282007E */  sb        $v0, 0x7e($s4)
.L802636B4:
/* 191F94 802636B4 8FBF0034 */  lw        $ra, 0x34($sp)
/* 191F98 802636B8 8FBE0030 */  lw        $fp, 0x30($sp)
/* 191F9C 802636BC 8FB7002C */  lw        $s7, 0x2c($sp)
/* 191FA0 802636C0 8FB60028 */  lw        $s6, 0x28($sp)
/* 191FA4 802636C4 8FB50024 */  lw        $s5, 0x24($sp)
/* 191FA8 802636C8 8FB40020 */  lw        $s4, 0x20($sp)
/* 191FAC 802636CC 8FB3001C */  lw        $s3, 0x1c($sp)
/* 191FB0 802636D0 8FB20018 */  lw        $s2, 0x18($sp)
/* 191FB4 802636D4 8FB10014 */  lw        $s1, 0x14($sp)
/* 191FB8 802636D8 8FB00010 */  lw        $s0, 0x10($sp)
/* 191FBC 802636DC 03E00008 */  jr        $ra
/* 191FC0 802636E0 27BD0038 */   addiu    $sp, $sp, 0x38
