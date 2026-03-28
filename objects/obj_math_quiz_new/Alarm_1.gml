for(var i = 0; i< 4; i++){
	 array_delete(question_list, questions_displayed[i], 1);
}
results = false;
countdown = time_to_answer;
newDisplayQuestions();
alarm[0] = room_speed;