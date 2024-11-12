default_pixel_font = font_add("joystix monospace.otf", font_size, false, false, 32, 128);
font_add_enable_aa(false);
draw_set_colour(font_color);
draw_set_font(default_pixel_font);
draw_text(x, y, sign_text);




