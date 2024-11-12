if player_adjacent && dist_to_player < interact_range && player_facing_self && !global.cutscene && 
!global.in_dialogue && entityActivateScript != -1{	
	script_execute(entityActivateScript, entityActivateArg);
	show_debug_message("interactable!");
}