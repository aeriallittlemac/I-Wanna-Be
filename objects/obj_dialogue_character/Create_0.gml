with (obj_dialogue_character) {
    if (id != other.id) {
        instance_destroy(); 
    }
}

minimap_scale = room_get_viewport(room,0)[3]/RESOLUTION_W;
tempo = 100;
character_silhouette = noone;
character_frame_rate = 12;
character_anim_frame = 0;
character_offscreen_left_x = -60;
character_offscreen_right_x = 330;
character_target_x = 135;
character_x = character_offscreen_left_x;
character_y = 50;
character_speed = 7;
alarm[1] = 120/character_frame_rate*120/tempo;
start = false;
alarm[0] = 1;
timer = 5;
character_scale = 1;