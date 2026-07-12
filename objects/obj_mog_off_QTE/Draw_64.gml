draw_sprite_ext(spr_black_filter, -1, 0, 0, minimap_scale, minimap_scale, 0, c_white, 0.8);
draw_sprite_ext(character_silhouette_right, -1, (RESOLUTION_W-character_x+right_character_x_offset)*minimap_scale, character_y*minimap_scale, character_scale*minimap_scale, character_scale*minimap_scale, 0, c_white, 1 );
draw_sprite_ext(character_silhouette_left, -1, (character_x)*minimap_scale, character_y*minimap_scale, character_scale*(minimap_scale+left_character_size_offset), character_scale*(minimap_scale+left_character_size_offset), 0, c_white, 1 );
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(minigame_text_pixel_font);
draw_text_ext_transformed_color(RESOLUTION_W*minimap_scale-200, 80, minigame_text, 30, 200, 1, 1, -35, c_white, c_white, c_white, c_white, 1);
for (var i = 0; i < array_length(connections_drawn); i++)
{
	draw_set_color(c_white);
    draw_text(20, 20 + i * 20, string(i) + ": " + string(connections_drawn[i]));
}

for (var i=0; i<array_length(connections_drawn); i++){
	if connections_drawn[i] == 1{
		draw_line_width_color(point_spawn_x[i] , point_spawn_y[i], point_spawn_x[i+1] , point_spawn_y[i+1], 5, c_lime, c_lime);	
	}
}