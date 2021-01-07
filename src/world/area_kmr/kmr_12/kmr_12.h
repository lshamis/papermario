#include "common.h"
#include "map.h"

#define NAMESPACE kmr_12

#define NpcId_GOOMBA 0

#define GetGoomba N(GetGoomba)
ApiStatus GetGoomba(ScriptInstance* script, s32 isInitialCall);

MapConfig N(config);

Script N(Main);
Script N(PlayMusic);
Script N(MakeEntities);
Script N(ReadWestSign);

NpcGroupList N(npcGroupList);
