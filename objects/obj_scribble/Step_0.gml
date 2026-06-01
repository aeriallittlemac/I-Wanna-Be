if (!active) {
	exit;
}

var accept_key = keyboard_check_pressed(CONFIRM_ACTION) && !global.input_off;

if (keyboard_check_pressed(CANCEL_ACTION)) {
	instance_destroy(active_dialogue);
	active = false;
} else if (accept_key) {
	text_element.on_last_page()
	if (text_element.on_last_page()) {
		instance_destroy(active_dialogue);
		active = false;
		exit;
	}
	var typist_state = active_typist.get_state();
	if (typist_state < 1 && typist_state > 0) {
		active_typist.skip();
	} else if (typist_state > 0) {
		text_element.page(text_element.get_page() + 1);
	}
}
