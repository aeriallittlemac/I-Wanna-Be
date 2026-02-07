depth = -bbox_bottom;

image_xscale = obstacle_width / sprite_get_width(spr_obstacle);
image_yscale = obstacle_height / sprite_get_height(spr_obstacle);

xoffset = sprite_get_xoffset(obstacle_sprite);
yoffset = sprite_get_yoffset(obstacle_sprite);

obstacle_scale = obstacle_height / sprite_get_height(obstacle_sprite);


obstacle_x = x - (sprite_get_width(obstacle_sprite) / 2 - xoffset) * obstacle_scale;
obstacle_y = y - (sprite_get_height(obstacle_sprite) / 2 - yoffset) * obstacle_scale;

on_collision = function() {};

previous_y_pos = STANDARD_Y_POS-30;
change_scale = 0.008;
image_xscale += (y - previous_y_pos)*change_scale;
image_yscale += (y - previous_y_pos)*change_scale;
obstacle_scale += (y - previous_y_pos)*change_scale;
obstacle_scale += (y - previous_y_pos)*change_scale;
previous_y_pos = y;
depth = -bbox_bottom;
