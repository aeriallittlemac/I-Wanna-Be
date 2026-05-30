hammer_out_of_range = sqrt((hammer_target_y[0]-hammer_y)*(hammer_target_y[0]-hammer_y)+(hammer_target_x[0]-hammer_x)*(hammer_target_x[0]-hammer_x)) > hammer_range;
if hammer_out_of_range{
	draw_sprite_ext(spr_hammer, 0, hammer_x*minimap_scale, hammer_y*minimap_scale, minimap_scale, minimap_scale, 0, c_white, 1);
	draw_sprite_ext(spr_hammer_arrow, -1, hammer_x*minimap_scale, hammer_y*minimap_scale, minimap_scale, minimap_scale, arctan2(hammer_y-hammer_target_y[0], hammer_target_x[0]-hammer_x)*180/pi, c_white, 1);
}
else{
	draw_sprite_ext(spr_hammer, -1, hammer_x*minimap_scale, hammer_y*minimap_scale, minimap_scale, minimap_scale, 0, c_white, 1);
}
draw_set_font(timer_pixel_font);
draw_text_transformed_colour(170*minimap_scale, 10*minimap_scale, timer,1, 1, -20, c_white, c_white, c_white, c_white, 1);