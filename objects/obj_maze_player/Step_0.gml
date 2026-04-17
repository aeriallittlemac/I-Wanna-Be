var right_key = keyboard_check(MOVE_RIGHT);
var left_key = keyboard_check(MOVE_LEFT);
var up_key = keyboard_check(MOVE_UP);
var down_key = keyboard_check(MOVE_DOWN);
x_speed = (right_key-left_key)*(maze_player_speed*delta_time/1000000);
y_speed = (down_key-up_key)*(maze_player_speed*delta_time/1000000);
if place_meeting(x + x_speed, y, obj_maze_wall){
	x -= x_speed;
	x_speed = 0;
}

if place_meeting(x , y + y_speed, obj_maze_wall){
	y -= y_speed;
	y_speed = 0;
}
if instance_exists(obj_mei_QTE)&&y >= 56{
	obj_mei_QTE.alarm[2]=1;
	instance_destroy(obj_maze_wall);
	instance_destroy(self);
	
}