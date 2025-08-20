if global.day == 2{
	if inst_GRACESEAT.seat_empty{
	}
	else{
		game_NewCharacterIntro(obj_ashley);
		game_NewDialogue(dialogue_brooklyn_debut);
	}
}