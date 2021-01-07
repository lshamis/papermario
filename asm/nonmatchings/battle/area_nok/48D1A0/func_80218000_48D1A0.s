.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80218000_48D1A0
/* 48D1A0 80218000 27BDFFD8 */  addiu     $sp, $sp, -0x28
/* 48D1A4 80218004 F7B60020 */  sdc1      $f22, 0x20($sp)
/* 48D1A8 80218008 46006586 */  mov.s     $f22, $f12
/* 48D1AC 8021800C F7B40018 */  sdc1      $f20, 0x18($sp)
/* 48D1B0 80218010 AFBF0010 */  sw        $ra, 0x10($sp)
/* 48D1B4 80218014 0C00A3FC */  jal       length2D
/* 48D1B8 80218018 46007506 */   mov.s    $f20, $f14
/* 48D1BC 8021801C 4600A18D */  trunc.w.s $f6, $f20
/* 48D1C0 80218020 44023000 */  mfc1      $v0, $f6
/* 48D1C4 80218024 00000000 */  nop       
/* 48D1C8 80218028 04420001 */  bltzl     $v0, .L80218030
/* 48D1CC 8021802C 00021023 */   negu     $v0, $v0
.L80218030:
/* 48D1D0 80218030 44821000 */  mtc1      $v0, $f2
/* 48D1D4 80218034 00000000 */  nop       
/* 48D1D8 80218038 468010A0 */  cvt.s.w   $f2, $f2
/* 48D1DC 8021803C 46001103 */  div.s     $f4, $f2, $f0
/* 48D1E0 80218040 0000202D */  daddu     $a0, $zero, $zero
/* 48D1E4 80218044 2406005A */  addiu     $a2, $zero, 0x5a
/* 48D1E8 80218048 0080282D */  daddu     $a1, $a0, $zero
/* 48D1EC 8021804C 3C078022 */  lui       $a3, %hi(D_8021A2D4)
/* 48D1F0 80218050 24E7A2D4 */  addiu     $a3, $a3, %lo(D_8021A2D4)
/* 48D1F4 80218054 30C2FFFF */  andi      $v0, $a2, 0xffff
.L80218058:
/* 48D1F8 80218058 3083FFFF */  andi      $v1, $a0, 0xffff
/* 48D1FC 8021805C 00431023 */  subu      $v0, $v0, $v1
/* 48D200 80218060 00021FC2 */  srl       $v1, $v0, 0x1f
/* 48D204 80218064 00431021 */  addu      $v0, $v0, $v1
/* 48D208 80218068 00021043 */  sra       $v0, $v0, 1
/* 48D20C 8021806C 00821821 */  addu      $v1, $a0, $v0
/* 48D210 80218070 3062FFFF */  andi      $v0, $v1, 0xffff
/* 48D214 80218074 00021080 */  sll       $v0, $v0, 2
/* 48D218 80218078 00471021 */  addu      $v0, $v0, $a3
/* 48D21C 8021807C C4400000 */  lwc1      $f0, ($v0)
/* 48D220 80218080 4604003C */  c.lt.s    $f0, $f4
/* 48D224 80218084 00000000 */  nop       
/* 48D228 80218088 45020002 */  bc1fl     .L80218094
/* 48D22C 8021808C 0060302D */   daddu    $a2, $v1, $zero
/* 48D230 80218090 0060202D */  daddu     $a0, $v1, $zero
.L80218094:
/* 48D234 80218094 24A50001 */  addiu     $a1, $a1, 1
/* 48D238 80218098 30A2FFFF */  andi      $v0, $a1, 0xffff
/* 48D23C 8021809C 2C420007 */  sltiu     $v0, $v0, 7
/* 48D240 802180A0 1440FFED */  bnez      $v0, .L80218058
/* 48D244 802180A4 30C2FFFF */   andi     $v0, $a2, 0xffff
/* 48D248 802180A8 3082FFFF */  andi      $v0, $a0, 0xffff
/* 48D24C 802180AC 00021080 */  sll       $v0, $v0, 2
/* 48D250 802180B0 30C3FFFF */  andi      $v1, $a2, 0xffff
/* 48D254 802180B4 3C018022 */  lui       $at, %hi(D_8021A2D4)
/* 48D258 802180B8 00220821 */  addu      $at, $at, $v0
/* 48D25C 802180BC C422A2D4 */  lwc1      $f2, %lo(D_8021A2D4)($at)
/* 48D260 802180C0 00031880 */  sll       $v1, $v1, 2
/* 48D264 802180C4 46041081 */  sub.s     $f2, $f2, $f4
/* 48D268 802180C8 3C018022 */  lui       $at, %hi(D_8021A2D4)
/* 48D26C 802180CC 00230821 */  addu      $at, $at, $v1
/* 48D270 802180D0 C420A2D4 */  lwc1      $f0, %lo(D_8021A2D4)($at)
/* 48D274 802180D4 46040001 */  sub.s     $f0, $f0, $f4
/* 48D278 802180D8 46001085 */  abs.s     $f2, $f2
/* 48D27C 802180DC 46000005 */  abs.s     $f0, $f0
/* 48D280 802180E0 4600103C */  c.lt.s    $f2, $f0
/* 48D284 802180E4 00000000 */  nop       
/* 48D288 802180E8 45000002 */  bc1f      .L802180F4
/* 48D28C 802180EC 00C0182D */   daddu    $v1, $a2, $zero
/* 48D290 802180F0 0080182D */  daddu     $v1, $a0, $zero
.L802180F4:
/* 48D294 802180F4 44800000 */  mtc1      $zero, $f0
/* 48D298 802180F8 00000000 */  nop       
/* 48D29C 802180FC 4600B03C */  c.lt.s    $f22, $f0
/* 48D2A0 80218100 00000000 */  nop       
/* 48D2A4 80218104 4500000A */  bc1f      .L80218130
/* 48D2A8 80218108 00000000 */   nop      
/* 48D2AC 8021810C 4614003E */  c.le.s    $f0, $f20
/* 48D2B0 80218110 00000000 */  nop       
/* 48D2B4 80218114 45000004 */  bc1f      .L80218128
/* 48D2B8 80218118 240200B4 */   addiu    $v0, $zero, 0xb4
/* 48D2BC 8021811C 00431823 */  subu      $v1, $v0, $v1
/* 48D2C0 80218120 44800000 */  mtc1      $zero, $f0
/* 48D2C4 80218124 00000000 */  nop       
.L80218128:
/* 48D2C8 80218128 4600B03C */  c.lt.s    $f22, $f0
/* 48D2CC 8021812C 00000000 */  nop       
.L80218130:
/* 48D2D0 80218130 45000005 */  bc1f      .L80218148
/* 48D2D4 80218134 00000000 */   nop      
/* 48D2D8 80218138 4600A03C */  c.lt.s    $f20, $f0
/* 48D2DC 8021813C 00000000 */  nop       
/* 48D2E0 80218140 45030001 */  bc1tl     .L80218148
/* 48D2E4 80218144 246300B4 */   addiu    $v1, $v1, 0xb4
.L80218148:
/* 48D2E8 80218148 44800000 */  mtc1      $zero, $f0
/* 48D2EC 8021814C 00000000 */  nop       
/* 48D2F0 80218150 4616003E */  c.le.s    $f0, $f22
/* 48D2F4 80218154 00000000 */  nop       
/* 48D2F8 80218158 45000006 */  bc1f      .L80218174
/* 48D2FC 8021815C 00000000 */   nop      
/* 48D300 80218160 4600A03C */  c.lt.s    $f20, $f0
/* 48D304 80218164 00000000 */  nop       
/* 48D308 80218168 45000002 */  bc1f      .L80218174
/* 48D30C 8021816C 24020168 */   addiu    $v0, $zero, 0x168
/* 48D310 80218170 00431823 */  subu      $v1, $v0, $v1
.L80218174:
/* 48D314 80218174 8FBF0010 */  lw        $ra, 0x10($sp)
/* 48D318 80218178 D7B60020 */  ldc1      $f22, 0x20($sp)
/* 48D31C 8021817C D7B40018 */  ldc1      $f20, 0x18($sp)
/* 48D320 80218180 3062FFFF */  andi      $v0, $v1, 0xffff
/* 48D324 80218184 03E00008 */  jr        $ra
/* 48D328 80218188 27BD0028 */   addiu    $sp, $sp, 0x28
