if !global.storylines.Lab.Day_Three.talked_to.job{
	global.storylines.Lab.Day_Three.talked_to.job = true;
}
else{
	if !global.storylines.Lab.Day_Three.potato_battery.copper_coin{
		global.storylines.Lab.Day_Three.potato_battery.copper_coin = true;
		item_acquired(global.item_list.copper_coin);
	}
}