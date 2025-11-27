function NewSpeech(npc, speech) {
	if (object_exists(speech)) {
		return instance_create_depth(0, 0, 9999, speech);
	} else {
		show_debug_message("Speech doesn't exist!");
	}
}
