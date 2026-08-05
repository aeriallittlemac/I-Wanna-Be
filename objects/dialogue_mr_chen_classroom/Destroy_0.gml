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
	item_remove(global.item_list.graces_abortion_fund);
	item_acquired(global.item_list.mr_chens_bullets);
	NewQuest(global.quest_list.sewing_club_brooklyn, QUEST_TEXT_FONT_SIZE, c_yellow, QUEST_TEXT_TIMER);
	INST_MAIN_CLASSROOM_VENT.activate_cutscene = obj_E14_to_E13;
}