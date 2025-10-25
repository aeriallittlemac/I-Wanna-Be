original_arrow = false;
if instance_number(obj_arrow) == 1{
	original_arrow = true
}
original_timer = 0;
arrow_sprite = spr_arrows;
minimap_scale = room_get_viewport(room,0)[3]/RESOLUTION_W;
if y == obj_rhythm_game_arrows.r1_arrow_y{
	arrow_num = 1;
}
if y == obj_rhythm_game_arrows.r2_arrow_y{
	var left_or_right = irandom(1);
	if left_or_right == 0{
		arrow_num = 0;
	}
	else{
		arrow_num = 2;
	}
}
if y == obj_rhythm_game_arrows.r3_arrow_y{
	arrow_num = 3;
}