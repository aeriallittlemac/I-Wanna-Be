//// Force these to be off.
//obj_minimap.visible = false;
//obj_playerpointer.visible = false;
//layer_create(-9999, "Sequence_Overlay");
//global.active_seq = layer_sequence_create("Sequence_Overlay", camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2, camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2, seq_frenchies_death);

//// If this proves to be unreliable in the future, consider using sequence moments.
//call_later(layer_sequence_get_length(global.active_seq) / 5, time_source_units_seconds, function() {
//	layer_sequence_destroy(global.active_seq);
//	global.active_seq = layer_sequence_create("Sequence_Overlay", camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2, camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2, seq_cremation);
//	call_later(layer_sequence_get_length(global.active_seq) / 5, time_source_units_seconds, function() {
//		layer_sequence_destroy(global.active_seq);
//		layer_destroy("Sequence_Overlay");
//		obj_minimap.visible = true;
//		obj_playerpointer.visible = true;
//		teleport_player(700, 114, school_2F);
//	});
//});
