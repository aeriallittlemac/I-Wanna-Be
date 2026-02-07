audio_stop_sound(sewing_club_new);
if !global.storylines.Sewing_Club.Day_Three.letters_delievered.brooklyn{
		teleport_npc(obj_frenchie, school_sewing_club, 215,45,DOWN);
		//sfx
		game_wait(0.5);
		game_NewDialogue(dialogue_frenchies_confession);
	}
	else{

	var inst = instance_create_depth(15, 50, OBJ_MAX_DEPTH, obj_ghost_text)
	with inst{
		default_pixel_font = font_add("joystix monospace.otf", 45*2, false, false, 32, 128);
		overlay_text = "Hours later\n(Lunch time)";
		angle = 0;
		timer = 0;
		fade_speed = 0.4;
	}
global.cutscene = false;
global.game_time = "5:00 pm";
teleport_player(850, 120, school_1F);
	}