instance_create_depth((obj_frenchie.x + obj_player.x)/2 , 0, 0, player_n_frenchie);
game_camera_change_settings(player_n_frenchie, 2)
game_wait(3);
game_camera_change_settings(player_n_frenchie, -1)
game_NewDialogue(dialogue_frenchies_murder_attempt_2);