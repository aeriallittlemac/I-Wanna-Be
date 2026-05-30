if !global.timed_dialogue{
	if instance_exists(obj_dialogue_character){
		obj_dialogue_character.alarm[2] = 1;
	}
	instance_destroy(self);
}