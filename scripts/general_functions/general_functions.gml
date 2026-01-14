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
function game_NewCutscene(cutscene){
	if object_get_parent(cutscene) == dialogue_parent{
		NewDialogue(cutscene);
	}
	else{
		instance_create_depth(0,0,0, cutscene);
	}
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
		timer = seconds * room_speed;	
		default_pixel_font = font_add("joystix monospace.otf", font_size, false, false, 32, 128);
		font_add_enable_aa(false);
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



function NewSlideshow(spr){
	array_push(obj_slideshow.slides, spr);
	if argument_count > 1{
		NewDialogue(argument[1]);
	}
	
}

function AddInstanceToActivate(instance){
	array_push(obj_activate_manager.activate_list, instance);
}

function RemoveFromActivateList(instance){
	for(var j = 0; j < array_length(obj_activate_manager.activate_list); j++){
		if instance == obj_activate_manager.activate_list[j]{
			array_delete(obj_activate_manager.activate_list, j, 1);
		}
	}
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
function game_play_sfx(sfx, loop){
	array_push(obj_settings.game_sfx, sfx);
	array_push(obj_settings.game_sound_loop, loop);
	array_push(obj_settings.sequences, "play_sfx");
}

function game_write_text(txt, text_x, text_y, font, font_color, text_timer, text_Last_timer){
	array_push(obj_settings.game_overlay_text, txt);
	array_push(obj_settings.game_text_x, text_x);
	array_push(obj_settings.game_text_y, text_y);
	array_push(obj_settings.game_font, font);
	array_push(obj_settings.game_font_color, font_color);
	array_push(obj_settings.game_text_timer, text_timer);
	array_push(obj_settings.game_real_text_last_timer, text_Last_timer*room_speed);
	array_push(obj_settings.sequences, "write_text");
}
function game_create_instance_depth(inst_x, inst_y, dep, obj){
	array_push(obj_settings.game_inst_x, inst_x);
	array_push(obj_settings.game_inst_y, inst_y);
	array_push(obj_settings.game_obj, obj);
	array_push(obj_settings.game_obj_depth, dep);
	if argument_count > 4{
		array_push(obj_settings.game_var_struct, argument[4]);		
	}
	else{
		array_push(obj_settings.game_var_struct, noone);
	}
	array_push(obj_settings.sequences, "create_instance");
}

function item_acquired(item){
	array_push(obj_inventory.inventory, item);
	var inst = instance_create_depth(obj_player.x-30, min(obj_player.y + 10, 140), OBJ_MAX_DEPTH, obj_white_text_overlay);
	with inst{
		overlay_text = item.item_name + " acquired!";
		font_size = 4;
		text_timer = 0.01;
		text_last_timer = 0.7;
	}
}

function item_remove(item){
	for (var i=0; i < array_length(obj_inventory.inventory); i++){
		if obj_inventory.inventory[i] == item{
			array_delete(obj_inventory.inventory, i, 1);
		}
	}
}

function hint_obtain(hint) {
	if (!hint.found) {
		hint.found = true;
		obj_hints.draw_hint_emphemeral(hint.text, string_length(hint.text) * 0.1);
	}
	game_save_json(hint.save_name);
}

function game_camera_change_settings(ctarget, chspeed){
	array_push(obj_settings.game_ctarget, ctarget); 
	array_push(obj_settings.game_chspeed, chspeed);
	array_push(obj_settings.sequences, "camera_change_settings");
}
function redo_UI(){
	obj_redo_UI.life_count --;
	obj_redo_UI.star_dying = true;
	obj_redo_UI.visible = true;
	
}
function set_QTE_bgm(song){
	audio_play_sound(song, 1, true);
	global.bgm = song;
	obj_music_manager.song_current_runtime = 0;
}

function is_deus_ex_machina() {
	var npcs_in_sequences = false;
	var members = variable_struct_get_names(global.npc_list);
	for (var i = 0; i < array_length(members); ++i) {
		var npc = global.npc_list[$members[i]].object;
		if (instance_exists(npc)) {
			npcs_in_sequences |= array_length(npc.sequences) > 0;
		}
	};
	
	var player_sequences = array_length(obj_player.c_sequences) > 0;
	var settings_sequences = array_length(obj_settings.sequences) > 0;
	var in_rhythm_game = instance_exists(obj_rhythm_game_arrows);
	var in_potato_battery_experiment = instance_exists(potato_battery_experiment);

	if (!(player_sequences 
		|| settings_sequences 
		|| npcs_in_sequences 
		|| global.cutscene 
		|| in_rhythm_game 
		|| in_potato_battery_experiment 
	)) {
		return false;
	}
	show_debug_message(
		"Player Sequences: " + string(player_sequences) 
		+ ", Settings Sequences: " + string(settings_sequences) 
		+ ", NPCs in Sequences: " + string(npcs_in_sequences) 
		+ ", Cutscene: " + string(global.cutscene) 
		+ ", In Rhythm Game: " + string(in_rhythm_game) 
		+ ", In Potato Battery Experiment: " + string(in_potato_battery_experiment)
	);
	return true;
}

function game_save_json(save_name) {
	if (is_deus_ex_machina()) {
		show_debug_message("Refusing to save.");
		return;
	}
	var save_data = {
		player_pos: {
			x: obj_player.x, 
			y: obj_player.y
		}, 
		current_room: room, 
		minimap: {
			map_visible: obj_minimap.map_visible, 
			inv: obj_minimap.inv, 
		}, 
		storylines: global.storylines, 
		hints: global.hints, 
		npc_list: global.npc_list, 
		game_time: global.game_time, 
		hottest_rumor: global.hottest_rumor, 
		inventory: obj_inventory.inventory
	};
	var fname = "save_" + sha1_string_unicode(save_name) + ".json";
	var fout = file_text_open_write(fname);
	file_text_write_string(fout, json_stringify(save_data));
	file_text_close(fout);
	
	show_debug_message("Saved: " + fname);
}

function game_load_json(save_name) {
	if (is_deus_ex_machina()) {
		show_debug_message("Refusing to load.");
		return;
	}
	var fname = "save_" + sha1_string_unicode(save_name) + ".json";
	if (!file_exists(fname)) {
		show_debug_message("No such save state: " + save_name);
		return;
	}
	var fin = file_text_open_read(fname);
	var save_data = json_parse(file_text_read_string(fin));
	file_text_close(fin);
	obj_player.x = save_data.player_pos.x;
	obj_player.y = save_data.player_pos.y;
	room = save_data.current_room;
	obj_minimap.map_visible = save_data.minimap.map_visible;
	obj_minimap.inv = save_data.minimap.inv;
	global.storylines = save_data.storylines;
	// Restoring the hints themselves will make using checkpoints annoying.
	//global.hints = save_data.hints;
	global.npc_list = save_data.npc_list;
	global.game_time = save_data.game_time;
	global.hottest_rumor = save_data.hottest_rumor;
	obj_inventory.inventory = save_data.inventory;
	
	show_debug_message("Loaded: " + fname);
}
