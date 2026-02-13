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