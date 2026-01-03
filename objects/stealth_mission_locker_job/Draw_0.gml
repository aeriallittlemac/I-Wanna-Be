if (keyboard_check(CONFIRM_ACTION)) {
	var indicator_x = (left_locker_border + right_locker_border) / 2;
	var indicator_y = 20;
	draw_sprite_ext(spr_padlock, locker_unlock_points / 3, indicator_x, indicator_y, 0.8, 0.8, 0, c_white, 1);
	var y2 = indicator_y + sprite_get_height(spr_padlock) / 2;
	draw_healthbar(indicator_x + 15, y2 - 5, indicator_x + sprite_get_width(spr_padlock) - 30, y2, (1 - locker_unlock_points / (frenchie_check_interval * 2)) * 100, c_black, c_red, c_green, 0, true, true);
}
