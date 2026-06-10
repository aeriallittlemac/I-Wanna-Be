var inst = instance_create_depth(0, 0, 0, obj_choice_default_QTE);
with (inst) {
	choice.one.choice_text = "Exactly.";
	choice.one.choice_cutscene = dialogue_sewing_club_ashleys_breakdown_7_success;
	choice.two.choice_text = "You couldn't have."
	choice.two.choice_cutscene = dialogue_sewing_club_ashleys_breakdown_7_fail;
	choice.three.choice_text = "There was nothing to do."
	choice.three.choice_cutscene = dialogue_sewing_club_ashleys_breakdown_7_fail;
}
