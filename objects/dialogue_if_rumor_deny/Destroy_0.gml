npc_move_to_pos(obj_grace, 1, 0, 216, obj_grace.y);
npc_move_to_pos(obj_grace, 0, 1, obj_grace.x, 43);
teleport_npc(obj_grace, noone, 0,0, DOWN);
game_wait(2.2);
wait(1.4);
move_to_pos(1, 0, 195, obj_player.y);
game_NewDialogue(cutscene_if_rumor_deny_1)
//slam!