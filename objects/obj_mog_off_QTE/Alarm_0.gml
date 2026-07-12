camera_set_view_size(view_camera[0], camera_get_view_width(view_camera[0]) - camera_zoom_speed_width,
camera_get_view_height(view_camera[0])-camera_zoom_speed_height);
camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]),(current_camera_height-camera_get_view_height(view_camera[0]))/2);
character_scale = target_camera_height/camera_get_view_height(view_camera[0])*character_target_scale;
if camera_get_view_height(view_camera[0])<= target_camera_height{
	
	alarm[0] = -1;
	alarm[1] = point_spawn_interval;
}
else{

	alarm[0] = 1;
}