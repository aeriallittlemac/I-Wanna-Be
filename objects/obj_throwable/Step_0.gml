if !pausing{
if image_scale >= max_image_scale{
	alarm[0] = image_pause;
	pausing = true;
}
else{
	image_scale += throw_speed*delta_time/1000000;
	choice_x = original_x- (image_scale - original_image_scale)*throwable_range/max_image_scale;
	choice_y = original_y+ (image_scale - original_image_scale)*throwable_target_y/max_image_scale;
}
}
if hostile{
	if image_scale >= second_max_image_scale{
		instance_destroy(self);
	}
	else{
		image_scale += throw_speed*second_phase_speed_multiplier*delta_time/1000000;
		choice_x = original_x- (image_scale - original_image_scale)*throwable_range/max_image_scale;
		choice_y = original_y+ (image_scale - original_image_scale)*throwable_target_y/max_image_scale;
	}
}