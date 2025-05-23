game_wait(0.6);
if lose_cutscene_object != noone{
	
	if player_score < target_score{
		game_NewCutscene(lose_cutscene_object);
	}
	else{
		game_NewCutscene(win_cutscene_object);
	}
}
else{
	game_NewCutscene(win_cutscene_object);
}






