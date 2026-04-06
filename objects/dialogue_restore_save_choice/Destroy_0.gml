if (yes && string_length(save_name) > 0) {
	game_load_json(save_name);
	global.reputation = 1;
	change_reputation(49);
	global.female_affinity = 1;
	change_female_affinity(49);
	if instance_exists(obj_game_over_screen){
		instance_destroy(obj_game_over_screen);
	}
	
	global.in_hints = false;
}

obj_hints.is_choosing_restore = false;
if global.pause_menu{
	with obj_pause_menu_new{
		pauseMenu();
	}
}

//temporary only, switch out code the following code later:
if room == school_sewing_club{
	instance_destroy(obj_dialogue_circle);
	NewDialogue(cutscene_sewing_club_setup);
}
