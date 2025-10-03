//if obj_rhythm_game.rhythm_line_x_pos + 135 <= block_right_border + 8{
//	if block_right_border + 8 - (obj_rhythm_game.rhythm_line_x_pos + 135) < global.closest_block_dist{
//		 global.closest_block_dist =  block_right_border + 8 - (obj_rhythm_game.rhythm_line_x_pos + 135);
//		 if kick_sprite == spr_rhythm_block_kick{
//			obj_rhythm_game.line_sprite = spr_rhythm_line;
//		 }
//		 else{
//			obj_rhythm_game.line_sprite = spr_rhythm_line_thin;
//		 }
//	}
//}
on_beat =  obj_rhythm_game_new.rhythm_line_x_pos >= block_left_border && obj_rhythm_game_new.rhythm_line_x_pos <= block_right_border;
x -= obj_rhythm_game_arrows.block_speed;
//	show_debug_message(obj_music_manager.song_current_runtime);
//}