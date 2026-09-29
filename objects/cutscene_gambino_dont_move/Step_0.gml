timer -= 1;
if (abs(obj_player.xspeed) > 0 || abs(obj_player.yspeed) > 0 ){
	noticed = true;
	instance_destroy(self);
}
else if (timer<=0)
{
	instance_destroy(self);
}
