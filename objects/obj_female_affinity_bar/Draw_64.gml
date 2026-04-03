draw_set_font(reoutation_font);
draw_text_transformed_colour(10*minimap_scale, (110+y_offset)*minimap_scale, "Female affinity", 1, 1, 0, #CC3F9B, #CC3F9B, #CC3F9B, #CC3F9B, 1);
draw_sprite_ext(IWB_UI_female_affinity_bar, -1, 0, 0, minimap_scale, minimap_scale, 0, c_white, 1);
draw_healthbar(25*minimap_scale, (128+y_offset)*minimap_scale, 245*minimap_scale, (134+y_offset)*minimap_scale, cur_val, #4B214C, c_maroon, #A349A4, 0, true, false);