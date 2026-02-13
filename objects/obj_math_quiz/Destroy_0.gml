var exit_cutscene = noone
if player_score > 15{
	exit_cutscene = dialogue_math_quiz_pass;
	global.storylines.Main_Classroom.Day_Four.talked_to.quiz_pass = true;
}
else{
	exit_cutscene = dialogue_math_quiz_fail
}
var inst = instance_create_depth(0,0,-9999,obj_transition);
inst.target_x = CLASSROOM_TOP_LEFT_CORNER_SEAT_X + CLASSROOM_SEATS_SPACING_X;
inst.target_y = CLASSROOM_TOP_LEFT_CORNER_SEAT_Y + CLASSROOM_SEATS_SPACING_Y;
inst.target_rm = school_main_classroom;
inst.start_cutscene = exit_cutscene;
