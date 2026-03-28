displayResults();
if question_list[questions_displayed[selection]].question_answer == true{
	if selection == 0{
		blue++;
		
	}
	else if selection == 1{
		red++;
		
	}
	else if selection == 2{
		yellow++;
		
	}
	else{
		green++;
	}
	audio_play_sound(sfx_kids_cheer, 1, false);
	
}
else{
	audio_play_sound(sfx_keyboard_slamming, 1, false);
}