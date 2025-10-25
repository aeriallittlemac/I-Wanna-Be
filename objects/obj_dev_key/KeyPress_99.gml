game_camera_change_settings(obj_player, -1);
global.day = 2;
global.game_time = "10:00 am";
global.storylines.Main_Classroom.Day_Two.papers_handed_out = 0; 
var classroom_map = [[obj_job, obj_mcronald, obj_mei], [obj_wei, noone, obj_grace], [obj_drake, noone, obj_brooklyn]];
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
inst.start_cutscene = dialogue_first_lesson;