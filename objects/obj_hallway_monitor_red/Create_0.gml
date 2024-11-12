change_scale = 0.008;
previous_y_pos = STANDARD_Y_POS;
image_xscale += (y - previous_y_pos)*change_scale;
image_yscale += (y - previous_y_pos)*change_scale;
previous_y_pos = y;
sprite[RIGHT] = spr_hallway_monitor_red_right;
sprite[UP] = spr_hallway_monitor_red_up;
sprite[LEFT] = spr_hallway_monitor_red_left;
sprite[DOWN] = spr_hallway_monitor_red_down;
face = RIGHT
detect_player_x_range = 100;
left_border_x = 135;
right_border_x = 1485;
dir = 1;
x_speed = 1;
detected = false;
reaction_to_player_timer = 1 * room_speed;
inst = noone;
warn_player_x_range = 240;
warning_active = false;
function player_detected(){
	return abs( obj_player.x - x) < detect_player_x_range &&!global.player_sleeping && (!obj_player.hidden || (obj_player.xspeed != 0 && obj_diamondwood_high_trash_can.grabbed)) 
	&& (obj_player.x - x) * dir > 0; 
}
