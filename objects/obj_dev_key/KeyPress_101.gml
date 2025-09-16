global.day = 2;
global.game_time = "10:00 am";
var classroom_map = [[obj_guy, obj_mcronald, obj_job],
[obj_wei, noone, obj_grace], 
[obj_drake, noone, obj_brooklyn]];
	for(var i = 0; i < array_length(classroom_map); i++){
		for(var j = 0; j < array_length(classroom_map[0]); j++){
			if classroom_map[i][j] != noone{
				teleport_npc(classroom_map[i][j], school_main_classroom, CLASSROOM_TOP_LEFT_CORNER_SEAT_X+j*CLASSROOM_SEATS_SPACING_X, CLASSROOM_TOP_LEFT_CORNER_SEAT_Y+i*CLASSROOM_SEATS_SPACING_Y, UP);
			}
		}
	}
	teleport_npc(obj_mrchen, school_main_classroom, 108, 57, DOWN);
	instance_destroy(inst_GAME_START_CUTSCENE_TRIGGER);




