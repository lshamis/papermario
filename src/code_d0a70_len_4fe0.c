#include "common.h"

s32 D_8014EE10[] = { 0x80156920, };

s32 D_8014EE14[] = { 0x00000000, };

s32 D_8014EE18[] = { 0x90909000, 0x90909000, 0xFFFFFF00, 0xFFFFFF00, 0x00007800, 0x00000000, 0xFFFFFF00, 0xFFFFFF00,
                     0x00008800, 0x00000000,
                   };

s32 D_8014EE40[] = { 0x028001E0, 0x01FF0000, 0x028001E0, 0x01FF0000, };

s32 D_8014EE50[] = { 0x028001E0, 0x01FF0000, 0x028001E0, 0x02000000, };

s32 D_8014EE60[] = { 0x012C0000, 0x00000000, };

s32 D_8014EE68[] = { 0xD9FDF9FF, 0x00000000, 0xD9FFFFFF, 0x00200005, 0xD7000002, 0xFFFFFFFF, 0xE2001E01, 0x00000000,
                     0xE3000A11, 0x00082CF0, 0xDF000000, 0x00000000,
                   };

s32 D_8014EE98[] = { 0x00441208, 0x00111208, 0x00000000, 0x00441208, 0x00111208, 0x00000000, 0x00404B40, 0x00104B40,
                     0x01000000, 0x00404B40, 0x00104B40, 0x01000000, 0x00441208, 0x00111208, 0x00000000, 0x00404B40,
                     0x00104B40, 0x01000000, 0x00441208, 0x00111208, 0x00000000, 0x00404B40, 0x00104B40, 0x01000000,
                     0x00404B40, 0x00104B40, 0x01000000, 0x00441208, 0x00111208, 0x00000000, 0x00404B40, 0x00104B40,
                     0x01000000, 0x00441208, 0x00111208, 0x00000000, 0x00404B40, 0x00104B40, 0x01000000, 0x00441208,
                     0x00111208, 0x00000000, 0x00441208, 0x00111208, 0x00000000, 0x00404B40, 0x00104B40, 0x01000000,
                     0x00441208, 0x00111208, 0x00000000,
                   };

s32 D_8014EF64[] = { 0x00014358, 0x00018200, 0x0001A858, 0x0001E830, 0x00029458, 0x000314E0, 0x00033498, 0x00038988,
                     0x00039228, 0x0005B7A8, 0x0007CF10, 0x00086490, 0x00096258, 0x000A1820, 0x000ACDE8, 0x000BBF68,
                     0x000C0490, 0x000C49B8, 0x000C6150, 0x000CA380, 0x00000000, 0x00000000, 0x00000000,
                   };


#define UNKSTRUCT8013A854_SIZE 90

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013A370);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013A37C);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013A4D0);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013A610);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013A650);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013A6E8);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013A704);

typedef struct {
    /* 0x00 */ char unk_0[0x10];
    /* 0x10 */ s16 unk_10;
    /* 0x14 */ s32 unk_14;
    /* 0x18 */ char unk_18[0x64];
} UnkStruct8013A854 ; // size = 0x7C

typedef UnkStruct8013A854 UnkStruct8013A854List[UNKSTRUCT8013A854_SIZE];

extern UnkStruct8013A854List* D_80156954[UNKSTRUCT8013A854_SIZE];

void func_8013A854(u32 i) {

    if (i < 90) {
        UnkStruct8013A854* unkStruct80156954ListPtr = *D_80156954;
        unkStruct80156954ListPtr[i].unk_14 = 0;
        unkStruct80156954ListPtr[i].unk_10 = -1;
    }
}

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013A888);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013A8E0);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013A920);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013A93C);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013A9C8);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013A9E8);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013AA9C);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013AF20);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013AF70);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013B0EC);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013B1B0);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013BC88);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013C048);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013C220);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013C3F0);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013CFA8);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013DAB4);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013E2F0);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013E904);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013EE48);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013EE68);

INCLUDE_ASM(s32, "code_d0a70_len_4fe0", func_8013F1F8);
