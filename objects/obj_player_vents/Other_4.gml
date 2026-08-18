if !audio_is_playing(qte_bgm){
	audio_stop_all();
	//audio_play_sound(scary_ambience, 1, true);
	set_QTE_bgm(qte_bgm);
	
}
audio_sound_gain(qte_bgm, 0.4, 0);