x -= obj_rhythm_game_arrows.block_speed;
if original_arrow{
	original_timer += delta_time/1000000;
	if x <= obj_rhythm_game_arrows.rhythm_line_x{
			show_debug_message(original_timer);
	}
}

if x < camera_get_view_x((view_camera[0])) - 300{
		instance_destroy(self);
}