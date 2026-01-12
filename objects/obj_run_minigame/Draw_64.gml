if (timer >= 0 && timer < countdown_length) {
	draw_set_font(default_pixel_font);
	draw_set_colour(#EE0000);
	draw_text_transformed(250, 50, countdown[timer], 1, 1, 0);
}
