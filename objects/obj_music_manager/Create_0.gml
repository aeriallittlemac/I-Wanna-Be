minimap_scale = room_get_viewport(room,0)[3]/RESOLUTION_W;
global.bgm = noone;
song_current_runtime = 0;
audio_vis_frame_rate = 12;
alarm[0] = room_speed/audio_vis_frame_rate;
visualizer_index = 0;