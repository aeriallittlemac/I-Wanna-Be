global.rap_battle = false;
if instance_exists(obj_rhythm_game){
	if stutter{
		obj_rhythm_game.lose_cutscene_object = stutter_cutscene;
		obj_rhythm_game.win_cutscene_object = stutter_cutscene;
	}
	instance_destroy(obj_rhythm_game);
}






