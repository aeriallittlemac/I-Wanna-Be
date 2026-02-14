npc_move_to_pos(obj_mcronald, 1, 0, obj_player.x - 150, obj_mcronald.y);
teleport_npc(obj_mcronald, noone, 0,0,DOWN);
game_wait(3);
game_NewDialogue(dialogue_frenchies_murder_attempt)