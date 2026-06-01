if instance_exists(obj_glass_shatter){
	instance_destroy(obj_glass_shatter);
}
game_wait(0.3);
game_NewDialogue(win_cutscene);
global.QTE = false;