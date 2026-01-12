if global.storylines.Grace.truth_or_dare_confession{
	if envelopes{
		global.storylines.Grace.deny_rumor = true
		npc_move_to_pos(obj_frenchie, 1, 0, obj_player.x + 8, 0);
		game_wait(1);
		game_NewDialogue(cutscene_band_first_lunch_1_envelope);
		//make frenchie walk over to player
	}
	else{
		global.hottest_rumor = "Grace and the new kid fucked!"
		npc_move_to_pos(obj_frenchie, 1, 0, obj_player.x - 150, 0);
		game_wait(3);
		game_NewDialogue(dialogue_band_first_lunch_1_lie);
	}
}
else{
	npc_move_to_pos(obj_frenchie, 1, 0, obj_player.x + 8, 0);
	game_wait(1);
	game_NewDialogue(cutscene_band_first_lunch_2_envelope);
}