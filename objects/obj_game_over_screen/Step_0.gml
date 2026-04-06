

if !fade_out{
	if screen_image_alpha < 0.7{
		screen_image_alpha += fade_in_speed/100;
	}
	else{
		fade_out = true;
	}
}
else{
	if !global.pause_menu{
		with obj_pause_menu_new{
			pauseMenu();
		}
	}
	
	if screen_image_alpha > 0{
		screen_image_alpha -= fade_in_speed/100;
	}
}