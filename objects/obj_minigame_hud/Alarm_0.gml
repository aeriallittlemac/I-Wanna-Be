
if knife < 2{
knife ++;
lane = irandom(2);
if lane == last_lane{
	lane = lane + 1;
	if lane > 2{
		 lane = 0;
	}
}
last_lane = lane;
var lane_x = 0;
if lane == 0{
	lane_x = obj_player_running.left_lane;
}
else if lane == 1{
	lane_x = obj_player_running.mid_lane;
}
else if lane == 2{
	lane_x = obj_player_running.right_lane;
}
instance_create_depth(lane_x, obj_player_running.y-15 - irandom(10) , OBJ_MAX_DEPTH, obj_knife_warning);
alarm[0] = knife_timer+ random_range(-knife_timer, 1);
}
else{
	alarm[0] = doubleknifecooldown;
	knife = 0;
}