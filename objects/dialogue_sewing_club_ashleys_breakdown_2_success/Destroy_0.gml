var inst = instance_create_depth(0,0,0, obj_ashley_QTE);
	with inst{
		win_cutscene = dialogue_sewing_club_ashleys_breakdown_3_success;
		lose_cutscene = dialogue_QTE_two;
		ashley_message = "Please,stop\nasking questions...";
		array_push(hammer_target_x, 70);
		array_push(hammer_target_y, 120);
	}