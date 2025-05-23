if keyboard_check_pressed(vk_up) || keyboard_check_pressed(vk_down) || keyboard_check_pressed(vk_left) || keyboard_check_pressed(vk_right){
	if !global.in_dialogue{
		NewDialogue(dialogue_mcronald_dont_walk_away);
	}
}





