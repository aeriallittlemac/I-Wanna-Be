if keyboard_check_pressed(MOVE_UP) || keyboard_check_pressed(MOVE_DOWN) || keyboard_check_pressed(MOVE_LEFT) || keyboard_check_pressed(MOVE_RIGHT){
	if !global.in_dialogue{
		NewDialogue(dialogue_check_rumors_2);
	}
} 






