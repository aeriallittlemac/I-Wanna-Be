event_inherited();

if global.day == 2&& global.game_time = "3:30 pm" && !global.storylines.Sewing_Club.Day_Two.talked_to.grace{
	global.storylines.Sewing_Club.Day_Two.talked_to.grace = true;
}
else if global.day == 3 && global.game_time = "3:30 pm"{
	if global.storylines.Grace.truth_or_dare_confession{
	
		if !global.storylines.Grace.deny_rumor{
			
		}
		
	}
	else{
		audio_stop_sound(sewing_club_new);
		instance_create_depth(0,0,TEXTBOX_DEPTH+1, obj_fire_writing);
		game_NewDialogue(timed_dialogue_grace_reads_letter);
		
	}
}
else if global.day == 4 && global.game_time = "3:30 pm"{
	global.storylines.Sewing_Club.Day_Four.talked_to.grace = true;
	//if global.storylines.Grace.truth_or_dare_confession{
	
	//	if !global.storylines.Grace.deny_rumor{
		
	//	}
		
	//}
	//else{
		
	//}

}