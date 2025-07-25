if place_meeting(x,y,obj_player) && activation && !instance_exists(obj_transition){
	//if target_rm == school_main_classroom{
	//	if global.day == 2 && global.game_time == "10:00 am"{
	//		start_cutscene = dialogue_first_lesson;
	//	}
	//	var classroom_map = [[obj_guy, obj_mcronald, obj_job], [obj_wei, noone, obj_job], [obj_drake, noone, obj_brooklyn]];
	//	for(var i = 0; i < array_length(classroom_map); i++){
	//	for(var j = 0; j < array_length(classroom_map[0]); j++){
	//		if classroom_map[j][i] != noone{
	//			teleport_npc(classroom_map[j][i], school_main_classroom, CLASSROOM_TOP_LEFT_CORNER_SEAT_X+j*CLASSROOM_SEATS_SPACING_X, CLASSROOM_TOP_LEFT_CORNER_SEAT_Y+i*CLASSROOM_SEATS_SPACING_Y, UP);
	//			}
	//		}
	//	}
	//	teleport_npc(obj_mrchen, school_main_classroom, 108, 57, DOWN);
	//}
	//if target_rm == school_sewing_club{
		
	//	var sewing_club_r1 = [obj_brooklyn, obj_ashley]; 
	//	for(var i = 0; i < array_length(sewing_club_r1); i++){
	//			teleport_npc(sewing_club_r1[i], school_sewing_club, 85+i*43, 68, DOWN);
	//		}

		
	//	var sewing_club_r2 = [obj_mei, obj_grace]; 
	//	for(var i = 0; i < array_length(sewing_club_r2); i++){
	//			teleport_npc(sewing_club_r2[i], school_sewing_club, 85+i*43, 111, UP);
	//		}
		

	//}

	


	var inst = instance_create_depth(0,0,-9999,obj_transition);
	inst.target_x = target_x;
	inst.target_y = target_y;
	inst.target_rm = target_rm;
	inst.start_cutscene = start_cutscene;
	activation = false;
}


