if player_facing_self&&!global.cutscene&&!global.in_dialogue&&!instance_exists(obj_transition){	
	if global.day == 2 && global.game_time == "10:00 am"{
		//if global.game_time == "10:00 am"{
			//show_debug_message("door");
			//QuestCompleted(global.quest_list.first_class);
			game_camera_change_settings(obj_player, -1);
			teleport_npc(obj_mrchen, school_main_classroom, 61, 43, RIGHT);
			teleport_npc(obj_wei, school_main_classroom, 120, 78, DOWN);
			teleport_npc(obj_job, school_main_classroom, 69, 79, UP);
			teleport_npc(obj_mcronald, school_main_classroom, 130, 112, RIGHT);
			teleport_npc(obj_grace, school_main_classroom, 196, 121, LEFT);
			//teleport_npc(obj_brooklyn, school_main_classroom, 196, 145, DOWN);
			teleport_npc(obj_mei, school_main_classroom, 196, 145, DOWN);
			teleport_npc(obj_ashley, school_main_classroom, 42, 143, UP);
			teleport_npc(obj_drake, school_main_classroom, 216, 45, DOWN);
			teleport_player(190, 77, school_main_classroom, cutscene_monday_classroom_setup)
		//}
		
	}
	else if global.day == 4{
		if global.game_time == "10:00 am"{
			show_debug_message("door");
			QuestCompleted(global.quest_list.math_quiz);
			var classroom_map = [[obj_job, obj_mcronald, obj_frenchie], [obj_wei, noone, obj_grace], [obj_drake, noone, obj_brooklyn]];
			for(var i = 0; i < array_length(classroom_map); i++){
			for(var j = 0; j < array_length(classroom_map[0]); j++){
				if classroom_map[j][i] != noone{
					teleport_npc(classroom_map[j][i], school_main_classroom, CLASSROOM_TOP_LEFT_CORNER_SEAT_X+j*CLASSROOM_SEATS_SPACING_X, CLASSROOM_TOP_LEFT_CORNER_SEAT_Y+i*CLASSROOM_SEATS_SPACING_Y, UP);
					}
				}
			}
			teleport_npc(obj_mrchen, school_main_classroom, 108, 57, DOWN);
			var inst = instance_create_depth(0,0,-9999,obj_transition);
			inst.target_x = CLASSROOM_TOP_LEFT_CORNER_SEAT_X + CLASSROOM_SEATS_SPACING_X;
			inst.target_y = CLASSROOM_TOP_LEFT_CORNER_SEAT_Y + CLASSROOM_SEATS_SPACING_Y;
			inst.target_rm = school_main_classroom;
			inst.start_cutscene = dialogue_math_quiz_debut;
		}
	
	
	}
}