character_x-=character_slide_speed;
choices[0].choice_x-=character_slide_speed;
if character_x> character_slide_target{
	alarm[3] = 1;
}
else{

	var top_wall = instance_create_depth(snake_game_wall_x, snake_game_wall_y, depth-1, obj_maze_wall);
	top_wall.tile_size = map_scale;
	top_wall.image_xscale = snake_game_width;
	var bottom_wall = instance_create_depth(snake_game_wall_x, snake_game_wall_y+(snake_game_height-1)*sprite_get_height(spr_maze_wall), depth-1, obj_maze_wall);
	bottom_wall.tile_size = map_scale;
	bottom_wall.image_xscale *= snake_game_width;
	var left_wall = instance_create_depth(snake_game_wall_x, snake_game_wall_y+sprite_get_height(spr_maze_wall), depth-1, obj_maze_wall);
	left_wall.tile_size = map_scale;
	left_wall.image_yscale *= (snake_game_height-1);
	var right_wall = instance_create_depth(snake_game_wall_x+sprite_get_width(spr_maze_wall)*(snake_game_width-1), snake_game_wall_y + sprite_get_height(spr_maze_wall), depth-1, obj_maze_wall);
	right_wall.tile_size = map_scale;
	right_wall.image_yscale *= (snake_game_height-1);
	var player_inst = instance_create_depth(player_x, player_y, depth-1, obj_maze_player);
	player_inst.maze_scale = map_scale;	
	var snake_inst = instance_create_depth(snake_x, snake_y, depth-1, obj_maze_snake_1);
	snake_inst.scale_x = map_scale;
	snake_inst.scale_y = map_scale;
	
	alarm[3] = -1;
}