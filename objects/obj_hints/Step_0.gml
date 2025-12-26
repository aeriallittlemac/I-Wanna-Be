if (global.in_hints) {
	var right_key = keyboard_check_pressed(MOVE_RIGHT);
	var left_key = keyboard_check_pressed(MOVE_LEFT);
	var up_key = keyboard_check_pressed(MOVE_UP);
	var down_key = keyboard_check_pressed(MOVE_DOWN);

	var col_delta = right_key - left_key;
	var row_delta = down_key - up_key;

	focus_row = clamp(focus_row + row_delta, 0, array_length(hint_grid) - 1);
	focus_col = clamp(focus_col + col_delta, 0, array_length(hint_grid[focus_row]) - 1);
}
