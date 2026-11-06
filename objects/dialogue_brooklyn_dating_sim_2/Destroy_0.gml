event_inherited();
if obj_dating_sim.lives_left>0{
	var inst = instance_create_depth(0,0,obj_dating_sim.depth-1,obj_brooklyn_QTE_new);
	inst.choices[0].choice_text = "Get your ugly ass out my face."
	inst.win_cutscene = dialogue_brooklyn_dating_sim_2_success;
	inst.lose_cutscene = dialogue_brooklyn_dating_sim_2_fail;
	sentence = array_create(0);
	array_push(sentence, "Take");
	array_push(sentence, "a");
	array_push(sentence, "toaster");
	array_push(sentence, "bath");
	inst.sentence = sentence;
	inst.full_sentence = "Take a toaster bath";
}
else{
	NewDialogue(dialogue_brooklyn_dating_sim_game_over);
}
