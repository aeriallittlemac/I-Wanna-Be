timer--;
if timer <= 0{
	title_alpha -= 1/room_speed;
}
if title_alpha <=0{
	instance_destroy(self);
} 





