minimap_scale = room_get_viewport(room,0)[3]/RESOLUTION_W;
arrow_hit_vfx = noone;
frame_rate = 12;
anim_frame = 0;
alarm[0] = fps/frame_rate;
obj_rhythm_game_arrows.enemy_hit();