//global.cutscene = true;
audio_stop_sound(classroom);
//audio_play_sound(sfx_light_switch, 1, false);
//game_filter_set_visible("black_screen");
//teleport_npc(obj_gambino, school_main_classroom, 173, 42, DOWN)
//game_wait(0.7);
//game_filter_set_invisible("black_screen");
//game_wait(0.5);
//game_NewDialogue(dialogue_president_gambino);

var inst = instance_create_depth(15, 50, OBJ_MAX_DEPTH, obj_ghost_text)
with inst{
	default_pixel_font = font_add("joystix monospace.otf", 45*2, false, false, 32, 128);
	overlay_text = "Hours later\n(Lunch time)";
	angle = 0;
	timer = 0;
	fade_speed = 0.4;
}
teleport_npc(obj_mcronald, school_1F, 1000, 125, DOWN);
AddInstanceToActivate(inst_MCRONALD_DEBUT);
AddInstanceToActivate(inst_WEI_MICROWAVE);
global.cutscene = false;
global.game_time = "12:00 pm";
teleport_player(1140, 120, school_1F);