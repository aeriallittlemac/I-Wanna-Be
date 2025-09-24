range = 30;
function random_guitar_sound(){
	var inst = instance_create_depth(random_range(x-range, x+range),random_range(y-range, y+range), OBJ_MAX_DEPTH, obj_ghost_text);
	with inst{
		default_pixel_font = font_add("joystix monospace.otf", 11*2, false, false, 32, 128);
		overlay_text = "Guitar noises";
		angle = 45;
		timer = 0;
		fade_speed = 0.1;
	}
}
random_guitar_sound();
alarm[0] = 1000;