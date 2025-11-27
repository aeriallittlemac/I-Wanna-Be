
	x = camera_get_view_x(view_camera[0]) + 10 + (obj_player.x < warning_parent.x)*250;
	y = clamp(warning_parent.y, warning_parent.y, 144);
	if abs(obj_player.x - warning_parent.x) < 135 || abs(obj_player.x - warning_parent.x) > warning_parent.warn_player_x_range{
		var parent_incoming_index = -1;
		for (var i = 0; i < array_length(obj_hallway_monitor_spawner.incoming_list); i++){
			if obj_hallway_monitor_spawner.incoming_list[i] == warning_parent{
				parent_incoming_index = i;
			}
		}
		array_delete(obj_hallway_monitor_spawner.incoming_list, parent_incoming_index, 1);
		warning_parent.warning_active = false;
		instance_destroy(self);	
	}
