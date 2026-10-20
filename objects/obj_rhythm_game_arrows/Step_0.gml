beat_unit = 240/tempo/16;
block_speed = ((right_border - rhythm_line_x)*(tempo/240)*block_speed_multiplier*(delta_time/1000000));

if (!music_started){
	pre_music_timer += delta_time/1000000;
	if pre_music_timer >= music_buffer_time{
		music_started = true;
		bgm_instance = set_QTE_bgm(song_im_sorry); // make sure set_QTE_bgm returns the sound instance id from audio_play_sound()
		video_open("im_so_sorry.mp4");
	}
}
 
if keyboard_check_pressed(MOVE_RIGHT) || keyboard_check_pressed(MOVE_UP) || keyboard_check_pressed(MOVE_LEFT)|| keyboard_check_pressed(MOVE_DOWN){
	var inst = instance_create_depth(rhythm_line_x, 0, OBJ_MAX_DEPTH, obj_rhythm_line_arrows_vfx);
	inst.keyDir = keyboard_key;
}

if (music_started){
	if (!stop_rhythm_game){
		// How long an arrow takes to travel from its spawn point to rhythm_line_x, in seconds.
		// Distance cancels out of block_speed's formula, so this reduces to just tempo and the multiplier.
		var travel_time = 240/(tempo*block_speed_multiplier);

		// Ground truth: how many whole beats the song will have played through by the time an arrow
		// spawned *right now* would arrive at rhythm_line_x. Scanning ahead by travel_time is what
		// makes the arrow land on the line exactly on the beat, instead of arriving travel_time late.
		var target_beat_index = floor((obj_music_manager.song_current_runtime + travel_time) / beat_unit);

		// Catch up to that index. Normally this runs once per beat (0 or 1 iterations per step);
		// the while loop just means a frame hitch that skips past more than one beat won't leave
		// us permanently behind, it'll spawn the missed beats immediately and keep going.
		while (next_beat_index <= target_beat_index && !stop_rhythm_game){
			var arrow_y;
			//var randint = irandom(2);
			//while(randint == last_arrow_dir){
			//	randint = irandom(2);
			//}

			//if randint == 0{
			//	arrow_y = r1_arrow_y;
			//}
			//else if randint == 1{
			//	arrow_y = r2_arrow_y;
			//}
			//else{
			//	arrow_y = r3_arrow_y;
			//}
			//last_arrow_dir = randint;
			
			arrow_y = r2_arrow_y;

			if arrows[bar][beat] == 1{
				instance_create_depth(camera_get_view_x(view_camera[0])+right_border, arrow_y, OBJ_MAX_DEPTH, obj_arrow);
			}

			beat++;
			if beat >= 16{
				beat = 0;
				bar++;
				if bar >= array_length(arrows){
					stop_rhythm_game = true;
				}
			}

			next_beat_index++;
		}
	}
	else{
		if !instance_exists(obj_arrow){
			destroy_rhythm_game = true;
		}
	}
}

if destroy_rhythm_game && alarm[0] == -1{
	alarm[0] = 120;
}