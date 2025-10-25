if !flag{
block_speed = ((right_border - rhythm_line_x)*(tempo/240)*block_speed_multiplier*(delta_time/1000000));
beat_unit = 240/tempo/16;
calculate_start_time()
flag = true;
}
else if !start{
	if obj_music_manager.song_current_runtime >= start_time - offset_time{
		start = true;
	}
}
else{
	if keyboard_check_pressed(MOVE_RIGHT) || keyboard_check_pressed(MOVE_UP) || keyboard_check_pressed(MOVE_LEFT)|| keyboard_check_pressed(MOVE_DOWN){
		var inst = instance_create_depth(rhythm_line_x, 0, OBJ_MAX_DEPTH, obj_rhythm_line_arrows_vfx);
		inst.keyDir = keyboard_key;
	}
	if beat_timer <= 0{
		if !stop_rhythm_game{
		beat_timer = beat_unit;
		var arrow_y;
		var randint = irandom(2)
		while(randint == last_arrow_dir){
			randint = irandom(2)
		}
		
		if randint == 0{
			arrow_y = r1_arrow_y;
		}
		else if randint ==1{
			arrow_y = r2_arrow_y;
		}
		else{
			arrow_y = r3_arrow_y;
		}
		last_arrow_dir = randint;
		if arrows[bar][beat] == 1{
			instance_create_depth(x+right_border, arrow_y, OBJ_MAX_DEPTH, obj_arrow);
		}
		beat++;
		if beat >= 16{
			beat = 0;
			bar++;
			if bar >= array_length(arrows){
					stop_rhythm_game = true;
				}
			}
		}
		else{
			if !instance_exists(obj_arrow){
				if instance_exists(obj_rhythm_line_arrows_vfx){
					instance_destroy(obj_rhythm_line_arrows_vfx)
				}
				instance_destroy(self);
			}
		}
	}
	else{
	beat_timer -= (delta_time/1000000);
	}
}