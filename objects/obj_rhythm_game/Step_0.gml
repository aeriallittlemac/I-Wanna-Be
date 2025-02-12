//if first_frame{
	
//}
rhythm_line_x_pos += (stop*line_speed_dir*224*tempo*(delta_time/1000000))/240; 

if rhythm_line_x_pos >= 106 && bars == 0{
	rhythm_line_x_pos = 105;
	audio_play_sound(song, 1, false);
	instance_destroy(obj_rhythm_block_kick_ghost);
	line_speed_dir = -1;
	for(var k=0; k<16; k++){
		if beatmap_kicks[bars][k] == 1 && !(first_beat && k==0){
			instance_create_depth((16-k)*unit, 0, depth-1, obj_rhythm_block_kick);
		}
		else{
			first_beat = false;
		}
		if beatmap_snares[bars][k] == 1{
			instance_create_depth((16-k)*unit, 0, depth-1, obj_rhythm_block_snare);
		}
	}
	if bars < array_length(beatmap_kicks) && bars+1 < array_length(beatmap_kicks){
		if beatmap_kicks[bars+1][0] == 1 && !instance_position(unit, 0, obj_rhythm_block_kick_ghost){
			instance_create_depth(0, 0, depth-1, obj_rhythm_block_kick_ghost);
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
			instance_create_depth((16-k)*unit, 0, depth-1, obj_rhythm_block_kick);
		}
		else{
			first_beat = false;
		}
		if beatmap_snares[bars][k] == 1{
			instance_create_depth((16-k)*unit, 0, depth-1, obj_rhythm_block_snare);
		}
	}
	if bars < array_length(beatmap_kicks) && bars+1 < array_length(beatmap_kicks){
		if beatmap_kicks[bars+1][0] == 1 && !instance_position(unit, 0, obj_rhythm_block_kick_ghost){
			instance_create_depth(0, 0, depth-1, obj_rhythm_block_kick_ghost);
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
			instance_create_depth(k*unit, 0, depth-1, obj_rhythm_block_kick);
		}
		else{
			first_beat = false;
		}
		if beatmap_snares[bars][k] == 1{
			instance_create_depth(k*unit, 0, depth-1, obj_rhythm_block_snare);
		}
		
	}
	if bars < array_length(beatmap_kicks) && bars+1 < array_length(beatmap_kicks){
		if beatmap_kicks[bars+1][0] == 1 && !instance_position(16*unit, 0, obj_rhythm_block_kick_ghost){
			instance_create_depth(16*unit, 0, depth-1, obj_rhythm_block_kick_ghost);
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
