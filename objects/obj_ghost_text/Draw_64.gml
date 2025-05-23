minimap_scale = room_get_viewport(room,0)[3]/camera_get_view_width(view_camera[0]);
draw_set_font(default_pixel_font);
draw_text_transformed_color(x * minimap_scale, y* minimap_scale, overlay_text, 0.5, 0.5, angle, c_white, c_white, c_white, c_white, text_alpha);