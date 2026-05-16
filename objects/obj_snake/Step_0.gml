if instance_exists(obj_snake_player) && snake_start{
var dx = obj_snake_player.x - x;
var dy = obj_snake_player.y - y;
var dist = sqrt(dx*dx + dy*dy);
fx = force * (dx / dist);
fy = force * (dy / dist);
physics_apply_force(x, y, fx, fy);
phy_speed_x = min(phy_speed_x, velocityXCap);
phy_speed_y = min(phy_speed_y, velocityYCap);
if x < left_border_x{
	phy_speed_x = abs(fx)*bounce;
}
if x > right_border_x{
	phy_speed_x = -abs(fx)*bounce;
}
if y < top_border_y{
	phy_speed_y = abs(fy)*bounce;
}
if y > bottom_border_y{
	phy_speed_y = -abs(fy)*bounce;
}

for(var i=0; i<array_length(items); i++){
	if place_meeting(obj_snake_player.x, obj_snake_player.y, items[i]){
		instance_destroy(items[i]);
		array_delete(items, i, 1);
		max_item_count--;
		break;
	}
}
}


if max_item_count <=0{
	teleport_player(obj_player.x, obj_player.y, previous_room, win_cutscene);
	instance_destroy(obj_snake_player);
	instance_destroy(obj_snake_body);
	instance_destroy(self);
	
}