//show_debug_message("yuh");
a=irandom_range(-3, 3);
b=irandom_range(-3, 3);
c=irandom_range(-3, 3);
d=irandom_range(-3, 3);

if shake_delay > 10{
	shake_delay -= shake_accel;
	
}
else{
	if alarm[7] <0 && alarm[2]<0{
		alarm[7] = room_speed/4;
	}
}
	
alarm[4] = shake_delay;
