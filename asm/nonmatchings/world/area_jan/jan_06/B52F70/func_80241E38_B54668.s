.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80241E38_B54668
/* B54668 80241E38 27BDFFB0 */  addiu     $sp, $sp, -0x50
/* B5466C 80241E3C AFB20038 */  sw        $s2, 0x38($sp)
/* B54670 80241E40 0080902D */  daddu     $s2, $a0, $zero
/* B54674 80241E44 AFBF0048 */  sw        $ra, 0x48($sp)
/* B54678 80241E48 AFB50044 */  sw        $s5, 0x44($sp)
/* B5467C 80241E4C AFB40040 */  sw        $s4, 0x40($sp)
/* B54680 80241E50 AFB3003C */  sw        $s3, 0x3c($sp)
/* B54684 80241E54 AFB10034 */  sw        $s1, 0x34($sp)
/* B54688 80241E58 AFB00030 */  sw        $s0, 0x30($sp)
/* B5468C 80241E5C 8E510148 */  lw        $s1, 0x148($s2)
/* B54690 80241E60 86240008 */  lh        $a0, 8($s1)
/* B54694 80241E64 0C00EABB */  jal       get_npc_unsafe
/* B54698 80241E68 00A0802D */   daddu    $s0, $a1, $zero
/* B5469C 80241E6C 8E43000C */  lw        $v1, 0xc($s2)
/* B546A0 80241E70 0240202D */  daddu     $a0, $s2, $zero
/* B546A4 80241E74 8C650000 */  lw        $a1, ($v1)
/* B546A8 80241E78 0C0B1EAF */  jal       get_variable
/* B546AC 80241E7C 0040A82D */   daddu    $s5, $v0, $zero
/* B546B0 80241E80 AFA00010 */  sw        $zero, 0x10($sp)
/* B546B4 80241E84 8E2300D0 */  lw        $v1, 0xd0($s1)
/* B546B8 80241E88 8C630030 */  lw        $v1, 0x30($v1)
/* B546BC 80241E8C AFA30014 */  sw        $v1, 0x14($sp)
/* B546C0 80241E90 8E2300D0 */  lw        $v1, 0xd0($s1)
/* B546C4 80241E94 8C63001C */  lw        $v1, 0x1c($v1)
/* B546C8 80241E98 AFA30018 */  sw        $v1, 0x18($sp)
/* B546CC 80241E9C 8E2300D0 */  lw        $v1, 0xd0($s1)
/* B546D0 80241EA0 8C630024 */  lw        $v1, 0x24($v1)
/* B546D4 80241EA4 AFA3001C */  sw        $v1, 0x1c($sp)
/* B546D8 80241EA8 8E2300D0 */  lw        $v1, 0xd0($s1)
/* B546DC 80241EAC 8C630028 */  lw        $v1, 0x28($v1)
/* B546E0 80241EB0 27B40010 */  addiu     $s4, $sp, 0x10
/* B546E4 80241EB4 AFA30020 */  sw        $v1, 0x20($sp)
/* B546E8 80241EB8 8E2300D0 */  lw        $v1, 0xd0($s1)
/* B546EC 80241EBC 3C014282 */  lui       $at, 0x4282
/* B546F0 80241EC0 44810000 */  mtc1      $at, $f0
/* B546F4 80241EC4 8C63002C */  lw        $v1, 0x2c($v1)
/* B546F8 80241EC8 0040982D */  daddu     $s3, $v0, $zero
/* B546FC 80241ECC E7A00028 */  swc1      $f0, 0x28($sp)
/* B54700 80241ED0 A7A0002C */  sh        $zero, 0x2c($sp)
/* B54704 80241ED4 16000005 */  bnez      $s0, .L80241EEC
/* B54708 80241ED8 AFA30024 */   sw       $v1, 0x24($sp)
/* B5470C 80241EDC 8E2200B0 */  lw        $v0, 0xb0($s1)
/* B54710 80241EE0 30420004 */  andi      $v0, $v0, 4
/* B54714 80241EE4 10400020 */  beqz      $v0, .L80241F68
/* B54718 80241EE8 00000000 */   nop
.L80241EEC:
/* B5471C 80241EEC 2404F7FF */  addiu     $a0, $zero, -0x801
/* B54720 80241EF0 AE400070 */  sw        $zero, 0x70($s2)
/* B54724 80241EF4 A6A0008E */  sh        $zero, 0x8e($s5)
/* B54728 80241EF8 8E2200CC */  lw        $v0, 0xcc($s1)
/* B5472C 80241EFC 8EA30000 */  lw        $v1, ($s5)
/* B54730 80241F00 8C420000 */  lw        $v0, ($v0)
/* B54734 80241F04 00641824 */  and       $v1, $v1, $a0
/* B54738 80241F08 AEA30000 */  sw        $v1, ($s5)
/* B5473C 80241F0C AEA20028 */  sw        $v0, 0x28($s5)
/* B54740 80241F10 8E2200D0 */  lw        $v0, 0xd0($s1)
/* B54744 80241F14 8C420034 */  lw        $v0, 0x34($v0)
/* B54748 80241F18 54400005 */  bnel      $v0, $zero, .L80241F30
/* B5474C 80241F1C 2402FDFF */   addiu    $v0, $zero, -0x201
/* B54750 80241F20 34620200 */  ori       $v0, $v1, 0x200
/* B54754 80241F24 2403FFF7 */  addiu     $v1, $zero, -9
/* B54758 80241F28 080907CE */  j         .L80241F38
/* B5475C 80241F2C 00431024 */   and      $v0, $v0, $v1
.L80241F30:
/* B54760 80241F30 00621024 */  and       $v0, $v1, $v0
/* B54764 80241F34 34420008 */  ori       $v0, $v0, 8
.L80241F38:
/* B54768 80241F38 AEA20000 */  sw        $v0, ($s5)
/* B5476C 80241F3C 8E2200B0 */  lw        $v0, 0xb0($s1)
/* B54770 80241F40 30420004 */  andi      $v0, $v0, 4
/* B54774 80241F44 10400007 */  beqz      $v0, .L80241F64
/* B54778 80241F48 24020063 */   addiu    $v0, $zero, 0x63
/* B5477C 80241F4C AE420070 */  sw        $v0, 0x70($s2)
/* B54780 80241F50 AE400074 */  sw        $zero, 0x74($s2)
/* B54784 80241F54 8E2200B0 */  lw        $v0, 0xb0($s1)
/* B54788 80241F58 2403FFFB */  addiu     $v1, $zero, -5
/* B5478C 80241F5C 00431024 */  and       $v0, $v0, $v1
/* B54790 80241F60 AE2200B0 */  sw        $v0, 0xb0($s1)
.L80241F64:
/* B54794 80241F64 AE20006C */  sw        $zero, 0x6c($s1)
.L80241F68:
/* B54798 80241F68 8E420070 */  lw        $v0, 0x70($s2)
/* B5479C 80241F6C 2842001E */  slti      $v0, $v0, 0x1e
/* B547A0 80241F70 10400009 */  beqz      $v0, .L80241F98
/* B547A4 80241F74 00000000 */   nop
/* B547A8 80241F78 8E22006C */  lw        $v0, 0x6c($s1)
/* B547AC 80241F7C 14400006 */  bnez      $v0, .L80241F98
/* B547B0 80241F80 00000000 */   nop
/* B547B4 80241F84 0C090689 */  jal       func_80241A24_B54254
/* B547B8 80241F88 0240202D */   daddu    $a0, $s2, $zero
/* B547BC 80241F8C 10400002 */  beqz      $v0, .L80241F98
/* B547C0 80241F90 2402001E */   addiu    $v0, $zero, 0x1e
/* B547C4 80241F94 AE420070 */  sw        $v0, 0x70($s2)
.L80241F98:
/* B547C8 80241F98 8E430070 */  lw        $v1, 0x70($s2)
/* B547CC 80241F9C 2C620064 */  sltiu     $v0, $v1, 0x64
/* B547D0 80241FA0 10400048 */  beqz      $v0, .L802420C4
/* B547D4 80241FA4 00031080 */   sll      $v0, $v1, 2
/* B547D8 80241FA8 3C018024 */  lui       $at, %hi(D_80246D18)
/* B547DC 80241FAC 00220821 */  addu      $at, $at, $v0
/* B547E0 80241FB0 8C226D18 */  lw        $v0, %lo(D_80246D18)($at)
/* B547E4 80241FB4 00400008 */  jr        $v0
/* B547E8 80241FB8 00000000 */   nop
/* B547EC 80241FBC 0240202D */  daddu     $a0, $s2, $zero
/* B547F0 80241FC0 0260282D */  daddu     $a1, $s3, $zero
/* B547F4 80241FC4 0C012568 */  jal       func_800495A0
/* B547F8 80241FC8 0280302D */   daddu    $a2, $s4, $zero
/* B547FC 80241FCC 0240202D */  daddu     $a0, $s2, $zero
/* B54800 80241FD0 0260282D */  daddu     $a1, $s3, $zero
/* B54804 80241FD4 0C0125AE */  jal       func_800496B8
/* B54808 80241FD8 0280302D */   daddu    $a2, $s4, $zero
/* B5480C 80241FDC 08090831 */  j         .L802420C4
/* B54810 80241FE0 00000000 */   nop
/* B54814 80241FE4 0240202D */  daddu     $a0, $s2, $zero
/* B54818 80241FE8 0260282D */  daddu     $a1, $s3, $zero
/* B5481C 80241FEC 0C0126D1 */  jal       base_UnkNpcAIFunc1
/* B54820 80241FF0 0280302D */   daddu    $a2, $s4, $zero
/* B54824 80241FF4 0240202D */  daddu     $a0, $s2, $zero
/* B54828 80241FF8 0260282D */  daddu     $a1, $s3, $zero
/* B5482C 80241FFC 0C012701 */  jal       func_80049C04
/* B54830 80242000 0280302D */   daddu    $a2, $s4, $zero
/* B54834 80242004 08090831 */  j         .L802420C4
/* B54838 80242008 00000000 */   nop
/* B5483C 8024200C 0240202D */  daddu     $a0, $s2, $zero
/* B54840 80242010 0260282D */  daddu     $a1, $s3, $zero
/* B54844 80242014 0C01278F */  jal       func_80049E3C
/* B54848 80242018 0280302D */   daddu    $a2, $s4, $zero
/* B5484C 8024201C 0240202D */  daddu     $a0, $s2, $zero
/* B54850 80242020 0260282D */  daddu     $a1, $s3, $zero
/* B54854 80242024 0C0127B3 */  jal       func_80049ECC
/* B54858 80242028 0280302D */   daddu    $a2, $s4, $zero
/* B5485C 8024202C 08090831 */  j         .L802420C4
/* B54860 80242030 00000000 */   nop
/* B54864 80242034 0240202D */  daddu     $a0, $s2, $zero
/* B54868 80242038 0260282D */  daddu     $a1, $s3, $zero
/* B5486C 8024203C 0C0127DF */  jal       func_80049F7C
/* B54870 80242040 0280302D */   daddu    $a2, $s4, $zero
/* B54874 80242044 0240202D */  daddu     $a0, $s2, $zero
/* B54878 80242048 0260282D */  daddu     $a1, $s3, $zero
/* B5487C 8024204C 0C012849 */  jal       func_8004A124
/* B54880 80242050 0280302D */   daddu    $a2, $s4, $zero
/* B54884 80242054 08090831 */  j         .L802420C4
/* B54888 80242058 00000000 */   nop
/* B5488C 8024205C 0240202D */  daddu     $a0, $s2, $zero
/* B54890 80242060 0260282D */  daddu     $a1, $s3, $zero
/* B54894 80242064 0C0128FA */  jal       func_8004A3E8
/* B54898 80242068 0280302D */   daddu    $a2, $s4, $zero
/* B5489C 8024206C 08090831 */  j         .L802420C4
/* B548A0 80242070 00000000 */   nop
/* B548A4 80242074 0C090607 */  jal       jan_06_UnkNpcAIFunc6
/* B548A8 80242078 0240202D */   daddu    $a0, $s2, $zero
/* B548AC 8024207C 0C090622 */  jal       jan_06_UnkNpcAIFunc7
/* B548B0 80242080 0240202D */   daddu    $a0, $s2, $zero
/* B548B4 80242084 8E430070 */  lw        $v1, 0x70($s2)
/* B548B8 80242088 24020020 */  addiu     $v0, $zero, 0x20
/* B548BC 8024208C 1462000D */  bne       $v1, $v0, .L802420C4
/* B548C0 80242090 00000000 */   nop
/* B548C4 80242094 0C09063E */  jal       jan_06_UnkNpcAIFunc8
/* B548C8 80242098 0240202D */   daddu    $a0, $s2, $zero
/* B548CC 8024209C 8E430070 */  lw        $v1, 0x70($s2)
/* B548D0 802420A0 24020021 */  addiu     $v0, $zero, 0x21
/* B548D4 802420A4 14620007 */  bne       $v1, $v0, .L802420C4
/* B548D8 802420A8 00000000 */   nop
/* B548DC 802420AC 0C090674 */  jal       jan_06_UnkNpcAIFunc5
/* B548E0 802420B0 0240202D */   daddu    $a0, $s2, $zero
/* B548E4 802420B4 08090831 */  j         .L802420C4
/* B548E8 802420B8 00000000 */   nop
/* B548EC 802420BC 0C0129CF */  jal       func_8004A73C
/* B548F0 802420C0 0240202D */   daddu    $a0, $s2, $zero
.L802420C4:
/* B548F4 802420C4 8FBF0048 */  lw        $ra, 0x48($sp)
/* B548F8 802420C8 8FB50044 */  lw        $s5, 0x44($sp)
/* B548FC 802420CC 8FB40040 */  lw        $s4, 0x40($sp)
/* B54900 802420D0 8FB3003C */  lw        $s3, 0x3c($sp)
/* B54904 802420D4 8FB20038 */  lw        $s2, 0x38($sp)
/* B54908 802420D8 8FB10034 */  lw        $s1, 0x34($sp)
/* B5490C 802420DC 8FB00030 */  lw        $s0, 0x30($sp)
/* B54910 802420E0 0000102D */  daddu     $v0, $zero, $zero
/* B54914 802420E4 03E00008 */  jr        $ra
/* B54918 802420E8 27BD0050 */   addiu    $sp, $sp, 0x50
