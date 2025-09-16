game_camera_change_settings(obj_player,-1);
teleport_npc(obj_wei, school_2F, 100, obj_wei.y, RIGHT);
destroy_if_in_scene(inst_GAME_START_CUTSCENE_TRIGGER);
AddInstanceToDestroy(inst_1D43132F);
teleport_player(650, 118, school_2F);
global.day = 2;
NewQuest(global.quest_list.back_to_your_room, QUEST_TEXT_FONT_SIZE, c_yellow, QUEST_TEXT_TIMER);
AddInstanceToActivate(inst_BOBBYS_ROOM_DRUM_KIT);
//room_instance_add(bobbys_room, 108, 133, obj_drum_kit);