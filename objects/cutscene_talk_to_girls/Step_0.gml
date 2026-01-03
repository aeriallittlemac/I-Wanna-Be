if global.storylines.Sewing_Club.Day_Three.talked_to.ashley &&
global.storylines.Sewing_Club.Day_Three.talked_to.brooklyn &&
global.storylines.Sewing_Club.Day_Three.talked_to.grace &&
global.storylines.Sewing_Club.Day_Three.talked_to.mei
{
	audio_stop_sound(sewing_club_new);
	var inst = instance_create_depth(15, 50, OBJ_MAX_DEPTH, obj_ghost_text)
	with inst{
		default_pixel_font = font_add("joystix monospace.otf", 45*2, false, false, 32, 128);
		overlay_text = "Hours later\n(Lunch time)";
		angle = 0;
		timer = 0;
		fade_speed = 0.4;
	}
	teleport_npc(obj_mcronald, school_1F, 772, 125, DOWN);
	AddInstanceToActivate(inst_MCRONALD_INTERJECTION);
	global.cutscene = false;
	global.game_time = "5:00 pm";
	teleport_player(850, 120, school_1F);
	instance_destroy(self);
}