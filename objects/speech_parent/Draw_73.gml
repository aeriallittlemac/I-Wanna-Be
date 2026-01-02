if (array_length(speech_text) == 0) {
	exit;
}

draw_set_font(default_pixel_font);
draw_set_colour(c_black);

var words = speech_text[0];
last_index = array_length(words) - 1;

var display_text = words[text_progress];
for (var i = text_progress - 1; i >= 0; --i) {
	var next_display_text = words[i] + " " + display_text;
	if (string_height_ext(next_display_text, -1, max_width) > max_height) {
		break;
	}
	display_text = next_display_text;
}

draw_text_ext_transformed(x - sprite_width / 2 + bubble_padding, y - sprite_height / 2 + bubble_padding, display_text, -1, max_width, text_scale, text_scale, 0);

if (write_delay) {
	exit;
}

var last_char = string_char_at(display_text, string_length(display_text));
if (string_count(last_char, ".,!?") > 0 && text_progress < last_index) {
	write_delay = true;
	call_later(punctuation_pause, time_source_units_seconds, function () {
		write_delay = false;
		++text_progress;
	});
} else if (text_progress >= last_index && array_length(speech_text) > 1) {
	write_delay = true;
	call_later(text_group_pause, time_source_units_seconds, function () {
		write_delay = false;
		array_delete(speech_text, 0, 1);
		text_progress = 0;
	});
} else {
	text_progress = min(last_index, text_progress + write_speed * delta_time / 1000000);
}
