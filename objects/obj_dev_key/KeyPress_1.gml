//Shortcuts to scenes
#macro LAB_SCENE ord("U")
#macro GAMBINOS_ROOM ord("Y")
#macro LOCKERS ord("T")
#macro RHYTHM_GAME_TEST ord("I")
#macro SECOND_DAY_MAIN_CLASSROOM ord("P")

if keyboard_check(LAB_SCENE){
	show_debug_message("lab!");
	teleport_player(110, 90, school_lab);
	teleport_npc(obj_grace, school_lab, 185, 115, UP);
	teleport_npc(obj_frenchie, school_lab, 65, 90, RIGHT);
	teleport_npc(obj_brooklyn, school_lab, 170, 90, LEFT);
	teleport_npc(obj_mei, school_lab, 170, 50, DOWN);
	teleport_npc(obj_job, school_lab, 120, 70, LEFT);
	teleport_npc(obj_guy, school_lab, 120, 110, DOWN);
	obj_grace.entityActivateScript = NewDialogue;
	obj_grace.entityActivateArg = dialogue_grace_interact_lab;
	obj_brooklyn.entityActivateScript = NewDialogue;
	obj_brooklyn.entityActivateArg = dialogue_brooklyn_interact_lab;
	obj_mei.entityActivateScript = NewDialogue;
	obj_mei.entityActivateArg = dialogue_mei_interact_lab;
	obj_job.entityActivateScript = NewDialogue;
	obj_job.entityActivateArg = dialogue_job_interact_lab;
	obj_guy.entityActivateScript = NewDialogue;
	obj_guy.entityActivateArg = dialogue_guy_interact_lab;
}
if keyboard_check(SECOND_DAY_MAIN_CLASSROOM){
	global.day = 2;
	game_camera_change_settings(obj_player,-1);
	var classroom_map = [[obj_job, obj_mcronald, obj_mei], [obj_wei, noone, obj_grace], [obj_drake, noone, obj_brooklyn]];
			for(var i = 0; i < array_length(classroom_map); i++){
			for(var j = 0; j < array_length(classroom_map[0]); j++){
				if classroom_map[j][i] != noone{
					teleport_npc(classroom_map[j][i], school_main_classroom, CLASSROOM_TOP_LEFT_CORNER_SEAT_X+j*CLASSROOM_SEATS_SPACING_X, CLASSROOM_TOP_LEFT_CORNER_SEAT_Y+i*CLASSROOM_SEATS_SPACING_Y, UP);
					}
				}
			}
			teleport_npc(obj_mrchen, school_main_classroom, 108, 57, DOWN);
			obj_mrchen.entityActivateArg = cutscene_first_lesson_papers;
			var inst = instance_create_depth(0,0,-9999,obj_transition);
			inst.target_x = CLASSROOM_TOP_LEFT_CORNER_SEAT_X + CLASSROOM_SEATS_SPACING_X;
			inst.target_y = CLASSROOM_TOP_LEFT_CORNER_SEAT_Y + CLASSROOM_SEATS_SPACING_Y;
			inst.target_rm = school_main_classroom;
			inst.start_cutscene = dialogue_first_lesson;
}
if keyboard_check(RHYTHM_GAME_TEST){
	instance_create_depth(0, 0, 0, obj_rhythm_game_arrows)
}

if keyboard_check(GAMBINOS_ROOM){
	global.day = 2
	game_camera_change_settings(obj_player,-1);
	teleport_npc(obj_jake, school_gambinos_room, 100, 165, UP);
	teleport_npc(obj_drake, school_gambinos_room, 170, 165, UP);
	teleport_npc(obj_gambino, school_gambinos_room, 135, 95, DOWN);
	teleport_player(135, 140, school_gambinos_room, dialogue_meeting_gambino);
	AddInstanceToDestroy(inst_1D43132F);
}

if keyboard_check(LOCKERS){
	instance_activate_object(inst_WELCOME_TABLE);
	global.day = 2;
	obj_player.x = 954;
	obj_player.y = 110;
	game_camera_change_settings(obj_player,-1);
	teleport_npc(obj_wei, noone, 0, 0, DOWN);
	AddInstanceToDestroy(inst_1D43132F);
	NewQuest(global.quest_list.get_padlock, QUEST_TEXT_FONT_SIZE, c_yellow, QUEST_TEXT_TIMER);
	instance_create_depth(0,0,0,stealth_mission_locker);
}