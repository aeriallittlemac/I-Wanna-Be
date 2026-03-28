if (room == school_1F 
	&& instance_exists(obj_welcome_table) 
	&& obj_player.x > obj_welcome_table.x
) {
	if (instance_exists(obj_stealth_mission_border)) {
		// Prevent possible double-initialization during debugging.
		exit;
	}

	game_camera_change_settings(obj_grace, 1.5)
	game_wait(7)
	instance_create_depth(0,0,0,obj_stealth_mission_bars);
	AddInstanceToActivate(INST_STEALTH_ZONE);
	instance_create_depth(INST_STEALTH_ZONE.x-9,0,0,obj_stealth_mission_border);
	instance_create_depth(0, 0, 0, stealth_camera_point)
	instance_destroy(self);
	//instance_create_depth(0,0,0,obj_stealth_mission_bars);
}
