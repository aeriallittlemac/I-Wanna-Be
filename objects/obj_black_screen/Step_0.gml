screen_duration -= delta_time/1000000;
if screen_duration <= 0{
	instance_destroy(self);
}