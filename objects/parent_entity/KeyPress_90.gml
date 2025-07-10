if player_adjacent && dist_to_player < interact_range && player_facing_self && !global.cutscene && 
!global.in_dialogue && entityActivateScript != -1&&!global.in_slideshow && !instance_exists(obj_rhythm_game){
	show_debug_message(object_get_name(object_index));
	script_execute(entityActivateScript, entityActivateArg);
	
}