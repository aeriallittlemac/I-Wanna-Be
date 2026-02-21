if (player_facing_self 
	&& !global.cutscene && !global.in_dialogue
	&& global.day >= 2
) {
	var inst = instance_create_depth(0,0,-9999,obj_transition);
	inst.target_x = 70;
	inst.target_y = 108;
	inst.target_rm = school_male_bathroom;
	if (global.day == 2 && global.game_time == "5:01 pm") {
		inst.start_cutscene = cutscene_find_drake;
	}
}