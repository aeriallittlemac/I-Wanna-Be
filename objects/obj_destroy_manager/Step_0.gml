for(var i = 0; i < array_length(destroy_list); i++){
	for(var j = 0; j < array_length(obj_activate_manager.activate_list); j++){
		if (destroy_list[i]) == obj_activate_manager.activate_list[j]{
			array_delete(obj_activate_manager.activate_list, j, 1);
		}
	}
	destroy_if_in_scene((destroy_list[i]));
}




