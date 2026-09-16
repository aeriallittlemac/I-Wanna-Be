

timer--;
if timer <= 0{
	title_alpha -= 1/room_speed;
}
else{
if title_alpha<1{
title_alpha+= 0.3/room_speed;
}
else{
	title_alpha = 1;
}


}
if title_alpha <=0{
	instance_destroy(self);
} 





