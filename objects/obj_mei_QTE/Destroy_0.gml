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