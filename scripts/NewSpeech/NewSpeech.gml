function NewSpeech(npc, speech) {
	if (object_exists(speech)) {
		var speech_bubble = instance_create_depth(0, 0, -9999, speech);
		speech_bubble.npc_speaker = npc;
		return speech_bubble
	} else {
		show_debug_message("Speech doesn't exist!");
	}
}
