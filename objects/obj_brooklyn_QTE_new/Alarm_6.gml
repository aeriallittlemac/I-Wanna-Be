if character_x> character_anchor_x{
	character_x-=character_slide_speed;
	choices[0].choice_x-=character_slide_speed;
	alarm[6] = 1;
}
else{
	alarm[6] =-1;
}