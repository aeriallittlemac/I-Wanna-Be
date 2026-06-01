if global.day == 2&& global.game_time = "3:30 pm" && !global.storylines.Sewing_Club.Day_Two.talked_to.brooklyn{
	var inst = instance_create_depth(0,0,0,obj_brooklyn_QTE_new);
	inst.choices[0].choice_text = "You have filthy and perverted intentions, don't you?"
	inst.win_cutscene = dialogue_brooklynseat_debut_succeed;
	inst.lose_cutscene = dialogue_brooklynseat_debut_fail;
	
	sentence = array_create(0);
	array_push(sentence, "You");
	array_push(sentence, "have");
	array_push(sentence, "no");
	array_push(sentence, "proof");
	inst.sentence = sentence;
	inst.full_sentence = "You have no proof";
	
	
	
	global.storylines.Sewing_Club.Day_Two.talked_to.brooklyn = true;
}
if global.day == 3 && global.game_time = "3:30 pm" && !global.storylines.Sewing_Club.Day_Three.talked_to.brooklyn{
	if(!global.storylines.Grace.truth_or_dare_confession){
		//instance_create_depth(0, 0, 0, beatmap_brooklyn_tuesday_sewing_club_no_rumor);
		
	}
	else {
	if (global.storylines.Grace.deny_rumor){
		var inst = instance_create_depth(0,0,0, obj_choice_default_QTE);
		with inst{
			choice.one.choice_text = "Pass it off as a joke.";
			choice.one.choice_cutscene = dialogue_brooklynseat_deny_rumor_stare_joke;
			choice.two.choice_text = "Deliver to her McRonald's letter"
			choice.two.choice_cutscene = dialogue_brooklynseat_deny_rumor_letter;
			choice.three.choice_text = "Stare at her with a blank face."
			choice.three.choice_cutscene = dialogue_brooklynseat_deny_rumor_stare_blankly;
		}
	}
	else{
		var inst = instance_create_depth(0,0,0,obj_brooklyn_QTE_new);
		inst.choices[0].choice_text = "I don't owe you anything."
		inst.win_cutscene = dialogue_brooklyn_interact_rumor_escalation_success;
		inst.lose_cutscene = dialogue_brooklyn_interact_rumor_escalation_fail;
		
		sentence = array_create(0);
		array_push(sentence, "Take");
		array_push(sentence, "a");
		array_push(sentence, "toaster");
		array_push(sentence, "bath");
		inst.sentence = sentence;
		inst.full_sentence = "Take a toaster bath";
	}
	}
	global.storylines.Sewing_Club.Day_Three.talked_to.brooklyn = true;
}