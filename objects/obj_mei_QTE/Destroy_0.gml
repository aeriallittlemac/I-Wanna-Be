global.QTE = false;
audio_sound_gain(QTE_bgm, 0, 2000);
audio_sound_gain(global.bgm, original_bgm_gain, 2000);
global.QTE = false;
game_set_speed(current_fps, gamespeed_fps);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
if timer<=0{
	NewDialogue(lose_cutscene);
}
else{
	NewDialogue(win_cutscene);
}