minimap_scale = room_get_viewport(room,0)[3]/RESOLUTION_W;
draw_set_font(title_screen);
draw_text_transformed_color(70 * minimap_scale, 80,"Start Game", 0.5, 0.5, 0, c_black, c_black, c_black, c_black,1);
draw_set_font(any_key);
draw_text_transformed_color(70 * minimap_scale, 200,"Press any key to start", 0.5, 0.5, 0, c_black, c_black, c_black, c_black,1);