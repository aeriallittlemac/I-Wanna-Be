if gun_caught{
	exit;
}
if y < target_y{
	image_angle -= spin_rate;
	fall_speed += fall_accel;
	y+=fall_speed;
}
else{
	image_angle = 0;
	y = target_y;
	alarm[0] = 20;
	gun_caught = true;
}