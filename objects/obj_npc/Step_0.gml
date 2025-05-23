if !classroom_mode{
event_inherited();
}

depth = -bbox_bottom;
if array_length(sequences) > 0{
	if sequences[0] == "move"{
	previous_xspeed = 0;
	previous_yspeed = 0;
	real_xspeed = xspeed[0]*((target_x[0] < x)*(-1) + (target_x[0] > x));
	if previous_xspeed*real_xspeed < 0{xspeed[0] = 0;}
	real_yspeed = yspeed[0]*((target_y[0] < y)*(-1) + (target_y[0] > y));
	if previous_yspeed*real_yspeed < 0{yspeed[0] = 0;}

	if (real_xspeed == 0 && real_yspeed == 0) || skip_sequence{
		//image_index = 0;
		//if abs(x - obj_player.x) < player_reach || skip_sequence{
		array_delete(target_x, 0, 1);
		array_delete(target_y, 0, 1);
		array_delete(xspeed, 0, 1);
		array_delete(yspeed, 0, 1);
		array_delete(sequences, 0, 1);
		skip_sequence = false;
		//}
	}

	previous_xspeed = real_xspeed;
	previous_yspeed = real_yspeed;
	if real_xspeed > 0{
		sprite_index = sprite[RIGHT];
	}
	if real_xspeed < 0{
		sprite_index = sprite[LEFT];
	}
	if real_yspeed > 0{
		sprite_index = sprite[DOWN];
	}
	if real_yspeed < 0{
		sprite_index = sprite[UP];
	}

	x += real_xspeed;

	y += real_yspeed;


	}
	else if sequences[0] == "teleport"{
		obj_npc_manager.teleport(object_index);
		array_delete(sequences, 0, 1);
	}
	else if sequences[0] == "wait"{
		image_index = 0;
			timer[0] --;
			if timer[0] <= 0{
				array_delete(timer, 0, 1);
				array_delete(sequences, 0, 1);
			}
	}
	else if sequences[0] == "dialogue"{
		NewDialogue(npc_dialogues[0]);
		array_delete(npc_dialogues, 0, 1);
		array_delete(sequences, 0, 1);
	}
	else if sequences[0] == "play_sfx"{
		audio_play_sound(sfx[0], 1, false);
		array_delete(sfx, 1, false);
		array_delete(sequences, 0, 1);
	}
	else if sequences[0]  == "animate"{
		if !(sprite_index !=sprite[RIGHT] && sprite_index !=sprite[LEFT]
	&& sprite_index !=sprite[DOWN] && sprite_index !=sprite[UP]) || image_index >= image_number-1{
		sprite_index = animation[0];
		array_delete(animation, 0, 1);
		array_delete(sequences, 0, 1);
	}
	}
	else if sequences[0] != "move"{
		image_index = 0;
	}
}
else{
	var npc_index = 0;
	for(var i = 0; i < array_length(obj_npc_manager.npcs); i++){
		if obj_npc_manager.npcs[i].object == object_index{
			npc_index = i;
		}
	}
	if obj_npc_manager.npcs[npc_index].initial_animation == noone 
	&& !(sprite_index !=sprite[RIGHT] && sprite_index !=sprite[LEFT]
	&& sprite_index !=sprite[DOWN] && sprite_index !=sprite[UP]) {
		image_index = 0;
	}
}

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
