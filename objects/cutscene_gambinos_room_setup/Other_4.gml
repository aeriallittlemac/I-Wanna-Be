if room == school_gambinos_room{
	instance_create_depth(0, 0, 0, obj_gambino_lighting);
	move_to_pos(1, 0, obj_player.x+1, obj_player.y)
	obj_player.sprite_index = obj_player.sprite[RIGHT];
	obj_player.face = RIGHT;
	game_wait(2.5);
	game_NewDialogue(dialogue_gambino_copper_coin);
	obj_gambino.entityActivateArg = dialogue_gambino_copper_coin_1;
	instance_destroy(self);
}