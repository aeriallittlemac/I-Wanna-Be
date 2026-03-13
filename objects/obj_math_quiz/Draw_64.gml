draw_set_font(default_pixel_font);
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
if time_over{
	instance_destroy(self);
}
draw_set_font(default_pixel_font);
draw_text_transformed_color(245 * minimap_scale,0,display_player_score_string, 0.5, 0.5, 0, c_white, c_white, c_white, c_white,1);