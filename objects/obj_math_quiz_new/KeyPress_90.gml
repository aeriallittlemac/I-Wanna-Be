if question_list[questions_displayed[selection]].question_answer == true{
	audio_play_sound(sfx_kids_cheer, 1, false);
	
}
else{
	audio_play_sound(sfx_keyboard_slamming, 1, false);
}
displayResults();