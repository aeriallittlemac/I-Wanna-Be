item_remove(global.item_list.frenchies_envelope);
audio_stop_sound(sewing_club_new);
instance_create_depth(0,0,TEXTBOX_DEPTH+1, obj_fire_writing);
game_NewDialogue(timed_dialogue_grace_reads_letter);