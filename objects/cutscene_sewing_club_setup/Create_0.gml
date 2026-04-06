
	if instance_exists(obj_mei){
	with obj_mei{
		var inst = instance_create_depth(x, y+25, -1, obj_dialogue_circle)
		inst.dialogue_object = dialogue_meiseat;
	}
	}
	if instance_exists(obj_ashley){
	with obj_ashley{
	var inst = instance_create_depth(x+30, y, -1, obj_dialogue_circle)
		inst.dialogue_object = dialogue_ashleyseat;
	}
	}
	if instance_exists(obj_brooklyn){
	with obj_brooklyn{
	var inst = instance_create_depth(x, y-20, -1, obj_dialogue_circle)
		inst.dialogue_object = dialogue_brooklynseat;
	
	}
	}
	if instance_exists(obj_grace){
	with obj_grace{
	var inst = instance_create_depth(x+30, y, -1, obj_dialogue_circle)
		inst.dialogue_object = dialogue_graceseat;
		inst.priority = true;
	}
	}
