.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80240710_897CF0
/* 897CF0 80240710 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 897CF4 80240714 AFB3001C */  sw        $s3, 0x1c($sp)
/* 897CF8 80240718 0080982D */  daddu     $s3, $a0, $zero
/* 897CFC 8024071C AFB00010 */  sw        $s0, 0x10($sp)
/* 897D00 80240720 24100001 */  addiu     $s0, $zero, 1
/* 897D04 80240724 AFB40020 */  sw        $s4, 0x20($sp)
/* 897D08 80240728 2414FFFF */  addiu     $s4, $zero, -1
/* 897D0C 8024072C AFB50024 */  sw        $s5, 0x24($sp)
/* 897D10 80240730 0200A82D */  daddu     $s5, $s0, $zero
/* 897D14 80240734 AFB10014 */  sw        $s1, 0x14($sp)
/* 897D18 80240738 3C118011 */  lui       $s1, 0x8011
/* 897D1C 8024073C 2631F298 */  addiu     $s1, $s1, -0xd68
/* 897D20 80240740 AFBF0028 */  sw        $ra, 0x28($sp)
/* 897D24 80240744 AFB20018 */  sw        $s2, 0x18($sp)
/* 897D28 80240748 8E6200B4 */  lw        $v0, 0xb4($s3)
/* 897D2C 8024074C 0280182D */  daddu     $v1, $s4, $zero
/* 897D30 80240750 AE630084 */  sw        $v1, 0x84($s3)
/* 897D34 80240754 00021027 */  nor       $v0, $zero, $v0
/* 897D38 80240758 000217C2 */  srl       $v0, $v0, 0x1f
/* 897D3C 8024075C 00029400 */  sll       $s2, $v0, 0x10
.L80240760:
/* 897D40 80240760 92220014 */  lbu       $v0, 0x14($s1)
/* 897D44 80240764 50400008 */  beql      $v0, $zero, .L80240788
/* 897D48 80240768 26100001 */   addiu    $s0, $s0, 1
/* 897D4C 8024076C 0200202D */  daddu     $a0, $s0, $zero
/* 897D50 80240770 0C0901B1 */  jal       func_802406C4_897CA4
/* 897D54 80240774 00122C03 */   sra      $a1, $s2, 0x10
/* 897D58 80240778 10540003 */  beq       $v0, $s4, .L80240788
/* 897D5C 8024077C 26100001 */   addiu    $s0, $s0, 1
/* 897D60 80240780 080901E5 */  j         .L80240794
/* 897D64 80240784 AE750084 */   sw       $s5, 0x84($s3)
.L80240788:
/* 897D68 80240788 2A02000C */  slti      $v0, $s0, 0xc
/* 897D6C 8024078C 1440FFF4 */  bnez      $v0, .L80240760
/* 897D70 80240790 26310008 */   addiu    $s1, $s1, 8
.L80240794:
/* 897D74 80240794 8FBF0028 */  lw        $ra, 0x28($sp)
/* 897D78 80240798 8FB50024 */  lw        $s5, 0x24($sp)
/* 897D7C 8024079C 8FB40020 */  lw        $s4, 0x20($sp)
/* 897D80 802407A0 8FB3001C */  lw        $s3, 0x1c($sp)
/* 897D84 802407A4 8FB20018 */  lw        $s2, 0x18($sp)
/* 897D88 802407A8 8FB10014 */  lw        $s1, 0x14($sp)
/* 897D8C 802407AC 8FB00010 */  lw        $s0, 0x10($sp)
/* 897D90 802407B0 24020002 */  addiu     $v0, $zero, 2
/* 897D94 802407B4 03E00008 */  jr        $ra
/* 897D98 802407B8 27BD0030 */   addiu    $sp, $sp, 0x30