default_pixel_font = font_add("joystix monospace.otf", 16*4, false, false, 32, 128);
font_add_enable_aa(false);
overlay_text = "default";
angle = 0;
timer = 3;
fade_speed = 1;
fade_move_speed = 0.2;
text_alpha = 1;
minimap_scale = room_get_viewport(room,0)[3]/RESOLUTION_W;
