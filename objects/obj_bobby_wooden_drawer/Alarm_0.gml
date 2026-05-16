if interact_image_index < sprite_get_number(spr_interact)-1{
	interact_image_index++;
	alarm[0] = interact_anim_time;
}
else{
	alarm[0] = -1;
}


