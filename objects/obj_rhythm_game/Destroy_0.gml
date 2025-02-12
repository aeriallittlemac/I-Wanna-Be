game_wait(0.6);
if player_score < target_score{
	game_NewCutscene(lose_cutscene_object);
}
else{
	game_NewCutscene(win_cutscene_object);
}






