if (yes && string_length(save_name) > 0) {
	game_load_json(save_name);
	if instance_exists(obj_game_over_screen){
		instance_destroy(obj_game_over_screen);
	}
	global.in_hints = false;
}

obj_hints.is_choosing_restore = false;
