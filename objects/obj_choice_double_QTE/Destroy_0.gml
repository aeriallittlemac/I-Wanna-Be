game_set_speed(current_fps, gamespeed_fps);
global.QTE = false;
audio_play_sound(important_decision_conclusion, 1, false);
instance_create_depth(0,0, OBJ_MAX_DEPTH, cutscene_decision_aftermath);
game_wait(audio_sound_length(important_decision_conclusion));
game_NewDialogue(cutscene_decision_aftermath_1);
game_NewDialogue(choices[choice_selected].choice_cutscene);