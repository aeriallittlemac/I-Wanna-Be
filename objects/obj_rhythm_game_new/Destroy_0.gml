//var inst = instance_create_depth(original_camera_target.x, 76, obj_point);
//game_camera_change_settings(inst, -1)
//camera_set_view_size(view_camera[0],RESOLUTION_W,152);
game_set_speed(current_fps, gamespeed_fps);
obj_player.image_blend = c_white;
game_wait(0.6);

if lose_cutscene_object != noone{
	
	if player_score < target_score{
		game_NewCutscene(lose_cutscene_object);
	}
	else{
		game_NewCutscene(win_cutscene_object);
	}
}
else{
	game_NewCutscene(win_cutscene_object);
}






