for (var i=0; i<array_length(snake_strips); i++){
	if snake_strip_dir[i] == RIGHT{
		draw_sprite_stretched(sprite_index,-1,x*map_scale/sprite_get_width(spr_maze_wall), y*map_scale/sprite_get_height(spr_maze_wall), snake_strips[i]*snake_scale*sprite_get_width(spr_maze_player), snake_scale*sprite_get_height(spr_maze_player));
	}
	else if snake_strip_dir[i] == LEFT{
		draw_sprite_stretched(sprite_index,-1,x*map_scale/sprite_get_width(spr_maze_wall), y*map_scale/sprite_get_height(spr_maze_wall), snake_strips[i]*snake_scale*sprite_get_width(spr_maze_player), snake_scale*sprite_get_height(spr_maze_player));
	}
	else if snake_strip_dir[i] == DOWN{
		draw_sprite_stretched(sprite_index,-1,x*map_scale/sprite_get_width(spr_maze_wall), y*map_scale/sprite_get_height(spr_maze_wall), snake_strips[i]*snake_scale*sprite_get_width(spr_maze_player), snake_scale*sprite_get_height(spr_maze_player));
	}
	else if snake_strip_dir[i] == RIGHT{
		draw_sprite_stretched(sprite_index,-1,x*map_scale/sprite_get_width(spr_maze_wall), y*map_scale/sprite_get_height(spr_maze_wall), snake_strips[i]*snake_scale*sprite_get_width(spr_maze_player), snake_scale*sprite_get_height(spr_maze_player));
	}
}