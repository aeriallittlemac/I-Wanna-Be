if default_pixel_font == noone{
default_pixel_font = font_add("joystix monospace.otf", font_size*4, false, false, 16, 128);
font_add_enable_aa(false);
}
draw_set_colour(font_color);
draw_set_font(default_pixel_font);
draw_text_transformed_colour((x-camera_get_view_x(view_camera[0]))*minimap_scale, y*minimap_scale, displayed_overlay_text, 0.25*minimap_scale, 0.25*minimap_scale, 0,font_color, font_color, font_color, font_color, set_text_alpha);

if string_length(overlay_text) > string_length(displayed_overlay_text){
	if timer <= 0 {
		i++;
		displayed_overlay_text += string_char_at(overlay_text,i);
		timer = text_timer * room_speed;
	}
	else{
		timer --;
	}
}
else{
	if text_last_timer <= 0 {
		set_text_alpha -= fade_out_speed * 0.01;
		if set_text_alpha <= 0 {
			instance_destroy();
		}
	}
	else{
		text_last_timer --;
	}
}
