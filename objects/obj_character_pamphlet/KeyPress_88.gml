if !global.storylines.Mechanics_Introduced.pamphlet_finished_reading{
	global.storylines.Mechanics_Introduced.pamphlet_finished_reading = true;
	game_wait(0.2);
	game_NewDialogue(dialogue_go_back_to_nap);
}

instance_destroy(self);