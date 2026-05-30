if room == school_sewing_club{
	if global.day == 2 && instance_exists(obj_mei){
		// `obj_settings` step doesn't have time to reset the cutscene flag.
		global.cutscene = false;
		hint_obtain(global.hints.meeting_mei);
	}
	if global.day == 2{
	set_QTE_bgm(sewing_club_happy);
	}
	else{
		if global.storylines.Grace.truth_or_dare_confession{
			if global.storylines.Grace.deny_rumor{
				
			}
			else{
				set_QTE_bgm(sewing_club_happy);
			}
		}
		else{
			set_QTE_bgm(sewing_club_happy);
		}
	}
}
if !audio_is_playing(morning){
if room == school_2F && global.game_time = "10:00 am"{
	audio_play_sound(morning, 1, true);
}
}
if room == school_1F && global.game_time = "12:00 pm"{
	instance_activate_object(INST_LUNCH_TABLE);
}
else{
	if instance_exists(INST_LUNCH_TABLE){
		instance_deactivate_object(INST_LUNCH_TABLE);
	}
}
if room == school_lab{
	audio_stop_all();
	set_QTE_bgm(lab_theme);
}