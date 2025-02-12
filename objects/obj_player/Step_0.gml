run_key = keyboard_check(vk_lshift) ||keyboard_check(ord("X"));
right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);
image_alpha = !global.player_sleeping;
var speed_multiplier = 1;
if run_key {
	speed_multiplier = run_speed_multiplier;
}
if  keyboard_check_released(run_key){
	speed_multiplier = 1;
}
xspeed = (right_key - left_key)*move_speed*speed_multiplier;
yspeed = (down_key - up_key)*move_speed*speed_multiplier;
image_speed = speed_multiplier;

//depth
	depth = -bbox_bottom;
if image_alpha > 0{

	if obj_minimap.school_hall||global.isometric_room{
	if classroom_mode{
		previous_y_pos = STANDARD_Y_POS;
		image_xscale = 1;
		image_yscale = 1;
		classroom_mode = false;
	}
	image_xscale += (y - previous_y_pos)*change_scale;
	image_yscale += (y - previous_y_pos)*change_scale;
	previous_y_pos = y;
	}
	else{
	image_xscale = CLASSROOM_CHARACTER_SCALE;
	image_yscale = CLASSROOM_CHARACTER_SCALE;
	classroom_mode = true;
	}

	if !global.cutscene && !global.in_dialogue && !instance_exists(obj_rhythm_game) && !global.in_inventory{
	
		//set sprite
		if yspeed == 0{
			if xspeed > 0 {face = RIGHT};
			if xspeed < 0 {face = LEFT};
			}
	
		if xspeed == 0{
			if yspeed > 0 {face = DOWN};
			if yspeed < 0 {face = UP};
			}
		
		if xspeed > 0 && face == LEFT{face = RIGHT};
		if yspeed > 0 && face == UP{face = DOWN};
		if yspeed > 0 {face = DOWN};
		if yspeed < 0 {face = UP};
	
		//collisions
		if place_meeting(x + xspeed, y, obj_wall){
			if y > previous_y_pos {
				if left_key{
					x += ((bbox_right-bbox_left)*(y - previous_y_pos)*change_scale)/2;
				}
				if right_key{
					x -= ((bbox_right-bbox_left)*(y - previous_y_pos)*change_scale)/2;
				}
			}
			xspeed = 0
			}
		if place_meeting(x , y + yspeed, obj_wall){
			var inst = instance_nearest(x, y, obj_wall)
			if abs (bbox_left - inst.bbox_right) < 1 || abs (bbox_right - inst.bbox_left) < 1
			{
				if inst.x < x{
					x += ((bbox_right-bbox_left)*change_scale)/2;
				}
				else if inst.x > x{
					x -= ((bbox_right-bbox_left)*change_scale)/2;
				}
				
			}
			else{
				yspeed = 0
			}
		}
		if place_meeting(x + xspeed,y + yspeed, obj_wall){
			var inst = instance_nearest(x, y, obj_wall)
				if bbox_top - inst.bbox_bottom <= yspeed || bbox_bottom - inst.bbox_top <= yspeed{
					yspeed = 0
				}
			else{
				yspeed = 0
			}
			
		}
	


		//move the player

		x += xspeed;
		y += yspeed;
		if yspeed ==0 && xspeed == 0 && face<=3{image_index = 0}
		else {
			if previous_speed == 0{
				image_index = 1
			}
		}
		sprite_index = sprite[face];


	

		previous_speed = xspeed+yspeed;
	}
	else{
		if array_length(c_sequences) > 0{
			if c_sequences[0] == "move"{
				c_previous_xspeed = 0;
				c_previous_yspeed = 0;
				var real_xspeed = c_xspeed[0]*((c_target_x[0] < x)*(-1) + (c_target_x[0] > x));
				if c_previous_xspeed*real_xspeed < 0{c_xspeed[0] = 0;}
				var real_yspeed = c_yspeed[0]*((c_target_y[0] < y)*(-1) + (c_target_y[0] > y));
				if c_previous_yspeed*real_yspeed < 0{c_yspeed[0] = 0;}

				if (real_xspeed == 0 && real_yspeed == 0) || skip_c_sequence{
				
					image_index = 0;
					array_delete(c_target_x, 0, 1);
					array_delete(c_target_y, 0, 1);
					array_delete(c_xspeed, 0, 1);
					array_delete(c_yspeed, 0, 1);
					array_delete(c_sequences, 0, 1);
					skip_c_sequence = false;
				
				}

				c_previous_xspeed = real_xspeed;
				c_previous_yspeed = real_yspeed;
				if real_xspeed > 0{
					sprite_index = sprite[RIGHT];
					face = RIGHT;
				}
				if real_xspeed < 0{
					sprite_index = sprite[LEFT];
					face = LEFT;
				}
				if real_yspeed > 0{
					sprite_index = sprite[DOWN];
					face = DOWN;
				}
				if real_yspeed < 0{
					sprite_index = sprite[UP];
					face = UP;
				}


				x += real_xspeed;

				y += real_yspeed;
			}
			else if c_sequences[0] == "wait"{
				image_index = 0;
				c_timer[0] --;
				if c_timer[0] <= 0{
					array_delete(c_timer, 0, 1);
					array_delete(c_sequences, 0, 1);
				}
			}
			else if c_sequences[0] == "dialogue"{
			NewDialogue(c_dialogue[0]);
			array_delete(c_dialogue, 0, 1);
			array_delete(c_sequences, 0, 1);
			}
		}
		else{
		image_index = 0
		}
	}


}