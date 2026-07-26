

	if place_meeting(x,y,obj_player) && !triggered{
		if (variable_instance_exists(self, "callback")) {
			callback();
		}
		if (!variable_instance_exists(self, "cutscene_object")) {
			instance_destroy(self);
			exit;
		}
		if object_get_parent(cutscene_object) == dialogue_parent{
			NewDialogue(cutscene_object);
		}
		else{
			instance_create_depth(0,0,0, cutscene_object);
		}
		if respawnable{
			show_debug_message("interacted!")
			triggered = true;
		}
		else{
		
		instance_destroy(self);
		}
	}


