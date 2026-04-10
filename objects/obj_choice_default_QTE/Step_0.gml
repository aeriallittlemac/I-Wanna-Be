if start{
timer -= delta_time/1000000;
	if timer <= 0{
		alarm[2] = 1;
		start = false;
	}
}