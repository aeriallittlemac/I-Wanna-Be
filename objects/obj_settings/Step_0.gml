global.isometric_room = room == school_bobbys_room || room == school_gambinos_room 
|| room == diamondwood_high_1F || room == diamondwood_high_bathroom
if array_length(sequences) > 0{
	if sequences[0] != "character_intro"{
		character_intro_flag = false;
	}
	if sequences[0] == "wait"{
		global.cutscene = true;
			timer[0] -- ;
			if timer[0] <= 0{
				global.cutscene = false;
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
	
	
}




