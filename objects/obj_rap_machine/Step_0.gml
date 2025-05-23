if instance_exists(obj_rhythm_game){
	
	if !start && audio_is_playing(obj_rhythm_game.song) && obj_rhythm_game.bars == start_bar{
		start = true;
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
	//if instance_exists(obj_rhythm_game){
	//	if obj_rhythm_game.misses > max_misses{
	//		stutter = true;
	//	}
	//}
	//if stutter{
	//		audio_pause_all();
	//		audio_play_sound(sfx_stop, 1, false);
	//		instance_destroy(self);
	//	}
	}
}
else{
	instance_destroy(self);
}





