if audio_is_playing(global.bgm){
	song_current_runtime += delta_time / 1000000;
	//if global.bgm == song_band_first_song{
	//	if song_current_runtime > 14 && !global.storylines.Band.First_song.Frenchies_guitar{
	//		global.storylines.Band.First_song.Frenchies_guitar = true;
	//		instance_create_depth(243, 84, 0, guitar_sounds);
	//	}
	//	if  song_current_runtime > 43 && !global.storylines.Band.First_song.Weis_vocals{
	//		global.storylines.Band.First_song.Weis_vocals = true;
	//		instance_create_depth(10,84, OBJ_MAX_DEPTH, wei_sounds);
	//	}
	//}
}