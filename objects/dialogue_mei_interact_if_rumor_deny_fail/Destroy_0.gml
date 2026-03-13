global.storylines.Sewing_Club.Day_Three.talked_to.mei = true;
audio_stop_all();
audio_play_sound(sfx_slap, 1, false);
//slap sfx
//black screen
game_filter_set_visible("black_screen");
game_wait(0.6);
game_filter_set_invisible("black_screen")
game_NewDialogue(dialogue_mei_interact_if_rumor_deny_fail_1);
