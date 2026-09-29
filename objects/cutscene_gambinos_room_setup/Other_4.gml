if room == school_gambinos_room{
	instance_create_depth(0, 0, 0, obj_gambino_lighting);
	game_wait(3.5);
	game_NewDialogue(dialogue_gambino_copper_coin);
	obj_gambino.entityActivateArg = dialogue_gambino_copper_coin_1;
	instance_destroy(self);
}