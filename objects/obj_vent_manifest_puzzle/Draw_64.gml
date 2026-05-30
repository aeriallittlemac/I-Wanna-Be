draw_sprite_ext(spr_black_filter, -1, 0, 0, minimap_scale, minimap_scale, 0, c_white, 0.8);
if !game_over{
	for(var i=0; i<9; i++){
		draw_sprite_ext(spr_vent_test, squares[i], (square_x+(i%3)*sprite_get_width(manifest_sprite))*minimap_scale, (square_y+(floor(i/3))*sprite_get_height(manifest_sprite))*minimap_scale, minimap_scale, minimap_scale, 0, c_white, 1);
	}
	
	for(var i=0; i<9; i++){
		draw_sprite_ext(spr_vent_yellow_outline, -1, (square_x+(i%3)*sprite_get_width(manifest_sprite))*minimap_scale, (square_y+(floor(i/3))*sprite_get_height(manifest_sprite))*minimap_scale, minimap_scale, minimap_scale, 0, c_white, i == selected_index);
	}
}
else{
	for(var i=0; i<9; i++){
	draw_sprite_ext(spr_vent_test, i+1, (square_x+(i%3)*sprite_get_width(manifest_sprite))*minimap_scale, (square_y+(floor(i/3))*sprite_get_height(manifest_sprite))*minimap_scale, minimap_scale, minimap_scale, 0, c_white, 1);
	}
}