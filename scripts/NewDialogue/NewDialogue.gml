function NewDialogue(dialogue){
	if object_exists(dialogue){ 
		instance_create_depth(0,0,9999, dialogue);
	}
	else{
		show_debug_message("dialogue doesn't exist!");
	}
}

