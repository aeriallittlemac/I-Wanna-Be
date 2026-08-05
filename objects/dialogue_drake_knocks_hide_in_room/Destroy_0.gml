event_inherited();
game_wait(3);
npc_move_to_pos(obj_drake, 1, 0, obj_player.x-160, obj_drake.y);
teleport_npc(obj_drake, noone, 0, 0, DOWN);
NewQuest(global.quest_list.go_to_lab, QUEST_TEXT_FONT_SIZE, c_yellow, QUEST_TEXT_TIMER);
teleport_npc(obj_brooklyn, school_B1, 1126, 118, LEFT);
AddInstanceToActivate(INST_BROOKLYN_OUTSIDE_LAB);