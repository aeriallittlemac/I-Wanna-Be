if dir == RIGHT{
	x_speed = (maze_snake_speed*delta_time/1000000);
	y_speed = 0;
}
else if dir == LEFT{
	x_speed = -(maze_snake_speed*delta_time/1000000);
	y_speed = 0;
}
else if dir == DOWN{
	x_speed = 0;
	y_speed = (maze_snake_speed*delta_time/1000000);
}
else if dir == UP{
	x_speed = 0;
	y_speed = -(maze_snake_speed*delta_time/1000000);
}

if place_meeting(x + x_speed, y, obj_maze_wall){

}

if place_meeting(x , y + y_speed, obj_maze_wall){

}
