minimap_scale = room_get_viewport(room,0)[3]/RESOLUTION_W;
choice_pixel_font = font_add("joystix monospace.otf", 10, false, false, 64, 128);
timer_pixel_font = font_add("joystix monospace.otf", 25, false, false, 64, 128);
choice_sep = 30;
choice_width = 150;
choice_box_margins = 15;
max_image_scale = 1.4;
second_max_image_scale = 3;
throwable_range = 60;
throwable_target_y = 50;
image_pause = room_speed/3;
pausing = false;
original_x = 135;
original_y = -30;
choice_x = original_x;
choice_y = original_y;

ans_choice = irandom(3);
switch(ans_choice)
{
	case 0:
	choice_text = "You're a virgin.";
	break;
	case 1:
	choice_text = "Your eyes are way too small";
	break;
	case 2:
	choice_text = "You look like a zombie on meth.";
	break;
}
throw_speed = 5;
second_phase_speed_multiplier = 0.06;
original_image_scale = 0.3;
image_scale = original_image_scale;
hostile = false;
box_height = 0;
box_width = 0;