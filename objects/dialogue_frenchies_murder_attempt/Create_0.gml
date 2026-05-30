global.game_time = "8:00";
global.night = true;
audio_play_sound(sfx_surprise_fx, 1, false);
teleport_npc(obj_frenchie, school_1F, obj_player.x - 140, obj_player.y, DOWN);
instance_create_depth((obj_frenchie.x + obj_player.x)/2 , 0, 0, player_n_frenchie);
game_camera_change_settings(player_n_frenchie, 2)
npc_move_to_pos(obj_frenchie, 1, 0, obj_player.x - 125, obj_frenchie.y);
game_wait(1);
game_camera_change_settings(player_n_frenchie, -1);
game_NewDialogue(dialogue_frenchies_murder_attempt_1)
instance_destroy(self);