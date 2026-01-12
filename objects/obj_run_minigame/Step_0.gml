var dt = delta_time / 1000000;

timer = min(countdown_length, timer + dt);

if (timer == countdown_length) {
	var x1 = obj_player.x, y1 = obj_player.y;
	var x2 = obj_frenchie.x, y2 = obj_frenchie.y;
	obj_frenchie.x += round(clamp(x1 - x2, -stab_error, stab_error) / stab_error) * frenchie_speed * dt;
	obj_frenchie.y += round(clamp(y1 - y2, -stab_error, stab_error) / stab_error) * frenchie_speed * dt;
	if (!global.cutscene && sqrt(sqr(x1 - x2) + sqr(y1 - y2)) < stab_error) {
		obj_player.x_lock = 0;
		teleport_player(110, 90, school_lab);
		call_later(1, time_source_units_seconds, function() {
			obj_player.x_lock = 0;
		});
	}
}
