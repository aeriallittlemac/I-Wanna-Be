// Parse game time string into 24-hour seconds format and then algorithmically set window lighting.

if (!global.time_based_lighting || (previous_game_time == global.game_time && previous_night == global.night)) {
	exit;
}

previous_game_time = global.game_time;
previous_night = global.night;

update_time_based_lighting();
