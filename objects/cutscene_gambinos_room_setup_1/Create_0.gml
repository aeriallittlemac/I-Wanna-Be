instance_create_depth(0, 0, 0, obj_gambino_lighting);
	game_wait(1);
	game_NewDialogue(dialogue_gambino_copper_coin);
	obj_gambino.entityActivateArg = dialogue_gambino_copper_coin_1;
	instance_destroy(self);