.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_802186E4_431084
/* 431084 802186E4 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 431088 802186E8 AFB40020 */  sw        $s4, 0x20($sp)
/* 43108C 802186EC 0080A02D */  daddu     $s4, $a0, $zero
/* 431090 802186F0 AFBF0024 */  sw        $ra, 0x24($sp)
/* 431094 802186F4 AFB3001C */  sw        $s3, 0x1c($sp)
/* 431098 802186F8 AFB20018 */  sw        $s2, 0x18($sp)
/* 43109C 802186FC AFB10014 */  sw        $s1, 0x14($sp)
/* 4310A0 80218700 AFB00010 */  sw        $s0, 0x10($sp)
/* 4310A4 80218704 8E92000C */  lw        $s2, 0xc($s4)
/* 4310A8 80218708 8E450000 */  lw        $a1, ($s2)
/* 4310AC 8021870C 0C0B1EAF */  jal       get_variable
/* 4310B0 80218710 26520004 */   addiu    $s2, $s2, 4
/* 4310B4 80218714 8E450000 */  lw        $a1, ($s2)
/* 4310B8 80218718 26520004 */  addiu     $s2, $s2, 4
/* 4310BC 8021871C 0280202D */  daddu     $a0, $s4, $zero
/* 4310C0 80218720 0C0B1EAF */  jal       get_variable
/* 4310C4 80218724 0040802D */   daddu    $s0, $v0, $zero
/* 4310C8 80218728 8E450000 */  lw        $a1, ($s2)
/* 4310CC 8021872C 26520004 */  addiu     $s2, $s2, 4
/* 4310D0 80218730 0280202D */  daddu     $a0, $s4, $zero
/* 4310D4 80218734 0C0B1EAF */  jal       get_variable
/* 4310D8 80218738 0040882D */   daddu    $s1, $v0, $zero
/* 4310DC 8021873C 0040982D */  daddu     $s3, $v0, $zero
/* 4310E0 80218740 8E450000 */  lw        $a1, ($s2)
/* 4310E4 80218744 26520004 */  addiu     $s2, $s2, 4
/* 4310E8 80218748 0280202D */  daddu     $a0, $s4, $zero
/* 4310EC 8021874C 0C0B1EAF */  jal       get_variable
/* 4310F0 80218750 02709823 */   subu     $s3, $s3, $s0
/* 4310F4 80218754 0040802D */  daddu     $s0, $v0, $zero
/* 4310F8 80218758 0280202D */  daddu     $a0, $s4, $zero
/* 4310FC 8021875C 8E450000 */  lw        $a1, ($s2)
/* 431100 80218760 0C0B1EAF */  jal       get_variable
/* 431104 80218764 02118023 */   subu     $s0, $s0, $s1
/* 431108 80218768 16600006 */  bnez      $s3, .L80218784
/* 43110C 8021876C 00000000 */   nop      
/* 431110 80218770 16000004 */  bnez      $s0, .L80218784
/* 431114 80218774 0280202D */   daddu    $a0, $s4, $zero
/* 431118 80218778 8E450000 */  lw        $a1, ($s2)
/* 43111C 8021877C 080861EB */  j         .L802187AC
/* 431120 80218780 0040302D */   daddu    $a2, $v0, $zero
.L80218784:
/* 431124 80218784 44936000 */  mtc1      $s3, $f12
/* 431128 80218788 00000000 */  nop       
/* 43112C 8021878C 46806320 */  cvt.s.w   $f12, $f12
/* 431130 80218790 44907000 */  mtc1      $s0, $f14
/* 431134 80218794 00000000 */  nop       
/* 431138 80218798 0C086156 */  jal       func_80218558_430EF8
/* 43113C 8021879C 468073A0 */   cvt.s.w  $f14, $f14
/* 431140 802187A0 0280202D */  daddu     $a0, $s4, $zero
/* 431144 802187A4 8E450000 */  lw        $a1, ($s2)
/* 431148 802187A8 2446FFA6 */  addiu     $a2, $v0, -0x5a
.L802187AC:
/* 43114C 802187AC 0C0B2026 */  jal       set_variable
/* 431150 802187B0 00000000 */   nop      
/* 431154 802187B4 24020002 */  addiu     $v0, $zero, 2
/* 431158 802187B8 8FBF0024 */  lw        $ra, 0x24($sp)
/* 43115C 802187BC 8FB40020 */  lw        $s4, 0x20($sp)
/* 431160 802187C0 8FB3001C */  lw        $s3, 0x1c($sp)
/* 431164 802187C4 8FB20018 */  lw        $s2, 0x18($sp)
/* 431168 802187C8 8FB10014 */  lw        $s1, 0x14($sp)
/* 43116C 802187CC 8FB00010 */  lw        $s0, 0x10($sp)
/* 431170 802187D0 03E00008 */  jr        $ra
/* 431174 802187D4 27BD0028 */   addiu    $sp, $sp, 0x28
/* 431178 802187D8 00000000 */  nop       
/* 43117C 802187DC 00000000 */  nop       
