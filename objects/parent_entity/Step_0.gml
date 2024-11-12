//switch out the x's and y's with bbox_right/left/top/bottom


if obj_player.bbox_left > bbox_right{
	if abs(obj_player.bbox_left - bbox_right) < abs(obj_player.bbox_top - bbox_bottom) &&  abs(obj_player.bbox_left - bbox_right) < abs(obj_player.bbox_bottom - bbox_top){
		player_relative_pos = "RIGHT";
		dist_to_player = abs(obj_player.bbox_left - bbox_right);
		player_adjacent = obj_player.y >= bbox_top && obj_player.y <= bbox_bottom;
	}
	else{
		if obj_player.bbox_bottom > bbox_bottom{
			player_relative_pos = "DOWN"
			dist_to_player = abs(obj_player.bbox_top - bbox_bottom);
			player_adjacent = obj_player.x >= bbox_left && obj_player.x <= bbox_right;
		}
		else{
			player_relative_pos = "UP"
			dist_to_player = abs(obj_player.bbox_bottom - bbox_top);
			player_adjacent = obj_player.x >= bbox_left && obj_player.x <= bbox_right;
		}
	}
}
else{
	if abs(obj_player.bbox_right - bbox_left) < abs(obj_player.bbox_top - bbox_bottom) &&  abs(obj_player.bbox_right - bbox_left) < abs(obj_player.bbox_bottom - bbox_top){
		player_relative_pos = "LEFT";
		dist_to_player = abs(obj_player.bbox_right - bbox_left);
		player_adjacent = obj_player.y >= bbox_top && obj_player.y <= bbox_bottom;
	}
	else{
		if obj_player.bbox_bottom > bbox_bottom{
			player_relative_pos = "DOWN";
			dist_to_player = abs(obj_player.bbox_top - bbox_bottom);
			player_adjacent = obj_player.x >= bbox_left && obj_player.x <= bbox_right;
		}
		else{
			player_relative_pos = "UP";
			dist_to_player = abs(obj_player.bbox_bottom - bbox_top);
			player_adjacent = obj_player.x >= bbox_left && obj_player.x <= bbox_right;
		}
	}
}
//show_debug_message(dist_to_player);
//show_debug_message(player_relative_pos);
player_facing_self =
(player_relative_pos == "LEFT" && obj_player.sprite_index == obj_player.sprite[RIGHT]) 
|| (player_relative_pos == "RIGHT" && obj_player.sprite_index == obj_player.sprite[LEFT]) 
|| (player_relative_pos == "UP" && obj_player.sprite_index == obj_player.sprite[DOWN]) 
|| (player_relative_pos == "DOWN" && obj_player.sprite_index == obj_player.sprite[UP]);