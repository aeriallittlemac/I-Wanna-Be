global.text_box_top = false;
with obj_mei{
		var inst = instance_create_depth(x, y+30, -1, obj_dialogue_circle)
		inst.dialogue_object = dialogue_brooklyn_n_mei_interact_lab;
	}

	with obj_grace{
	var inst = instance_create_depth(x-30, y, -1, obj_dialogue_circle)
		inst.dialogue_object = dialogue_grace_interact_lab;
	}
	with obj_guy{
	var inst = instance_create_depth(x, y+30, -1, obj_dialogue_circle)
		inst.dialogue_object = dialogue_guy_interact_lab;
		inst.one_time = false;
	
	}
	with obj_job{
	var inst = instance_create_depth(x-20, y+20, -1, obj_dialogue_circle)
		inst.dialogue_object = dialogue_job_interact_lab;
		inst.one_time = false;
	}