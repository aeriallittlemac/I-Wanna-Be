event_inherited();
audio_stop_all();
audio_play_sound(sfx_school_bell, 1, false);
var inst = instance_create_depth(15, 50, OBJ_MAX_DEPTH, obj_ghost_text)
with inst{
	default_pixel_font = font_add("joystix monospace.otf", 45*2, false, false, 32, 128);
	overlay_text = "Hours later\n(You ate lunch)";
	angle = 0;
	timer = 0;
	fade_speed = 0.4;
}
global.cutscene = false;
global.game_time = "3:30 pm";