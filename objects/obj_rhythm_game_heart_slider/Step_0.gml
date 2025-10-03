//if first_frame{
	
//}

if offset_time <= 0{
	rhythm_line_x_pos += (!stop*line_speed_dir*(right_border - left_border)*tempo*(delta_time/1000000))/240; 
if obj_music_manager.song_current_runtime >= start_time{
	stop = false;
	song_timer += delta_time / 1000000;
if temp_input > player_score{
	var inst = instance_create_depth(rhythm_line_x_pos, y + 10 + (temp_input_type == "kick")*30, OBJ_MAX_DEPTH, obj_ghost_text)
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
if rhythm_line_x_pos >= right_border && bars == 0{
	rhythm_line_x_pos = right_border;
	instance_destroy(obj_rhythm_block_kick_ghost);
	line_speed_dir = -1;
	for(var k=0; k<16; k++){
		if beatmap_kicks[bars][k] == 1 && !(first_beat && k==0){
			var inst = instance_create_depth((16-k)*unit + kick_offset_x, y + kick_offset_y, depth-1, obj_rhythm_block_kick);
			inst.kick_sprite = kick_sprite;
		}
		else{
			first_beat = false;
		}
		if beatmap_snares[bars][k] == 1{
			var inst = instance_create_depth((16-k)*unit + snare_offset_x, y + snare_offset_y, depth-1, obj_rhythm_block_snare);
			inst.snare_sprite = snare_sprite;
		}
	}
	if bars < array_length(beatmap_kicks) && bars+1 < array_length(beatmap_kicks){
		if beatmap_kicks[bars+1][0] == 1 && !instance_position(unit + kick_offset_x, y + kick_offset_y, obj_rhythm_block_kick_ghost){
			instance_create_depth(kick_offset_x, y + kick_offset_y, depth-1, obj_rhythm_block_kick_ghost);
		}
	}
	bars++;
}
if rhythm_line_x_pos > 134 && endofbar() && bars !=0{
	rhythm_line_x_pos = right_border;
	instance_destroy(obj_rhythm_block_kick_ghost);
	line_speed_dir = -1;
	for(var k=0; k<16; k++){
		if beatmap_kicks[bars][k] == 1 && !(first_beat && k==0){
			var inst = instance_create_depth((16-k)*unit + kick_offset_x, y + kick_offset_y, depth-1, obj_rhythm_block_kick);
			inst.kick_sprite = kick_sprite;
		}
		else{
			first_beat = false;
		}
		if beatmap_snares[bars][k] == 1{
			var inst = instance_create_depth((16-k)*unit + snare_offset_x, y + snare_offset_y, depth-1, obj_rhythm_block_snare);
			inst.snare_sprite = snare_sprite;
		}
	}
	if bars < array_length(beatmap_kicks) && bars+1 < array_length(beatmap_kicks){
		if beatmap_kicks[bars+1][0] == 1 && !instance_position(unit + kick_offset_x, y + kick_offset_y, obj_rhythm_block_kick_ghost){
			instance_create_depth(kick_offset_x, y + kick_offset_y, depth-1, obj_rhythm_block_kick_ghost);
		}
	}
	bars++;
}

if rhythm_line_x_pos < 134 && endofbar() && bars !=0{
	rhythm_line_x_pos = left_border;
	instance_destroy(obj_rhythm_block_kick_ghost);
	line_speed_dir = 1;
	for(var k=0; k<16; k++){
		if beatmap_kicks[bars][k] == 1 && !(first_beat && k==0){
			var inst = instance_create_depth(k*unit + kick_offset_x, y + kick_offset_y, depth-1, obj_rhythm_block_kick);
			//if k == 0{
			//	if beatmap_kicks[bars][1] == 1{
			//		inst.kick_sprite = spr_rhythm_block_kick_small;
			//	}
			//}
			//else if k <=14{
			//	if beatmap_kicks[bars][k-1] == 1 || beatmap_kicks[bars][k+1] == 1{
			//		inst.kick_sprite = spr_rhythm_block_kick_small;
			//	}
			//}
			//else{
			//	if beatmap_kicks[bars][15] == 1{
			//		inst.kick_sprite = spr_rhythm_block_kick_small;
			//	}
			//}
		}
		else{
			first_beat = false;
		}
		if beatmap_snares[bars][k] == 1{
			var inst = instance_create_depth(k*unit + snare_offset_x, y + snare_offset_y, depth-1, obj_rhythm_block_snare);
			inst.snare_sprite = snare_sprite;
		}
		
	}
	if bars < array_length(beatmap_kicks) && bars+1 < array_length(beatmap_kicks){
		if beatmap_kicks[bars+1][0] == 1 && !instance_position(16*unit + x + kick_offset_x, y + kick_offset_y, obj_rhythm_block_kick_ghost){
			instance_create_depth(16*unit + kick_offset_x, y + kick_offset_y, depth-1, obj_rhythm_block_kick_ghost);
		}
	}
	bars++;
}
//if bars >= array_length(beatmap_kicks){
//	instance_destroy(self);
//}
//show_debug_message(song_timer);
if song_timer >= (array_length(beatmap_kicks)-1) * (240/tempo){
		instance_destroy(obj_rhythm_line);
		instance_destroy(self);
}

if keyboard_check_pressed(CONFIRM_ACTION) || keyboard_check_pressed(CANCEL_ACTION){
	temp_input++;
	temp_input_type = "kick"
}
else if keyboard_check_pressed(MOVE_LEFT){
	temp_input++;
	temp_input_type = "snare"
}

}
else{
if rhythm_line_x_pos >= 246{
	rhythm_line_x_pos = 246
	stop = true;
	//for(var k=0; k<16; k++){
	//	if beatmap_kicks[bars][k] == 1 && !(first_beat && k==0){
	//		var inst = instance_create_depth((16-k)*unit + kick_offset_x, y + kick_offset_y, depth-1, obj_rhythm_block_kick);
			
	//		inst.kick_sprite = kick_sprite;
	//	}
	//	else{
	//		first_beat = false;
	//	}
	//	if beatmap_snares[bars][k] == 1{
	//		var inst = instance_create_depth((16-k)*unit + snare_offset_x, y + snare_offset_y, depth-1, obj_rhythm_block_snare);
	//		inst.snare_sprite = snare_sprite;
	//	}
	//}
	//if bars < array_length(beatmap_kicks) && bars+1 < array_length(beatmap_kicks){
	//	if beatmap_kicks[bars+1][0] == 1 && !instance_position(unit + kick_offset_x, y + kick_offset_y, obj_rhythm_block_kick_ghost){
	//		instance_create_depth(kick_offset_x, y + kick_offset_y, depth-1, obj_rhythm_block_kick_ghost);
	//	}
	//}
		}
	}
}
	else{
	offset_time -= delta_time/1000000;
	}
	
if !QTE && misses > max_misses{
	instance_destroy(self);
}