event_inherited();
teleport_npc(obj_brooklyn, school_B1, 1050, 118, LEFT);
//give her a dialogue object that says that she's calling someone
AddInstanceToActivate(INST_BROOKLYN_OUTSIDE_LAB_TUESDAY);
NewQuest(global.quest_list.go_to_lab, QUEST_TEXT_FONT_SIZE, c_yellow, QUEST_TEXT_TIMER)