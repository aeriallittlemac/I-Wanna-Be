if obj_player.x >= x && obj_player.x <= x + collision_length
&& obj_player.y>= y && obj_player.y <= y + collision_height{
	instance_destroy(self);
}
x -= qspeed;