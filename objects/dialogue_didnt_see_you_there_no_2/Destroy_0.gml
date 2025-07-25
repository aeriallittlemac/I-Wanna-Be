if ans == "nah"{
	npc_move_to_pos(obj_grace, 1, 0, 440, obj_grace.y);
	game_wait(3.5);
	npc_move_to_pos(obj_grace, 1, 0, 350, obj_grace.y);
	game_camera_change_settings(player_n_grace, -1);
	npc_dialogue(obj_grace, dialogue_didnt_see_you_there_assertion);
	show_debug_message("nah");
	
}
else{
	instance_destroy(inst_60CDF728);
	item_acquired(global.item_list.PBnJ);
	game_wait(1);
	game_camera_change_settings(player_n_grace, -1);
	game_NewDialogue(dialogue_didnt_see_you_there_assertion);
	
}