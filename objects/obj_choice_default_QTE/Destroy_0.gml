game_set_speed(current_fps, gamespeed_fps);
global.QTE = false;
NewDialogue(choices[choice_selected].choice_cutscene);
audio_sound_gain(sewing_club_ashley, 0, 2000);
audio_sound_gain(global.bgm, original_bgm_gain, 2000);