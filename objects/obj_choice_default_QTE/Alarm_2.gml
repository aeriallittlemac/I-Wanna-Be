camera_set_view_size(view_camera[0], camera_get_view_width(view_camera[0]) + camera_zoom_speed_width,
camera_get_view_height(view_camera[0])+camera_zoom_speed_height);
camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]),(current_camera_height-camera_get_view_height(view_camera[0]))/2);
character_scale = target_camera_height/camera_get_view_height(view_camera[0]);

if camera_get_view_height(view_camera[0])>= current_camera_height{
	alarm[2] = -1;
	camera_set_view_size(view_camera[0], current_camera_width, current_camera_height);
	camera_set_view_target(view_camera[0], current_camera_target);
	camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]), current_camera_y);
	instance_destroy(self);
}

else{
	alarm[2] = 1;
}