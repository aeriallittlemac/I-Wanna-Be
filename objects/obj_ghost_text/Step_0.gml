if angle>0 && !check_angle{
	fade_move_speed*=-1;
	check_angle = true;
}
if timer > 0 {
	timer -= 1/room_speed;
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






