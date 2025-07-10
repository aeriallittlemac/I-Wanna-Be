if instance_exists(obj_rhythm_game){
	minimap_scale = room_get_viewport(room,0)[3]/camera_get_view_width(view_camera[0]);
	var on_beat =  obj_rhythm_game.rhythm_line_x_pos >= block_left_border && obj_rhythm_game.rhythm_line_x_pos <= block_right_border;
	draw_sprite_ext(kick_sprite, on_beat, x*minimap_scale, y*minimap_scale, minimap_scale, minimap_scale, 0, c_white, 1 );
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
		if on_beat{
			if obj_rhythm_game.kick_sound == noone{
				audio_play_sound(sfx_stomp, 1, false);
			}
			else{
				audio_play_sound(obj_rhythm_game.kick_sound, 1, false);
				if obj_rhythm_game.kick_sound == sfx_heartbeat{
					instance_create_depth(obj_player.x, obj_player.y-17*obj_player.image_yscale, OBJ_MAX_DEPTH, obj_heart);
				}
			}
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