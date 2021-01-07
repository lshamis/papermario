.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8021844C_5B18FC
/* 5B18FC 8021844C 27BDFFD0 */  addiu     $sp, $sp, -0x30
/* 5B1900 80218450 AFB10014 */  sw        $s1, 0x14($sp)
/* 5B1904 80218454 0080882D */  daddu     $s1, $a0, $zero
/* 5B1908 80218458 AFBF0024 */  sw        $ra, 0x24($sp)
/* 5B190C 8021845C AFB40020 */  sw        $s4, 0x20($sp)
/* 5B1910 80218460 AFB3001C */  sw        $s3, 0x1c($sp)
/* 5B1914 80218464 AFB20018 */  sw        $s2, 0x18($sp)
/* 5B1918 80218468 AFB00010 */  sw        $s0, 0x10($sp)
/* 5B191C 8021846C F7B40028 */  sdc1      $f20, 0x28($sp)
/* 5B1920 80218470 8E30000C */  lw        $s0, 0xc($s1)
/* 5B1924 80218474 8E050000 */  lw        $a1, ($s0)
/* 5B1928 80218478 0C0B1EAF */  jal       get_variable
/* 5B192C 8021847C 26100004 */   addiu    $s0, $s0, 4
/* 5B1930 80218480 8E140000 */  lw        $s4, ($s0)
/* 5B1934 80218484 26100004 */  addiu     $s0, $s0, 4
/* 5B1938 80218488 8E050000 */  lw        $a1, ($s0)
/* 5B193C 8021848C 26100004 */  addiu     $s0, $s0, 4
/* 5B1940 80218490 0220202D */  daddu     $a0, $s1, $zero
/* 5B1944 80218494 0C0B1EAF */  jal       get_variable
/* 5B1948 80218498 0040902D */   daddu    $s2, $v0, $zero
/* 5B194C 8021849C 8E050000 */  lw        $a1, ($s0)
/* 5B1950 802184A0 26100004 */  addiu     $s0, $s0, 4
/* 5B1954 802184A4 0220202D */  daddu     $a0, $s1, $zero
/* 5B1958 802184A8 0C0B1EAF */  jal       get_variable
/* 5B195C 802184AC 0040982D */   daddu    $s3, $v0, $zero
/* 5B1960 802184B0 0220202D */  daddu     $a0, $s1, $zero
/* 5B1964 802184B4 8E050000 */  lw        $a1, ($s0)
/* 5B1968 802184B8 0C0B210B */  jal       get_float_variable
/* 5B196C 802184BC 0040802D */   daddu    $s0, $v0, $zero
/* 5B1970 802184C0 3C0140C9 */  lui       $at, 0x40c9
/* 5B1974 802184C4 34210FD8 */  ori       $at, $at, 0xfd8
/* 5B1978 802184C8 44814000 */  mtc1      $at, $f8
/* 5B197C 802184CC 44922000 */  mtc1      $s2, $f4
/* 5B1980 802184D0 00000000 */  nop       
/* 5B1984 802184D4 46802120 */  cvt.s.w   $f4, $f4
/* 5B1988 802184D8 46082202 */  mul.s     $f8, $f4, $f8
/* 5B198C 802184DC 00000000 */  nop       
/* 5B1990 802184E0 44903000 */  mtc1      $s0, $f6
/* 5B1994 802184E4 00000000 */  nop       
/* 5B1998 802184E8 468031A0 */  cvt.s.w   $f6, $f6
/* 5B199C 802184EC 3C013F80 */  lui       $at, 0x3f80
/* 5B19A0 802184F0 44811000 */  mtc1      $at, $f2
/* 5B19A4 802184F4 46062103 */  div.s     $f4, $f4, $f6
/* 5B19A8 802184F8 46041081 */  sub.s     $f2, $f2, $f4
/* 5B19AC 802184FC 46020502 */  mul.s     $f20, $f0, $f2
/* 5B19B0 80218500 00000000 */  nop       
/* 5B19B4 80218504 44936000 */  mtc1      $s3, $f12
/* 5B19B8 80218508 00000000 */  nop       
/* 5B19BC 8021850C 46806320 */  cvt.s.w   $f12, $f12
/* 5B19C0 80218510 0C00A874 */  jal       cos_rad
/* 5B19C4 80218514 460C4303 */   div.s    $f12, $f8, $f12
/* 5B19C8 80218518 4600A502 */  mul.s     $f20, $f20, $f0
/* 5B19CC 8021851C 00000000 */  nop       
/* 5B19D0 80218520 0220202D */  daddu     $a0, $s1, $zero
/* 5B19D4 80218524 4600A28D */  trunc.w.s $f10, $f20
/* 5B19D8 80218528 44065000 */  mfc1      $a2, $f10
/* 5B19DC 8021852C 0C0B2026 */  jal       set_variable
/* 5B19E0 80218530 0280282D */   daddu    $a1, $s4, $zero
/* 5B19E4 80218534 8FBF0024 */  lw        $ra, 0x24($sp)
/* 5B19E8 80218538 8FB40020 */  lw        $s4, 0x20($sp)
/* 5B19EC 8021853C 8FB3001C */  lw        $s3, 0x1c($sp)
/* 5B19F0 80218540 8FB20018 */  lw        $s2, 0x18($sp)
/* 5B19F4 80218544 8FB10014 */  lw        $s1, 0x14($sp)
/* 5B19F8 80218548 8FB00010 */  lw        $s0, 0x10($sp)
/* 5B19FC 8021854C D7B40028 */  ldc1      $f20, 0x28($sp)
/* 5B1A00 80218550 24020002 */  addiu     $v0, $zero, 2
/* 5B1A04 80218554 03E00008 */  jr        $ra
/* 5B1A08 80218558 27BD0030 */   addiu    $sp, $sp, 0x30
/* 5B1A0C 8021855C 00000000 */  nop       
