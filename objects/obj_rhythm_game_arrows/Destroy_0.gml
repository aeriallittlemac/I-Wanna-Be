game_set_speed(current_fps, gamespeed_fps);
obj_player.image_blend = c_white;
game_wait(0.6);

if !QTE{
	//rhythm_line_x = 100;
	block_speed_multiplier = 4;
	if instance_exists(obj_wei){
		npc_animate(obj_wei, spr_wei_rapping_1);
	}
	if instance_exists(obj_frenchie){
		npc_animate(obj_frenchie, spr_frenchie_guitar_1);
	}
	if instance_exists(obj_mcronald){
		npc_animate(obj_mcronald, spr_mcronald_keyboard_1);
	}
}
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