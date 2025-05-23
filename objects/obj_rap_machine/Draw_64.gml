image_speed = 1;
anim_frame +=  anim_frame_rate/room_speed;

draw_set_color(c_white);
draw_set_font(default_pixel_font);
draw_sprite_ext(spr_black_filter, 0, 0, 0, minimap_scale, minimap_scale, 0, c_white, 0.7);
if rapper_hurt && hurt_timer >=0 {
	draw_sprite_ext(rapper_hurt_anim, floor(anim_frame), rapper_x * minimap_scale, rapper_y * minimap_scale, rapper_scale, rapper_scale, 0, c_white, 1)
	hurt_timer --;
	if hurt_timer <= 0{
		rapper_hurt = false;
	}
}
else{
if rappers_turn{
	draw_sprite_ext(rapper_rap_anim, floor(anim_frame), rapper_x * minimap_scale, rapper_y * minimap_scale, rapper_scale, rapper_scale, 0, c_white, 1);
}
else{
	draw_sprite_ext(rapper_sprite, 0, rapper_x * minimap_scale, rapper_y * minimap_scale, rapper_scale, rapper_scale, 0, c_white, 1);
}
}
if opponent_hurt && hurt_timer >=0 {
	draw_sprite_ext(opponent_hurt_anim, floor(anim_frame), opponent_x * minimap_scale, opponent_y * minimap_scale, opponent_scale, opponent_scale, 0, c_white, 1);
	hurt_timer --;
	if hurt_timer <= 0{
		opponent_hurt = false;
	}
}
else{
	if !rappers_turn{
		draw_sprite_ext(opponent_rap_anim, floor(anim_frame), opponent_x * minimap_scale, opponent_y * minimap_scale, opponent_scale, opponent_scale, 0, c_white, 1);
	}
	else{
		draw_sprite_ext(opponent_sprite, 0, opponent_x * minimap_scale, opponent_y * minimap_scale, opponent_scale, opponent_scale, 0, c_white, 1);
	}
}
draw_text_transformed(rap_text_x * minimap_scale, rap_text_y * minimap_scale, display_line, 0.5, 0.5, 0);
//draw_text_transformed(50*minimap_scale, (140 - 50)*minimap_scale, display_line, 0.5, 0.5, 10)