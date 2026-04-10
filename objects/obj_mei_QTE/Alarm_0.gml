camera_set_view_size(view_camera[0], camera_get_view_width(view_camera[0]) - camera_zoom_speed_width,
camera_get_view_height(view_camera[0])-camera_zoom_speed_height);
camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]),(current_camera_height-camera_get_view_height(view_camera[0]))/2);
character_scale = target_camera_height/camera_get_view_height(view_camera[0])*character_target_scale;
if camera_get_view_height(view_camera[0])<= target_camera_height{
	
	alarm[0] = -1;
	start=true;
	var inst = instance_create_depth(maze_x, maze_y, depth-1, obj_maze_1);
	var player_inst = instance_create_depth(player_x, player_y, depth-1, obj_maze_player);
	player_inst.maze_scale = inst.map_scale;
	inst.draw_maze();
	
}
else{

	alarm[0] = 1;
}