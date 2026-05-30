//GRACE minigame
var inst = instance_create_depth(0,0,0, obj_graces_snake_game);
	with inst{
		win_cutscene = dialogue_grace_interact_rumor_escalation_success;
		lose_cutscene = dialogue_grace_interact_rumor_escalation_fail;
	}