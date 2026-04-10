if image_angle<target_angle{
image_angle+=rotate_speed;
}
else{
	pause_time -= delta_time/1000000;
	if pause_time<=0 &&alarm[0]<0{
		audio_play_sound(sfx_gun_shot, 1, false);
		obj_brooklyn_QTE_new.alarm[5] = 1;
		instance_destroy(self);
		//alarm[0] = 100;
	}
}