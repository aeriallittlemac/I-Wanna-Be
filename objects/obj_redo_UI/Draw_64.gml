for(var i = 0; i < life_count; i++){
draw_sprite_ext(star_base, 0, star_offset_x + star_spacing*i, star_offset_y, minimap_scale, minimap_scale, 0, c_white, 1);
draw_sprite_ext(star_sprite, 0, star_offset_x + star_spacing*i, star_offset_y, minimap_scale, minimap_scale, 0, c_white, 1);
}
if star_dying{
	draw_sprite_ext(star_base, 0, star_offset_x + star_spacing*life_count, star_offset_y, minimap_scale, minimap_scale, 0, c_white, 1);
	draw_sprite_ext(star_sprite, 0, star_offset_x + star_spacing*life_count, star_offset_y, minimap_scale, minimap_scale, 0, c_white, dying_star_alpha);
	dying_star_alpha -= star_die_speed;
	if dying_star_alpha <= 0{
		star_dying = false;
		dying_star_alpha = 1;
		alarm[0] = 60;
	}
	
}