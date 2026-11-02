audio_stop_all();
revserse_meis_lighting();
game_camera_change_settings(mei_n_mcronald, 2);
game_wait(3);
game_NewDialogue(dialogue_tuesday_mei_and_mcronald);
move_to_pos(1, 0, 861, obj_player.y);
instance_destroy(self);
