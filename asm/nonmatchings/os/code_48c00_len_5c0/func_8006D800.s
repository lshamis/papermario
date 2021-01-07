.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches

glabel func_8006D800
/* 48C00 8006D800 04810008 */  bgez      $a0, .L8006D824
/* 48C04 8006D804 0000C02D */   daddu    $t8, $zero, $zero
/* 48C08 8006D808 2418FFFF */  addiu     $t8, $zero, -1
/* 48C0C 8006D80C 00054823 */  negu      $t1, $a1
/* 48C10 8006D810 00041823 */  negu      $v1, $a0
/* 48C14 8006D814 0009102B */  sltu      $v0, $zero, $t1
/* 48C18 8006D818 00624023 */  subu      $t0, $v1, $v0
/* 48C1C 8006D81C 0100202D */  daddu     $a0, $t0, $zero
/* 48C20 8006D820 0120282D */  daddu     $a1, $t1, $zero
.L8006D824:
/* 48C24 8006D824 04C10009 */  bgez      $a2, .L8006D84C
/* 48C28 8006D828 00E0482D */   daddu    $t1, $a3, $zero
/* 48C2C 8006D82C 0018C027 */  nor       $t8, $zero, $t8
/* 48C30 8006D830 00075823 */  negu      $t3, $a3
/* 48C34 8006D834 00061823 */  negu      $v1, $a2
/* 48C38 8006D838 000B102B */  sltu      $v0, $zero, $t3
/* 48C3C 8006D83C 00625023 */  subu      $t2, $v1, $v0
/* 48C40 8006D840 0140302D */  daddu     $a2, $t2, $zero
/* 48C44 8006D844 0160382D */  daddu     $a3, $t3, $zero
/* 48C48 8006D848 00E0482D */  daddu     $t1, $a3, $zero
.L8006D84C:
/* 48C4C 8006D84C 00C0402D */  daddu     $t0, $a2, $zero
/* 48C50 8006D850 150000DF */  bnez      $t0, .L8006DBD0
/* 48C54 8006D854 00A0582D */   daddu    $t3, $a1, $zero
/* 48C58 8006D858 0089102B */  sltu      $v0, $a0, $t1
/* 48C5C 8006D85C 1040004E */  beqz      $v0, .L8006D998
/* 48C60 8006D860 3402FFFF */   ori      $v0, $zero, 0xffff
/* 48C64 8006D864 0049102B */  sltu      $v0, $v0, $t1
/* 48C68 8006D868 14400005 */  bnez      $v0, .L8006D880
/* 48C6C 8006D86C 00E0182D */   daddu    $v1, $a3, $zero
/* 48C70 8006D870 2D220100 */  sltiu     $v0, $t1, 0x100
/* 48C74 8006D874 38420001 */  xori      $v0, $v0, 1
/* 48C78 8006D878 0801B626 */  j         .L8006D898
/* 48C7C 8006D87C 000240C0 */   sll      $t0, $v0, 3
.L8006D880:
/* 48C80 8006D880 3C0200FF */  lui       $v0, 0xff
/* 48C84 8006D884 3442FFFF */  ori       $v0, $v0, 0xffff
/* 48C88 8006D888 0049102B */  sltu      $v0, $v0, $t1
/* 48C8C 8006D88C 14400002 */  bnez      $v0, .L8006D898
/* 48C90 8006D890 24080018 */   addiu    $t0, $zero, 0x18
/* 48C94 8006D894 24080010 */  addiu     $t0, $zero, 0x10
.L8006D898:
/* 48C98 8006D898 01031006 */  srlv      $v0, $v1, $t0
/* 48C9C 8006D89C 3C01800A */  lui       $at, %hi(D_80099E40)
/* 48CA0 8006D8A0 00220821 */  addu      $at, $at, $v0
/* 48CA4 8006D8A4 90229E40 */  lbu       $v0, %lo(D_80099E40)($at)
/* 48CA8 8006D8A8 24050020 */  addiu     $a1, $zero, 0x20
/* 48CAC 8006D8AC 00481021 */  addu      $v0, $v0, $t0
/* 48CB0 8006D8B0 00A23023 */  subu      $a2, $a1, $v0
/* 48CB4 8006D8B4 10C00006 */  beqz      $a2, .L8006D8D0
/* 48CB8 8006D8B8 00C41804 */   sllv     $v1, $a0, $a2
/* 48CBC 8006D8BC 00C94804 */  sllv      $t1, $t1, $a2
/* 48CC0 8006D8C0 00A61023 */  subu      $v0, $a1, $a2
/* 48CC4 8006D8C4 004B1006 */  srlv      $v0, $t3, $v0
/* 48CC8 8006D8C8 00622025 */  or        $a0, $v1, $v0
/* 48CCC 8006D8CC 00CB5804 */  sllv      $t3, $t3, $a2
.L8006D8D0:
/* 48CD0 8006D8D0 00093402 */  srl       $a2, $t1, 0x10
/* 48CD4 8006D8D4 14C00002 */  bnez      $a2, .L8006D8E0
/* 48CD8 8006D8D8 0086001B */   divu     $zero, $a0, $a2
/* 48CDC 8006D8DC 0007000D */  break     7
.L8006D8E0:
/* 48CE0 8006D8E0 00003812 */   mflo     $a3
/* 48CE4 8006D8E4 00001810 */  mfhi      $v1
/* 48CE8 8006D8E8 3128FFFF */  andi      $t0, $t1, 0xffff
/* 48CEC 8006D8EC 00000000 */  nop       
/* 48CF0 8006D8F0 00E80018 */  mult      $a3, $t0
/* 48CF4 8006D8F4 000B1402 */  srl       $v0, $t3, 0x10
/* 48CF8 8006D8F8 00031C00 */  sll       $v1, $v1, 0x10
/* 48CFC 8006D8FC 00621825 */  or        $v1, $v1, $v0
/* 48D00 8006D900 00002812 */  mflo      $a1
/* 48D04 8006D904 0065102B */  sltu      $v0, $v1, $a1
/* 48D08 8006D908 5040000B */  beql      $v0, $zero, .L8006D938
/* 48D0C 8006D90C 00651823 */   subu     $v1, $v1, $a1
/* 48D10 8006D910 00691821 */  addu      $v1, $v1, $t1
/* 48D14 8006D914 0069102B */  sltu      $v0, $v1, $t1
/* 48D18 8006D918 14400006 */  bnez      $v0, .L8006D934
/* 48D1C 8006D91C 24E7FFFF */   addiu    $a3, $a3, -1
/* 48D20 8006D920 0065102B */  sltu      $v0, $v1, $a1
/* 48D24 8006D924 50400004 */  beql      $v0, $zero, .L8006D938
/* 48D28 8006D928 00651823 */   subu     $v1, $v1, $a1
/* 48D2C 8006D92C 24E7FFFF */  addiu     $a3, $a3, -1
/* 48D30 8006D930 00691821 */  addu      $v1, $v1, $t1
.L8006D934:
/* 48D34 8006D934 00651823 */  subu      $v1, $v1, $a1
.L8006D938:
/* 48D38 8006D938 14C00002 */  bnez      $a2, .L8006D944
/* 48D3C 8006D93C 0066001B */   divu     $zero, $v1, $a2
/* 48D40 8006D940 0007000D */  break     7
.L8006D944:
/* 48D44 8006D944 00002012 */   mflo     $a0
/* 48D48 8006D948 00001810 */  mfhi      $v1
/* 48D4C 8006D94C 00000000 */  nop       
/* 48D50 8006D950 00000000 */  nop       
/* 48D54 8006D954 00880018 */  mult      $a0, $t0
/* 48D58 8006D958 3162FFFF */  andi      $v0, $t3, 0xffff
/* 48D5C 8006D95C 00031C00 */  sll       $v1, $v1, 0x10
/* 48D60 8006D960 00621825 */  or        $v1, $v1, $v0
/* 48D64 8006D964 00002812 */  mflo      $a1
/* 48D68 8006D968 0065102B */  sltu      $v0, $v1, $a1
/* 48D6C 8006D96C 10400007 */  beqz      $v0, .L8006D98C
/* 48D70 8006D970 00691821 */   addu     $v1, $v1, $t1
/* 48D74 8006D974 0069102B */  sltu      $v0, $v1, $t1
/* 48D78 8006D978 14400004 */  bnez      $v0, .L8006D98C
/* 48D7C 8006D97C 2484FFFF */   addiu    $a0, $a0, -1
/* 48D80 8006D980 0065102B */  sltu      $v0, $v1, $a1
/* 48D84 8006D984 54400001 */  bnel      $v0, $zero, .L8006D98C
/* 48D88 8006D988 2484FFFF */   addiu    $a0, $a0, -1
.L8006D98C:
/* 48D8C 8006D98C 00071400 */  sll       $v0, $a3, 0x10
/* 48D90 8006D990 0801B761 */  j         .L8006DD84
/* 48D94 8006D994 00443025 */   or       $a2, $v0, $a0
.L8006D998:
/* 48D98 8006D998 15200008 */  bnez      $t1, .L8006D9BC
/* 48D9C 8006D99C 0049102B */   sltu     $v0, $v0, $t1
/* 48DA0 8006D9A0 24020001 */  addiu     $v0, $zero, 1
/* 48DA4 8006D9A4 15000002 */  bnez      $t0, .L8006D9B0
/* 48DA8 8006D9A8 0048001B */   divu     $zero, $v0, $t0
/* 48DAC 8006D9AC 0007000D */  break     7
.L8006D9B0:
/* 48DB0 8006D9B0 00004812 */   mflo     $t1
/* 48DB4 8006D9B4 3402FFFF */  ori       $v0, $zero, 0xffff
/* 48DB8 8006D9B8 0049102B */  sltu      $v0, $v0, $t1
.L8006D9BC:
/* 48DBC 8006D9BC 14400005 */  bnez      $v0, .L8006D9D4
/* 48DC0 8006D9C0 0120282D */   daddu    $a1, $t1, $zero
/* 48DC4 8006D9C4 2D220100 */  sltiu     $v0, $t1, 0x100
/* 48DC8 8006D9C8 38420001 */  xori      $v0, $v0, 1
/* 48DCC 8006D9CC 0801B67B */  j         .L8006D9EC
/* 48DD0 8006D9D0 000218C0 */   sll      $v1, $v0, 3
.L8006D9D4:
/* 48DD4 8006D9D4 3C0200FF */  lui       $v0, 0xff
/* 48DD8 8006D9D8 3442FFFF */  ori       $v0, $v0, 0xffff
/* 48DDC 8006D9DC 0049102B */  sltu      $v0, $v0, $t1
/* 48DE0 8006D9E0 14400002 */  bnez      $v0, .L8006D9EC
/* 48DE4 8006D9E4 24030018 */   addiu    $v1, $zero, 0x18
/* 48DE8 8006D9E8 24030010 */  addiu     $v1, $zero, 0x10
.L8006D9EC:
/* 48DEC 8006D9EC 00651006 */  srlv      $v0, $a1, $v1
/* 48DF0 8006D9F0 3C01800A */  lui       $at, %hi(D_80099E40)
/* 48DF4 8006D9F4 00220821 */  addu      $at, $at, $v0
/* 48DF8 8006D9F8 90229E40 */  lbu       $v0, %lo(D_80099E40)($at)
/* 48DFC 8006D9FC 00431021 */  addu      $v0, $v0, $v1
/* 48E00 8006DA00 24030020 */  addiu     $v1, $zero, 0x20
/* 48E04 8006DA04 00623023 */  subu      $a2, $v1, $v0
/* 48E08 8006DA08 14C00004 */  bnez      $a2, .L8006DA1C
/* 48E0C 8006DA0C 00662823 */   subu     $a1, $v1, $a2
/* 48E10 8006DA10 00892023 */  subu      $a0, $a0, $t1
/* 48E14 8006DA14 0801B6C2 */  j         .L8006DB08
/* 48E18 8006DA18 240A0001 */   addiu    $t2, $zero, 1
.L8006DA1C:
/* 48E1C 8006DA1C 00C94804 */  sllv      $t1, $t1, $a2
/* 48E20 8006DA20 00A43806 */  srlv      $a3, $a0, $a1
/* 48E24 8006DA24 00C41804 */  sllv      $v1, $a0, $a2
/* 48E28 8006DA28 00AB1006 */  srlv      $v0, $t3, $a1
/* 48E2C 8006DA2C 00622025 */  or        $a0, $v1, $v0
/* 48E30 8006DA30 00CB5804 */  sllv      $t3, $t3, $a2
/* 48E34 8006DA34 00093402 */  srl       $a2, $t1, 0x10
/* 48E38 8006DA38 14C00002 */  bnez      $a2, .L8006DA44
/* 48E3C 8006DA3C 00E6001B */   divu     $zero, $a3, $a2
/* 48E40 8006DA40 0007000D */  break     7
.L8006DA44:
/* 48E44 8006DA44 00004012 */   mflo     $t0
/* 48E48 8006DA48 00001810 */  mfhi      $v1
/* 48E4C 8006DA4C 3125FFFF */  andi      $a1, $t1, 0xffff
/* 48E50 8006DA50 00000000 */  nop       
/* 48E54 8006DA54 01050018 */  mult      $t0, $a1
/* 48E58 8006DA58 00041402 */  srl       $v0, $a0, 0x10
/* 48E5C 8006DA5C 00031C00 */  sll       $v1, $v1, 0x10
/* 48E60 8006DA60 00621825 */  or        $v1, $v1, $v0
/* 48E64 8006DA64 00003812 */  mflo      $a3
/* 48E68 8006DA68 0067102B */  sltu      $v0, $v1, $a3
/* 48E6C 8006DA6C 5040000B */  beql      $v0, $zero, .L8006DA9C
/* 48E70 8006DA70 00671823 */   subu     $v1, $v1, $a3
/* 48E74 8006DA74 00691821 */  addu      $v1, $v1, $t1
/* 48E78 8006DA78 0069102B */  sltu      $v0, $v1, $t1
/* 48E7C 8006DA7C 14400006 */  bnez      $v0, .L8006DA98
/* 48E80 8006DA80 2508FFFF */   addiu    $t0, $t0, -1
/* 48E84 8006DA84 0067102B */  sltu      $v0, $v1, $a3
/* 48E88 8006DA88 50400004 */  beql      $v0, $zero, .L8006DA9C
/* 48E8C 8006DA8C 00671823 */   subu     $v1, $v1, $a3
/* 48E90 8006DA90 2508FFFF */  addiu     $t0, $t0, -1
/* 48E94 8006DA94 00691821 */  addu      $v1, $v1, $t1
.L8006DA98:
/* 48E98 8006DA98 00671823 */  subu      $v1, $v1, $a3
.L8006DA9C:
/* 48E9C 8006DA9C 14C00002 */  bnez      $a2, .L8006DAA8
/* 48EA0 8006DAA0 0066001B */   divu     $zero, $v1, $a2
/* 48EA4 8006DAA4 0007000D */  break     7
.L8006DAA8:
/* 48EA8 8006DAA8 00003012 */   mflo     $a2
/* 48EAC 8006DAAC 00001810 */  mfhi      $v1
/* 48EB0 8006DAB0 00000000 */  nop       
/* 48EB4 8006DAB4 00000000 */  nop       
/* 48EB8 8006DAB8 00C50018 */  mult      $a2, $a1
/* 48EBC 8006DABC 3082FFFF */  andi      $v0, $a0, 0xffff
/* 48EC0 8006DAC0 00031C00 */  sll       $v1, $v1, 0x10
/* 48EC4 8006DAC4 00621825 */  or        $v1, $v1, $v0
/* 48EC8 8006DAC8 00003812 */  mflo      $a3
/* 48ECC 8006DACC 0067102B */  sltu      $v0, $v1, $a3
/* 48ED0 8006DAD0 1040000B */  beqz      $v0, .L8006DB00
/* 48ED4 8006DAD4 00081400 */   sll      $v0, $t0, 0x10
/* 48ED8 8006DAD8 00691821 */  addu      $v1, $v1, $t1
/* 48EDC 8006DADC 0069102B */  sltu      $v0, $v1, $t1
/* 48EE0 8006DAE0 14400006 */  bnez      $v0, .L8006DAFC
/* 48EE4 8006DAE4 24C6FFFF */   addiu    $a2, $a2, -1
/* 48EE8 8006DAE8 0067102B */  sltu      $v0, $v1, $a3
/* 48EEC 8006DAEC 10400004 */  beqz      $v0, .L8006DB00
/* 48EF0 8006DAF0 00081400 */   sll      $v0, $t0, 0x10
/* 48EF4 8006DAF4 24C6FFFF */  addiu     $a2, $a2, -1
/* 48EF8 8006DAF8 00691821 */  addu      $v1, $v1, $t1
.L8006DAFC:
/* 48EFC 8006DAFC 00081400 */  sll       $v0, $t0, 0x10
.L8006DB00:
/* 48F00 8006DB00 00465025 */  or        $t2, $v0, $a2
/* 48F04 8006DB04 00672023 */  subu      $a0, $v1, $a3
.L8006DB08:
/* 48F08 8006DB08 00093402 */  srl       $a2, $t1, 0x10
/* 48F0C 8006DB0C 14C00002 */  bnez      $a2, .L8006DB18
/* 48F10 8006DB10 0086001B */   divu     $zero, $a0, $a2
/* 48F14 8006DB14 0007000D */  break     7
.L8006DB18:
/* 48F18 8006DB18 00003812 */   mflo     $a3
/* 48F1C 8006DB1C 00001810 */  mfhi      $v1
/* 48F20 8006DB20 3128FFFF */  andi      $t0, $t1, 0xffff
/* 48F24 8006DB24 00000000 */  nop       
/* 48F28 8006DB28 00E80018 */  mult      $a3, $t0
/* 48F2C 8006DB2C 000B1402 */  srl       $v0, $t3, 0x10
/* 48F30 8006DB30 00031C00 */  sll       $v1, $v1, 0x10
/* 48F34 8006DB34 00621825 */  or        $v1, $v1, $v0
/* 48F38 8006DB38 00002812 */  mflo      $a1
/* 48F3C 8006DB3C 0065102B */  sltu      $v0, $v1, $a1
/* 48F40 8006DB40 5040000B */  beql      $v0, $zero, .L8006DB70
/* 48F44 8006DB44 00651823 */   subu     $v1, $v1, $a1
/* 48F48 8006DB48 00691821 */  addu      $v1, $v1, $t1
/* 48F4C 8006DB4C 0069102B */  sltu      $v0, $v1, $t1
/* 48F50 8006DB50 14400006 */  bnez      $v0, .L8006DB6C
/* 48F54 8006DB54 24E7FFFF */   addiu    $a3, $a3, -1
/* 48F58 8006DB58 0065102B */  sltu      $v0, $v1, $a1
/* 48F5C 8006DB5C 50400004 */  beql      $v0, $zero, .L8006DB70
/* 48F60 8006DB60 00651823 */   subu     $v1, $v1, $a1
/* 48F64 8006DB64 24E7FFFF */  addiu     $a3, $a3, -1
/* 48F68 8006DB68 00691821 */  addu      $v1, $v1, $t1
.L8006DB6C:
/* 48F6C 8006DB6C 00651823 */  subu      $v1, $v1, $a1
.L8006DB70:
/* 48F70 8006DB70 14C00002 */  bnez      $a2, .L8006DB7C
/* 48F74 8006DB74 0066001B */   divu     $zero, $v1, $a2
/* 48F78 8006DB78 0007000D */  break     7
.L8006DB7C:
/* 48F7C 8006DB7C 00002012 */   mflo     $a0
/* 48F80 8006DB80 00001810 */  mfhi      $v1
/* 48F84 8006DB84 00000000 */  nop       
/* 48F88 8006DB88 00000000 */  nop       
/* 48F8C 8006DB8C 00880018 */  mult      $a0, $t0
/* 48F90 8006DB90 3162FFFF */  andi      $v0, $t3, 0xffff
/* 48F94 8006DB94 00031C00 */  sll       $v1, $v1, 0x10
/* 48F98 8006DB98 00621825 */  or        $v1, $v1, $v0
/* 48F9C 8006DB9C 00002812 */  mflo      $a1
/* 48FA0 8006DBA0 0065102B */  sltu      $v0, $v1, $a1
/* 48FA4 8006DBA4 10400007 */  beqz      $v0, .L8006DBC4
/* 48FA8 8006DBA8 00691821 */   addu     $v1, $v1, $t1
/* 48FAC 8006DBAC 0069102B */  sltu      $v0, $v1, $t1
/* 48FB0 8006DBB0 14400004 */  bnez      $v0, .L8006DBC4
/* 48FB4 8006DBB4 2484FFFF */   addiu    $a0, $a0, -1
/* 48FB8 8006DBB8 0065102B */  sltu      $v0, $v1, $a1
/* 48FBC 8006DBBC 54400001 */  bnel      $v0, $zero, .L8006DBC4
/* 48FC0 8006DBC0 2484FFFF */   addiu    $a0, $a0, -1
.L8006DBC4:
/* 48FC4 8006DBC4 00071400 */  sll       $v0, $a3, 0x10
/* 48FC8 8006DBC8 0801B762 */  j         .L8006DD88
/* 48FCC 8006DBCC 00443025 */   or       $a2, $v0, $a0
.L8006DBD0:
/* 48FD0 8006DBD0 0088102B */  sltu      $v0, $a0, $t0
/* 48FD4 8006DBD4 10400003 */  beqz      $v0, .L8006DBE4
/* 48FD8 8006DBD8 3402FFFF */   ori      $v0, $zero, 0xffff
/* 48FDC 8006DBDC 0801B761 */  j         .L8006DD84
/* 48FE0 8006DBE0 0000302D */   daddu    $a2, $zero, $zero
.L8006DBE4:
/* 48FE4 8006DBE4 0048102B */  sltu      $v0, $v0, $t0
/* 48FE8 8006DBE8 14400005 */  bnez      $v0, .L8006DC00
/* 48FEC 8006DBEC 0100282D */   daddu    $a1, $t0, $zero
/* 48FF0 8006DBF0 2D020100 */  sltiu     $v0, $t0, 0x100
/* 48FF4 8006DBF4 38420001 */  xori      $v0, $v0, 1
/* 48FF8 8006DBF8 0801B706 */  j         .L8006DC18
/* 48FFC 8006DBFC 000218C0 */   sll      $v1, $v0, 3
.L8006DC00:
/* 49000 8006DC00 3C0200FF */  lui       $v0, 0xff
/* 49004 8006DC04 3442FFFF */  ori       $v0, $v0, 0xffff
/* 49008 8006DC08 0048102B */  sltu      $v0, $v0, $t0
/* 4900C 8006DC0C 14400002 */  bnez      $v0, .L8006DC18
/* 49010 8006DC10 24030018 */   addiu    $v1, $zero, 0x18
/* 49014 8006DC14 24030010 */  addiu     $v1, $zero, 0x10
.L8006DC18:
/* 49018 8006DC18 00651006 */  srlv      $v0, $a1, $v1
/* 4901C 8006DC1C 3C01800A */  lui       $at, %hi(D_80099E40)
/* 49020 8006DC20 00220821 */  addu      $at, $at, $v0
/* 49024 8006DC24 90229E40 */  lbu       $v0, %lo(D_80099E40)($at)
/* 49028 8006DC28 00431021 */  addu      $v0, $v0, $v1
/* 4902C 8006DC2C 24030020 */  addiu     $v1, $zero, 0x20
/* 49030 8006DC30 00623023 */  subu      $a2, $v1, $v0
/* 49034 8006DC34 54C00009 */  bnel      $a2, $zero, .L8006DC5C
/* 49038 8006DC38 00662823 */   subu     $a1, $v1, $a2
/* 4903C 8006DC3C 0104102B */  sltu      $v0, $t0, $a0
/* 49040 8006DC40 14400050 */  bnez      $v0, .L8006DD84
/* 49044 8006DC44 24060001 */   addiu    $a2, $zero, 1
/* 49048 8006DC48 0169102B */  sltu      $v0, $t3, $t1
/* 4904C 8006DC4C 1440004D */  bnez      $v0, .L8006DD84
/* 49050 8006DC50 0000302D */   daddu    $a2, $zero, $zero
/* 49054 8006DC54 0801B761 */  j         .L8006DD84
/* 49058 8006DC58 24060001 */   addiu    $a2, $zero, 1
.L8006DC5C:
/* 4905C 8006DC5C 00C81804 */  sllv      $v1, $t0, $a2
/* 49060 8006DC60 00A91006 */  srlv      $v0, $t1, $a1
/* 49064 8006DC64 00624025 */  or        $t0, $v1, $v0
/* 49068 8006DC68 00C94804 */  sllv      $t1, $t1, $a2
/* 4906C 8006DC6C 00A43806 */  srlv      $a3, $a0, $a1
/* 49070 8006DC70 00C41804 */  sllv      $v1, $a0, $a2
/* 49074 8006DC74 00AB1006 */  srlv      $v0, $t3, $a1
/* 49078 8006DC78 00622025 */  or        $a0, $v1, $v0
/* 4907C 8006DC7C 00CB5804 */  sllv      $t3, $t3, $a2
/* 49080 8006DC80 00083402 */  srl       $a2, $t0, 0x10
/* 49084 8006DC84 14C00002 */  bnez      $a2, .L8006DC90
/* 49088 8006DC88 00E6001B */   divu     $zero, $a3, $a2
/* 4908C 8006DC8C 0007000D */  break     7
.L8006DC90:
/* 49090 8006DC90 00005012 */   mflo     $t2
/* 49094 8006DC94 00001810 */  mfhi      $v1
/* 49098 8006DC98 3105FFFF */  andi      $a1, $t0, 0xffff
/* 4909C 8006DC9C 00000000 */  nop       
/* 490A0 8006DCA0 01450018 */  mult      $t2, $a1
/* 490A4 8006DCA4 00041402 */  srl       $v0, $a0, 0x10
/* 490A8 8006DCA8 00031C00 */  sll       $v1, $v1, 0x10
/* 490AC 8006DCAC 00621825 */  or        $v1, $v1, $v0
/* 490B0 8006DCB0 00003812 */  mflo      $a3
/* 490B4 8006DCB4 0067102B */  sltu      $v0, $v1, $a3
/* 490B8 8006DCB8 5040000B */  beql      $v0, $zero, .L8006DCE8
/* 490BC 8006DCBC 00671823 */   subu     $v1, $v1, $a3
/* 490C0 8006DCC0 00681821 */  addu      $v1, $v1, $t0
/* 490C4 8006DCC4 0068102B */  sltu      $v0, $v1, $t0
/* 490C8 8006DCC8 14400006 */  bnez      $v0, .L8006DCE4
/* 490CC 8006DCCC 254AFFFF */   addiu    $t2, $t2, -1
/* 490D0 8006DCD0 0067102B */  sltu      $v0, $v1, $a3
/* 490D4 8006DCD4 50400004 */  beql      $v0, $zero, .L8006DCE8
/* 490D8 8006DCD8 00671823 */   subu     $v1, $v1, $a3
/* 490DC 8006DCDC 254AFFFF */  addiu     $t2, $t2, -1
/* 490E0 8006DCE0 00681821 */  addu      $v1, $v1, $t0
.L8006DCE4:
/* 490E4 8006DCE4 00671823 */  subu      $v1, $v1, $a3
.L8006DCE8:
/* 490E8 8006DCE8 14C00002 */  bnez      $a2, .L8006DCF4
/* 490EC 8006DCEC 0066001B */   divu     $zero, $v1, $a2
/* 490F0 8006DCF0 0007000D */  break     7
.L8006DCF4:
/* 490F4 8006DCF4 00003012 */   mflo     $a2
/* 490F8 8006DCF8 00001810 */  mfhi      $v1
/* 490FC 8006DCFC 00000000 */  nop       
/* 49100 8006DD00 00000000 */  nop       
/* 49104 8006DD04 00C50018 */  mult      $a2, $a1
/* 49108 8006DD08 3082FFFF */  andi      $v0, $a0, 0xffff
/* 4910C 8006DD0C 00031C00 */  sll       $v1, $v1, 0x10
/* 49110 8006DD10 00621825 */  or        $v1, $v1, $v0
/* 49114 8006DD14 00003812 */  mflo      $a3
/* 49118 8006DD18 0067102B */  sltu      $v0, $v1, $a3
/* 4911C 8006DD1C 1040000B */  beqz      $v0, .L8006DD4C
/* 49120 8006DD20 000A1400 */   sll      $v0, $t2, 0x10
/* 49124 8006DD24 00681821 */  addu      $v1, $v1, $t0
/* 49128 8006DD28 0068102B */  sltu      $v0, $v1, $t0
/* 4912C 8006DD2C 14400006 */  bnez      $v0, .L8006DD48
/* 49130 8006DD30 24C6FFFF */   addiu    $a2, $a2, -1
/* 49134 8006DD34 0067102B */  sltu      $v0, $v1, $a3
/* 49138 8006DD38 10400004 */  beqz      $v0, .L8006DD4C
/* 4913C 8006DD3C 000A1400 */   sll      $v0, $t2, 0x10
/* 49140 8006DD40 24C6FFFF */  addiu     $a2, $a2, -1
/* 49144 8006DD44 00681821 */  addu      $v1, $v1, $t0
.L8006DD48:
/* 49148 8006DD48 000A1400 */  sll       $v0, $t2, 0x10
.L8006DD4C:
/* 4914C 8006DD4C 00463025 */  or        $a2, $v0, $a2
/* 49150 8006DD50 00672023 */  subu      $a0, $v1, $a3
/* 49154 8006DD54 00C90019 */  multu     $a2, $t1
/* 49158 8006DD58 00001810 */  mfhi      $v1
/* 4915C 8006DD5C 0083102B */  sltu      $v0, $a0, $v1
/* 49160 8006DD60 00004012 */  mflo      $t0
/* 49164 8006DD64 54400007 */  bnel      $v0, $zero, .L8006DD84
/* 49168 8006DD68 24C6FFFF */   addiu    $a2, $a2, -1
/* 4916C 8006DD6C 14640006 */  bne       $v1, $a0, .L8006DD88
/* 49170 8006DD70 0000502D */   daddu    $t2, $zero, $zero
/* 49174 8006DD74 0168102B */  sltu      $v0, $t3, $t0
/* 49178 8006DD78 10400004 */  beqz      $v0, .L8006DD8C
/* 4917C 8006DD7C 00C0782D */   daddu    $t7, $a2, $zero
/* 49180 8006DD80 24C6FFFF */  addiu     $a2, $a2, -1
.L8006DD84:
/* 49184 8006DD84 0000502D */  daddu     $t2, $zero, $zero
.L8006DD88:
/* 49188 8006DD88 00C0782D */  daddu     $t7, $a2, $zero
.L8006DD8C:
/* 4918C 8006DD8C 0140702D */  daddu     $t6, $t2, $zero
/* 49190 8006DD90 01C0102D */  daddu     $v0, $t6, $zero
/* 49194 8006DD94 13000007 */  beqz      $t8, .L8006DDB4
/* 49198 8006DD98 01E0182D */   daddu    $v1, $t7, $zero
/* 4919C 8006DD9C 00036823 */  negu      $t5, $v1
/* 491A0 8006DDA0 00021823 */  negu      $v1, $v0
/* 491A4 8006DDA4 000D102B */  sltu      $v0, $zero, $t5
/* 491A8 8006DDA8 00626023 */  subu      $t4, $v1, $v0
/* 491AC 8006DDAC 0180102D */  daddu     $v0, $t4, $zero
/* 491B0 8006DDB0 01A0182D */  daddu     $v1, $t5, $zero
.L8006DDB4:
/* 491B4 8006DDB4 03E00008 */  jr        $ra
/* 491B8 8006DDB8 00000000 */   nop      
/* 491BC 8006DDBC 00000000 */  nop       
