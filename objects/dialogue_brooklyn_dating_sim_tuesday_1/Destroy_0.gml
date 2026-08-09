event_inherited();
if chair_scenario{
//gameover
}
else{
	if obj_dating_sim.lives_left>0{
		instance_destroy(obj_dating_sim);
		audio_stop_all();
		NewDialogue(dialogue_brooklyn_dating_sim_tuesday_2);
	}
	else{
		NewDialogue(dialogue_brooklyn_dating_sim_tuesday_game_over);
	}

	
}