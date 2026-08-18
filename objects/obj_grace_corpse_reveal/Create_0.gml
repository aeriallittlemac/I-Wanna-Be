minimap_scale = room_get_viewport(room,0)[3]/RESOLUTION_W;
alpha = 0;
alpha_change = 0.01;
alarm[0] = 1;
audio_stop_all();
audio_play_sound(sfx_pre_jumpscare, 1, false);