if (!active) {
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

var accept_key = keyboard_check_pressed(CONFIRM_ACTION) && !global.input_off;

if (keyboard_check_pressed(CANCEL_ACTION)) {
	close_dialogue();
} else if (accept_key) {
	if (text_element.on_last_page()) {
		close_dialogue();
		exit;
	}
	var typist_state = active_typist.get_state();
	if (typist_state < 1 && typist_state > 0) {
		active_typist.skip();
	} else if (typist_state > 0) {
		text_element.page(text_element.get_page() + 1);
	}
}
