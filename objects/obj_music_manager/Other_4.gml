if room == school_bobbys_room{
if global.night{
	if global.day == 3{
		audio_stop_all();
		set_QTE_bgm(graces_theme);
		audio_sound_gain(graces_theme, 0.25, 0);
	}
	else{
	if !audio_is_playing(school_night){
	set_QTE_bgm(school_night)
	}
	audio_sound_gain(school_night, 0.8, 0);
	}
}
else{
	audio_stop_all();
	set_QTE_bgm(bobbys_room)
	audio_sound_gain(bobbys_room, 0.2, 0);
}

}
