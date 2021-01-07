.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel do_camera_type_2
/* A0F8 8002ECF8 27BDFFB8 */  addiu     $sp, $sp, -0x48
/* A0FC 8002ECFC AFB00010 */  sw        $s0, 0x10($sp)
/* A100 8002ED00 0080802D */  daddu     $s0, $a0, $zero
/* A104 8002ED04 AFBF0014 */  sw        $ra, 0x14($sp)
/* A108 8002ED08 F7BE0040 */  sdc1      $f30, 0x40($sp)
/* A10C 8002ED0C F7BC0038 */  sdc1      $f28, 0x38($sp)
/* A110 8002ED10 F7BA0030 */  sdc1      $f26, 0x30($sp)
/* A114 8002ED14 F7B80028 */  sdc1      $f24, 0x28($sp)
/* A118 8002ED18 F7B60020 */  sdc1      $f22, 0x20($sp)
/* A11C 8002ED1C F7B40018 */  sdc1      $f20, 0x18($sp)
/* A120 8002ED20 86020020 */  lh        $v0, 0x20($s0)
/* A124 8002ED24 3C01800A */  lui       $at, %hi(D_8009A5EC)
/* A128 8002ED28 C426A5EC */  lwc1      $f6, %lo(D_8009A5EC)($at)
/* A12C 8002ED2C 86030022 */  lh        $v1, 0x22($s0)
/* A130 8002ED30 44822000 */  mtc1      $v0, $f4
/* A134 8002ED34 00000000 */  nop       
/* A138 8002ED38 46802120 */  cvt.s.w   $f4, $f4
/* A13C 8002ED3C 44831000 */  mtc1      $v1, $f2
/* A140 8002ED40 00000000 */  nop       
/* A144 8002ED44 468010A0 */  cvt.s.w   $f2, $f2
/* A148 8002ED48 46062102 */  mul.s     $f4, $f4, $f6
/* A14C 8002ED4C 00000000 */  nop       
/* A150 8002ED50 8602001E */  lh        $v0, 0x1e($s0)
/* A154 8002ED54 86030006 */  lh        $v1, 6($s0)
/* A158 8002ED58 44820000 */  mtc1      $v0, $f0
/* A15C 8002ED5C 00000000 */  nop       
/* A160 8002ED60 46800020 */  cvt.s.w   $f0, $f0
/* A164 8002ED64 8602001C */  lh        $v0, 0x1c($s0)
/* A168 8002ED68 46061082 */  mul.s     $f2, $f2, $f6
/* A16C 8002ED6C 00000000 */  nop       
/* A170 8002ED70 E6000070 */  swc1      $f0, 0x70($s0)
/* A174 8002ED74 46000186 */  mov.s     $f6, $f0
/* A178 8002ED78 E6060084 */  swc1      $f6, 0x84($s0)
/* A17C 8002ED7C 44820000 */  mtc1      $v0, $f0
/* A180 8002ED80 00000000 */  nop       
/* A184 8002ED84 46800020 */  cvt.s.w   $f0, $f0
/* A188 8002ED88 E6000074 */  swc1      $f0, 0x74($s0)
/* A18C 8002ED8C E6040078 */  swc1      $f4, 0x78($s0)
/* A190 8002ED90 10600047 */  beqz      $v1, .L8002EEB0
/* A194 8002ED94 E602007C */   swc1     $f2, 0x7c($s0)
/* A198 8002ED98 46000086 */  mov.s     $f2, $f0
/* A19C 8002ED9C 4480C000 */  mtc1      $zero, $f24
/* A1A0 8002EDA0 3C0140C9 */  lui       $at, 0x40c9
/* A1A4 8002EDA4 34210FD0 */  ori       $at, $at, 0xfd0
/* A1A8 8002EDA8 4481B000 */  mtc1      $at, $f22
/* A1AC 8002EDAC C6080054 */  lwc1      $f8, 0x54($s0)
/* A1B0 8002EDB0 C6000058 */  lwc1      $f0, 0x58($s0)
/* A1B4 8002EDB4 C604007C */  lwc1      $f4, 0x7c($s0)
/* A1B8 8002EDB8 C606005C */  lwc1      $f6, 0x5c($s0)
/* A1BC 8002EDBC 3C0143B4 */  lui       $at, 0x43b4
/* A1C0 8002EDC0 4481A000 */  mtc1      $at, $f20
/* A1C4 8002EDC4 46161082 */  mul.s     $f2, $f2, $f22
/* A1C8 8002EDC8 00000000 */  nop       
/* A1CC 8002EDCC A6000006 */  sh        $zero, 6($s0)
/* A1D0 8002EDD0 E6180098 */  swc1      $f24, 0x98($s0)
/* A1D4 8002EDD4 E618009C */  swc1      $f24, 0x9c($s0)
/* A1D8 8002EDD8 46040000 */  add.s     $f0, $f0, $f4
/* A1DC 8002EDDC E6080048 */  swc1      $f8, 0x48($s0)
/* A1E0 8002EDE0 E6060050 */  swc1      $f6, 0x50($s0)
/* A1E4 8002EDE4 E600004C */  swc1      $f0, 0x4c($s0)
/* A1E8 8002EDE8 46141683 */  div.s     $f26, $f2, $f20
/* A1EC 8002EDEC 0C00A85B */  jal       sin_rad
/* A1F0 8002EDF0 4600D306 */   mov.s    $f12, $f26
/* A1F4 8002EDF4 46000786 */  mov.s     $f30, $f0
/* A1F8 8002EDF8 0C00A874 */  jal       cos_rad
/* A1FC 8002EDFC 4600D306 */   mov.s    $f12, $f26
/* A200 8002EE00 46000306 */  mov.s     $f12, $f0
/* A204 8002EE04 46186202 */  mul.s     $f8, $f12, $f24
/* A208 8002EE08 00000000 */  nop       
/* A20C 8002EE0C 4600C087 */  neg.s     $f2, $f24
/* A210 8002EE10 4602F082 */  mul.s     $f2, $f30, $f2
/* A214 8002EE14 00000000 */  nop       
/* A218 8002EE18 C61C0078 */  lwc1      $f28, 0x78($s0)
/* A21C 8002EE1C 461EE102 */  mul.s     $f4, $f28, $f30
/* A220 8002EE20 00000000 */  nop       
/* A224 8002EE24 460CE182 */  mul.s     $f6, $f28, $f12
/* A228 8002EE28 00000000 */  nop       
/* A22C 8002EE2C C6000070 */  lwc1      $f0, 0x70($s0)
/* A230 8002EE30 46160002 */  mul.s     $f0, $f0, $f22
/* A234 8002EE34 00000000 */  nop       
/* A238 8002EE38 4600C286 */  mov.s     $f10, $f24
/* A23C 8002EE3C 46005586 */  mov.s     $f22, $f10
/* A240 8002EE40 46044600 */  add.s     $f24, $f8, $f4
/* A244 8002EE44 46140683 */  div.s     $f26, $f0, $f20
/* A248 8002EE48 4600D306 */  mov.s     $f12, $f26
/* A24C 8002EE4C 0C00A85B */  jal       sin_rad
/* A250 8002EE50 46061700 */   add.s    $f28, $f2, $f6
/* A254 8002EE54 46000786 */  mov.s     $f30, $f0
/* A258 8002EE58 0C00A874 */  jal       cos_rad
/* A25C 8002EE5C 4600D306 */   mov.s    $f12, $f26
/* A260 8002EE60 46000306 */  mov.s     $f12, $f0
/* A264 8002EE64 46166202 */  mul.s     $f8, $f12, $f22
/* A268 8002EE68 00000000 */  nop       
/* A26C 8002EE6C 4616F182 */  mul.s     $f6, $f30, $f22
/* A270 8002EE70 00000000 */  nop       
/* A274 8002EE74 461EE102 */  mul.s     $f4, $f28, $f30
/* A278 8002EE78 00000000 */  nop       
/* A27C 8002EE7C 460CE082 */  mul.s     $f2, $f28, $f12
/* A280 8002EE80 00000000 */  nop       
/* A284 8002EE84 C600004C */  lwc1      $f0, 0x4c($s0)
/* A288 8002EE88 46180400 */  add.s     $f16, $f0, $f24
/* A28C 8002EE8C 46044281 */  sub.s     $f10, $f8, $f4
/* A290 8002EE90 46023080 */  add.s     $f2, $f6, $f2
/* A294 8002EE94 C6000048 */  lwc1      $f0, 0x48($s0)
/* A298 8002EE98 460A0100 */  add.s     $f4, $f0, $f10
/* A29C 8002EE9C C6000050 */  lwc1      $f0, 0x50($s0)
/* A2A0 8002EEA0 46020200 */  add.s     $f8, $f0, $f2
/* A2A4 8002EEA4 E6100040 */  swc1      $f16, 0x40($s0)
/* A2A8 8002EEA8 E604003C */  swc1      $f4, 0x3c($s0)
/* A2AC 8002EEAC E6080044 */  swc1      $f8, 0x44($s0)
.L8002EEB0:
/* A2B0 8002EEB0 C6020054 */  lwc1      $f2, 0x54($s0)
/* A2B4 8002EEB4 C6000048 */  lwc1      $f0, 0x48($s0)
/* A2B8 8002EEB8 46001101 */  sub.s     $f4, $f2, $f0
/* A2BC 8002EEBC C602005C */  lwc1      $f2, 0x5c($s0)
/* A2C0 8002EEC0 C6000050 */  lwc1      $f0, 0x50($s0)
/* A2C4 8002EEC4 46001201 */  sub.s     $f8, $f2, $f0
/* A2C8 8002EEC8 C6000058 */  lwc1      $f0, 0x58($s0)
/* A2CC 8002EECC C602007C */  lwc1      $f2, 0x7c($s0)
/* A2D0 8002EED0 46020000 */  add.s     $f0, $f0, $f2
/* A2D4 8002EED4 C602004C */  lwc1      $f2, 0x4c($s0)
/* A2D8 8002EED8 46020401 */  sub.s     $f16, $f0, $f2
/* A2DC 8002EEDC 3C014180 */  lui       $at, 0x4180
/* A2E0 8002EEE0 44811000 */  mtc1      $at, $f2
/* A2E4 8002EEE4 46002005 */  abs.s     $f0, $f4
/* A2E8 8002EEE8 4600103C */  c.lt.s    $f2, $f0
/* A2EC 8002EEEC 00000000 */  nop       
/* A2F0 8002EEF0 4502000C */  bc1fl     .L8002EF24
/* A2F4 8002EEF4 46008005 */   abs.s    $f0, $f16
/* A2F8 8002EEF8 44800000 */  mtc1      $zero, $f0
/* A2FC 8002EEFC 00000000 */  nop       
/* A300 8002EF00 4600203C */  c.lt.s    $f4, $f0
/* A304 8002EF04 00000000 */  nop       
/* A308 8002EF08 45000005 */  bc1f      .L8002EF20
/* A30C 8002EF0C 46001106 */   mov.s    $f4, $f2
/* A310 8002EF10 3C01C180 */  lui       $at, 0xc180
/* A314 8002EF14 44812000 */  mtc1      $at, $f4
/* A318 8002EF18 3C014180 */  lui       $at, 0x4180
/* A31C 8002EF1C 44811000 */  mtc1      $at, $f2
.L8002EF20:
/* A320 8002EF20 46008005 */  abs.s     $f0, $f16
.L8002EF24:
/* A324 8002EF24 4600103C */  c.lt.s    $f2, $f0
/* A328 8002EF28 00000000 */  nop       
/* A32C 8002EF2C 45000009 */  bc1f      .L8002EF54
/* A330 8002EF30 00000000 */   nop      
/* A334 8002EF34 44800000 */  mtc1      $zero, $f0
/* A338 8002EF38 00000000 */  nop       
/* A33C 8002EF3C 4600803C */  c.lt.s    $f16, $f0
/* A340 8002EF40 00000000 */  nop       
/* A344 8002EF44 45000003 */  bc1f      .L8002EF54
/* A348 8002EF48 46001406 */   mov.s    $f16, $f2
/* A34C 8002EF4C 3C01C180 */  lui       $at, 0xc180
/* A350 8002EF50 44818000 */  mtc1      $at, $f16
.L8002EF54:
/* A354 8002EF54 3C014180 */  lui       $at, 0x4180
/* A358 8002EF58 44811000 */  mtc1      $at, $f2
/* A35C 8002EF5C 46004005 */  abs.s     $f0, $f8
/* A360 8002EF60 4600103C */  c.lt.s    $f2, $f0
/* A364 8002EF64 00000000 */  nop       
/* A368 8002EF68 45000009 */  bc1f      .L8002EF90
/* A36C 8002EF6C 00000000 */   nop      
/* A370 8002EF70 44800000 */  mtc1      $zero, $f0
/* A374 8002EF74 00000000 */  nop       
/* A378 8002EF78 4600403C */  c.lt.s    $f8, $f0
/* A37C 8002EF7C 00000000 */  nop       
/* A380 8002EF80 45000003 */  bc1f      .L8002EF90
/* A384 8002EF84 46001206 */   mov.s    $f8, $f2
/* A388 8002EF88 3C01C180 */  lui       $at, 0xc180
/* A38C 8002EF8C 44814000 */  mtc1      $at, $f8
.L8002EF90:
/* A390 8002EF90 3C013F00 */  lui       $at, 0x3f00
/* A394 8002EF94 4481A000 */  mtc1      $at, $f20
/* A398 8002EF98 00000000 */  nop       
/* A39C 8002EF9C 46142082 */  mul.s     $f2, $f4, $f20
/* A3A0 8002EFA0 00000000 */  nop       
/* A3A4 8002EFA4 46148182 */  mul.s     $f6, $f16, $f20
/* A3A8 8002EFA8 00000000 */  nop       
/* A3AC 8002EFAC 46144202 */  mul.s     $f8, $f8, $f20
/* A3B0 8002EFB0 00000000 */  nop       
/* A3B4 8002EFB4 C6000074 */  lwc1      $f0, 0x74($s0)
/* A3B8 8002EFB8 3C0140C9 */  lui       $at, 0x40c9
/* A3BC 8002EFBC 34210FD0 */  ori       $at, $at, 0xfd0
/* A3C0 8002EFC0 4481B000 */  mtc1      $at, $f22
/* A3C4 8002EFC4 00000000 */  nop       
/* A3C8 8002EFC8 46160002 */  mul.s     $f0, $f0, $f22
/* A3CC 8002EFCC 00000000 */  nop       
/* A3D0 8002EFD0 4480C000 */  mtc1      $zero, $f24
/* A3D4 8002EFD4 C6040048 */  lwc1      $f4, 0x48($s0)
/* A3D8 8002EFD8 3C0143B4 */  lui       $at, 0x43b4
/* A3DC 8002EFDC 44819000 */  mtc1      $at, $f18
/* A3E0 8002EFE0 46022100 */  add.s     $f4, $f4, $f2
/* A3E4 8002EFE4 C602004C */  lwc1      $f2, 0x4c($s0)
/* A3E8 8002EFE8 46120683 */  div.s     $f26, $f0, $f18
/* A3EC 8002EFEC 46061080 */  add.s     $f2, $f2, $f6
/* A3F0 8002EFF0 C6000050 */  lwc1      $f0, 0x50($s0)
/* A3F4 8002EFF4 4600D306 */  mov.s     $f12, $f26
/* A3F8 8002EFF8 46080000 */  add.s     $f0, $f0, $f8
/* A3FC 8002EFFC E6040048 */  swc1      $f4, 0x48($s0)
/* A400 8002F000 E602004C */  swc1      $f2, 0x4c($s0)
/* A404 8002F004 0C00A85B */  jal       sin_rad
/* A408 8002F008 E6000050 */   swc1     $f0, 0x50($s0)
/* A40C 8002F00C 46000786 */  mov.s     $f30, $f0
/* A410 8002F010 0C00A874 */  jal       cos_rad
/* A414 8002F014 4600D306 */   mov.s    $f12, $f26
/* A418 8002F018 46000306 */  mov.s     $f12, $f0
/* A41C 8002F01C 46186202 */  mul.s     $f8, $f12, $f24
/* A420 8002F020 00000000 */  nop       
/* A424 8002F024 4600C087 */  neg.s     $f2, $f24
/* A428 8002F028 4602F082 */  mul.s     $f2, $f30, $f2
/* A42C 8002F02C 00000000 */  nop       
/* A430 8002F030 C61C0078 */  lwc1      $f28, 0x78($s0)
/* A434 8002F034 461EE102 */  mul.s     $f4, $f28, $f30
/* A438 8002F038 00000000 */  nop       
/* A43C 8002F03C 460CE182 */  mul.s     $f6, $f28, $f12
/* A440 8002F040 00000000 */  nop       
/* A444 8002F044 C6000070 */  lwc1      $f0, 0x70($s0)
/* A448 8002F048 46160002 */  mul.s     $f0, $f0, $f22
/* A44C 8002F04C 00000000 */  nop       
/* A450 8002F050 4600C286 */  mov.s     $f10, $f24
/* A454 8002F054 3C0143B4 */  lui       $at, 0x43b4
/* A458 8002F058 44819000 */  mtc1      $at, $f18
/* A45C 8002F05C 46005586 */  mov.s     $f22, $f10
/* A460 8002F060 46044600 */  add.s     $f24, $f8, $f4
/* A464 8002F064 46120683 */  div.s     $f26, $f0, $f18
/* A468 8002F068 4600D306 */  mov.s     $f12, $f26
/* A46C 8002F06C 0C00A85B */  jal       sin_rad
/* A470 8002F070 46061700 */   add.s    $f28, $f2, $f6
/* A474 8002F074 46000786 */  mov.s     $f30, $f0
/* A478 8002F078 0C00A874 */  jal       cos_rad
/* A47C 8002F07C 4600D306 */   mov.s    $f12, $f26
/* A480 8002F080 46000306 */  mov.s     $f12, $f0
/* A484 8002F084 461EE002 */  mul.s     $f0, $f28, $f30
/* A488 8002F088 00000000 */  nop       
/* A48C 8002F08C C602004C */  lwc1      $f2, 0x4c($s0)
/* A490 8002F090 46181400 */  add.s     $f16, $f2, $f24
/* A494 8002F094 C6020040 */  lwc1      $f2, 0x40($s0)
/* A498 8002F098 46028081 */  sub.s     $f2, $f16, $f2
/* A49C 8002F09C 46141402 */  mul.s     $f16, $f2, $f20
/* A4A0 8002F0A0 00000000 */  nop       
/* A4A4 8002F0A4 46166082 */  mul.s     $f2, $f12, $f22
/* A4A8 8002F0A8 00000000 */  nop       
/* A4AC 8002F0AC 46001281 */  sub.s     $f10, $f2, $f0
/* A4B0 8002F0B0 4616F082 */  mul.s     $f2, $f30, $f22
/* A4B4 8002F0B4 00000000 */  nop       
/* A4B8 8002F0B8 C6000048 */  lwc1      $f0, 0x48($s0)
/* A4BC 8002F0BC 460A0100 */  add.s     $f4, $f0, $f10
/* A4C0 8002F0C0 C600003C */  lwc1      $f0, 0x3c($s0)
/* A4C4 8002F0C4 46002001 */  sub.s     $f0, $f4, $f0
/* A4C8 8002F0C8 46140102 */  mul.s     $f4, $f0, $f20
/* A4CC 8002F0CC 00000000 */  nop       
/* A4D0 8002F0D0 460CE002 */  mul.s     $f0, $f28, $f12
/* A4D4 8002F0D4 00000000 */  nop       
/* A4D8 8002F0D8 46001080 */  add.s     $f2, $f2, $f0
/* A4DC 8002F0DC C6000050 */  lwc1      $f0, 0x50($s0)
/* A4E0 8002F0E0 46020200 */  add.s     $f8, $f0, $f2
/* A4E4 8002F0E4 C6000044 */  lwc1      $f0, 0x44($s0)
/* A4E8 8002F0E8 46004001 */  sub.s     $f0, $f8, $f0
/* A4EC 8002F0EC 46140202 */  mul.s     $f8, $f0, $f20
/* A4F0 8002F0F0 00000000 */  nop       
/* A4F4 8002F0F4 3C014180 */  lui       $at, 0x4180
/* A4F8 8002F0F8 44811000 */  mtc1      $at, $f2
/* A4FC 8002F0FC 46002005 */  abs.s     $f0, $f4
/* A500 8002F100 4600103C */  c.lt.s    $f2, $f0
/* A504 8002F104 00000000 */  nop       
/* A508 8002F108 4502000A */  bc1fl     .L8002F134
/* A50C 8002F10C 46008005 */   abs.s    $f0, $f16
/* A510 8002F110 4616203C */  c.lt.s    $f4, $f22
/* A514 8002F114 00000000 */  nop       
/* A518 8002F118 45000005 */  bc1f      .L8002F130
/* A51C 8002F11C 46001106 */   mov.s    $f4, $f2
/* A520 8002F120 3C01C180 */  lui       $at, 0xc180
/* A524 8002F124 44812000 */  mtc1      $at, $f4
/* A528 8002F128 3C014180 */  lui       $at, 0x4180
/* A52C 8002F12C 44811000 */  mtc1      $at, $f2
.L8002F130:
/* A530 8002F130 46008005 */  abs.s     $f0, $f16
.L8002F134:
/* A534 8002F134 4600103C */  c.lt.s    $f2, $f0
/* A538 8002F138 00000000 */  nop       
/* A53C 8002F13C 45000009 */  bc1f      .L8002F164
/* A540 8002F140 00000000 */   nop      
/* A544 8002F144 44800000 */  mtc1      $zero, $f0
/* A548 8002F148 00000000 */  nop       
/* A54C 8002F14C 4600803C */  c.lt.s    $f16, $f0
/* A550 8002F150 00000000 */  nop       
/* A554 8002F154 45000003 */  bc1f      .L8002F164
/* A558 8002F158 46001406 */   mov.s    $f16, $f2
/* A55C 8002F15C 3C01C180 */  lui       $at, 0xc180
/* A560 8002F160 44818000 */  mtc1      $at, $f16
.L8002F164:
/* A564 8002F164 3C014180 */  lui       $at, 0x4180
/* A568 8002F168 44811000 */  mtc1      $at, $f2
/* A56C 8002F16C 46004005 */  abs.s     $f0, $f8
/* A570 8002F170 4600103C */  c.lt.s    $f2, $f0
/* A574 8002F174 00000000 */  nop       
/* A578 8002F178 45000009 */  bc1f      .L8002F1A0
/* A57C 8002F17C 00000000 */   nop      
/* A580 8002F180 44800000 */  mtc1      $zero, $f0
/* A584 8002F184 00000000 */  nop       
/* A588 8002F188 4600403C */  c.lt.s    $f8, $f0
/* A58C 8002F18C 00000000 */  nop       
/* A590 8002F190 45000003 */  bc1f      .L8002F1A0
/* A594 8002F194 46001206 */   mov.s    $f8, $f2
/* A598 8002F198 3C01C180 */  lui       $at, 0xc180
/* A59C 8002F19C 44814000 */  mtc1      $at, $f8
.L8002F1A0:
/* A5A0 8002F1A0 C600003C */  lwc1      $f0, 0x3c($s0)
/* A5A4 8002F1A4 46040000 */  add.s     $f0, $f0, $f4
/* A5A8 8002F1A8 C60E0044 */  lwc1      $f14, 0x44($s0)
/* A5AC 8002F1AC 8E060048 */  lw        $a2, 0x48($s0)
/* A5B0 8002F1B0 46087380 */  add.s     $f14, $f14, $f8
/* A5B4 8002F1B4 C6020040 */  lwc1      $f2, 0x40($s0)
/* A5B8 8002F1B8 8E070050 */  lw        $a3, 0x50($s0)
/* A5BC 8002F1BC 46101080 */  add.s     $f2, $f2, $f16
/* A5C0 8002F1C0 E600003C */  swc1      $f0, 0x3c($s0)
/* A5C4 8002F1C4 46000306 */  mov.s     $f12, $f0
/* A5C8 8002F1C8 E6020040 */  swc1      $f2, 0x40($s0)
/* A5CC 8002F1CC 0C00A720 */  jal       atan2
/* A5D0 8002F1D0 E60E0044 */   swc1     $f14, 0x44($s0)
/* A5D4 8002F1D4 C6040048 */  lwc1      $f4, 0x48($s0)
/* A5D8 8002F1D8 4480A000 */  mtc1      $zero, $f20
/* A5DC 8002F1DC C602003C */  lwc1      $f2, 0x3c($s0)
/* A5E0 8002F1E0 E600006C */  swc1      $f0, 0x6c($s0)
/* A5E4 8002F1E4 46022581 */  sub.s     $f22, $f4, $f2
/* A5E8 8002F1E8 C6040050 */  lwc1      $f4, 0x50($s0)
/* A5EC 8002F1EC C6020044 */  lwc1      $f2, 0x44($s0)
/* A5F0 8002F1F0 4600A306 */  mov.s     $f12, $f20
/* A5F4 8002F1F4 46022701 */  sub.s     $f28, $f4, $f2
/* A5F8 8002F1F8 C604004C */  lwc1      $f4, 0x4c($s0)
/* A5FC 8002F1FC C6020040 */  lwc1      $f2, 0x40($s0)
/* A600 8002F200 4406B000 */  mfc1      $a2, $f22
/* A604 8002F204 46022601 */  sub.s     $f24, $f4, $f2
/* A608 8002F208 4407E000 */  mfc1      $a3, $f28
/* A60C 8002F20C 0C00A720 */  jal       atan2
/* A610 8002F210 4600A386 */   mov.s    $f14, $f20
/* A614 8002F214 4616B102 */  mul.s     $f4, $f22, $f22
/* A618 8002F218 00000000 */  nop       
/* A61C 8002F21C 461CE082 */  mul.s     $f2, $f28, $f28
/* A620 8002F220 00000000 */  nop       
/* A624 8002F224 46022300 */  add.s     $f12, $f4, $f2
/* A628 8002F228 46000007 */  neg.s     $f0, $f0
/* A62C 8002F22C E6000090 */  swc1      $f0, 0x90($s0)
/* A630 8002F230 46006004 */  sqrt.s    $f0, $f12
/* A634 8002F234 46000032 */  c.eq.s    $f0, $f0
/* A638 8002F238 00000000 */  nop       
/* A63C 8002F23C 45030004 */  bc1tl     .L8002F250
/* A640 8002F240 4600A306 */   mov.s    $f12, $f20
/* A644 8002F244 0C0187BC */  jal       sqrtf
/* A648 8002F248 00000000 */   nop      
/* A64C 8002F24C 4600A306 */  mov.s     $f12, $f20
.L8002F250:
/* A650 8002F250 46000007 */  neg.s     $f0, $f0
/* A654 8002F254 4406C000 */  mfc1      $a2, $f24
/* A658 8002F258 44070000 */  mfc1      $a3, $f0
/* A65C 8002F25C 0C00A720 */  jal       atan2
/* A660 8002F260 46006386 */   mov.s    $f14, $f12
/* A664 8002F264 E6000094 */  swc1      $f0, 0x94($s0)
/* A668 8002F268 8FBF0014 */  lw        $ra, 0x14($sp)
/* A66C 8002F26C 8FB00010 */  lw        $s0, 0x10($sp)
/* A670 8002F270 D7BE0040 */  ldc1      $f30, 0x40($sp)
/* A674 8002F274 D7BC0038 */  ldc1      $f28, 0x38($sp)
/* A678 8002F278 D7BA0030 */  ldc1      $f26, 0x30($sp)
/* A67C 8002F27C D7B80028 */  ldc1      $f24, 0x28($sp)
/* A680 8002F280 D7B60020 */  ldc1      $f22, 0x20($sp)
/* A684 8002F284 D7B40018 */  ldc1      $f20, 0x18($sp)
/* A688 8002F288 03E00008 */  jr        $ra
/* A68C 8002F28C 27BD0048 */   addiu    $sp, $sp, 0x48
