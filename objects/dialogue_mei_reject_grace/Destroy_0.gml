var inst = instance_create_depth(0,0,0, obj_choice_double_QTE);
		with inst{
			choice.one.choice_text = "Pass it off as a joke.";
			choice.one.choice_cutscene = dialogue_brooklynseat_deny_rumor_stare_joke;
			choice.two.choice_text = "Deliver to her McRonald's letter"
			choice.two.choice_cutscene = dialogue_brooklynseat_deny_rumor_letter;
		}