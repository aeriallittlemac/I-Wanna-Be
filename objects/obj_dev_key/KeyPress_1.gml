//Shortcuts to scenes
#macro LAB_SCENE ord("U")
#macro GAMBINOS_ROOM ord("Y")
#macro LOCKERS ord("T")
#macro LUNCH ord("G")
#macro BAND_FIRST_PRACTICE ord("B")
#macro SECOND_DAY_MAIN_CLASSROOM ord("P")
#macro SEWING_CLUB_SECOND_DAY ord("N")
#macro SEWING_CLUB_WEDNESDAY ord("F")
#macro WEI_DRUMS_DEBUT ord("V")
#macro RUN_MINIGAME ord("R")
#macro MATH_QUIZ ord("L")
#macro WEDNESDAY_MORNING ord("M")

if keyboard_check(SEWING_CLUB_WEDNESDAY){
	global.day = 4;
	global.game_time = "3:30 pm";
	var sewing_club_r1 = [obj_ashley, obj_grace];
	if global.storylines.Grace.truth_or_dare_confession{
		sewing_club_r1 = [obj_ashley, noone];
		if (!global.storylines.Grace.deny_rumor){
			teleport_npc(obj_grace, school_sewing_club, 202, 117, DOWN);
		}
	}
	for(var i = 0; i < array_length(sewing_club_r1); i++){
		teleport_npc(sewing_club_r1[i], school_sewing_club, 85+i*43, 68, DOWN);
		}

		
	var sewing_club_r2 = [obj_brooklyn, obj_mei]; 
	for(var i = 0; i < array_length(sewing_club_r2); i++){
		teleport_npc(sewing_club_r2[i], school_sewing_club, 85+i*43, 111, UP);
	}
	teleport_player(215, 45, school_sewing_club);
	
	obj_ashley.entityActivateArg = dialogue_ashleyseat;
	obj_mei.entityActivateArg = dialogue_meiseat;
	obj_brooklyn.entityActivateArg = dialogue_brooklynseat;
	obj_grace.entityActivateArg = dialogue_graceseat;
}

if keyboard_check(WEDNESDAY_MORNING){
	game_camera_change_settings(obj_player,-1);
	AddInstanceToActivate(inst_JAKE_CONTRACT);
	teleport_player(654, 122, school_2F);
	AddInstanceToDestroy(inst_1D43132F);
	teleport_npc(obj_jake, school_2F, 551, 120, DOWN);
	global.day = 4;
	global.game_time = "10:00 am";
}

if keyboard_check(MATH_QUIZ){
	teleport_player(80, 76, school_math_quiz);
}

if keyboard_check(WEI_DRUMS_DEBUT){
	teleport_npc(obj_mcronald, school_2F, 582, 125, LEFT);
	teleport_player(470, 117, school_2F);
	AddInstanceToActivate(inst_WEI_DRUM_DEBUT);
	AddInstanceToDestroy(inst_60A96728);
	global.day = 2
	global.game_time = "8:00 pm";
	global.night = true;
}

if keyboard_check(SEWING_CLUB_SECOND_DAY){
	if global.storylines.Grace.truth_or_dare_confession{
		teleport_player(215, 45, school_sewing_club, dialogue_if_rumor);
	}
	else{
		teleport_player(215, 45, school_sewing_club);
	}
	instance_create_depth(0,0,0,cutscene_talk_to_girls);
	global.day = 3
	global.game_time = "3:30 pm";
	teleport_npc(obj_wei, noone, 0,0,DOWN);
	instance_destroy(inst_GAME_START_CUTSCENE_TRIGGER);
	game_camera_change_settings(obj_player, -1);
	var sewing_club_r1 = [obj_ashley, obj_grace]; 
		for(var i = 0; i < array_length(sewing_club_r1); i++){
						teleport_npc(sewing_club_r1[i], school_sewing_club, 85+i*43, 68, DOWN);
		}

		var sewing_club_r2 = [obj_brooklyn, obj_mei]; 
		for(var i = 0; i < array_length(sewing_club_r2); i++){
			teleport_npc(sewing_club_r2[i], school_sewing_club, 85+i*43, 111, UP);
		}
	obj_grace.entityActivateScript = NewDialogue;
	obj_brooklyn.entityActivateScript = NewDialogue;
	obj_mei.entityActivateScript = NewDialogue;
	obj_ashley.entityActivateScript = NewDialogue;
	
	obj_grace.entityActivateArg = dialogue_graceseat;
	obj_brooklyn.entityActivateArg = dialogue_brooklynseat;
	obj_mei.entityActivateArg = dialogue_meiseat;
	obj_ashley.entityActivateScript = dialogue_ashleyseat;
	if global.storylines.Grace.truth_or_dare_confession{
	
		//if !global.storylines.Grace.deny_rumor{
		//	obj_grace.entityActivateArg = dialogue_grace_interact_if_rumor_true;
	
		//	obj_brooklyn.entityActivateArg = dialogue_brooklyn_interact_if_rumor_true;
	
		//	obj_mei.entityActivateArg = dialogue_mei_interact_if_rumor_true;
	
		//	obj_ashley.entityActivateArg = dialogue_ashley_interact_if_rumor_true;
		//}
		//else{
		//	obj_brooklyn.entityActivateArg = dialogue_brooklyn_interact_if_rumor_false;
	
		//	obj_mei.entityActivateArg = dialogue_mei_interact_if_rumor_false;
	
		//	obj_ashley.entityActivateArg = dialogue_ashley_interact_if_rumor_false;
		//}
	
	}
	else{
		//obj_grace.entityActivateArg = dialogue_grace_interact_if_no_rumor;
		
		//obj_brooklyn.entityActivateArg = dialogue_brooklyn_interact_if_no_rumor;
	
		//obj_mei.entityActivateArg = dialogue_mei_interact_if_no_rumor;
	
		//obj_ashley.entityActivateArg = dialogue_ashley_interact_if_no_rumor;
	}

}
if keyboard_check(ord("Q")){
	show_debug_message(obj_rhythm_game_arrows.block_speed);
	show_debug_message(game_get_speed(gamespeed_fps));
}
if keyboard_check(BAND_FIRST_PRACTICE){
	global.day = 3;
	AddInstanceToDestroy(inst_1D032C1A);
	AddInstanceToActivate(inst_210D4C1);
	game_camera_change_settings(obj_player,-1);
	obj_npc_manager.npcs[0].initial_animation = spr_wei_rapping_1;
	obj_npc_manager.npcs[5].initial_animation = spr_mcronald_keyboard_1;
	obj_npc_manager.npcs[12].initial_animation = spr_frenchie_guitar_1;
	teleport_npc(obj_frenchie, school_2F, 375, 135, DOWN);
	teleport_npc(obj_mcronald, school_2F, 450, 150, DOWN);
	teleport_npc(obj_wei, school_2F, 350, 185, DOWN);
	teleport_npc(obj_job, school_2F, 320, 120, DOWN);
	//teleport_player(410, 110, school_2F, dialogue_band_first_practice);
	teleport_player(410, 110, school_2F);
}

if keyboard_check(LAB_SCENE){
	game_camera_change_settings(obj_player,-1);
	show_debug_message("lab!");
	teleport_player(100, 120, school_lab, dialogue_lab_debut);
	teleport_npc(obj_grace, school_lab, 198, 142, LEFT);
	teleport_npc(obj_frenchie, school_lab, 164, 142, RIGHT);
	teleport_npc(obj_brooklyn, school_lab, 228, 90, LEFT);
	teleport_npc(obj_mei, school_lab, 220, 80, DOWN);
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
if (keyboard_check(RUN_MINIGAME)) {
	teleport_player(135, 120, school_1F_run_minigame);
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
if keyboard_check(LUNCH){
	global.day = 3;
	global.game_time = "12:00 pm"
	AddInstanceToDestroy(inst_1D032C1A);
	AddInstanceToActivate(inst_210D4C1);
	game_camera_change_settings(obj_player,-1);
	obj_npc_manager.npcs[0].initial_animation = noone;
	obj_npc_manager.npcs[5].initial_animation = noone;
	obj_npc_manager.npcs[12].initial_animation = noone;
	
	//npc_animate(obj_frenchie, spr_frenchie_right)
	teleport_npc(obj_frenchie, school_1F, 910, 155, RIGHT);
	//npc_animate(obj_mcronald, spr_mcronald_down)
	teleport_npc(obj_mcronald, school_1F, 945, 135, DOWN);
	//npc_animate(obj_wei, spr_wei_down)
	teleport_npc(obj_wei, school_1F, 1000, 135, DOWN);
	teleport_player(980, 170, school_1F, dialogue_band_first_lunch);
	instance_activate_object(INST_LUNCH_TABLE);
}

if keyboard_check(GAMBINOS_ROOM){
	global.day = 2
	instance_activate_object(inst_WELCOME_TABLE);
	game_camera_change_settings(obj_player,-1);
	teleport_npc(obj_wei, noone, 0, 0, DOWN);
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