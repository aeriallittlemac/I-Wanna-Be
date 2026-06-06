audio_stop_sound(sfx_heartbeat);
var inst = instance_create_depth(0,0,0,glass_shatter_wait);
inst.win_cutscene = win_cutscene;
inst.alarm[0] = room_speed*0.4;