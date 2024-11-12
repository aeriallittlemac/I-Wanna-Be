event_inherited();
if image_index != 0{
	timer --;
	if timer <=0{
		image_index = 0;
		timer = locker_open_timer;
		if hiding{
		global.player_sleeping = true;
		}
	}
}

