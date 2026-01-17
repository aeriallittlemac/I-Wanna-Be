if player_facing_self && !global.cutscene && 
!global.in_dialogue &&!global.in_slideshow && !instance_exists(obj_rhythm_game_arrows)
&&!(audio_is_playing(song_band_first_song)){
	if global.day == 2{
		instance_create_depth(0,0,0,cutscene_drum_kit_debut);
		
	}
	else if global.day == 3{
		instance_create_depth(0,0,0,cutscene_drum_kit_first_practice);
	}
	//global.drumming = true;
	
}