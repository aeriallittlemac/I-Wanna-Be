if room == school_sewing_club{
	if global.day == 2 && instance_exists(obj_mei){
		// `obj_settings` step doesn't have time to reset the cutscene flag.
		global.cutscene = false;
		hint_obtain(global.hints.meeting_mei);
	}
	set_QTE_bgm(sewing_club_new);
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
	set_QTE_bgm(lab_theme);
}