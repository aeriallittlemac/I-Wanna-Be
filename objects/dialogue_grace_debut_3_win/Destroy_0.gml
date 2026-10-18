event_inherited();
obj_scribble.black_filter = true;
npc_move_to_pos(obj_grace, 2, 0, camera_get_view_x(view_camera[0])-20, obj_grace.y);
game_wait(2);
game_camera_change_settings(obj_player, 3);
game_wait(2);
game_NewDialogue(dialogue_grace_debut_4_win);

