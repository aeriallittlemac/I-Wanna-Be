if global.day == 3 && global.game_time = "3:30 pm" && !global.storylines.Sewing_Club.Day_Three.talked_to.brooklyn{
	if(!global.storylines.Grace.truth_or_dare_confession){
		//instance_create_depth(0, 0, 0, beatmap_brooklyn_tuesday_sewing_club_no_rumor);
		
	}
	else if (global.storylines.Grace.deny_rumor){
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
	global.storylines.Sewing_Club.Day_Three.talked_to.brooklyn = true;
}