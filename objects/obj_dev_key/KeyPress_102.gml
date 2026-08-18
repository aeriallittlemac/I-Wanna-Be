global.day = 5;
NewQuest(global.quest_list.go_to_lab, QUEST_TEXT_FONT_SIZE, c_yellow, QUEST_TEXT_TIMER);
teleport_player(1000, 118, school_B1)
teleport_npc(obj_brooklyn, school_B1, 1126, 118, LEFT);
AddInstanceToActivate(INST_BROOKLYN_OUTSIDE_LAB);