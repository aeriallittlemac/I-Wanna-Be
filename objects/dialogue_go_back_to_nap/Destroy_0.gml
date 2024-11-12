NewQuest(global.quest_list.go_take_a_nap, QUEST_TEXT_FONT_SIZE, c_yellow, QUEST_TEXT_TIMER);
teleport_npc(obj_jake, school_2F, 615, 110, DOWN);
teleport_npc(obj_drake, school_2F, 685, 110, DOWN);
AddInstanceToActivate(inst_JAKENDRAKE);
global.cutscene = false;