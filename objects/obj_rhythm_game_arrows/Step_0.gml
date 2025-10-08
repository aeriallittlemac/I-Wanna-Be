if !flag{
block_speed = ((right_border - left_border)*tempo*(delta_time/1000000))/240;
beat_unit = 240/tempo/16;
flag = true;
}

	if keyboard_check_pressed(MOVE_RIGHT) || keyboard_check_pressed(MOVE_UP) || keyboard_check_pressed(MOVE_LEFT)|| keyboard_check_pressed(MOVE_DOWN){
		var inst = instance_create_depth(rhythm_line_x, 0, OBJ_MAX_DEPTH, obj_rhythm_line_arrows_vfx);
		inst.keyDir = keyboard_key;
	}
if beat_timer <= 0{
	if !stop_rhythm_game{
	beat_timer = beat_unit;
	var arrow_y;
	var randint = irandom(2)
	if randint == last_arrow_dir{
		randint = (randint == 1)+1
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
				alarm[0] = 35000/tempo;
				stop_rhythm_game = true;
			}
		}
	}
}
else{
beat_timer -= (delta_time/1000000);
}