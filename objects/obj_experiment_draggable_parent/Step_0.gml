if selected{
	snapped_on = false;
	visible = true;
	right_key = keyboard_check(MOVE_RIGHT);
	left_key = keyboard_check(MOVE_LEFT);
	up_key = keyboard_check(MOVE_UP);
	down_key = keyboard_check(MOVE_DOWN);
	x += (right_key - left_key)*move_speed;
	y += (down_key - up_key)*move_speed;
}
else{
	 if sqr((x-camera_get_view_x((view_camera[0]))) - drag_x) + sqr(y - drag_y) <= sqr(snap_range){
		snapped_on = true;
		visible = false;
	 }
}