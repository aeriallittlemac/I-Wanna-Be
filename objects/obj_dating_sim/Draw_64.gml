draw_sprite_ext(spr_romance_filter,-1, frame_x*minimap_scale, 0, minimap_scale, minimap_scale, 0, c_white, 1);
if lives_left >0{
	draw_sprite_ext(spr_health,2-lives_left, 150, 100, minimap_scale, minimap_scale, 0, c_white, 1);
}