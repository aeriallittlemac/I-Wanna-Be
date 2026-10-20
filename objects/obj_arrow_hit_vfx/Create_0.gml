minimap_scale = room_get_viewport(room,0)[3]/RESOLUTION_W;
arrow_hit_vfx = noone;
frame_rate = 12;
anim_frame = 0;
alarm[0] = fps/frame_rate;
with obj_rhythm_game_arrows{
	enemy_hit();
	if(string_length(lyrics) < lyrics_max_length){
		lyrics+= lyric_syllables[lyric_index];
	}
	else{
		lyrics= lyric_syllables[lyric_index];
	}
	lyric_index++;

}