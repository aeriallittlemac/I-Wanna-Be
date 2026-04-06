AddInstanceToActivate(inst_FIRST_BAND_PRACTICE);
teleport_npc(obj_wei, school_B1, 1032, 123, RIGHT);
teleport_npc(obj_guy, school_B1, 1290, 123, LEFT);
teleport_player(1128, 114, school_B1, cutscene_lab_dismissed_1);
global.game_time = "11:00 am";
if instance_number(obj_dialogue_circle) > 3{
	change_female_affinity(-40);
	var inst = instance_create_depth(15, 50, OBJ_MAX_DEPTH, obj_ghost_text)
	with inst{
		default_pixel_font = font_add("joystix monospace.otf", 30*2, false, false, 32, 128);
		overlay_text = "How did you not\ntalk to any chicks?";
		angle = 0;
		timer = 0;
		fade_speed = 0.4;
	}
}
else{
	var inst = instance_create_depth(15, 50, OBJ_MAX_DEPTH, obj_ghost_text)
	with inst{
		default_pixel_font = font_add("joystix monospace.otf", 45*2, false, false, 32, 128);
		overlay_text = "Lab over";
		angle = 0;
		timer = 0;
		fade_speed = 0.4;
	}
}
