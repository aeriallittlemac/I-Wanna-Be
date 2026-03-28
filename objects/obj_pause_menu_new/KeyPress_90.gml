show_debug_message(page);
show_debug_message(selected_page);

if (selected_page != page) {
	page = selected_page;
} else if (focus_hint != -1 && focus_hint.found && !global.in_dialogue) {
	instance_create_depth(
		0, 0, 9999, dialogue_restore_save_choice, 
		{save_name: focus_hint.save_name}
	);
}
