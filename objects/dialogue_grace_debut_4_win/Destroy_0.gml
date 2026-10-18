event_inherited();
obj_scribble.black_filter = true;
global.game_time = "1:00 am"
AddInstanceToActivate(INST_BOB_PBNJ);
NewQuest(global.quest_list.go_back_to_sleep, QUEST_TEXT_FONT_SIZE, c_yellow, QUEST_TEXT_TIMER);
teleport_player(62, 117, school_bobbys_room);