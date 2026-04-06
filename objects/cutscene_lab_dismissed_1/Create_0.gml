with obj_guy{
	var inst = instance_create_depth(x-40, y, -1, obj_dialogue_circle)
		inst.dialogue_object = dialogue_guy_potion;
	}
instance_destroy(self);