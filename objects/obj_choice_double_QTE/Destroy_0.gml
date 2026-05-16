game_set_speed(current_fps, gamespeed_fps);
global.QTE = false;
audio_play_sound(important_decision_conclusion, 1, false);
game_wait(audio_sound_length(important_decision_conclusion));
game_NewCutscene()
game_NewDialogue(choices[choice_selected].choice_cutscene);