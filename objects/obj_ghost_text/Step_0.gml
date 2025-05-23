
if timer > 0 {
	timer --;
	x += dcos(angle)*fade_move_speed;
	y += dsin(angle)*fade_move_speed;
}
else{
	text_alpha -= fade_speed/100;
	x += dcos(angle)*fade_move_speed;
	y += dsin(angle)*fade_move_speed;
	if text_alpha <=0 {
		instance_destroy(self);
	}
}






