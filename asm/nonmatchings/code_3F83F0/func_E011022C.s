.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_E011022C
/* 3F861C E011022C 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 3F8620 E0110230 AFBF0010 */  sw        $ra, 0x10($sp)
/* 3F8624 E0110234 8C850000 */  lw        $a1, ($a0)
/* 3F8628 E0110238 8C83000C */  lw        $v1, 0xc($a0)
/* 3F862C E011023C 30A20010 */  andi      $v0, $a1, 0x10
/* 3F8630 E0110240 8C660000 */  lw        $a2, ($v1)
/* 3F8634 E0110244 10400005 */  beqz      $v0, .LE011025C
/* 3F8638 E0110248 2402FFEF */   addiu    $v0, $zero, -0x11
/* 3F863C E011024C 00A21024 */  and       $v0, $a1, $v0
/* 3F8640 E0110250 AC820000 */  sw        $v0, ($a0)
/* 3F8644 E0110254 24020010 */  addiu     $v0, $zero, 0x10
/* 3F8648 E0110258 AC620010 */  sw        $v0, 0x10($v1)
.LE011025C:
/* 3F864C E011025C 8C650010 */  lw        $a1, 0x10($v1)
/* 3F8650 E0110260 28A203E8 */  slti      $v0, $a1, 0x3e8
/* 3F8654 E0110264 10400002 */  beqz      $v0, .LE0110270
/* 3F8658 E0110268 24A2FFFF */   addiu    $v0, $a1, -1
/* 3F865C E011026C AC620010 */  sw        $v0, 0x10($v1)
.LE0110270:
/* 3F8660 E0110270 8C620014 */  lw        $v0, 0x14($v1)
/* 3F8664 E0110274 8C650010 */  lw        $a1, 0x10($v1)
/* 3F8668 E0110278 24420001 */  addiu     $v0, $v0, 1
/* 3F866C E011027C 04A10005 */  bgez      $a1, .LE0110294
/* 3F8670 E0110280 AC620014 */   sw       $v0, 0x14($v1)
/* 3F8674 E0110284 0C080128 */  jal       func_E02004A0
/* 3F8678 E0110288 00000000 */   nop      
/* 3F867C E011028C 080440E6 */  j         .LE0110398
/* 3F8680 E0110290 00000000 */   nop      
.LE0110294:
/* 3F8684 E0110294 28A20010 */  slti      $v0, $a1, 0x10
/* 3F8688 E0110298 10400002 */  beqz      $v0, .LE01102A4
/* 3F868C E011029C 00051100 */   sll      $v0, $a1, 4
/* 3F8690 E01102A0 AC620024 */  sw        $v0, 0x24($v1)
.LE01102A4:
/* 3F8694 E01102A4 C4620044 */  lwc1      $f2, 0x44($v1)
/* 3F8698 E01102A8 C4600048 */  lwc1      $f0, 0x48($v1)
/* 3F869C E01102AC 46001080 */  add.s     $f2, $f2, $f0
/* 3F86A0 E01102B0 44805000 */  mtc1      $zero, $f10
/* 3F86A4 E01102B4 00000000 */  nop       
/* 3F86A8 E01102B8 460A103C */  c.lt.s    $f2, $f10
/* 3F86AC E01102BC 00000000 */  nop       
/* 3F86B0 E01102C0 45000006 */  bc1f      .LE01102DC
/* 3F86B4 E01102C4 E4620044 */   swc1     $f2, 0x44($v1)
/* 3F86B8 E01102C8 3C013F80 */  lui       $at, 0x3f80
/* 3F86BC E01102CC 44810000 */  mtc1      $at, $f0
/* 3F86C0 E01102D0 00000000 */  nop       
/* 3F86C4 E01102D4 46001000 */  add.s     $f0, $f2, $f0
/* 3F86C8 E01102D8 E4600044 */  swc1      $f0, 0x44($v1)
.LE01102DC:
/* 3F86CC E01102DC C4600044 */  lwc1      $f0, 0x44($v1)
/* 3F86D0 E01102E0 3C013F80 */  lui       $at, 0x3f80
/* 3F86D4 E01102E4 44811000 */  mtc1      $at, $f2
/* 3F86D8 E01102E8 00000000 */  nop       
/* 3F86DC E01102EC 4600103C */  c.lt.s    $f2, $f0
/* 3F86E0 E01102F0 00000000 */  nop       
/* 3F86E4 E01102F4 45000003 */  bc1f      .LE0110304
/* 3F86E8 E01102F8 00000000 */   nop      
/* 3F86EC E01102FC 46020001 */  sub.s     $f0, $f0, $f2
/* 3F86F0 E0110300 E4600044 */  swc1      $f0, 0x44($v1)
.LE0110304:
/* 3F86F4 E0110304 C4620050 */  lwc1      $f2, 0x50($v1)
/* 3F86F8 E0110308 C4600058 */  lwc1      $f0, 0x58($v1)
/* 3F86FC E011030C C4680004 */  lwc1      $f8, 4($v1)
/* 3F8700 E0110310 46001080 */  add.s     $f2, $f2, $f0
/* 3F8704 E0110314 C460004C */  lwc1      $f0, 0x4c($v1)
/* 3F8708 E0110318 C466000C */  lwc1      $f6, 0xc($v1)
/* 3F870C E011031C 46004200 */  add.s     $f8, $f8, $f0
/* 3F8710 E0110320 C4600054 */  lwc1      $f0, 0x54($v1)
/* 3F8714 E0110324 C464003C */  lwc1      $f4, 0x3c($v1)
/* 3F8718 E0110328 46003180 */  add.s     $f6, $f6, $f0
/* 3F871C E011032C C4600040 */  lwc1      $f0, 0x40($v1)
/* 3F8720 E0110330 46002100 */  add.s     $f4, $f4, $f0
/* 3F8724 E0110334 C4600008 */  lwc1      $f0, 8($v1)
/* 3F8728 E0110338 28C20002 */  slti      $v0, $a2, 2
/* 3F872C E011033C E4620050 */  swc1      $f2, 0x50($v1)
/* 3F8730 E0110340 E4680004 */  swc1      $f8, 4($v1)
/* 3F8734 E0110344 46020000 */  add.s     $f0, $f0, $f2
/* 3F8738 E0110348 E466000C */  swc1      $f6, 0xc($v1)
/* 3F873C E011034C E464003C */  swc1      $f4, 0x3c($v1)
/* 3F8740 E0110350 14400011 */  bnez      $v0, .LE0110398
/* 3F8744 E0110354 E4600008 */   swc1     $f0, 8($v1)
/* 3F8748 E0110358 460A003C */  c.lt.s    $f0, $f10
/* 3F874C E011035C 00000000 */  nop       
/* 3F8750 E0110360 4500000D */  bc1f      .LE0110398
/* 3F8754 E0110364 46001006 */   mov.s    $f0, $f2
/* 3F8758 E0110368 460A003C */  c.lt.s    $f0, $f10
/* 3F875C E011036C 00000000 */  nop       
/* 3F8760 E0110370 45000009 */  bc1f      .LE0110398
/* 3F8764 E0110374 00000000 */   nop      
/* 3F8768 E0110378 3C01E011 */  lui       $at, %hi(D_E01108C8)
/* 3F876C E011037C D42208C8 */  ldc1      $f2, %lo(D_E01108C8)($at)
/* 3F8770 E0110380 46000021 */  cvt.d.s   $f0, $f0
/* 3F8774 E0110384 46220002 */  mul.d     $f0, $f0, $f2
/* 3F8778 E0110388 00000000 */  nop       
/* 3F877C E011038C E46A0008 */  swc1      $f10, 8($v1)
/* 3F8780 E0110390 46200020 */  cvt.s.d   $f0, $f0
/* 3F8784 E0110394 E4600050 */  swc1      $f0, 0x50($v1)
.LE0110398:
/* 3F8788 E0110398 8FBF0010 */  lw        $ra, 0x10($sp)
/* 3F878C E011039C 03E00008 */  jr        $ra
/* 3F8790 E01103A0 27BD0018 */   addiu    $sp, $sp, 0x18
