
if place_meeting(x,y,obj_player){
	obj_player.hidden = true;
	player_hiding = true;
}
if player_hiding{
	if !place_meeting(x,y,obj_player){
	obj_player.hidden = false;
	player_hiding = false;
	}
}

x = x_offset + parent_object.x
y = y_offset + parent_object.y



