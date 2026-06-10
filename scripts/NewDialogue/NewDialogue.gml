function NewDialogue(dialogue, choice_idx=-1, selected_text=""){
	if object_exists(dialogue){ 
		var inst = instance_create_depth(0, 0, 9999, dialogue);
		with (inst) {
			inst.qte_choice_idx = choice_idx;
			inst.qte_selected_text = selected_text;
		}
	}
	else{
		show_debug_message("dialogue doesn't exist!");
	}
}

