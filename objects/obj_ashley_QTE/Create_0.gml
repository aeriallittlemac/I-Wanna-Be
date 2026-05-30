minimap_scale = room_get_viewport(room,0)[3]/RESOLUTION_W;
hammer_x = 100;
hammer_y = 70;
hammer_speed = 1;
hammer_target_x = array_create(0);
hammer_target_y = array_create(0);
hammer_range = 6;
hammer_out_of_range = true;
timer = 12;
ashley_message = "Breakdown breakdown breakdown breakdown breakdown"
line_sep = 60;
line_width = 500;


win_cutscene = dialogue_QTE_one;
lose_cutscene = dialogue_QTE_two;
timer_pixel_font = font_add("joystix monospace.otf", 25, false, false, 64, 128);
message_pixel_font = font_add("joystix monospace.otf", 15, false, false, 64, 128);
array_push(hammer_target_x, 135);
array_push(hammer_target_y, 76);
array_push(hammer_target_x, 100);
array_push(hammer_target_y, 100);
array_push(hammer_target_x, 180);
array_push(hammer_target_y, 40);
global.QTE = true;