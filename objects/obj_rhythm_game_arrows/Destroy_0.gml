game_set_speed(current_fps, gamespeed_fps);
obj_player.image_blend = c_white;
game_wait(0.6);

if lose_cutscene_object != noone{
	
	if player_score < target_score{
		game_NewCutscene(lose_cutscene_object);
	}
	else{
		if !QTE && misses > max_misses{
			game_NewCutscene(lose_cutscene_object);
		}
		else{
			game_NewCutscene(win_cutscene_object);
		}
	}
}
else{
	game_NewCutscene(win_cutscene_object);
}
//if !QTE{
//	global.drumming = false;
//}