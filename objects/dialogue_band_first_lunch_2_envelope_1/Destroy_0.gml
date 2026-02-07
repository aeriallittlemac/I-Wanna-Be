npc_move_to_pos(obj_mcronald, 1, 0, obj_player.x - 160, obj_player.y);
teleport_npc(obj_mcronald, noone, 0, 0, DOWN);
npc_wait(obj_frenchie, 0.5);
npc_move_to_pos(obj_frenchie, 1, 0, obj_player.x - 160, obj_player.y);
teleport_npc(obj_frenchie, noone, 0, 0, DOWN);
game_wait(3.5);
game_NewDialogue(dialogue_band_first_lunch_2_envelope_2);