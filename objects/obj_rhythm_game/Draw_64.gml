minimap_scale = room_get_viewport(room,0)[3]/camera_get_view_width(view_camera[0]);
if player_score > 999{
	display_player_score_string = string(player_score);
}
else{
	if player_score > 99{
		display_player_score_string = "0" + string(player_score);
	}
	else{
		if player_score > 9{
			display_player_score_string = "00" + string(player_score);
		}
		else{
			display_player_score_string = "000" + string(player_score);
		}
	}
}
draw_set_font(default_pixel_font);
draw_text_transformed_color(245 * minimap_scale,0,display_player_score_string, 0.5, 0.5, 0, c_white, c_white, c_white, c_white,1);
draw_sprite_ext(spr_rhythm_game, -1, 0, 0, minimap_scale, minimap_scale, 0, c_white, 1 );
draw_sprite_ext(spr_rhythm_line, -1, rhythm_line_x_pos*minimap_scale, 0, minimap_scale, minimap_scale, 0, c_white, 1 );