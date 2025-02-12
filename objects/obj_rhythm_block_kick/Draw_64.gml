if instance_exists(obj_rhythm_game){
	minimap_scale = room_get_viewport(room,0)[3]/camera_get_view_width(view_camera[0]);
	draw_sprite_ext(spr_rhythm_block_kick, -1, x*minimap_scale, 0, minimap_scale, minimap_scale, 0, c_white, 1 );
	//if obj_rhythm_game.line_speed_dir==1 && obj_rhythm_game.rhythm_line_x_pos + 120 > block_right_border{
	//	instance_destroy(self);
	//}
	//else if obj_rhythm_game.line_speed_dir == -1 && obj_rhythm_game.rhythm_line_x_pos + 120 < block_left_border{
	//	instance_destroy(self);
	//}
	if obj_rhythm_game.line_speed_dir == -cur_dir{
		instance_destroy(self);
	}
	if (KICK_DRUM_1 || KICK_DRUM_2){
		if obj_rhythm_game.rhythm_line_x_pos + 135 >= block_left_border && obj_rhythm_game.rhythm_line_x_pos + 135 <= block_right_border{
			audio_play_sound(sfx_stomp, 1, false);
			obj_rhythm_game.player_score += 1;
			instance_destroy(self);
		}
		else{
			if id == instance_find(obj_rhythm_block_kick, 0){
					show_debug_message("missed");
				}
			}
	}
}
else{
	instance_destroy(self);
}