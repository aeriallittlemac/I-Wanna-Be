if character_x>= character_target_x{
	character_x = character_target_x;
	alarm[0] = -1;
	start=true;
}
else{
	character_x += character_speed;
	alarm[0] = 1;
}