draw_self();
draw_sprite_ext(spr_bobby_wooden_drawer_outline, -1, x, y, 1, 1, 0, c_white, in_detect_range);
draw_sprite_ext(spr_interact, interact_image_index, x, y, 1, 1, 0, c_white, in_detect_range);
show_debug_message(interact_image_index);
if !in_detect_range{
	interact_image_index = 0;
	alarm[0] = -1;
	
}
else{
	if !previously_in_range{
		alarm[0] = interact_anim_time;
	}
	else{
		if alarm[0] == -1{
		interact_image_index = sprite_get_number(spr_interact)-1;
		}
	}
	
}
previously_in_range = in_detect_range;