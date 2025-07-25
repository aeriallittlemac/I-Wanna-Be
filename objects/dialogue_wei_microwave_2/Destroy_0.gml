AddRelationshipPoints(obj_wei, 25);
audio_stop_sound(sfx_microwave_operating);
audio_play_sound(sfx_microwave_done, 1, false);
game_wait(1.5);
game_NewDialogue(dialogue_wei_microwave_3)