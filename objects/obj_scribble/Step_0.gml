if (!active) {
	previously_active = active;
	exit;
}

if (is_async) {
	if (async_waiting || active_typist.get_state() != 1) {
		exit;
	}
	if (text_element.on_last_page()) {
		async_waiting = true;
		call_later(ASYNC_PAGE_DELAY_SECONDS, time_source_units_seconds, function () {
			async_waiting = false;
			close_dialogue();
		});
	} else {
		async_waiting = true;
		call_later(ASYNC_PAGE_DELAY_SECONDS, time_source_units_seconds, function () {
			text_element.page(text_element.get_page() + 1);
			call_later(1, time_source_units_frames, function () {
				async_waiting = false;
			});
		});
	}
	exit;
}

var accept_key = keyboard_check_pressed(CONFIRM_ACTION) && !global.input_off && previously_active;

if (keyboard_check_pressed(CANCEL_ACTION)) {
	audio_play_sound(sfx_move_select, 1, false);
	close_dialogue();
} else if (accept_key) {
	var typist_state = active_typist.get_state();
	if (text_element.on_last_page() && typist_state == 1) {
		audio_play_sound(sfx_move_select, 1, false);
		close_dialogue();
	} else if (typist_state < 1 && typist_state > 0) {
		active_typist.skip();
	} else if (typist_state > 0) {
		text_element.page(text_element.get_page() + 1);
	}
}
previously_active = active;
