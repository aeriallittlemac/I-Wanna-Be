if (yes && string_length(save_name) > 0) {
	game_load_json(save_name);
	global.in_hints = false;
}

obj_hints.is_choosing_restore = false;
