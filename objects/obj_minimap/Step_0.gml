
if !global.cutscene&&!global.in_dialogue && !instance_exists(obj_rhythm_game_arrows) && !instance_exists(obj_rhythm_game_new)
&& room != tutorial && !instance_exists(obj_character_pamphlet) &&!global.pause_menu{
	if !map_visible && alarm[0] == -1{
		alarm[0] = 2;
	}
}
else{
	alarm[0] = -1;
	map_visible = false;
	
}
//x = camera_get_view_x(view_camera[0]) + relation_to_camera_x;


