draw_set_font(default_pixel_font);
draw_set_colour(c_black);

text_progress = min(string_length(speech_text[0]), text_progress + write_speed);
var max_width = (sprite_width - 2 * bubble_padding) / text_scale;
var display_text = string_copy(speech_text[0], 1, text_progress);
while (string_height_ext(display_text, -1, max_width) > (sprite_height - 2 * bubble_padding) / text_scale) {
	display_text = string_delete(display_text, 1, 1);
}
draw_text_ext_transformed(x - sprite_width / 2 + bubble_padding, y - sprite_height / 2 + bubble_padding, display_text, -1, max_width, text_scale, text_scale, 0);

if (text_progress >= string_length(speech_text[0]) && array_length(speech_text) > 1) {
	array_delete(speech_text, 0, 1);
	text_progress = 0;
}
