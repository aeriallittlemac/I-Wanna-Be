if global.day == 5{
	obj_mrchen.entityActivateArg = dialogue_mr_chen_classroom
	instance_create_depth(x, y, depth, obj_pile_of_books_scattered);
	instance_activate_object(INST_MAIN_CLASSROOM_VENT);
	INST_MAIN_CLASSROOM_VENT.
	instance_destroy(self);
}