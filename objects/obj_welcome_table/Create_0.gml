/// @description Insert description here
// You can write your code in this editor



// Inherit the parent event
event_inherited();

previous_y_pos = STANDARD_Y_POS;
change_scale = 0.008;
image_xscale += (y - previous_y_pos)*change_scale;
image_yscale += (y - previous_y_pos)*change_scale;
previous_y_pos = y;
depth = -bbox_bottom;
