	teleport_npc(obj_gambino, school_gambinos_room, 230, 130, RIGHT);
	instance_create_depth(0, 0, 0, obj_gambino_lighting);
	obj_player.sprite_index = obj_player.sprite[RIGHT];
	obj_player.face = RIGHT;
	game_wait(3.5);
	game_NewDialogue(dialogue_gambino_copper_coin);
	obj_gambino.entityActivateArg = dialogue_gambino_copper_coin_1;
	instance_destroy(self);