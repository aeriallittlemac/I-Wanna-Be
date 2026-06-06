timer -= delta_time/1000000;
	if timer <=0{
		game_NewDialogue(lose_cutscene);
		instance_destroy(self);
	}
	
tint_alpha += tint_change;
if (tint_alpha>=max_tint){
	tint_change = -abs(tint_change);
}
if (tint_alpha < -0.1){
	tint_change = abs(tint_change);
}