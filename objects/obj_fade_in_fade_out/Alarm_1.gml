if fade_alpha>0{
	fade_alpha -= fade_speed;
	alarm[1] = 1;
}
else{
	alarm[2] = still_duration;
	alarm[1] = -1;
}