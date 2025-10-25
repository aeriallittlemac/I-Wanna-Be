if global.storylines.Main_Classroom.Day_Two.papers_handed_out > 6 &&!global.in_dialogue{
	game_NewDialogue(dialogue_first_lesson_end);
	instance_destroy(self);
}