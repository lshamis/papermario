.set noat      /* allow manual use of $at */
.set noreorder /* don't insert nops after branches */

/* Generated by spimdisasm 1.11.1 */

glabel pause_partners_draw_movelist
/* 144DB8 8024FF78 27BDFFB0 */  addiu      $sp, $sp, -0x50
/* 144DBC 8024FF7C AFBE0048 */  sw         $fp, 0x48($sp)
/* 144DC0 8024FF80 00C0F02D */  daddu      $fp, $a2, $zero
/* 144DC4 8024FF84 AFBF004C */  sw         $ra, 0x4C($sp)
/* 144DC8 8024FF88 AFB70044 */  sw         $s7, 0x44($sp)
/* 144DCC 8024FF8C AFB60040 */  sw         $s6, 0x40($sp)
/* 144DD0 8024FF90 AFB5003C */  sw         $s5, 0x3C($sp)
/* 144DD4 8024FF94 AFB40038 */  sw         $s4, 0x38($sp)
/* 144DD8 8024FF98 AFB30034 */  sw         $s3, 0x34($sp)
/* 144DDC 8024FF9C AFB20030 */  sw         $s2, 0x30($sp)
/* 144DE0 8024FFA0 AFB1002C */  sw         $s1, 0x2C($sp)
/* 144DE4 8024FFA4 AFB00028 */  sw         $s0, 0x28($sp)
/* 144DE8 8024FFA8 0C038F35 */  jal        get_player_data
/* 144DEC 8024FFAC AFA50054 */   sw        $a1, 0x54($sp)
/* 144DF0 8024FFB0 3C038027 */  lui        $v1, %hi(gPausePartnersCurrentPartnerIdx)
/* 144DF4 8024FFB4 8C632A70 */  lw         $v1, %lo(gPausePartnersCurrentPartnerIdx)($v1)
/* 144DF8 8024FFB8 00031880 */  sll        $v1, $v1, 2
/* 144DFC 8024FFBC 3C018027 */  lui        $at, %hi(gPausePartnersPartnerIdx)
/* 144E00 8024FFC0 00230821 */  addu       $at, $at, $v1
/* 144E04 8024FFC4 8C232A50 */  lw         $v1, %lo(gPausePartnersPartnerIdx)($at)
/* 144E08 8024FFC8 00031880 */  sll        $v1, $v1, 2
/* 144E0C 8024FFCC 3C018025 */  lui        $at, %hi(gPausePartnersPartnerIDs)
/* 144E10 8024FFD0 00230821 */  addu       $at, $at, $v1
/* 144E14 8024FFD4 8C233C00 */  lw         $v1, %lo(gPausePartnersPartnerIDs)($at)
/* 144E18 8024FFD8 000318C0 */  sll        $v1, $v1, 3
/* 144E1C 8024FFDC 00431021 */  addu       $v0, $v0, $v1
/* 144E20 8024FFE0 80550015 */  lb         $s5, 0x15($v0)
/* 144E24 8024FFE4 24020002 */  addiu      $v0, $zero, 0x2
/* 144E28 8024FFE8 16A20003 */  bne        $s5, $v0, .Lpause_8024FFF8
/* 144E2C 8024FFEC 24020001 */   addiu     $v0, $zero, 0x1
/* 144E30 8024FFF0 08094004 */  j          .Lpause_80250010
/* 144E34 8024FFF4 24150004 */   addiu     $s5, $zero, 0x4
.Lpause_8024FFF8:
/* 144E38 8024FFF8 16A20003 */  bne        $s5, $v0, .Lpause_80250008
/* 144E3C 8024FFFC 00000000 */   nop
/* 144E40 80250000 08094004 */  j          .Lpause_80250010
/* 144E44 80250004 24150003 */   addiu     $s5, $zero, 0x3
.Lpause_80250008:
/* 144E48 80250008 52A00001 */  beql       $s5, $zero, .Lpause_80250010
/* 144E4C 8025000C 24150002 */   addiu     $s5, $zero, 0x2
.Lpause_80250010:
/* 144E50 80250010 0000902D */  daddu      $s2, $zero, $zero
/* 144E54 80250014 2417001D */  addiu      $s7, $zero, 0x1D
/* 144E58 80250018 24140016 */  addiu      $s4, $zero, 0x16
/* 144E5C 8025001C 2416001C */  addiu      $s6, $zero, 0x1C
/* 144E60 80250020 8FA80054 */  lw         $t0, 0x54($sp)
/* 144E64 80250024 24130002 */  addiu      $s3, $zero, 0x2
/* 144E68 80250028 25080015 */  addiu      $t0, $t0, 0x15
/* 144E6C 8025002C AFA80020 */  sw         $t0, 0x20($sp)
.Lpause_80250030:
/* 144E70 80250030 0255102A */  slt        $v0, $s2, $s5
/* 144E74 80250034 1040007A */  beqz       $v0, .Lpause_80250220
/* 144E78 80250038 03D43021 */   addu      $a2, $fp, $s4
/* 144E7C 8025003C 16400011 */  bnez       $s2, .Lpause_80250084
/* 144E80 80250040 00000000 */   nop
/* 144E84 80250044 3C028027 */  lui        $v0, %hi(gPausePartnersCurrentPartnerIdx)
/* 144E88 80250048 8C422A70 */  lw         $v0, %lo(gPausePartnersCurrentPartnerIdx)($v0)
/* 144E8C 8025004C 3C088027 */  lui        $t0, %hi(gPausePartnersPartnerIdx)
/* 144E90 80250050 25082A50 */  addiu      $t0, $t0, %lo(gPausePartnersPartnerIdx)
/* 144E94 80250054 00021080 */  sll        $v0, $v0, 2
/* 144E98 80250058 00481021 */  addu       $v0, $v0, $t0
/* 144E9C 8025005C 8C420000 */  lw         $v0, 0x0($v0)
/* 144EA0 80250060 3C088025 */  lui        $t0, %hi(gPausePartnersMoveBase)
/* 144EA4 80250064 25083C40 */  addiu      $t0, $t0, %lo(gPausePartnersMoveBase)
/* 144EA8 80250068 00021080 */  sll        $v0, $v0, 2
/* 144EAC 8025006C 00481021 */  addu       $v0, $v0, $t0
/* 144EB0 80250070 8C430000 */  lw         $v1, 0x0($v0)
/* 144EB4 80250074 3C088009 */  lui        $t0, %hi(gMoveTable)
/* 144EB8 80250078 2508B400 */  addiu      $t0, $t0, %lo(gMoveTable)
/* 144EBC 8025007C 08094031 */  j          .Lpause_802500C4
/* 144EC0 80250080 00031080 */   sll       $v0, $v1, 2
.Lpause_80250084:
/* 144EC4 80250084 3C028027 */  lui        $v0, %hi(gPausePartnersCurrentPartnerIdx)
/* 144EC8 80250088 8C422A70 */  lw         $v0, %lo(gPausePartnersCurrentPartnerIdx)($v0)
/* 144ECC 8025008C 3C088027 */  lui        $t0, %hi(gPausePartnersPartnerIdx)
/* 144ED0 80250090 25082A50 */  addiu      $t0, $t0, %lo(gPausePartnersPartnerIdx)
/* 144ED4 80250094 00021080 */  sll        $v0, $v0, 2
/* 144ED8 80250098 00481021 */  addu       $v0, $v0, $t0
/* 144EDC 8025009C 8C420000 */  lw         $v0, 0x0($v0)
/* 144EE0 802500A0 3C088025 */  lui        $t0, %hi(gPausePartnersMoveBase)
/* 144EE4 802500A4 25083C40 */  addiu      $t0, $t0, %lo(gPausePartnersMoveBase)
/* 144EE8 802500A8 00021080 */  sll        $v0, $v0, 2
/* 144EEC 802500AC 00481021 */  addu       $v0, $v0, $t0
/* 144EF0 802500B0 8C430000 */  lw         $v1, 0x0($v0)
/* 144EF4 802500B4 3C088009 */  lui        $t0, %hi(gMoveTable)
/* 144EF8 802500B8 2508B400 */  addiu      $t0, $t0, %lo(gMoveTable)
/* 144EFC 802500BC 00731821 */  addu       $v1, $v1, $s3
/* 144F00 802500C0 00031080 */  sll        $v0, $v1, 2
.Lpause_802500C4:
/* 144F04 802500C4 00431021 */  addu       $v0, $v0, $v1
/* 144F08 802500C8 00021080 */  sll        $v0, $v0, 2
/* 144F0C 802500CC 00481021 */  addu       $v0, $v0, $t0
/* 144F10 802500D0 8C440000 */  lw         $a0, 0x0($v0)
/* 144F14 802500D4 1A400016 */  blez       $s2, .Lpause_80250130
/* 144F18 802500D8 240700FF */   addiu     $a3, $zero, 0xFF
/* 144F1C 802500DC 3C028027 */  lui        $v0, %hi(gPausePartnersCurrentPartnerIdx)
/* 144F20 802500E0 8C422A70 */  lw         $v0, %lo(gPausePartnersCurrentPartnerIdx)($v0)
/* 144F24 802500E4 3C088027 */  lui        $t0, %hi(gPausePartnersPartnerIdx)
/* 144F28 802500E8 25082A50 */  addiu      $t0, $t0, %lo(gPausePartnersPartnerIdx)
/* 144F2C 802500EC 00021080 */  sll        $v0, $v0, 2
/* 144F30 802500F0 00481021 */  addu       $v0, $v0, $t0
/* 144F34 802500F4 8C420000 */  lw         $v0, 0x0($v0)
/* 144F38 802500F8 3C088025 */  lui        $t0, %hi(gPausePartnersMoveBase)
/* 144F3C 802500FC 25083C40 */  addiu      $t0, $t0, %lo(gPausePartnersMoveBase)
/* 144F40 80250100 00021080 */  sll        $v0, $v0, 2
/* 144F44 80250104 00481021 */  addu       $v0, $v0, $t0
/* 144F48 80250108 8C430000 */  lw         $v1, 0x0($v0)
/* 144F4C 8025010C 3C088009 */  lui        $t0, %hi(gMoveTable)
/* 144F50 80250110 2508B400 */  addiu      $t0, $t0, %lo(gMoveTable)
/* 144F54 80250114 00731821 */  addu       $v1, $v1, $s3
/* 144F58 80250118 00031080 */  sll        $v0, $v1, 2
/* 144F5C 8025011C 00431021 */  addu       $v0, $v0, $v1
/* 144F60 80250120 00021080 */  sll        $v0, $v0, 2
/* 144F64 80250124 00481021 */  addu       $v0, $v0, $t0
/* 144F68 80250128 0809404D */  j          .Lpause_80250134
/* 144F6C 8025012C 80510011 */   lb        $s1, 0x11($v0)
.Lpause_80250130:
/* 144F70 80250130 0000882D */  daddu      $s1, $zero, $zero
.Lpause_80250134:
/* 144F74 80250134 8FA50020 */  lw         $a1, 0x20($sp)
/* 144F78 80250138 2408000A */  addiu      $t0, $zero, 0xA
/* 144F7C 8025013C AFA80010 */  sw         $t0, 0x10($sp)
/* 144F80 80250140 24080001 */  addiu      $t0, $zero, 0x1
/* 144F84 80250144 0C049403 */  jal        draw_msg
/* 144F88 80250148 AFA80014 */   sw        $t0, 0x14($sp)
/* 144F8C 8025014C 26500004 */  addiu      $s0, $s2, 0x4
/* 144F90 80250150 00108080 */  sll        $s0, $s0, 2
/* 144F94 80250154 3C088027 */  lui        $t0, %hi(gPausePartnersIconIDs)
/* 144F98 80250158 25082A10 */  addiu      $t0, $t0, %lo(gPausePartnersIconIDs)
/* 144F9C 8025015C 02088021 */  addu       $s0, $s0, $t0
/* 144FA0 80250160 8E040000 */  lw         $a0, 0x0($s0)
/* 144FA4 80250164 0C050DF4 */  jal        hud_element_set_scale
/* 144FA8 80250168 3C053F00 */   lui       $a1, (0x3F000000 >> 16)
/* 144FAC 8025016C 03D63021 */  addu       $a2, $fp, $s6
/* 144FB0 80250170 8FA80054 */  lw         $t0, 0x54($sp)
/* 144FB4 80250174 8E040000 */  lw         $a0, 0x0($s0)
/* 144FB8 80250178 0C050D4D */  jal        hud_element_set_render_pos
/* 144FBC 8025017C 2505000C */   addiu     $a1, $t0, 0xC
/* 144FC0 80250180 8E040000 */  lw         $a0, 0x0($s0)
/* 144FC4 80250184 0C050CE4 */  jal        hud_element_draw_without_clipping
/* 144FC8 80250188 00000000 */   nop
/* 144FCC 8025018C 12200024 */  beqz       $s1, .Lpause_80250220
/* 144FD0 80250190 0220202D */   daddu     $a0, $s1, $zero
/* 144FD4 80250194 03D43021 */  addu       $a2, $fp, $s4
/* 144FD8 80250198 3C088027 */  lui        $t0, %hi(D_PAL_80271B44)
/* 144FDC 8025019C 25081B44 */  addiu      $t0, $t0, %lo(D_PAL_80271B44)
/* 144FE0 802501A0 3C028015 */  lui        $v0, %hi(gCurrentLanguage)
/* 144FE4 802501A4 8C42AE4C */  lw         $v0, %lo(gCurrentLanguage)($v0)
/* 144FE8 802501A8 24070001 */  addiu      $a3, $zero, 0x1
/* 144FEC 802501AC 00481021 */  addu       $v0, $v0, $t0
/* 144FF0 802501B0 90450000 */  lbu        $a1, 0x0($v0)
/* 144FF4 802501B4 2408000A */  addiu      $t0, $zero, 0xA
/* 144FF8 802501B8 AFA80010 */  sw         $t0, 0x10($sp)
/* 144FFC 802501BC 8FA80054 */  lw         $t0, 0x54($sp)
/* 145000 802501C0 240200FF */  addiu      $v0, $zero, 0xFF
/* 145004 802501C4 AFA20014 */  sw         $v0, 0x14($sp)
/* 145008 802501C8 24020003 */  addiu      $v0, $zero, 0x3
/* 14500C 802501CC AFA20018 */  sw         $v0, 0x18($sp)
/* 145010 802501D0 0C04986F */  jal        draw_number
/* 145014 802501D4 01052821 */   addu      $a1, $t0, $a1
/* 145018 802501D8 1A200011 */  blez       $s1, .Lpause_80250220
/* 14501C 802501DC 03D73021 */   addu      $a2, $fp, $s7
/* 145020 802501E0 3C028015 */  lui        $v0, %hi(gCurrentLanguage)
/* 145024 802501E4 8C42AE4C */  lw         $v0, %lo(gCurrentLanguage)($v0)
/* 145028 802501E8 3C088027 */  lui        $t0, %hi(D_PAL_80271B44)
/* 14502C 802501EC 25081B44 */  addiu      $t0, $t0, %lo(D_PAL_80271B44)
/* 145030 802501F0 00481021 */  addu       $v0, $v0, $t0
/* 145034 802501F4 90450000 */  lbu        $a1, 0x0($v0)
/* 145038 802501F8 8FA80054 */  lw         $t0, 0x54($sp)
/* 14503C 802501FC 3C048027 */  lui        $a0, %hi(gPausePartnersIconIDs)
/* 145040 80250200 8C842A10 */  lw         $a0, %lo(gPausePartnersIconIDs)($a0)
/* 145044 80250204 01052821 */  addu       $a1, $t0, $a1
/* 145048 80250208 0C050D4D */  jal        hud_element_set_render_pos
/* 14504C 8025020C 24A50009 */   addiu     $a1, $a1, 0x9
/* 145050 80250210 3C048027 */  lui        $a0, %hi(gPausePartnersIconIDs)
/* 145054 80250214 8C842A10 */  lw         $a0, %lo(gPausePartnersIconIDs)($a0)
/* 145058 80250218 0C050CE4 */  jal        hud_element_draw_without_clipping
/* 14505C 8025021C 00000000 */   nop
.Lpause_80250220:
/* 145060 80250220 26F7000D */  addiu      $s7, $s7, 0xD
/* 145064 80250224 2694000D */  addiu      $s4, $s4, 0xD
/* 145068 80250228 26D6000D */  addiu      $s6, $s6, 0xD
/* 14506C 8025022C 26520001 */  addiu      $s2, $s2, 0x1
/* 145070 80250230 2A420004 */  slti       $v0, $s2, 0x4
/* 145074 80250234 1440FF7E */  bnez       $v0, .Lpause_80250030
/* 145078 80250238 26730001 */   addiu     $s3, $s3, 0x1
/* 14507C 8025023C 3C038027 */  lui        $v1, %hi(gPauseMenuCurrentTab)
/* 145080 80250240 806324A4 */  lb         $v1, %lo(gPauseMenuCurrentTab)($v1)
/* 145084 80250244 24020004 */  addiu      $v0, $zero, 0x4
/* 145088 80250248 14620010 */  bne        $v1, $v0, .Lpause_8025028C
/* 14508C 8025024C 24020001 */   addiu     $v0, $zero, 0x1
/* 145090 80250250 3C038027 */  lui        $v1, %hi(gPausePartnersLevel)
/* 145094 80250254 8C632A7C */  lw         $v1, %lo(gPausePartnersLevel)($v1)
/* 145098 80250258 1462000C */  bne        $v1, $v0, .Lpause_8025028C
/* 14509C 8025025C 24040024 */   addiu     $a0, $zero, 0x24
/* 1450A0 80250260 8FA80054 */  lw         $t0, 0x54($sp)
/* 1450A4 80250264 3C028027 */  lui        $v0, %hi(gPausePartnersSelectedMove)
/* 1450A8 80250268 8C422A74 */  lw         $v0, %lo(gPausePartnersSelectedMove)($v0)
/* 1450AC 8025026C 2505FFFE */  addiu      $a1, $t0, -0x2
/* 1450B0 80250270 00023040 */  sll        $a2, $v0, 1
/* 1450B4 80250274 00C23021 */  addu       $a2, $a2, $v0
/* 1450B8 80250278 00063080 */  sll        $a2, $a2, 2
/* 1450BC 8025027C 00C23021 */  addu       $a2, $a2, $v0
/* 1450C0 80250280 24C6001C */  addiu      $a2, $a2, 0x1C
/* 1450C4 80250284 0C091B05 */  jal        pause_set_cursor_pos
/* 1450C8 80250288 03C63021 */   addu      $a2, $fp, $a2
.Lpause_8025028C:
/* 1450CC 8025028C 8FBF004C */  lw         $ra, 0x4C($sp)
/* 1450D0 80250290 8FBE0048 */  lw         $fp, 0x48($sp)
/* 1450D4 80250294 8FB70044 */  lw         $s7, 0x44($sp)
/* 1450D8 80250298 8FB60040 */  lw         $s6, 0x40($sp)
/* 1450DC 8025029C 8FB5003C */  lw         $s5, 0x3C($sp)
/* 1450E0 802502A0 8FB40038 */  lw         $s4, 0x38($sp)
/* 1450E4 802502A4 8FB30034 */  lw         $s3, 0x34($sp)
/* 1450E8 802502A8 8FB20030 */  lw         $s2, 0x30($sp)
/* 1450EC 802502AC 8FB1002C */  lw         $s1, 0x2C($sp)
/* 1450F0 802502B0 8FB00028 */  lw         $s0, 0x28($sp)
/* 1450F4 802502B4 03E00008 */  jr         $ra
/* 1450F8 802502B8 27BD0050 */   addiu     $sp, $sp, 0x50