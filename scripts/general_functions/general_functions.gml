function game_wait(seconds){
	array_push(obj_settings.timer, seconds*room_speed);
	show_debug_message(obj_settings.timer[0]);
	array_push(obj_settings.sequences, "wait");
}

function game_filter_set_visible(filter_name){
	array_push(obj_settings.filters, filter_name);
	array_push(obj_settings.sequences, "filter_set_visible");
}

function game_filter_set_invisible(filter_name){
	array_push(obj_settings.filters, filter_name);
	array_push(obj_settings.sequences, "filter_set_invisible");
}

function set_cutscene_true(){
	array_push(obj_settings.sequences, "set_cutscene_true");
}

function set_cutscene_false(){
	array_push(obj_settings.sequences, "set_cutscene_false");
}

function game_teleport_player(target_x, target_y, target_rm){
	array_push(obj_settings.game_teleport_x, target_x);
	array_push(obj_settings.game_teleport_y, target_y);
	array_push(obj_settings.game_teleport_rm, target_rm);
	array_push(obj_settings.sequences, "teleport_player");
}

function game_NewDialogue(dialogue_object){
	array_push(obj_settings.dialogue_objects, dialogue_object);	
	array_push(obj_settings.sequences, "new_dialogue");
}

function NewQuest(quest, size, color, linger_time){
	array_push(obj_minimap.inv, quest);
	var inst = instance_create_depth(0, 0, TEXTBOX_DEPTH, obj_quest_text);
	with (inst)
	{
		sign_text = quest.description;
		font_size = size;
		font_color = color;
		seconds = linger_time;
		timer = seconds*room_speed;	
	}
}

function QuestCompleted(quest){
	for (var i=0; i < array_length(obj_minimap.inv); i++){
		if obj_minimap.inv[i] == quest{
			show_debug_message(obj_minimap.inv[i].description);
			show_debug_message("completed");
			array_delete(obj_minimap.inv, i, 1);
		}
	}
}

function CharacterIntro(npc){
	for(var i=0; i < array_length(obj_npc_manager.npcs); i++){
		if npc == obj_npc_manager.npcs[i].object{
			var inst = instance_create_depth(0,0,TEXTBOX_DEPTH-1, obj_character_intro);
			with inst{
				character = obj_npc_manager.npcs[i];
				character_name = obj_npc_manager.npcs[i].first_name;
				character_title = obj_npc_manager.npcs[i].title;
			}
			break;
		}
	}
}

function game_NewCharacterIntro(npc){
	array_push(obj_settings.CharacterIntros, npc);	
	array_push(obj_settings.sequences, "character_intro");
}

function NewSlideshow(spr, dialog){
	array_push(obj_slideshow.slides, spr);
	NewDialogue(dialog);
}

function AddInstanceToActivate(instance){
	array_push(obj_activate_manager.activate_list, instance);
}

function AddInstanceToDestroy(instance){
	array_push(obj_destroy_manager.destroy_list, instance);
}

function destroy_if_in_scene(inst){
	if instance_exists(inst){
		show_debug_message(inst);
		show_debug_message("destroyed!");
		instance_destroy(inst);
		
	}
}

function game_skip_c_sequence(){
	array_push(obj_settings.sequences, "skip_c_sequence");
}

function game_skip_npc_sequence(npc){
	array_push(obj_settings.sequences, "skip_sequence");
	array_push(obj_settings.moving_npc, npc);
}

function game_change_image_index(obj, nun){
	array_push(obj_settings.sequences, "change_image_index")
	array_push(obj_settings.game_change_image_object, obj);
	array_push(obj_settings.game_change_image_index_num, nun);
}
