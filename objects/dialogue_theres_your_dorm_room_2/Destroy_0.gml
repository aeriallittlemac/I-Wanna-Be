event_inherited();
game_wait(3);
teleport_npc(obj_frenchie, noone, obj_player.x-140, obj_wei.y, RIGHT);
npc_move_to_pos(obj_frenchie, 1, 0, obj_player.x-130, obj_frenchie.y)
npc_move_to_pos(obj_wei, 1, 0, 100, obj_wei.y)
teleport_npc(obj_wei, noone, 100, obj_wei.y, DOWN);
game_NewDialogue(dialogue_frenchies_introduction);