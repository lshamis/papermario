.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_80037BC8
/* 12FC8 80037BC8 3C048007 */  lui       $a0, %hi(D_80077A2C)
/* 12FCC 80037BCC 24847A2C */  addiu     $a0, $a0, %lo(D_80077A2C)
/* 12FD0 80037BD0 8C830000 */  lw        $v1, ($a0)
/* 12FD4 80037BD4 10600005 */  beqz      $v1, .L80037BEC
/* 12FD8 80037BD8 24020001 */   addiu    $v0, $zero, 1
/* 12FDC 80037BDC 10620016 */  beq       $v1, $v0, .L80037C38
/* 12FE0 80037BE0 3C07FC11 */   lui      $a3, 0xfc11
/* 12FE4 80037BE4 0800DF22 */  j         .L80037C88
/* 12FE8 80037BE8 34E79623 */   ori      $a3, $a3, 0x9623
.L80037BEC:
/* 12FEC 80037BEC 3C038007 */  lui       $v1, %hi(D_80077A28)
/* 12FF0 80037BF0 24637A28 */  addiu     $v1, $v1, %lo(D_80077A28)
/* 12FF4 80037BF4 8C620000 */  lw        $v0, ($v1)
/* 12FF8 80037BF8 2442FF80 */  addiu     $v0, $v0, -0x80
/* 12FFC 80037BFC 04410002 */  bgez      $v0, .L80037C08
/* 13000 80037C00 AC620000 */   sw       $v0, ($v1)
/* 13004 80037C04 AC600000 */  sw        $zero, ($v1)
.L80037C08:
/* 13008 80037C08 3C038007 */  lui       $v1, %hi(D_80077A30)
/* 1300C 80037C0C 24637A30 */  addiu     $v1, $v1, %lo(D_80077A30)
/* 13010 80037C10 8C620000 */  lw        $v0, ($v1)
/* 13014 80037C14 24420001 */  addiu     $v0, $v0, 1
/* 13018 80037C18 AC620000 */  sw        $v0, ($v1)
/* 1301C 80037C1C 28420010 */  slti      $v0, $v0, 0x10
/* 13020 80037C20 14400018 */  bnez      $v0, .L80037C84
/* 13024 80037C24 3C07FC11 */   lui      $a3, 0xfc11
/* 13028 80037C28 24020001 */  addiu     $v0, $zero, 1
/* 1302C 80037C2C AC600000 */  sw        $zero, ($v1)
/* 13030 80037C30 0800DF21 */  j         .L80037C84
/* 13034 80037C34 AC820000 */   sw       $v0, ($a0)
.L80037C38:
/* 13038 80037C38 3C038007 */  lui       $v1, %hi(D_80077A28)
/* 1303C 80037C3C 24637A28 */  addiu     $v1, $v1, %lo(D_80077A28)
/* 13040 80037C40 8C620000 */  lw        $v0, ($v1)
/* 13044 80037C44 24420080 */  addiu     $v0, $v0, 0x80
/* 13048 80037C48 AC620000 */  sw        $v0, ($v1)
/* 1304C 80037C4C 28420100 */  slti      $v0, $v0, 0x100
/* 13050 80037C50 14400002 */  bnez      $v0, .L80037C5C
/* 13054 80037C54 240200FF */   addiu    $v0, $zero, 0xff
/* 13058 80037C58 AC620000 */  sw        $v0, ($v1)
.L80037C5C:
/* 1305C 80037C5C 3C038007 */  lui       $v1, %hi(D_80077A30)
/* 13060 80037C60 24637A30 */  addiu     $v1, $v1, %lo(D_80077A30)
/* 13064 80037C64 8C620000 */  lw        $v0, ($v1)
/* 13068 80037C68 24420001 */  addiu     $v0, $v0, 1
/* 1306C 80037C6C AC620000 */  sw        $v0, ($v1)
/* 13070 80037C70 28420010 */  slti      $v0, $v0, 0x10
/* 13074 80037C74 14400003 */  bnez      $v0, .L80037C84
/* 13078 80037C78 3C07FC11 */   lui      $a3, 0xfc11
/* 1307C 80037C7C AC600000 */  sw        $zero, ($v1)
/* 13080 80037C80 AC800000 */  sw        $zero, ($a0)
.L80037C84:
/* 13084 80037C84 34E79623 */  ori       $a3, $a3, 0x9623
.L80037C88:
/* 13088 80037C88 3C06FF2F */  lui       $a2, 0xff2f
/* 1308C 80037C8C 34C6FFFF */  ori       $a2, $a2, 0xffff
/* 13090 80037C90 3C08F8F0 */  lui       $t0, 0xf8f0
/* 13094 80037C94 35089800 */  ori       $t0, $t0, 0x9800
/* 13098 80037C98 3C09077F */  lui       $t1, 0x77f
/* 1309C 80037C9C 3529F080 */  ori       $t1, $t1, 0xf080
/* 130A0 80037CA0 3C0AF568 */  lui       $t2, 0xf568
/* 130A4 80037CA4 354A2000 */  ori       $t2, $t2, 0x2000
/* 130A8 80037CA8 3C0B001F */  lui       $t3, 0x1f
/* 130AC 80037CAC 356BC07C */  ori       $t3, $t3, 0xc07c
/* 130B0 80037CB0 3C0DE438 */  lui       $t5, 0xe438
/* 130B4 80037CB4 35AD02A4 */  ori       $t5, $t5, 0x2a4
/* 130B8 80037CB8 3C0C0018 */  lui       $t4, 0x18
/* 130BC 80037CBC 358C0224 */  ori       $t4, $t4, 0x224
/* 130C0 80037CC0 3C0E0400 */  lui       $t6, 0x400
/* 130C4 80037CC4 3C05800A */  lui       $a1, %hi(D_8009A66C)
/* 130C8 80037CC8 24A5A66C */  addiu     $a1, $a1, %lo(D_8009A66C)
/* 130CC 80037CCC 35CE0400 */  ori       $t6, $t6, 0x400
/* 130D0 80037CD0 8CA20000 */  lw        $v0, ($a1)
/* 130D4 80037CD4 3C03DE00 */  lui       $v1, 0xde00
/* 130D8 80037CD8 0040202D */  daddu     $a0, $v0, $zero
/* 130DC 80037CDC 24420008 */  addiu     $v0, $v0, 8
/* 130E0 80037CE0 ACA20000 */  sw        $v0, ($a1)
/* 130E4 80037CE4 AC830000 */  sw        $v1, ($a0)
/* 130E8 80037CE8 3C038007 */  lui       $v1, %hi(D_80077A50)
/* 130EC 80037CEC 24637A50 */  addiu     $v1, $v1, %lo(D_80077A50)
/* 130F0 80037CF0 AC830004 */  sw        $v1, 4($a0)
/* 130F4 80037CF4 24430008 */  addiu     $v1, $v0, 8
/* 130F8 80037CF8 ACA30000 */  sw        $v1, ($a1)
/* 130FC 80037CFC 24430010 */  addiu     $v1, $v0, 0x10
/* 13100 80037D00 3C04FA00 */  lui       $a0, 0xfa00
/* 13104 80037D04 AC470000 */  sw        $a3, ($v0)
/* 13108 80037D08 AC460004 */  sw        $a2, 4($v0)
/* 1310C 80037D0C ACA30000 */  sw        $v1, ($a1)
/* 13110 80037D10 3C038007 */  lui       $v1, %hi(D_80077A2B)
/* 13114 80037D14 90637A2B */  lbu       $v1, %lo(D_80077A2B)($v1)
/* 13118 80037D18 3C06E700 */  lui       $a2, 0xe700
/* 1311C 80037D1C AC440008 */  sw        $a0, 8($v0)
/* 13120 80037D20 00681825 */  or        $v1, $v1, $t0
/* 13124 80037D24 AC43000C */  sw        $v1, 0xc($v0)
/* 13128 80037D28 24430018 */  addiu     $v1, $v0, 0x18
/* 1312C 80037D2C ACA30000 */  sw        $v1, ($a1)
/* 13130 80037D30 24430020 */  addiu     $v1, $v0, 0x20
/* 13134 80037D34 AC460010 */  sw        $a2, 0x10($v0)
/* 13138 80037D38 AC400014 */  sw        $zero, 0x14($v0)
/* 1313C 80037D3C ACA30000 */  sw        $v1, ($a1)
/* 13140 80037D40 3C04800A */  lui       $a0, %hi(D_800A0980)
/* 13144 80037D44 8C840980 */  lw        $a0, %lo(D_800A0980)($a0)
/* 13148 80037D48 3C03FD70 */  lui       $v1, 0xfd70
/* 1314C 80037D4C AC430018 */  sw        $v1, 0x18($v0)
/* 13150 80037D50 24430028 */  addiu     $v1, $v0, 0x28
/* 13154 80037D54 AC44001C */  sw        $a0, 0x1c($v0)
/* 13158 80037D58 ACA30000 */  sw        $v1, ($a1)
/* 1315C 80037D5C 3C03F570 */  lui       $v1, 0xf570
/* 13160 80037D60 AC430020 */  sw        $v1, 0x20($v0)
/* 13164 80037D64 3C030700 */  lui       $v1, 0x700
/* 13168 80037D68 AC430024 */  sw        $v1, 0x24($v0)
/* 1316C 80037D6C 24430030 */  addiu     $v1, $v0, 0x30
/* 13170 80037D70 ACA30000 */  sw        $v1, ($a1)
/* 13174 80037D74 3C03E600 */  lui       $v1, 0xe600
/* 13178 80037D78 AC430028 */  sw        $v1, 0x28($v0)
/* 1317C 80037D7C 24430038 */  addiu     $v1, $v0, 0x38
/* 13180 80037D80 AC40002C */  sw        $zero, 0x2c($v0)
/* 13184 80037D84 ACA30000 */  sw        $v1, ($a1)
/* 13188 80037D88 3C03F300 */  lui       $v1, 0xf300
/* 1318C 80037D8C AC430030 */  sw        $v1, 0x30($v0)
/* 13190 80037D90 24430040 */  addiu     $v1, $v0, 0x40
/* 13194 80037D94 AC490034 */  sw        $t1, 0x34($v0)
/* 13198 80037D98 ACA30000 */  sw        $v1, ($a1)
/* 1319C 80037D9C 24430048 */  addiu     $v1, $v0, 0x48
/* 131A0 80037DA0 AC460038 */  sw        $a2, 0x38($v0)
/* 131A4 80037DA4 AC40003C */  sw        $zero, 0x3c($v0)
/* 131A8 80037DA8 ACA30000 */  sw        $v1, ($a1)
/* 131AC 80037DAC 24430050 */  addiu     $v1, $v0, 0x50
/* 131B0 80037DB0 AC4A0040 */  sw        $t2, 0x40($v0)
/* 131B4 80037DB4 AC400044 */  sw        $zero, 0x44($v0)
/* 131B8 80037DB8 ACA30000 */  sw        $v1, ($a1)
/* 131BC 80037DBC 3C03F200 */  lui       $v1, 0xf200
/* 131C0 80037DC0 AC430048 */  sw        $v1, 0x48($v0)
/* 131C4 80037DC4 24430058 */  addiu     $v1, $v0, 0x58
/* 131C8 80037DC8 AC4B004C */  sw        $t3, 0x4c($v0)
/* 131CC 80037DCC ACA30000 */  sw        $v1, ($a1)
/* 131D0 80037DD0 24430060 */  addiu     $v1, $v0, 0x60
/* 131D4 80037DD4 AC4D0050 */  sw        $t5, 0x50($v0)
/* 131D8 80037DD8 AC4C0054 */  sw        $t4, 0x54($v0)
/* 131DC 80037DDC ACA30000 */  sw        $v1, ($a1)
/* 131E0 80037DE0 3C03E100 */  lui       $v1, 0xe100
/* 131E4 80037DE4 AC430058 */  sw        $v1, 0x58($v0)
/* 131E8 80037DE8 24430068 */  addiu     $v1, $v0, 0x68
/* 131EC 80037DEC AC40005C */  sw        $zero, 0x5c($v0)
/* 131F0 80037DF0 ACA30000 */  sw        $v1, ($a1)
/* 131F4 80037DF4 3C03F100 */  lui       $v1, 0xf100
/* 131F8 80037DF8 AC430060 */  sw        $v1, 0x60($v0)
/* 131FC 80037DFC 24430070 */  addiu     $v1, $v0, 0x70
/* 13200 80037E00 AC4E0064 */  sw        $t6, 0x64($v0)
/* 13204 80037E04 ACA30000 */  sw        $v1, ($a1)
/* 13208 80037E08 AC460068 */  sw        $a2, 0x68($v0)
/* 1320C 80037E0C 03E00008 */  jr        $ra
/* 13210 80037E10 AC40006C */   sw       $zero, 0x6c($v0)
