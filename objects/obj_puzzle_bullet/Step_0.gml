if x > 120{
	x-=bullet_speed*delta_time/1000000;
}
else{
	instance_destroy(self);
}