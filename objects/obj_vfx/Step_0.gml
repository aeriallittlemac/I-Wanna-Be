array_copy(objectshader_pos, 0, ZEROS, 0, array_length(objectshader_pos));
array_copy(objectshader_angles, 0, ZEROS, 0, array_length(objectshader_angles));

var i_pos = 0, i_angles = 0;
with (obj_sh_light) {
	obj_vfx.objectshader_pos[i_pos++] = x;
	obj_vfx.objectshader_pos[i_pos++] = y;
	obj_vfx.objectshader_pos[i_pos++] = _radius;
	obj_vfx.objectshader_pos[i_pos++] = _illumination;
	obj_vfx.objectshader_angles[i_angles++] = _angle_lower;
	obj_vfx.objectshader_angles[i_angles++] = _angle_upper;
}

// Parse game time string into 24-hour seconds format and then algorithmically set window lighting.

if (!global.time_based_lighting || (previous_game_time == global.game_time && previous_night == global.night)) {
	exit;
}

previous_game_time = global.game_time;
previous_night = global.night;

update_time_based_lighting();
