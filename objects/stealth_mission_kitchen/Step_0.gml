if (room == school_3F 
	&& obj_player.x <= 530
) {
	if (instance_exists(obj_stealth_mission_border)) {
		// Prevent possible double-initialization during debugging.
		exit;
	}
	instance_create_depth(0,0,0,brooklyn_n_grace);
	game_camera_change_settings(brooklyn_n_grace, 1.5)
	game_wait(0.8);
	game_NewDialogue(dialogue_stealth_mission_brooklyn_n_grace);
	instance_create_depth(0,0,0,obj_stealth_mission_bars);
	AddInstanceToActivate(inst_STEALTH_ZONE_KITCHEN);
	instance_create_depth(inst_STEALTH_ZONE_KITCHEN.x-9,0,0,obj_stealth_mission_border);
	//instance_create_depth(0, 0, 0, stealth_camera_point)
	instance_destroy(self);
	//instance_create_depth(0,0,0,obj_stealth_mission_bars);
}
