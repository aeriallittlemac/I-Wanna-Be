if character_x>= character_offscreen_right_x{
	alarm[2] = -1;
	instance_destroy(self);
}
else{
	character_x += character_speed;
	alarm[2] = 1;
}