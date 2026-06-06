minimap_scale = room_get_viewport(room,0)[3]/RESOLUTION_W;
audio_play_sound(sfx_heartbeat, 1, true);
character_scale = 1.4;
hammer_x = 100;
hammer_y = 70;
hammer_speed = 1.5;
hammer_target_x = array_create(0);
hammer_target_y = array_create(0);
hammer_range = 12;
hammer_out_of_range = true;
timer = 12;
ashley_message = "S-sempai??"
ashley_index = 0;
ashley_stun_time = 40;
line_sep = 60;
line_width = 500;
minigame_text = "Find the weak points and shatter the illusion."
win_cutscene = dialogue_QTE_one;
lose_cutscene = dialogue_QTE_two;
minigame_text_pixel_font = font_add("joystix monospace.otf", 12, false, false, 64, 128);
timer_pixel_font = font_add("joystix monospace.otf", 25, false, false, 64, 128);
message_pixel_font = font_add("joystix monospace.otf", 30, false, false, 64, 128);
array_push(hammer_target_x, 135);
array_push(hammer_target_y, 76);
array_push(hammer_target_x, 100);
array_push(hammer_target_y, 100);
array_push(hammer_target_x, 180);
array_push(hammer_target_y, 40);
global.QTE = true;

//stuff
tint_change = 0.03;
tint_alpha = 0;
max_tint = 0.6;

