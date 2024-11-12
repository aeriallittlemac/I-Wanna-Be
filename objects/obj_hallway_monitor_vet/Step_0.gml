depth = -bbox_bottom;
sprite_index = sprite[face];
image_speed = x_speed;

if x > obj_player.x + 140{
	instance_destroy(self);
}





if checking_locker{
	timer --;
	if timer <= 0{
		if obj_player.x >= first_locker_x + cur_locker_checking_num * locker_length && obj_player.x <= first_locker_x + (cur_locker_checking_num+1) * locker_length{
			player_detected_in_locker = true
		}
		face = RIGHT;
		checking_locker = false;
		timer = knock_locker_timer;
		x += 12;
	}
}

else{
	x += x_speed;
	for (var i = 0; i < 11; i++){
	if (x >= first_locker_x + i * locker_length && x <= first_locker_x + (i+1) * locker_length){
		if (i+1) % factor == 0{
			cur_locker_checking_num = i;
			x += 11;
			face = UP;
			timer = knock_locker_timer;
			checking_locker = true;
			break;
			
		}
	}
}
}

if (player_detected() || player_detected_in_locker) && !detected{
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



