x = obj_player.x;
y = obj_player.y;
if place_meeting(x + obj_player.xspeed, y, obj_wall){
	obj_player.x -= obj_player.xspeed;
	obj_player.xspeed = 0;
}

if place_meeting(x , y + obj_player.yspeed, obj_wall){
	obj_player.y -= obj_player.yspeed;
	obj_player.yspeed = 0;
}