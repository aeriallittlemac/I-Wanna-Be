if anim_frame < 4{
	anim_frame++;
	alarm[0] = 120/frame_rate;
}
else{
	instance_destroy(self);
}