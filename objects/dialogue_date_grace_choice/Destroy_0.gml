if yes {
	//female applause
	//game_wait(1);
	game_NewDialogue(dialogue_date_grace_choice_yes);
}
else
{
	AddRelationshipPoints(obj_grace, -50);
	audio_stop_sound(sewing_club);
}
