event_inherited();
npc_move_to_pos(obj_wei, 1, 0, obj_player.x-150, 0);
teleport_npc(obj_wei, noone, 0, 0, DOWN);
game_wait(3);
game_NewDialogue(dialogue_wei_post_hang_out_1)