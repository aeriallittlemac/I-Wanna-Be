if noticed{
	game_NewDialogue(dialogue_gambino_copper_coin_noticed);
}
else{
	reverse_gambinos_lighting();
	audio_sound_gain(all_the_leaves_are_brown, 0, 2000);
	game_wait(1.5);
	game_NewDialogue(cutscene_gambino_copper_coin);
}