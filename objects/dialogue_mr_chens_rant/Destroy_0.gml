event_inherited();

audio_sound_gain(morning, 0, 1000);
if !audio_is_playing(qte_bgm){
	set_QTE_bgm(qte_bgm);
}
audio_sound_gain(qte_bgm, 0,0);
audio_sound_gain(qte_bgm, 0.4,1000);