//this object isn't actually a dialogue...just not bothered to change the name lmao
instance_destroy(player_n_wei);
game_camera_change_settings(obj_player, 1);
game_wait(1);
game_camera_change_settings(obj_player, -1);
game_NewDialogue(dialogue_follow_wei_up_2);

