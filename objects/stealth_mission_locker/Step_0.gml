if room == school_1F && obj_player.x > 1260{
	instance_create_depth(0,0,0,obj_stealth_mission_bars);
	AddInstanceToActivate(INST_STEALTH_ZONE);
	instance_create_depth(INST_STEALTH_ZONE.x-9,INST_STEALTH_ZONE.y,0,obj_stealth_mission_border);
	instance_destroy(self);
	//instance_create_depth(0,0,0,obj_stealth_mission_bars);
}