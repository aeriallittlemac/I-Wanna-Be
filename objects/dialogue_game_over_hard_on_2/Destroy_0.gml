global.storylines.Beatmaps.Day_Two.date_grace_truth = true;
if redo{
	if !global.storylines.Mechanics_Introduced.redo{
	//redo sfx + vfx
	//game_wait(2);
		game_NewDialogue(dialogue_explaining_redos);
	}
	else{
		game_NewDialogue(dialogue_truth);
	}
}
else{	
	global.storylines.Sewing_Club.hard_on = true;
	instance_create_depth(cutscene_date_grace_choice_no);
}
redo_UI();