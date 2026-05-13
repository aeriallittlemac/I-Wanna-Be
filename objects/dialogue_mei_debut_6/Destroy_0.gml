var inst = instance_create_depth(0,0,0, obj_choice_double_QTE);
		with inst{
			choice.one.choice_text = "Date";
			choice.one.choice_cutscene = dialogue_mei_date_grace;
			choice.two.choice_text = "No date"
			choice.two.choice_cutscene = dialogue_mei_reject_grace;
		}