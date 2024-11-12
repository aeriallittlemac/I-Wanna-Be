change_scale = 0.008;
previous_y_pos = STANDARD_Y_POS;
image_xscale += (y - previous_y_pos)*change_scale;
image_yscale += (y - previous_y_pos)*change_scale;
previous_y_pos = y;
randomise();
factor = 3 + irandom(2)
if factor == 3{
sprite[RIGHT] = spr_hallway_monitor_yellow_right;
sprite[UP] = spr_hallway_monitor_yellow_up;
sprite[LEFT] = spr_hallway_monitor_yellow_left;
sprite[DOWN] = spr_hallway_monitor_yellow_down;
}
else if factor == 4{
sprite[RIGHT] = spr_hallway_monitor_yellow_right;
sprite[UP] = spr_hallway_monitor_yellow_up;
sprite[LEFT] = spr_hallway_monitor_yellow_left;
sprite[DOWN] = spr_hallway_monitor_yellow_down;
}
else{
sprite[RIGHT] = spr_hallway_monitor_yellow_right;
sprite[UP] = spr_hallway_monitor_yellow_up;
sprite[LEFT] = spr_hallway_monitor_yellow_left;
sprite[DOWN] = spr_hallway_monitor_yellow_down;
}
face = RIGHT
detect_player_x_range = 100;
x_speed = 1;
detected = false;
reaction_to_player_timer = 1 * room_speed;
knock_locker_timer = 0.7 * room_speed;
timer = knock_locker_timer;
checking_locker = false;
inst = noone;
warn_player_x_range = 180;
warning_active = false;
first_locker_x = 272;
locker_length = 22;
cur_locker_checking_num = -1;
player_detected_in_locker = false;

function player_detected(){
	return abs( obj_player.x - x) < detect_player_x_range &&!global.player_sleeping && (!obj_player.hidden || (obj_player.xspeed != 0 && obj_diamondwood_high_trash_can.grabbed)) ; 
}
