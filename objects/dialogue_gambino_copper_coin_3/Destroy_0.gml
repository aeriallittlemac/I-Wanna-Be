event_inherited();
if(option==3){
	var inst = instance_create_depth(0,0,0,obj_game_over_screen);

	with inst{
		respawn_cutscene = cutscene_grace_debut_respawn;
	}
}
else{
	if(option==1){
		game_NewDialogue(dialogue_gambino_copper_coin_3_truth);
	}
	else{
		var inst = instance_create_depth(0,0,0,obj_gambino_QTE);
		inst.win_cutscene = dialogue_gambino_copper_coin_3_lie_win;
		inst.lose_cutscene = dialogue_gambino_copper_coin_3_lie_lose;
	}
}
game_NewDialogue(dialogue_gambino_copper_coin_4);