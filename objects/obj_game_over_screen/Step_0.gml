

if !fade_out{
	if screen_image_alpha < 0.7{
		screen_image_alpha += fade_in_speed/100;
	}
	else{
		fade_out = true;
	}
}
else{
	if !global.in_hints{
			global.in_hints = true;
		}
	if screen_image_alpha > 0{
		screen_image_alpha -= fade_in_speed/100;
	}
}