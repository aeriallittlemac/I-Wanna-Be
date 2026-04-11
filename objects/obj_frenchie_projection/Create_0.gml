depth = -bbox_bottom;
image_xscale = obj_frenchie.image_xscale;
image_yscale = obj_frenchie.image_yscale;

//show_debug_message(string("Frenchie Projection Scales: {0} {1}", image_xscale, image_yscale));

function start_sequences() {
	// Force these to be off.
	obj_minimap.visible = false;
	obj_playerpointer.visible = false;
	layer_create(-9999, "Sequence_Overlay");
	seq = layer_sequence_create("Sequence_Overlay", camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2, camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2, seq_frenchies_death);
	
	// Note: This object is destroyed at the end of the cremation sequence.
}
