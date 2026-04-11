// Force these to be off.
obj_minimap.visible = false;
obj_playerpointer.visible = false;
layer_create(-9999, "Sequence_Overlay");
layer_sequence_create("Sequence_Overlay", camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2, camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2, seq_frenchies_death);
