if place_meeting(x,y,obj_player){
	if object_get_parent(cutscene_object) == dialogue_parent{
		NewDialogue(cutscene_object);
	}
	else{
		instance_create_depth(0,0,0, cutscene_object);
	}
	instance_destroy(self);
}


