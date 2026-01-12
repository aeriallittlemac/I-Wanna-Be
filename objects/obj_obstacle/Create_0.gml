depth = -bbox_bottom;

image_xscale = obstacle_width / sprite_get_width(spr_obstacle);
image_yscale = obstacle_height / sprite_get_height(spr_obstacle);

xoffset = sprite_get_xoffset(obstacle_sprite);
yoffset = sprite_get_yoffset(obstacle_sprite);

obstacle_scale = obstacle_height / sprite_get_height(obstacle_sprite);

obstacle_x = x - (sprite_get_width(obstacle_sprite) / 2 - xoffset) * obstacle_scale;
obstacle_y = y - (sprite_get_height(obstacle_sprite) / 2 - yoffset) * obstacle_scale;

on_collision = function() {};
