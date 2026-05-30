timer -= delta_time/1000000;
	if timer <=0{
		game_NewDialogue(lose_cutscene);
		instance_destroy(self);
	}