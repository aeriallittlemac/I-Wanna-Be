if (!global.cutscene && place_meeting(x, y, obj_player)) {
	show_debug_message("Obstacle collision. Random number: " + string(irandom(5)));
	on_collision();
}
