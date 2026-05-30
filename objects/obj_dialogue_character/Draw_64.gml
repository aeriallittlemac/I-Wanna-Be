draw_sprite_ext(spr_black_filter, -1, 0, 0, minimap_scale, minimap_scale, 0, c_white, 0.5);
if character_silhouette != noone{
	draw_sprite_ext(character_silhouette, character_anim_frame, character_x*minimap_scale, character_y*minimap_scale, character_scale*minimap_scale, character_scale*minimap_scale, 0, c_white, 1 );
}