depth = -bbox_bottom;
sprite_index = sprite[face];
image_speed = x_speed;
if x < left_border_x{
	dir = 1;
	face = RIGHT;
}
if x > right_border_x{
	dir = -1;
	face = LEFT;
}

x += dir * x_speed;
if player_detected() && !detected{
	detected = true;
	x_speed = 0;
	if obj_player.x > x{
		if abs(obj_player.x - x) > 2 * abs(obj_player.y - y){
			face = RIGHT;
		}
		else{
			if obj_player.y > y{
				face = DOWN;	
			}
			else{
				face = UP;
			}
		}
		
	}
	else{
		if abs(obj_player.x - x) > 2 * abs(obj_player.y - y){
			face = LEFT;
		}
		else{
			if obj_player.y > y{
				face = DOWN;	
			}
			else{
				face = UP;
			}
		}
	}
	
	
}
if detected{
	//play surprised sound effect
	reaction_to_player_timer --;
	if reaction_to_player_timer <= 0 {
		NewSlideshow(spr_game_over, dialogue_caught_by_hallway_monitor);
		instance_destroy(self);
	}
}



