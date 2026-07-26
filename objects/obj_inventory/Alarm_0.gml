
if global.in_inventory{
	if inventory_anim_frame > 15{
		global.in_inventory = false;
		inventory_anim_frame = 0;
		in_animation = false;
		alarm[0] = -1;
	}
	else{
	inventory_anim_frame++;
	alarm[0] = room_speed/frame_rate;
	}
}
else{
	if inventory_anim_frame > 12{
		global.in_inventory = true;
		inventory_anim_frame = 13;
		in_animation = false;
		alarm[0] = -1;
	}
	else{
	inventory_anim_frame++;
	alarm[0] = room_speed/frame_rate;
	}
}