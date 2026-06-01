original_target = noone;

x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2;
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2;
origin_x = x;
origin_y = y;
camera_set_view_target(view_camera[0], self);

// Duration of shake.
alarm[0] = room_speed * 2;

// Period of shake.
period = room_speed * 0.05
alarm[1] = period;

// Magnitude of shake.
magnitude = 5;
