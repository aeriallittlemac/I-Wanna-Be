if redo{
	if !global.storylines.Mechanics_Introduced.redo{
		game_NewDialogue(dialogue_explaining_redos);
	}
	else{
		global.storylines.Beatmaps.Day_Two.mei_first_meeting = true;
		game_NewDialogue(dialogue_meiseat)
	}
}
else{
	global.storylines.Sewing_Club.Day_Two.hard_on = true;
	instance_create_depth(cutscene_date_grace_choice_no);
}
redo_UI();