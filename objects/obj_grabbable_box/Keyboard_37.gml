if drag_speed_x>= 0{
	drag_speed_x = initial_speed_x;
}
drag_speed_x -= drag_accel*delta_time/1000000;