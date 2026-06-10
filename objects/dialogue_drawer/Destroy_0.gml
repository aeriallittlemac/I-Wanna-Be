if global.day >= 5{
	instance_create_depth(0,0,0, obj_drawer_scene);
	game_wait(4);
	game_NewDialogue(dialogue_drawer_1);
}