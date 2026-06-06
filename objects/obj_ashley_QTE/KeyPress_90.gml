if !hammer_out_of_range{
	instance_create_depth(hammer_target_x[0], hammer_target_y[0], depth, obj_glass_shatter);
	audio_play_sound(sfx_glass_shatter, 1, false);
	ashley_index = 1;
	alarm[0] = ashley_stun_time;
	if array_length(hammer_target_x)>1{
	array_delete(hammer_target_x, 0, 1);
	array_delete(hammer_target_y, 0, 1);
	}
	else{
		instance_destroy(self);
	}
}