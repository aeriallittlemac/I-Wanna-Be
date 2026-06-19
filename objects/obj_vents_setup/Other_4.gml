if room == vents{
for(var i=0; i<array_length(vertical_barrier_x); i++){
	instance_create_depth(vertical_barrier_x[i], vertical_barrier_y[i], 0, obj_temp_wall_vertical);
}
for(var i=0; i<array_length(horizontal_barrier_x); i++){
	instance_create_depth(horizontal_barrier_x[i], horizontal_barrier_y[i], 0, obj_temp_wall_horizontal);
}
instance_create_depth(destination_x, destination_y, 0, obj_destination_vents);
obj_player_vents.x = player_x;
obj_player_vents.y = player_y;
var cam = view_camera[0];
var cam_x = camera_get_view_x(cam);
var cam_width = camera_get_view_width(cam);
var center_x = cam_x + (cam_width / 2);

var cam_y = camera_get_view_y(cam);
var cam_height = camera_get_view_height(cam);
var center_y = cam_y + (cam_height / 2);
camera_set_view_pos(cam, player_x-center_x, player_y-center_y);
}