if global.pause_menu
{
	draw_sprite_ext(spr_black_filter, -1, 0, 0, minimap_scale, minimap_scale, 0, c_white, 0.5); 
	DrawMenu();
	draw_sprite_ext(player_sprite, 0, (player_x - camera_get_view_x(view_camera[0]) )*minimap_scale, player_y*minimap_scale, player_scale_x*minimap_scale, player_scale_y*minimap_scale, 0, c_black, 1);
}
else{
	draw_set_font(quest_pixel_font);
	draw_text_transformed_colour(text_x_offset, text_y_offset - 35, "Reputation: " + string(global.reputation), 1, 1, 0, c_yellow, c_orange, c_yellow, c_orange, 1);

	draw_text_transformed_colour(text_x_offset + 270, text_y_offset - 35, "Female affinity: " + string(global.female_affinity), 1, 1, 0, c_yellow, c_orange, c_yellow, c_orange, 1);
}







