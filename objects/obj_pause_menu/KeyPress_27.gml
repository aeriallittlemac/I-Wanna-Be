if instance_exists(cutscene_check_rumors){
	instance_destroy(cutscene_check_rumors);
}
if(!global.pause_menu){
	player_x = obj_player.x;
	player_y = obj_player.y;
	player_scale_x = obj_player.image_xscale;
	player_scale_y = obj_player.image_yscale;
	player_sprite = obj_player.sprite[obj_player.face];
	if array_length(obj_minimap.inv)>0{
		cur_quest = obj_minimap.inv[0].description;
	}
}
else{
	if !global.storylines.Mechanics_Introduced.pause_menu
//&& global.storylines.Grace.truth_or_dare_confession
	{
		game_NewDialogue(dialogue_check_relationship_pamphlet)
		global.storylines.Mechanics_Introduced.pause_menu = true;
	}
}
global.pause_menu = !global.pause_menu;

