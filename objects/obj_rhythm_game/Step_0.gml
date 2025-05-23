//if first_frame{
	
//}
rhythm_line_x_pos += (stop*line_speed_dir*224*tempo*(delta_time/1000000))/240; 
if temp_input > player_score{
	var inst = instance_create_depth(vfx_offset+rhythm_line_x_pos , y + 10 + (temp_input_type == "kick")*30 , OBJ_MAX_DEPTH, obj_ghost_text)
	with inst{
	default_pixel_font = font_add("joystix monospace.otf", 11*2, false, false, 32, 128);
	overlay_text = "Missed";
	angle = -45;
	timer = 0;
	fade_speed = 1;
	}
	if player_score > 0{
		player_score --;
		misses++;
	}
	temp_input = player_score;
}
if rhythm_line_x_pos >= 106 && bars == 0{
	rhythm_line_x_pos = 105;
	audio_play_sound(song, 1, false);
	instance_destroy(obj_rhythm_block_kick_ghost);
	line_speed_dir = -1;
	for(var k=0; k<16; k++){
		if beatmap_kicks[bars][k] == 1 && !(first_beat && k==0){
			var inst = instance_create_depth((16-k)*unit, y, depth-1, obj_rhythm_block_kick);
			if k == 0{
				if beatmap_kicks[bars][1] == 1{
					inst.kick_sprite = spr_rhythm_block_kick_small;
				}
			}
			else if k <=14{
				if beatmap_kicks[bars][k-1] == 1 || beatmap_kicks[bars][k+1] == 1{
					inst.kick_sprite = spr_rhythm_block_kick_small;
				}
			}
			else{
				if beatmap_kicks[bars][15] == 1{
					inst.kick_sprite = spr_rhythm_block_kick_small;
				}
			}
		}
		else{
			first_beat = false;
		}
		if beatmap_snares[bars][k] == 1{
			instance_create_depth((16-k)*unit, y, depth-1, obj_rhythm_block_snare);
		}
	}
	if bars < array_length(beatmap_kicks) && bars+1 < array_length(beatmap_kicks){
		if beatmap_kicks[bars+1][0] == 1 && !instance_position(unit, 0, obj_rhythm_block_kick_ghost){
			instance_create_depth(0, y, depth-1, obj_rhythm_block_kick_ghost);
		}
	}
	bars++;
}
if rhythm_line_x_pos > 0 && endofbar() && bars !=0{
	rhythm_line_x_pos = 105;
	instance_destroy(obj_rhythm_block_kick_ghost);
	line_speed_dir = -1;
	for(var k=0; k<16; k++){
		if beatmap_kicks[bars][k] == 1 && !(first_beat && k==0){
			var inst = instance_create_depth((16-k)*unit, y, depth-1, obj_rhythm_block_kick);
			if k == 0{
				if beatmap_kicks[bars][1] == 1{
					inst.kick_sprite = spr_rhythm_block_kick_small;
				}
			}
			else if k <=14{
				if beatmap_kicks[bars][k-1] == 1 || beatmap_kicks[bars][k+1] == 1{
					inst.kick_sprite = spr_rhythm_block_kick_small;
				}
			}
			else{
				if beatmap_kicks[bars][15] == 1{
					inst.kick_sprite = spr_rhythm_block_kick_small;
				}
			}
		}
		else{
			first_beat = false;
		}
		if beatmap_snares[bars][k] == 1{
			instance_create_depth((16-k)*unit, y, depth-1, obj_rhythm_block_snare);
		}
	}
	if bars < array_length(beatmap_kicks) && bars+1 < array_length(beatmap_kicks){
		if beatmap_kicks[bars+1][0] == 1 && !instance_position(unit, 0, obj_rhythm_block_kick_ghost){
			instance_create_depth(0, y, depth-1, obj_rhythm_block_kick_ghost);
		}
	}
	bars++;
}

if rhythm_line_x_pos < 0 && endofbar() && bars !=0{
	rhythm_line_x_pos = -118;
	instance_destroy(obj_rhythm_block_kick_ghost);
	line_speed_dir = 1;
	for(var k=0; k<16; k++){
		if beatmap_kicks[bars][k] == 1 && !(first_beat && k==0){
			var inst = instance_create_depth(k*unit, y, depth-1, obj_rhythm_block_kick);
			if k == 0{
				if beatmap_kicks[bars][1] == 1{
					inst.kick_sprite = spr_rhythm_block_kick_small;
				}
			}
			else if k <=14{
				if beatmap_kicks[bars][k-1] == 1 || beatmap_kicks[bars][k+1] == 1{
					inst.kick_sprite = spr_rhythm_block_kick_small;
				}
			}
			else{
				if beatmap_kicks[bars][15] == 1{
					inst.kick_sprite = spr_rhythm_block_kick_small;
				}
			}
		}
		else{
			first_beat = false;
		}
		if beatmap_snares[bars][k] == 1{
			instance_create_depth(k*unit, y, depth-1, obj_rhythm_block_snare);
		}
		
	}
	if bars < array_length(beatmap_kicks) && bars+1 < array_length(beatmap_kicks){
		if beatmap_kicks[bars+1][0] == 1 && !instance_position(16*unit, 0, obj_rhythm_block_kick_ghost){
			instance_create_depth(16*unit, y, depth-1, obj_rhythm_block_kick_ghost);
		}
	}
	bars++;
}
//if bars >= array_length(beatmap_kicks){
//	instance_destroy(self);
//}
if audio_is_playing(song){
song_timer += delta_time / 1000000;
//show_debug_message(song_timer);
	if song_timer > audio_sound_length(song){
		instance_destroy(self);
	}
}

if keyboard_check_pressed(ord("Z")) || keyboard_check_pressed(ord("X")){
	temp_input++;
	temp_input_type = "kick"
}
else if keyboard_check_pressed(vk_left){
	temp_input++;
	temp_input_type = "snare"
}
