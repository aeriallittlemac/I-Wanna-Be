var inst = instance_create_depth(0,0,0, obj_choice_default_QTE);
	with inst{
			choice.one.choice_text = "It was a contract.";
			choice.one.choice_cutscene = dialogue_drake_knocks_contract;
			choice.two.choice_text = "It was a flyer for dogs."
			choice.two.choice_cutscene = dialogue_drake_knocks_flyer;
			choice.three.choice_text = "No idea what you're talking abt"
			choice.three.choice_cutscene = dialogue_drake_knocks_paper_idk;
		}