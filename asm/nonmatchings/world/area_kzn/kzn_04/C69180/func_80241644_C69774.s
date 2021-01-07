.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80241644_C69774
/* C69774 80241644 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* C69778 80241648 AFB00010 */  sw        $s0, 0x10($sp)
/* C6977C 8024164C 0080802D */  daddu     $s0, $a0, $zero
/* C69780 80241650 24020001 */  addiu     $v0, $zero, 1
/* C69784 80241654 10A20019 */  beq       $a1, $v0, .L802416BC
/* C69788 80241658 AFBF0014 */   sw       $ra, 0x14($sp)
/* C6978C 8024165C 28A20002 */  slti      $v0, $a1, 2
/* C69790 80241660 50400005 */  beql      $v0, $zero, .L80241678
/* C69794 80241664 24020002 */   addiu    $v0, $zero, 2
/* C69798 80241668 10A00007 */  beqz      $a1, .L80241688
/* C6979C 8024166C 00000000 */   nop      
/* C697A0 80241670 080905D4 */  j         .L80241750
/* C697A4 80241674 00000000 */   nop      
.L80241678:
/* C697A8 80241678 10A20028 */  beq       $a1, $v0, .L8024171C
/* C697AC 8024167C 00000000 */   nop      
/* C697B0 80241680 080905D4 */  j         .L80241750
/* C697B4 80241684 00000000 */   nop      
.L80241688:
/* C697B8 80241688 8E020000 */  lw        $v0, ($s0)
/* C697BC 8024168C 30420002 */  andi      $v0, $v0, 2
/* C697C0 80241690 1040002F */  beqz      $v0, .L80241750
/* C697C4 80241694 00000000 */   nop      
/* C697C8 80241698 C6000010 */  lwc1      $f0, 0x10($s0)
/* C697CC 8024169C 3C013F73 */  lui       $at, 0x3f73
/* C697D0 802416A0 34213333 */  ori       $at, $at, 0x3333
/* C697D4 802416A4 44811000 */  mtc1      $at, $f2
/* C697D8 802416A8 00000000 */  nop       
/* C697DC 802416AC 46020002 */  mul.s     $f0, $f0, $f2
/* C697E0 802416B0 00000000 */  nop       
/* C697E4 802416B4 080905D4 */  j         .L80241750
/* C697E8 802416B8 E6000010 */   swc1     $f0, 0x10($s0)
.L802416BC:
/* C697EC 802416BC C6000010 */  lwc1      $f0, 0x10($s0)
/* C697F0 802416C0 3C013F8F */  lui       $at, 0x3f8f
/* C697F4 802416C4 34215C29 */  ori       $at, $at, 0x5c29
/* C697F8 802416C8 44811000 */  mtc1      $at, $f2
/* C697FC 802416CC 00000000 */  nop       
/* C69800 802416D0 46020002 */  mul.s     $f0, $f0, $f2
/* C69804 802416D4 00000000 */  nop       
/* C69808 802416D8 8E030020 */  lw        $v1, 0x20($s0)
/* C6980C 802416DC 2402000A */  addiu     $v0, $zero, 0xa
/* C69810 802416E0 1462001B */  bne       $v1, $v0, .L80241750
/* C69814 802416E4 E6000010 */   swc1     $f0, 0x10($s0)
/* C69818 802416E8 3C048024 */  lui       $a0, %hi(D_8024231C)
/* C6981C 802416EC 2484231C */  addiu     $a0, $a0, %lo(D_8024231C)
/* C69820 802416F0 24050001 */  addiu     $a1, $zero, 1
/* C69824 802416F4 0C0B0CF8 */  jal       start_script
/* C69828 802416F8 0000302D */   daddu    $a2, $zero, $zero
/* C6982C 802416FC 8E030014 */  lw        $v1, 0x14($s0)
/* C69830 80241700 AC430084 */  sw        $v1, 0x84($v0)
/* C69834 80241704 8E030018 */  lw        $v1, 0x18($s0)
/* C69838 80241708 AC430088 */  sw        $v1, 0x88($v0)
/* C6983C 8024170C 8E020000 */  lw        $v0, ($s0)
/* C69840 80241710 34420002 */  ori       $v0, $v0, 2
/* C69844 80241714 080905D4 */  j         .L80241750
/* C69848 80241718 AE020000 */   sw       $v0, ($s0)
.L8024171C:
/* C6984C 8024171C C60C0010 */  lwc1      $f12, 0x10($s0)
/* C69850 80241720 0C00A69F */  jal       signF
/* C69854 80241724 46006307 */   neg.s    $f12, $f12
/* C69858 80241728 8E02002C */  lw        $v0, 0x2c($s0)
/* C6985C 8024172C 8C42000C */  lw        $v0, 0xc($v0)
/* C69860 80241730 04420001 */  bltzl     $v0, .L80241738
/* C69864 80241734 00021023 */   negu     $v0, $v0
.L80241738:
/* C69868 80241738 44821000 */  mtc1      $v0, $f2
/* C6986C 8024173C 00000000 */  nop       
/* C69870 80241740 468010A0 */  cvt.s.w   $f2, $f2
/* C69874 80241744 46001082 */  mul.s     $f2, $f2, $f0
/* C69878 80241748 00000000 */  nop       
/* C6987C 8024174C E6020010 */  swc1      $f2, 0x10($s0)
.L80241750:
/* C69880 80241750 8FBF0014 */  lw        $ra, 0x14($sp)
/* C69884 80241754 8FB00010 */  lw        $s0, 0x10($sp)
/* C69888 80241758 03E00008 */  jr        $ra
/* C6988C 8024175C 27BD0018 */   addiu    $sp, $sp, 0x18
