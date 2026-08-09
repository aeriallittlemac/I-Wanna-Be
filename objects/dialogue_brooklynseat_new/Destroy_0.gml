event_inherited();

if global.day == 2&& !global.storylines.Sewing_Club.Day_Two.talked_to.brooklyn{
	global.storylines.Sewing_Club.Day_Two.talked_to.brooklyn = true;
	instance_create_depth(0,0,0,obj_dating_sim);
}
else if global.day == 3&& !global.storylines.Sewing_Club.Day_Two.talked_to.brooklyn{
	instance_create_depth(0,0,0,obj_dating_sim);
	global.storylines.Sewing_Club.Day_Three.talked_to.brooklyn = true;
}
else if global.day == 4&& !global.storylines.Sewing_Club.Day_Two.talked_to.brooklyn{
	if global.storylines.Grace.truth_or_dare_confession{
		if !global.storylines.Grace.deny_rumor{
			var inst = instance_create_depth(0,0,0,obj_brooklyn_QTE_new);
			inst.choices[0].choice_text = "Are you retarded?"
			inst.win_cutscene = dialogue_sewing_club_brooklyn_wednesday_success;
			inst.lose_cutscene = dialogue_sewing_club_brooklyn_wednesday_fail;
	
			sentence = array_create(0);
			array_push(sentence, "Smarter");
			array_push(sentence, "than");
			array_push(sentence, "you");
			array_push(sentence, "woman");
			inst.sentence = sentence;
			inst.full_sentence = "Smarter than you woman";
		}
		else{
			global.storylines.Sewing_Club.Day_Four.talked_to.brooklyn = true;
		}
	}
	else{
		global.storylines.Sewing_Club.Day_Four.talked_to.brooklyn = true;
	}

}
else if global.day == 5{
	item_acquired(global.item_list.brooklyns_gun);
}