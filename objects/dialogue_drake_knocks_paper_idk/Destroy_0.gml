var inst = instance_create_depth(0,0,0, obj_choice_default_QTE);
	with inst{
			choice.one.choice_text = "I'd cremate them";
			choice.one.choice_cutscene = dialogue_drake_knocks_cremate_body;
			choice.two.choice_text = "I'd dissolve them with chemicals"
			choice.two.choice_cutscene = dialogue_drake_knocks_chemicals;
			choice.three.choice_text = "I'd hide them in my room"
			choice.three.choice_cutscene = dialogue_drake_knocks_hide_in_room;
		}