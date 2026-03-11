show_debug_message("camera target " + object_get_name(camera_get_view_target(view_camera[0])));
show_debug_message(instance_exists(player_n_grace));
camera_set_view_target(view_camera[0], player_n_grace);
camera_set_view_speed(view_camera[0], -1, -1)