.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80218280_430C20
/* 430C20 80218280 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 430C24 80218284 F7B60020 */  sdc1      $f22, 0x20($sp)
/* 430C28 80218288 46006586 */  mov.s     $f22, $f12
/* 430C2C 8021828C F7B40018 */  sdc1      $f20, 0x18($sp)
/* 430C30 80218290 AFBF0010 */  sw        $ra, 0x10($sp)
/* 430C34 80218294 0C00A3FC */  jal       length2D
/* 430C38 80218298 46007506 */   mov.s    $f20, $f14
/* 430C3C 8021829C 4600A18D */  trunc.w.s $f6, $f20
/* 430C40 802182A0 44023000 */  mfc1      $v0, $f6
/* 430C44 802182A4 00000000 */  nop       
/* 430C48 802182A8 04420001 */  bltzl     $v0, .L802182B0
/* 430C4C 802182AC 00021023 */   negu     $v0, $v0
.L802182B0:
/* 430C50 802182B0 44821000 */  mtc1      $v0, $f2
/* 430C54 802182B4 00000000 */  nop       
/* 430C58 802182B8 468010A0 */  cvt.s.w   $f2, $f2
/* 430C5C 802182BC 46001103 */  div.s     $f4, $f2, $f0
/* 430C60 802182C0 0000202D */  daddu     $a0, $zero, $zero
/* 430C64 802182C4 2406005A */  addiu     $a2, $zero, 0x5a
/* 430C68 802182C8 0080282D */  daddu     $a1, $a0, $zero
/* 430C6C 802182CC 3C078022 */  lui       $a3, %hi(D_8021BC70)
/* 430C70 802182D0 24E7BC70 */  addiu     $a3, $a3, %lo(D_8021BC70)
/* 430C74 802182D4 30C2FFFF */  andi      $v0, $a2, 0xffff
.L802182D8:
/* 430C78 802182D8 3083FFFF */  andi      $v1, $a0, 0xffff
/* 430C7C 802182DC 00431023 */  subu      $v0, $v0, $v1
/* 430C80 802182E0 00021FC2 */  srl       $v1, $v0, 0x1f
/* 430C84 802182E4 00431021 */  addu      $v0, $v0, $v1
/* 430C88 802182E8 00021043 */  sra       $v0, $v0, 1
/* 430C8C 802182EC 00821821 */  addu      $v1, $a0, $v0
/* 430C90 802182F0 3062FFFF */  andi      $v0, $v1, 0xffff
/* 430C94 802182F4 00021080 */  sll       $v0, $v0, 2
/* 430C98 802182F8 00471021 */  addu      $v0, $v0, $a3
/* 430C9C 802182FC C4400000 */  lwc1      $f0, ($v0)
/* 430CA0 80218300 4604003C */  c.lt.s    $f0, $f4
/* 430CA4 80218304 00000000 */  nop       
/* 430CA8 80218308 45020002 */  bc1fl     .L80218314
/* 430CAC 8021830C 0060302D */   daddu    $a2, $v1, $zero
/* 430CB0 80218310 0060202D */  daddu     $a0, $v1, $zero
.L80218314:
/* 430CB4 80218314 24A50001 */  addiu     $a1, $a1, 1
/* 430CB8 80218318 30A2FFFF */  andi      $v0, $a1, 0xffff
/* 430CBC 8021831C 2C420007 */  sltiu     $v0, $v0, 7
/* 430CC0 80218320 1440FFED */  bnez      $v0, .L802182D8
/* 430CC4 80218324 30C2FFFF */   andi     $v0, $a2, 0xffff
/* 430CC8 80218328 3082FFFF */  andi      $v0, $a0, 0xffff
/* 430CCC 8021832C 00021080 */  sll       $v0, $v0, 2
/* 430CD0 80218330 30C3FFFF */  andi      $v1, $a2, 0xffff
/* 430CD4 80218334 3C018022 */  lui       $at, %hi(D_8021BC70)
/* 430CD8 80218338 00220821 */  addu      $at, $at, $v0
/* 430CDC 8021833C C422BC70 */  lwc1      $f2, %lo(D_8021BC70)($at)
/* 430CE0 80218340 00031880 */  sll       $v1, $v1, 2
/* 430CE4 80218344 46041081 */  sub.s     $f2, $f2, $f4
/* 430CE8 80218348 3C018022 */  lui       $at, %hi(D_8021BC70)
/* 430CEC 8021834C 00230821 */  addu      $at, $at, $v1
/* 430CF0 80218350 C420BC70 */  lwc1      $f0, %lo(D_8021BC70)($at)
/* 430CF4 80218354 46040001 */  sub.s     $f0, $f0, $f4
/* 430CF8 80218358 46001085 */  abs.s     $f2, $f2
/* 430CFC 8021835C 46000005 */  abs.s     $f0, $f0
/* 430D00 80218360 4600103C */  c.lt.s    $f2, $f0
/* 430D04 80218364 00000000 */  nop       
/* 430D08 80218368 45000002 */  bc1f      .L80218374
/* 430D0C 8021836C 00C0182D */   daddu    $v1, $a2, $zero
/* 430D10 80218370 0080182D */  daddu     $v1, $a0, $zero
.L80218374:
/* 430D14 80218374 44800000 */  mtc1      $zero, $f0
/* 430D18 80218378 00000000 */  nop       
/* 430D1C 8021837C 4600B03C */  c.lt.s    $f22, $f0
/* 430D20 80218380 00000000 */  nop       
/* 430D24 80218384 4500000A */  bc1f      .L802183B0
/* 430D28 80218388 00000000 */   nop      
/* 430D2C 8021838C 4614003E */  c.le.s    $f0, $f20
/* 430D30 80218390 00000000 */  nop       
/* 430D34 80218394 45000004 */  bc1f      .L802183A8
/* 430D38 80218398 240200B4 */   addiu    $v0, $zero, 0xb4
/* 430D3C 8021839C 00431823 */  subu      $v1, $v0, $v1
/* 430D40 802183A0 44800000 */  mtc1      $zero, $f0
/* 430D44 802183A4 00000000 */  nop       
.L802183A8:
/* 430D48 802183A8 4600B03C */  c.lt.s    $f22, $f0
/* 430D4C 802183AC 00000000 */  nop       
.L802183B0:
/* 430D50 802183B0 45000005 */  bc1f      .L802183C8
/* 430D54 802183B4 00000000 */   nop      
/* 430D58 802183B8 4600A03C */  c.lt.s    $f20, $f0
/* 430D5C 802183BC 00000000 */  nop       
/* 430D60 802183C0 45030001 */  bc1tl     .L802183C8
/* 430D64 802183C4 246300B4 */   addiu    $v1, $v1, 0xb4
.L802183C8:
/* 430D68 802183C8 44800000 */  mtc1      $zero, $f0
/* 430D6C 802183CC 00000000 */  nop       
/* 430D70 802183D0 4616003E */  c.le.s    $f0, $f22
/* 430D74 802183D4 00000000 */  nop       
/* 430D78 802183D8 45000006 */  bc1f      .L802183F4
/* 430D7C 802183DC 00000000 */   nop      
/* 430D80 802183E0 4600A03C */  c.lt.s    $f20, $f0
/* 430D84 802183E4 00000000 */  nop       
/* 430D88 802183E8 45000002 */  bc1f      .L802183F4
/* 430D8C 802183EC 24020168 */   addiu    $v0, $zero, 0x168
/* 430D90 802183F0 00431823 */  subu      $v1, $v0, $v1
.L802183F4:
/* 430D94 802183F4 8FBF0010 */  lw        $ra, 0x10($sp)
/* 430D98 802183F8 D7B60020 */  ldc1      $f22, 0x20($sp)
/* 430D9C 802183FC D7B40018 */  ldc1      $f20, 0x18($sp)
/* 430DA0 80218400 3062FFFF */  andi      $v0, $v1, 0xffff
/* 430DA4 80218404 03E00008 */  jr        $ra
/* 430DA8 80218408 27BD0028 */   addiu    $sp, $sp, 0x28
