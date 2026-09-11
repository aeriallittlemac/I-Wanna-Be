audio_play_sound(sfx_close_door, 1, false);
game_wait(2);
game_NewDialogue(dialogue_wednesday_classroom_setup_1)
instance_destroy(self);