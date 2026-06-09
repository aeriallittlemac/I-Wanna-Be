if global.pause_menu{
show_debug_message(page);
show_debug_message(selected_page);
if bookmark_select{
	audio_play_sound(sfx_book_slide, 1, false);
	audio_play_sound(sfx_book_open, 1, false);
	alarm[0] = 1;
	page = selected_bookmark;
}
else{
if (focus_hint != -1 && focus_hint.found && !global.in_dialogue) {
	audio_play_sound(sfx_confirm, 1, false);
	instance_create_depth(
		0, 0, 9999, dialogue_restore_save_choice, 
		{save_name: focus_hint.save_name}
	);
	}
}
}