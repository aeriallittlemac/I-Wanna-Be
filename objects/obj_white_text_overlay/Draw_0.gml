default_pixel_font = font_add("joystix monospace.otf", font_size, false, false, 16, 128);
font_add_enable_aa(false);
draw_set_colour(font_color);
draw_set_font(default_pixel_font);
draw_text_colour(x, y, displayed_overlay_text, font_color, font_color, font_color, font_color, set_text_alpha);
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
