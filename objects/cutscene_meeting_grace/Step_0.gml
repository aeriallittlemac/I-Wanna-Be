if !instance_exists(obj_grace){
	instance_destroy(self);
}
else if obj_grace.sprite_index == spr_grace_chew_then_freeze && obj_grace.image_index >= 13{
	npc_animate(obj_grace, spr_grace_side_shaded);
	npc_dialogue(obj_grace, dialogue_didnt_see_you_there);
	instance_destroy(self);
}






