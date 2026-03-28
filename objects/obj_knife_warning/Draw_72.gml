if (has_immunity) {
	if (++flash_animation_steps % flash_animation_period_steps == 0) {
		obj_player.visible = !obj_player.visible;
	}
} else {
	obj_player.visible = true;
}
