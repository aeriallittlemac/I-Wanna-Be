global.isometric_room = room == school_bobbys_room || room == school_gambinos_room 
|| room == diamondwood_high_1F || room == diamondwood_high_bathroom
if array_length(sequences) > 0{
	global.cutscene = true;
	if sequences[0] != "character_intro"{
		character_intro_flag = false;
	}
	if sequences[0] == "wait"{
		
			timer[0] -- ;
			if timer[0] <= 0{
				array_delete(timer, 0, 1);
				array_delete(sequences, 0, 1);
			}
		}
	else if sequences[0] == "filter_set_visible"{
		var layer_id = layer_get_id(filters[0]);
		layer_set_visible(layer_id, true);
		array_delete(filters, 0, 1);
		array_delete(sequences, 0, 1);
	}
	else if sequences[0] == "filter_set_invisible"{
		var layer_id = layer_get_id(filters[0]);
		layer_set_visible(layer_id, false);
		array_delete(filters, 0, 1);
		array_delete(sequences, 0, 1);
	}
	else if sequences[0] == "set_cutscene_true"{
		global.cutscene = true;
		array_delete(sequences, 0, 1);
	}
	else if sequences[0] == "set_cutscene_false"{
		global.cutscene = false;
		array_delete(sequences, 0, 1);
	}
	else if sequences[0] == "teleport_player"{
		obj_player.x = game_teleport_x[0];
		obj_player.y = game_teleport_y[0];
		if game_teleport_rm[0] != room{
			room_goto(game_teleport_rm[0]);
		}
		array_delete(game_teleport_x, 0, 1);
		array_delete(game_teleport_y, 0, 1);
		array_delete(game_teleport_rm, 0, 1);
		array_delete(sequences, 0, 1);
	}
	else if sequences[0] == "new_dialogue"{
		NewDialogue(dialogue_objects[0]);
		array_delete(dialogue_objects, 0, 1);
		array_delete(sequences, 0, 1);
	}
	else if sequences[0] == "character_intro"{
		if !character_intro_flag{
		CharacterIntro(CharacterIntros[0]);
		character_intro_flag = true;
		}
	}
	else if sequences[0] == "skip_c_sequence"{
		obj_player.skip_c_sequence = true;
		array_delete(sequences, 0, 1);
	}
	else if sequences[0] == "skip_sequence"{
		moving_npc[0].skip_sequence = true;
		array_delete(sequences, 0, 1);
		array_delete(moving_npc, 0, 1);
	}
	else if sequences[0] == "change_image_index"{
		game_change_image_object[0].image_index = game_change_image_index_num[0];
		array_delete(sequences, 0, 1);
		array_delete(game_change_image_object, 0, 1);
		array_delete(game_change_image_index_num, 0, 1);
	}
	else if sequences[0] == "play_sfx"{
		audio_play_sound(game_sfx[0], 1, game_sound_loop[0]);
		array_delete(game_sfx, 0, 1);
		array_delete(game_sound_loop, 0, 1);
		array_delete(sequences, 0, 1);
	}
	else if sequences[0] == "write_text"{
		show_debug_message(game_overlay_text[0]);
		var inst = instance_create_depth(game_text_x[0], game_text_y[0], OBJ_MAX_DEPTH, obj_white_text_overlay);
			inst.overlay_text = game_overlay_text[0];
			inst.default_pixel_font = game_font[0];
			inst.font_color = game_font_color[0];
			inst.text_timer = game_text_timer[0];
			inst.text_last_timer = game_real_text_last_timer[0];
		array_delete(game_overlay_text, 0, 1);
		array_delete(game_text_x, 0, 1);
		array_delete(game_text_y, 0, 1);
		array_delete(game_font, 0, 1);
		array_delete(game_font_color, 0, 1);
		array_delete(game_text_timer, 0, 1);
		array_delete(game_real_text_last_timer, 0, 1);
		array_delete(sequences, 0, 1);
	}
	else if sequences[0] == "create_instance"{
		if game_var_struct[0] != noone{
			instance_create_depth(game_inst_x[0], game_inst_y[0], game_obj_depth[0], game_obj[0], game_var_struct[0]);
		}
		else{
			instance_create_depth(game_inst_x[0], game_inst_y[0], game_obj_depth[0], game_obj[0]);
		}
		
		array_delete(game_inst_x, 0, 1);
		array_delete(game_inst_y, 0, 1);
		array_delete(game_obj, 0, 1);
		array_delete(game_obj_depth, 0, 1);
		array_delete(game_var_struct, 0, 1);
		array_delete(sequences, 0, 1);
	}
	else if sequences[0] == "camera_change_settings"{
		camera_set_view_target(view_camera[0], game_ctarget[0]);
		camera_set_view_speed(view_camera[0], game_chspeed[0], -1);
		array_delete(game_ctarget, 0, 1);
		array_delete(game_chspeed, 0, 1);
		array_delete(sequences, 0, 1);
	}
	
	
}
else{
	if instance_exists(obj_player){
		 if array_length(obj_player.c_sequences) <= 0 && !instance_exists(obj_transition){
			 global.cutscene = false;
		 }
		 else{
		 }
	}
}





