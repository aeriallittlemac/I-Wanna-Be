new_val = 0;
cur_val = 0;
y_offset = 0;
change_speed = room_speed;
alarm[0] = room_speed/change_speed;
bar_show_extra_time = 0.4;
minimap_scale = room_get_viewport(room,0)[3]/RESOLUTION_W;
reoutation_font = font_add("joystix monospace.otf", 20, false, false, 64, 128);