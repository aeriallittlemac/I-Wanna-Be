function diamondwood_high_bathroom_cutscene(){
	global.cutscene = true;
	obj_player.x = 187;
	obj_diamondwood_high_big_bathroom_door.image_index = 1;
	wait(0.2)
	move_to_pos(0, 1, obj_player.x, obj_player.y - 15);
	wait(0.2)
	player_dialogue(dialogue_infiltration_success);
}