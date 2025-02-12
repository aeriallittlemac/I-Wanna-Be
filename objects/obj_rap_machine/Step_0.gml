if instance_exists(obj_rhythm_game) && !start{
	if audio_is_playing(obj_rhythm_game.song) && obj_rhythm_game.bars == start_bar{
		start = true;
	}
}

if start{
	if obj_rhythm_game.line_speed_dir == 1
	{	
		if (obj_rhythm_game.rhythm_line_x_pos + 118) < obj_rhythm_game.unit * beat + margin_of_line_error &&
		(obj_rhythm_game.rhythm_line_x_pos + 118) > obj_rhythm_game.unit * beat - margin_of_line_error{
		UpdateText();
		}
	}
	else{
		if (obj_rhythm_game.rhythm_line_x_pos - 105) < -obj_rhythm_game.unit * beat + margin_of_line_error &&
		(obj_rhythm_game.rhythm_line_x_pos - 105) > -obj_rhythm_game.unit * beat - margin_of_line_error{
		UpdateText();
		}
	}
}




