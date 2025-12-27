if (global.in_hints && !is_choosing_restore) {
	var right_key = keyboard_check_pressed(MOVE_RIGHT);
	var left_key = keyboard_check_pressed(MOVE_LEFT);
	var up_key = keyboard_check_pressed(MOVE_UP);
	var down_key = keyboard_check_pressed(MOVE_DOWN);

	// The possibility may exist that other game events can be triggered 
	// while in the hints menu. This case should be resolved later.
	var select_key = keyboard_check_pressed(CONFIRM_ACTION);

	var col_delta = right_key - left_key;
	var row_delta = down_key - up_key;

	focus_row = clamp(focus_row + row_delta, 0, array_length(hint_grid) - 1);
	focus_col = clamp(focus_col + col_delta, 0, array_length(hint_grid[focus_row]) - 1);
	
	var focus_hint = global.hints[$hint_grid[focus_row][focus_col]];
	if (select_key && focus_hint.found) {
		instance_create_depth(
			0, 0, 9999, dialogue_restore_save_choice, 
			{save_name: focus_hint.save_name}
		);
	}
}
