if room == school_main_classroom{
	show_debug_message("mr chen setup")
	obj_mrchen.entityActivateScript = NewDialogue;
	obj_mrchen.entityActivateArg = dialogue_mr_chen_classroom;
	instance_destroy(self);
}