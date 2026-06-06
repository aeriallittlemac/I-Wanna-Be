draw_sprite_ext(spr_PBnJ_minigame_background, -1, 0, 0, PBnJ_scale, PBnJ_scale, 0, c_white, 1);
if !pb_knife_collision(knife_x, knife_y){
draw_sprite_ext(spr_PBnJ_minigame_peanut_butter, -1, jars_x*PBnJ_scale, PB_y*PBnJ_scale, PBnJ_scale, PBnJ_scale, 0, c_white, 1);
}
if !jam_knife_collision(knife_x, knife_y){
draw_sprite_ext(spr_PBnJ_minigame_grape_jam, -1, jars_x*PBnJ_scale, grape_jam_y*PBnJ_scale, PBnJ_scale, PBnJ_scale, 0, c_white, 1);
}
draw_sprite_ext(spr_PBnJ_minigame_plate, -1, 60*PBnJ_scale, 45*PBnJ_scale, PBnJ_scale, PBnJ_scale, 0, c_white, 1);
if !toast_one_snapped{
draw_sprite_ext(spr_PBnJ_minigame_toast, -1, toast_two_x*PBnJ_scale, toast_two_y*PBnJ_scale, PBnJ_scale, PBnJ_scale, -15, c_white, 1);
draw_sprite_ext(spr_PBnJ_minigame_toast_outline, -1, toast_two_x*PBnJ_scale, toast_two_y*PBnJ_scale, PBnJ_scale, PBnJ_scale, -15, c_white, snap_to_toast_two);
}
draw_sprite_ext(spr_PBnJ_minigame_toast, -1, toast_one_x*PBnJ_scale, toast_one_y*PBnJ_scale, PBnJ_scale, PBnJ_scale, 15, c_white, 1);
draw_sprite_ext(spr_PBnJ_minigame_toast_outline, -1, toast_one_x*PBnJ_scale, toast_one_y*PBnJ_scale, PBnJ_scale, PBnJ_scale, 15, c_white, snap_to_toast_one);
draw_sprite_ext(spr_PBnJ_minigame_toast_outline, -1, plate_x*PBnJ_scale, plate_y*PBnJ_scale, PBnJ_scale, PBnJ_scale, 15, c_white, toast_one_snap_to_plate);
for(var i=0; i<array_length(smear_stack); i++){
	if smear_stack[i] == "pb"{
		draw_sprite_ext(spr_PBnJ_minigame_pb_smear, -1, plate_x*PBnJ_scale, plate_y*PBnJ_scale, PBnJ_scale, PBnJ_scale, 0, c_white, 1);
	}
	else if smear_stack[i] == "jam"{
		draw_sprite_ext(spr_PBnJ_minigame_jam_smear, -1, plate_x*PBnJ_scale, plate_y*PBnJ_scale, PBnJ_scale, PBnJ_scale, 0, c_white, 1);
	}
}
if toast_one_snapped{
draw_sprite_ext(spr_PBnJ_minigame_toast, -1, toast_two_x*PBnJ_scale, toast_two_y*PBnJ_scale, PBnJ_scale, PBnJ_scale, -15, c_white, 1);
draw_sprite_ext(spr_PBnJ_minigame_toast_outline, -1, toast_two_x*PBnJ_scale, toast_two_y*PBnJ_scale, PBnJ_scale, PBnJ_scale, -15, c_white, snap_to_toast_two);
draw_sprite_ext(spr_PBnJ_minigame_toast_outline, -1, plate_x*PBnJ_scale, plate_y*PBnJ_scale, PBnJ_scale, PBnJ_scale, -15, c_white, toast_two_snap_to_plate);
}

draw_sprite_ext(spr_PBnJ_minigame_knife, knife_index, knife_x*PBnJ_scale, knife_y*PBnJ_scale, PBnJ_scale, PBnJ_scale, 0, c_white, 1);
draw_sprite_ext(spr_PBnJ_minigame_knife_outline, -1, knife_x*PBnJ_scale, knife_y*PBnJ_scale, PBnJ_scale, PBnJ_scale, 0, c_white, snap_to_knife);

draw_sprite_ext(spr_PBnJ_minigame_hand, hand_index, hand_x*PBnJ_scale, hand_y*PBnJ_scale, PBnJ_scale, PBnJ_scale, 0, c_white, 1);
if pb_knife_collision(knife_x, knife_y){
draw_sprite_ext(spr_PBnJ_minigame_peanut_butter, -1, jars_x*PBnJ_scale, PB_y*PBnJ_scale, PBnJ_scale, PBnJ_scale, 0, c_white, 1);
}
if jam_knife_collision(knife_x, knife_y){
draw_sprite_ext(spr_PBnJ_minigame_grape_jam, -1, jars_x*PBnJ_scale, grape_jam_y*PBnJ_scale, PBnJ_scale, PBnJ_scale, 0, c_white, 1);
}
