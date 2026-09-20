draw_sprite_ext(spr_time_skip, screen_index, 0, 0, minimap_scale, minimap_scale, 0, c_white, 1);
draw_set_halign(fa_center);
if screen_index >=9 && screen_index <sprite_get_number(spr_time_skip)-3{
	draw_set_font(day_font);
	draw_text_transformed_colour(RESOLUTION_W/2*minimap_scale, message_y*minimap_scale, skip_message, 1, 1, 0, c_black, c_black, c_black, c_black, 1);
}
