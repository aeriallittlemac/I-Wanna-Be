depth = -bbox_bottom;
on_collision = function() {};
sprite_index = obstacle_sprite;

previous_y_pos = STANDARD_Y_POS-30;
change_scale = 0.008;
image_xscale += (y - previous_y_pos)*change_scale;
image_yscale += (y - previous_y_pos)*change_scale;
previous_y_pos = y;
