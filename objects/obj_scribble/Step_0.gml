// This should have been an FSM...

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
var on_last_page = text_element.on_last_page();
var typist_state = active_typist.get_state();
var choice_selected = false;

if (on_last_page && typist_state == 1 
	&& active_choices != noone && !global.input_off
) {
	if (keyboard_check_pressed(MOVE_DOWN)) {
		var last_idx = array_length(active_choices) - 1;
		active_choice_idx = min(last_idx, active_choice_idx + 1);
	} else if (keyboard_check_pressed(MOVE_UP)) {
		active_choice_idx = max(0, active_choice_idx - 1);
	} else if (accept_key) {
		var selected_choice = active_choices[active_choice_idx];
		selected_choice.cb();
		choice_selected = true;
	}
}

if (keyboard_check_pressed(CANCEL_ACTION)) {
	if (active_choices != noone && !on_last_page) {
		text_element.page(text_element.get_page() + 1);
	} else if (active_choices == noone) {
		close_dialogue();
	}
} else if (accept_key) {
	if (on_last_page && typist_state == 1 
		&& (active_choices == noone || !on_last_page || choice_selected)
	) {
		close_dialogue();
	} else if (typist_state < 1 && typist_state > 0) {
		active_typist.skip();
	} else if (typist_state > 0) {
		audio_play_sound(sfx_move_select, 1, false);
		text_element.page(text_element.get_page() + 1);
	}
}
previously_active = active;
