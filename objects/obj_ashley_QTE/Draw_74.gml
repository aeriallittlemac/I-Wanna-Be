draw_sprite_ext(spr_black_filter, -1, 0, 0, minimap_scale, minimap_scale, 0, c_white, 0.8);
draw_set_font(message_pixel_font);
draw_sprite_ext(spr_ashley_silhouette, ashley_index, 135*minimap_scale, 0, minimap_scale*character_scale, minimap_scale*character_scale, 0, c_white, 0.8);
draw_text_transformed_color(235, 300, ashley_message, 1, 1, 10, c_yellow, c_orange, c_orange, c_orange, 1);
draw_set_font(minigame_text_pixel_font);
draw_text_ext_transformed_color(50, 80, minigame_text, 30, line_width, 1, 1, 8, c_white, c_white, c_white, c_white, 1);
draw_sprite_ext(spr_white_filter, -1, 0, 0, minimap_scale, minimap_scale, 0, c_red, tint_alpha);