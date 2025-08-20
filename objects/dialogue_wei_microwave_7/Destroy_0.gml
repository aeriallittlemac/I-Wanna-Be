npc_move_to_pos(obj_wei, 1, 0, 735, obj_wei.y);
teleport_npc(obj_wei, noone, 0, 0, DOWN);
game_camera_change_settings(obj_player, 1);
instance_destroy(player_n_wei);
instance_destroy(obj_hot_pocket);
game_wait(3.5);
game_NewDialogue(dialogue_go_to_club);