	global.day = 3;
	global.game_time = "12:00 pm"
	AddInstanceToDestroy(inst_1D032C1A);
	AddInstanceToActivate(inst_210D4C1);
	game_camera_change_settings(obj_player,-1);
	
	obj_npc_manager.npcs[0].initial_animation = noone;
	obj_npc_manager.npcs[5].initial_animation = noone;
	obj_npc_manager.npcs[12].initial_animation = noone;
	
	npc_animate(obj_frenchie, spr_frenchie_right)
	teleport_npc(obj_frenchie, school_1F, 910, 155, RIGHT);
	npc_animate(obj_mcronald, spr_mcronald_down)
	teleport_npc(obj_mcronald, school_1F, 945, 135, DOWN);
	npc_animate(obj_wei, spr_wei_down)
	teleport_npc(obj_wei, school_1F, 1000, 135, DOWN);
	teleport_player(980, 170, school_1F, dialogue_band_first_lunch);
	
	instance_activate_object(INST_LUNCH_TABLE);
//exit to lunch scene