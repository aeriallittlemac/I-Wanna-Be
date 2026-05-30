draw_sprite_ext(spr_black_filter, -1, 0, 0, minimap_scale, minimap_scale, 0, c_white, 0.8);
draw_set_font(message_pixel_font);
draw_text_ext_transformed_color(135, 100, ashley_message, line_sep, line_width, 1, 1, 10, c_yellow, c_orange, c_orange, c_orange, 1);