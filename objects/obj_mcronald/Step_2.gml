if array_length(sequences) > 0 && sequences[0] == "move"{
	if laughing{
		if real_xspeed > 0{
			sprite_index = sprite[RIGHT];
		}
		if real_xspeed < 0{
			sprite_index = laughing_sprite[LEFT];
		}
		if real_yspeed > 0{
			sprite_index = sprite[DOWN];
		}
		if real_yspeed < 0{
			sprite_index = sprite[UP];
		}
	}
}