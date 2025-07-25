if player_facing_self&&!global.cutscene&&!global.in_dialogue{	
	if global.day == 2{
		if global.game_time == "5:01 pm" && global.storylines.grace.day_one_dare{
			var inst = instance_create_depth(0,0,-9999,obj_transition);
			inst.target_x = 70;
			inst.target_y = 108;
			inst.target_rm = school_female_bathroom;
			inst.start_cutscene = noone;
		}
	
	}
	
}







