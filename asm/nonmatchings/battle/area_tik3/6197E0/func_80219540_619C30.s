.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80219540_619C30
/* 619C30 80219540 27BDFFE8 */  addiu     $sp, $sp, -0x18
/* 619C34 80219544 AFB00010 */  sw        $s0, 0x10($sp)
/* 619C38 80219548 0080802D */  daddu     $s0, $a0, $zero
/* 619C3C 8021954C AFBF0014 */  sw        $ra, 0x14($sp)
/* 619C40 80219550 8E0300A8 */  lw        $v1, 0xa8($s0)
/* 619C44 80219554 8E020088 */  lw        $v0, 0x88($s0)
/* 619C48 80219558 00621821 */  addu      $v1, $v1, $v0
/* 619C4C 8021955C 04610004 */  bgez      $v1, .L80219570
/* 619C50 80219560 AE0300A8 */   sw       $v1, 0xa8($s0)
/* 619C54 80219564 3C020002 */  lui       $v0, 2
/* 619C58 80219568 08086560 */  j         .L80219580
/* 619C5C 8021956C 00621021 */   addu     $v0, $v1, $v0
.L80219570:
/* 619C60 80219570 3C040002 */  lui       $a0, 2
/* 619C64 80219574 0083102A */  slt       $v0, $a0, $v1
/* 619C68 80219578 10400002 */  beqz      $v0, .L80219584
/* 619C6C 8021957C 00641023 */   subu     $v0, $v1, $a0
.L80219580:
/* 619C70 80219580 AE0200A8 */  sw        $v0, 0xa8($s0)
.L80219584:
/* 619C74 80219584 8E0300AC */  lw        $v1, 0xac($s0)
/* 619C78 80219588 8E02008C */  lw        $v0, 0x8c($s0)
/* 619C7C 8021958C 00621821 */  addu      $v1, $v1, $v0
/* 619C80 80219590 04610004 */  bgez      $v1, .L802195A4
/* 619C84 80219594 AE0300AC */   sw       $v1, 0xac($s0)
/* 619C88 80219598 3C020002 */  lui       $v0, 2
/* 619C8C 8021959C 0808656D */  j         .L802195B4
/* 619C90 802195A0 00621021 */   addu     $v0, $v1, $v0
.L802195A4:
/* 619C94 802195A4 3C040002 */  lui       $a0, 2
/* 619C98 802195A8 0083102A */  slt       $v0, $a0, $v1
/* 619C9C 802195AC 10400002 */  beqz      $v0, .L802195B8
/* 619CA0 802195B0 00641023 */   subu     $v0, $v1, $a0
.L802195B4:
/* 619CA4 802195B4 AE0200AC */  sw        $v0, 0xac($s0)
.L802195B8:
/* 619CA8 802195B8 8E0300B0 */  lw        $v1, 0xb0($s0)
/* 619CAC 802195BC 8E020090 */  lw        $v0, 0x90($s0)
/* 619CB0 802195C0 00621821 */  addu      $v1, $v1, $v0
/* 619CB4 802195C4 04610004 */  bgez      $v1, .L802195D8
/* 619CB8 802195C8 AE0300B0 */   sw       $v1, 0xb0($s0)
/* 619CBC 802195CC 3C020002 */  lui       $v0, 2
/* 619CC0 802195D0 0808657A */  j         .L802195E8
/* 619CC4 802195D4 00621021 */   addu     $v0, $v1, $v0
.L802195D8:
/* 619CC8 802195D8 3C040002 */  lui       $a0, 2
/* 619CCC 802195DC 0083102A */  slt       $v0, $a0, $v1
/* 619CD0 802195E0 10400002 */  beqz      $v0, .L802195EC
/* 619CD4 802195E4 00641023 */   subu     $v0, $v1, $a0
.L802195E8:
/* 619CD8 802195E8 AE0200B0 */  sw        $v0, 0xb0($s0)
.L802195EC:
/* 619CDC 802195EC 8E0300B4 */  lw        $v1, 0xb4($s0)
/* 619CE0 802195F0 8E020094 */  lw        $v0, 0x94($s0)
/* 619CE4 802195F4 00621821 */  addu      $v1, $v1, $v0
/* 619CE8 802195F8 04610004 */  bgez      $v1, .L8021960C
/* 619CEC 802195FC AE0300B4 */   sw       $v1, 0xb4($s0)
/* 619CF0 80219600 3C020002 */  lui       $v0, 2
/* 619CF4 80219604 08086587 */  j         .L8021961C
/* 619CF8 80219608 00621021 */   addu     $v0, $v1, $v0
.L8021960C:
/* 619CFC 8021960C 3C040002 */  lui       $a0, 2
/* 619D00 80219610 0083102A */  slt       $v0, $a0, $v1
/* 619D04 80219614 10400002 */  beqz      $v0, .L80219620
/* 619D08 80219618 00641023 */   subu     $v0, $v1, $a0
.L8021961C:
/* 619D0C 8021961C AE0200B4 */  sw        $v0, 0xb4($s0)
.L80219620:
/* 619D10 80219620 8E040084 */  lw        $a0, 0x84($s0)
/* 619D14 80219624 0C046F07 */  jal       set_main_pan_u
/* 619D18 80219628 8E0500A8 */   lw       $a1, 0xa8($s0)
/* 619D1C 8021962C 8E040084 */  lw        $a0, 0x84($s0)
/* 619D20 80219630 0C046F0D */  jal       set_main_pan_v
/* 619D24 80219634 8E0500AC */   lw       $a1, 0xac($s0)
/* 619D28 80219638 8E040084 */  lw        $a0, 0x84($s0)
/* 619D2C 8021963C 0C046F13 */  jal       set_aux_pan_u
/* 619D30 80219640 8E0500B0 */   lw       $a1, 0xb0($s0)
/* 619D34 80219644 8E040084 */  lw        $a0, 0x84($s0)
/* 619D38 80219648 0C046F19 */  jal       set_aux_pan_v
/* 619D3C 8021964C 8E0500B4 */   lw       $a1, 0xb4($s0)
/* 619D40 80219650 8FBF0014 */  lw        $ra, 0x14($sp)
/* 619D44 80219654 8FB00010 */  lw        $s0, 0x10($sp)
/* 619D48 80219658 0000102D */  daddu     $v0, $zero, $zero
/* 619D4C 8021965C 03E00008 */  jr        $ra
/* 619D50 80219660 27BD0018 */   addiu    $sp, $sp, 0x18
