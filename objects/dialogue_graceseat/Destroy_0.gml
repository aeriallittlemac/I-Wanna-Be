if global.day == 2{
	if inst_GRACESEAT.seat_empty{
	}
	else{
		game_NewCharacterIntro(obj_ashley);
		game_NewDialogue(dialogue_brooklyn_debut);
	}
}
else if global.day == 3 && global.game_time = "3:30 pm"{
	if global.storylines.Grace.truth_or_dare_confession{
	
		if !global.storylines.Grace.deny_rumor{
			instance_create_depth(0,0,0, beatmap_grace_tuesday_sewing_club_rumor_escalated);
		}
		
	}
	else{
		audio_stop_sound(sewing_club_new);
		instance_create_depth(0,0,TEXTBOX_DEPTH+1, obj_fire_writing);
		game_NewDialogue(timed_dialogue_grace_reads_letter);
		
	}
}
if frenchie_storms_in{
	game_NewDialogue(dialogue_frenchies_confession);
}