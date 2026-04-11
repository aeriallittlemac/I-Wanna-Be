function frenchie_death_moment() {
	layer_sequence_destroy(obj_frenchie_projection.seq);
	obj_frenchie_projection.seq = layer_sequence_create("Sequence_Overlay", camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2, camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2, seq_cremation);
}

function frenchie_cremation_moment() {
	teleport_player(700, 114, school_2F);
	// Call slightly later so that the room doesn't flash for a moment while teleporting.
	call_later(1, time_source_units_seconds, function() {
		layer_sequence_destroy(obj_frenchie_projection.seq);
		layer_destroy("Sequence_Overlay");
		obj_minimap.visible = true;
		obj_playerpointer.visible = true;
		global.night = true;
		global.game_time = "12:00 am";
		instance_destroy(obj_frenchie_projection);
	});
}
