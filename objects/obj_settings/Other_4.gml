if room == school_sewing_club{
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