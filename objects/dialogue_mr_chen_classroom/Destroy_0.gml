event_inherited();
if !global.storylines.Brooklyns_quest.cash_obtained{
	var inst = instance_create_depth(0, 0, 0, obj_choice_default_QTE);
	with (inst) {
		choice.one.choice_text = "How's it going?";
		choice.one.choice_cutscene = dialogue_mr_chen_classroom_hows_it_going;
		choice.two.choice_text = "What's that you're writing?"
		choice.two.choice_cutscene = dialogue_mr_chen_classroom_whats_that;
		choice.three.choice_text = "Is that a gun?"
		choice.three.choice_cutscene = dialogue_mr_chen_classroom_is_that_a_gun;
	}
}
else{
	item_remove(global.storylines.graces_abortion_fund);
	item_acquired(global.storylines.mr_chens_bullets);
}