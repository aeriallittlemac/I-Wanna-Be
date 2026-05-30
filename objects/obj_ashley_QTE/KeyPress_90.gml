if !hammer_out_of_range{
	instance_create_depth(hammer_target_x[0], hammer_target_y[0], depth, obj_glass_shatter);
	if array_length(hammer_target_x)>1{
	array_delete(hammer_target_x, 0, 1);
	array_delete(hammer_target_y, 0, 1);
	}
	else{
		game_NewDialogue(win_cutscene);
		instance_destroy(self);
	}
}