minimap_scale = room_get_viewport(room,0)[3]/RESOLUTION_W;
tempo = 100;
left_character_silhouette = spr_bobby_silhouette;
right_character_silhouette = spr_grace_silhouette;
character_frame_rate = 12;
character_anim_frame = 0;

left_character_x = 0;
right_character_x = 200;
character_y = 20;
alarm[1] = 120/character_frame_rate*120/ tempo;
current_fps = game_get_speed(gamespeed_fps);
game_set_speed(240, gamespeed_fps)