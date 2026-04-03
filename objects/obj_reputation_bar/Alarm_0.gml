if (new_val < cur_val){
	cur_val --;
}
else if (new_val > cur_val){
	cur_val ++;
}

if abs(new_val - cur_val) < 1{
	alarm[1] = bar_show_extra_time*room_speed;
	alarm[0] = -1;
}
else{
	alarm[0] = room_speed/change_speed;
}