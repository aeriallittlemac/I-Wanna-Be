//if	global.storylines.Mechanics_Introduced.pause_menu{
	//if instance_exists(cutscene_check_rumors){
	//	instance_destroy(cutscene_check_rumors);
	//}
	//if(!global.pause_menu){
	//	//obj_npc_manager.npcs[0].introduced = true;
	//	instance_create_depth(160, 100, OBJ_MAX_DEPTH, obj_menu_mouse);
	//	player_x = obj_player.x;
	//	player_y = obj_player.y;
	//	player_scale_x = obj_player.image_xscale;
	//	player_scale_y = obj_player.image_yscale;
	//	player_sprite = obj_player.sprite[obj_player.face];
	//	if array_length(obj_minimap.inv) > 0{
	//		cur_quest = obj_minimap.inv[0].description;
	//	}
	//}
	//else{
	//	instance_destroy(obj_menu_mouse);
		
		
	////	if !global.storylines.Mechanics_Introduced.pamphlet
	//////&& global.storylines.Grace.truth_or_dare_confession
	////	{
	////		game_NewDialogue(dialogue_check_relationship_pamphlet)
	////		global.storylines.Mechanics_Introduced.pamphlet = true;
	////	}
	//}
	//global.pause_menu = !global.pause_menu;

//}
if bookmark_select{

pauseMenu();
}
else{
	audio_play_sound(sfx_book_close, 1, false);
	bookmark_select = true;
}