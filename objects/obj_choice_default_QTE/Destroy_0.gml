game_set_speed(current_fps, gamespeed_fps);
global.QTE = false;
NewDialogue(choices[choice_selected].choice_cutscene);
audio_sound_gain(QTE_bgm, 0, 2000);
audio_sound_gain(global.bgm, original_bgm_gain, 2000);