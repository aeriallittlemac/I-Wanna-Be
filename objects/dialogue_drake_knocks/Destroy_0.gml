event_inherited();
var inst = instance_create_depth(0,0,0, obj_choice_default_QTE);
		with inst{
			choice.one.choice_text = "5 seconds ago";
			choice.one.choice_cutscene = dialogue_drake_knocks_five_seconds;
			choice.two.choice_text = "Wednesday morning"
			choice.two.choice_cutscene = dialogue_drake_knocks_wednesday_morning;
			choice.three.choice_text = "Tuesday afternoon"
			choice.three.choice_cutscene = dialogue_drake_knocks_tuesday_afternoon;
		}
