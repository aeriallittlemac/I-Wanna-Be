if !audio_is_playing(qte_bgm){
	audio_stop_all();
	set_QTE_bgm(qte_bgm);
}