game_wait(1.5);
var inst = instance_create_depth(15, 50, OBJ_MAX_DEPTH, obj_ghost_text)
with inst{
	default_pixel_font = font_add("joystix monospace.otf", 45*2, false, false, 32, 128);
	overlay_text = "Hours later\n(Lunch time)";
	angle = 0;
	timer = 0;
	fade_speed = 0.4;
}
game_NewDialogue(dialogue_graces_note_1)