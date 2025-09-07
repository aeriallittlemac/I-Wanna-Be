var inst = instance_create_depth(obj_player.x,obj_player.y, OBJ_MAX_DEPTH, obj_ghost_text);
	with inst{
		default_pixel_font = font_add("joystix monospace.otf", 11*2, false, false, 32, 128);
		overlay_text = "Guitar noises";
		angle = 45;
		timer = 0.5;
		fade_speed = 0.3;
	}