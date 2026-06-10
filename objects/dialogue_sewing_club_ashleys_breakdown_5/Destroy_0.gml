var inst = instance_create_depth(0, 0, 0, obj_choice_default_QTE);
with (inst) {
	choice.one.choice_text = "You shouldn't.";
	choice.one.choice_cutscene = dialogue_sewing_club_ashleys_breakdown_6_fail;
	choice.two.choice_text = "You have to."
	choice.two.choice_cutscene = dialogue_sewing_club_ashleys_breakdown_6_success;
	choice.three.choice_text = "Why not?"
	choice.three.choice_cutscene = dialogue_sewing_club_ashleys_breakdown_6_fail;
}
