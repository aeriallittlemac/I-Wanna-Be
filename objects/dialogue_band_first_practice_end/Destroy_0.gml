	global.day = 3;
	global.game_time = "12:00 pm"
	AddInstanceToDestroy(inst_1D032C1A);
	AddInstanceToActivate(inst_210D4C1);
	game_camera_change_settings(obj_player,-1);
	npc_animate(obj_frenchie, spr_frenchie_down)
	teleport_npc(obj_frenchie, school_1F, 875, 135, DOWN);
	npc_animate(obj_mcronald, spr_mcronald_down)
	teleport_npc(obj_mcronald, school_1F, 950, 120, DOWN);
	npc_animate(obj_wei, spr_wei_down)
	teleport_npc(obj_wei, school_1F, 850, 135, DOWN);
	teleport_player(910, 110, school_1F);
	instance_activate_object(INST_LUNCH_TABLE);
//exit to lunch scene