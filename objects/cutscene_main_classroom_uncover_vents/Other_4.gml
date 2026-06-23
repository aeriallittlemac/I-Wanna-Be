if room == school_main_classroom{
	AddInstanceToActivate(INST_MAIN_CLASSROOM_VENT);
	obj_mrchen.entityActivateArg = dialogue_mr_chen_classroom;
	instance_destroy(self);
}