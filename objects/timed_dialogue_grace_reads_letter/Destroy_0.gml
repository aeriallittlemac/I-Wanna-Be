//audio_sound_gain()
var inst = instance_create_depth(15, 50, OBJ_MAX_DEPTH, obj_ghost_text)
		with inst{
			default_pixel_font = font_add("joystix monospace.otf", 45*2, false, false, 32, 128);
			overlay_text = "10 seconds later\n";
			angle = 0;
			timer = 0;
			fade_speed = 0.4;
		}
		teleport_npc(obj_grace, school_1F, 700, 125, LEFT);
		teleport_npc(obj_brooklyn, school_1F, 760, 125, LEFT);
		teleport_npc(obj_mei, school_1F, 810, 125, LEFT);
		
		npc_move_to_pos(obj_grace, 1, 0, 570, obj_grace.y);
		npc_move_to_pos(obj_brooklyn, 1, 0, 615, obj_grace.y);
		npc_move_to_pos(obj_mei, 1, 0, 660, obj_grace.y);
		instance_create_depth(0,0,0,player_n_grace);
		
		global.cutscene = false;
		global.game_time = "5:00 pm";
		teleport_player(840, 120, school_1F);
		move_to_pos(1, 0, 705, obj_player.y)
		game_NewDialogue(timed_dialogue_grace_rips_frenchie_apart);