//Shortcuts to scenes
#macro GRACE_MISSING ord("U")
//#macro GAMBINOS_ROOM ord("Y")
#macro BROOKLYN_ACTION_SCENE ord("J")
#macro GRACE_VILLAIN_SPEECH ord("Y")
#macro FRENCHIE_GHOST ord("O")
#macro MONDAY_SEWING_CLUB ord("Q")
#macro LUNCH ord("G")
#macro GAMBINO_MINIGAME ord("H")
#macro THURSDAY_LAB_VENTS_TEST ord("B")
#macro SECOND_DAY_MAIN_CLASSROOM ord("P")
#macro SEWING_CLUB_TUESDAY_BROOKLYN_ROUTE ord("W")
#macro SEWING_CLUB_TUESDAY_GRACE_ROUTE ord("E")
#macro SEWING_CLUB_WEDNESDAY_ASHLEY_ROUTE ord("R")
#macro SEWING_CLUB_TUESDAY_ASHLEY_ROUTE ord("T")
#macro SEWING_CLUB_WEDNESDAY_GRACE_ROUTE ord("Y")
#macro STEALING_FROM_GRACE ord("F")
#macro THURSDAY_MORNING ord("V")
//#macro WEDNESDAY_SEWING_CLUB ord("R")
#macro JAKE_N_DRAKE ord("L")
#macro ASHLEY_SCENE ord("M")
#macro GRACE_RIPS_FRENCHIE ord("I")
#macro TUESDAY_LAB ord("K")
#macro MONDAY_CLASSROOM ord("A")

if keyboard_check_pressed(MONDAY_CLASSROOM){
	global.day = 2;
	//teleport_npc(obj_mrchen, school_main_classroom, 61, 43, RIGHT);
	teleport_npc(obj_wei, school_main_classroom, 120, 78, DOWN);
	teleport_npc(obj_job, school_main_classroom, 69, 79, UP);
	teleport_npc(obj_mcronald, school_main_classroom, 130, 112, RIGHT);
	teleport_npc(obj_grace, school_main_classroom, 196, 121, LEFT);
	teleport_npc(obj_brooklyn, school_main_classroom, 196, 145, DOWN);
	teleport_npc(obj_ashley, school_main_classroom, 42, 143, UP);
	teleport_npc(obj_drake, school_main_classroom, 216, 45, DOWN);
	teleport_player(190, 77, school_main_classroom, cutscene_monday_classroom_setup)
}

if keyboard_check_pressed(BROOKLYN_ACTION_SCENE){
	global.day = 5;
	instance_activate_object(inst_WELCOME_TABLE);
	game_camera_change_settings(obj_brooklyn,-1);
	teleport_npc(obj_wei, noone, 0, 0, DOWN);
	teleport_npc(obj_drake, school_gambinos_room, 196, 110, DOWN);
	teleport_npc(obj_brooklyn, school_gambinos_room, 135, 145, UP);
	teleport_npc(obj_gambino, school_gambinos_room, 135, 95, DOWN);
	//teleport_player(135, 140, school_gambinos_room, dialogue_meeting_gambino);
	room_goto(school_gambinos_room);
	AddInstanceToDestroy(inst_1D43132F);
}



if keyboard_check_pressed(THURSDAY_LAB_VENTS_TEST){
	game_camera_change_settings(obj_player, -1);
	global.day = 5;
	teleport_player(100, 120, school_lab);
	
}
if keyboard_check_pressed(SEWING_CLUB_WEDNESDAY_GRACE_ROUTE){
	game_camera_change_settings(obj_player, -1);
	global.day = 4;
	teleport_npc(obj_grace, school_sewing_club, 60, 55, LEFT);
	teleport_npc(obj_mei, school_sewing_club, 165, 40, DOWN);
	teleport_npc(obj_brooklyn, school_sewing_club, 80, 112, UP);
	teleport_player(215, 57, school_sewing_club, cutscene_sewing_club_setup_day_4_graces_route);
	global.storylines.Grace.truth_or_dare_confession = true;
	global.storylines.Grace.deny_rumor = false;
}

if keyboard_check_pressed(THURSDAY_MORNING){
		game_camera_change_settings(obj_player, -1);
		global.day = 5;
		global.game_time = "10:00 am";
		teleport_player(62, 117, school_bobbys_room, cutscene_day_start);
		global.reputation = 1;
		global.female_affinity = 1;
		instance_create_depth(0,0, OBJ_MAX_DEPTH, obj_day);
		game_change_reputation(49);
		game_wait(1.2);
		game_change_female_affinity(49);
		AddInstanceToDestroy(inst_325AA326);
		AddInstanceToDestroy(inst_60A96728);
		AddInstanceToDestroy(inst_1D43132F);
 		AddInstanceToDestroy(inst_WEI_DRUM_DEBUT)
}
if keyboard_check_pressed(TUESDAY_LAB){
	game_camera_change_settings(obj_player, -1);
	global.day = 2;
	teleport_npc(obj_grace, school_lab, 198, 142, LEFT);
	teleport_npc(obj_frenchie, school_lab, 164, 142, RIGHT);
	teleport_npc(obj_brooklyn, school_lab, 228, 90, LEFT);
	teleport_npc(obj_ashley, school_lab, 40, 80, DOWN);
	teleport_npc(obj_mei, school_lab, 220, 80, DOWN);
	teleport_npc(obj_job, school_lab, 120, 70, LEFT);
	teleport_npc(obj_guy, school_lab, 120, 110, DOWN);
	teleport_player(100, 120, school_lab);
}
if keyboard_check_pressed(SEWING_CLUB_TUESDAY_ASHLEY_ROUTE){

}
//if keyboard_check_pressed(GRACE_VILLAIN_SPEECH){
//	game_camera_change_settings(obj_player, -1);
//	AddInstanceToDestroy(inst_1D43132F);
//	AddInstanceToDestroy(inst_60A96728);
//	AddInstanceToDestroy(inst_325AA326);
//	teleport_player(62, 117, school_bobbys_room, cutscene_grace_midnight_note);
//}

//if keyboard_check(TUESDAY_MORNING){
//		game_camera_change_settings(obj_player, -1);
//		global.day = 3;
//		global.game_time = "10:00 am";
//		teleport_player(62, 117, school_bobbys_room, cutscene_day_start);
//		global.reputation = 1;
//		global.female_affinity = 1;
//		instance_create_depth(0,0, OBJ_MAX_DEPTH, obj_day);
//		game_change_reputation(49);
//		game_wait(1.2);
//		game_change_female_affinity(49);
//		AddInstanceToDestroy(inst_325AA326);
//		AddInstanceToDestroy(inst_60A96728);
//		AddInstanceToDestroy(inst_1D43132F);
// 		AddInstanceToDestroy(inst_WEI_DRUM_DEBUT)
//}
if keyboard_check(FRENCHIE_GHOST){
	game_camera_change_settings(obj_player, -1);
	global.day = 3;
	global.game_time = "12:00 am";
	global.night = true;
	item_acquired(global.item_list.potato_battery);
	teleport_player(62, 117, school_bobbys_room, dialogue_frenchie_ghost_debut);
	AddInstanceToActivate(obj_frenchie_ghost);
	AddInstanceToDestroy(inst_325AA326);
	AddInstanceToDestroy(inst_60A96728);
	AddInstanceToDestroy(inst_1D43132F);
	AddInstanceToDestroy(inst_WEI_DRUM_DEBUT)
}
if keyboard_check(GRACE_RIPS_FRENCHIE){
	//audio_sound_gain()
	teleport_npc(obj_wei, noone, 0,0,DOWN);
	instance_destroy(inst_GAME_START_CUTSCENE_TRIGGER);
	//instance_create_depth(0,0,0, player_n_grace);
var inst = instance_create_depth(15, 50, OBJ_MAX_DEPTH, obj_ghost_text)
		with inst{
			default_pixel_font = font_add("joystix monospace.otf", 45*2, false, false, 32, 128);
			overlay_text = "10 seconds later\n";
			angle = 0;
			timer = 0;
			fade_speed = 0.4;
		}
		teleport_npc(obj_grace, school_1F, 700, 125, LEFT);
		teleport_npc(obj_brooklyn, school_1F, 760, 118, LEFT);
		teleport_npc(obj_mei, school_1F, 810, 130, LEFT);
		
		npc_move_to_pos(obj_grace, 1, 0, 570, obj_grace.y);
		npc_move_to_pos(obj_brooklyn, 1, 0, 615, obj_grace.y);
		npc_move_to_pos(obj_mei, 1, 0, 660, obj_mei.y);
		npc_move_to_pos(obj_mei, 1, 1, 655, 135 + 5);
		npc_move_to_pos(obj_mei, 1, 0, 650, 135 + 5);
		//npc_move_to_pos(obj_mei, 0, 1, 650, 135 + 4);
		
		global.cutscene = false;
		global.game_time = "5:00 pm";
		obj_player.visible = false;
		teleport_player(870, 135, school_1F, timed_dialogue_grace_rips_frenchie_apart);
}
if keyboard_check(GAMBINO_MINIGAME){
	//instance_create_depth(0,0,0, obj_choice_default_QTE);
	//instance_create_depth(0,0,0, obj_mei_QTE);
	instance_create_depth(0,0,0, obj_gambino_QTE);
	//show_debug_message(global.storylines.Grace.truth_or_dare_confession);
}

if keyboard_check(STEALING_FROM_GRACE){
	global.day = 5;
	game_camera_change_settings(obj_player,-1);
	teleport_player(175, 129, school_graces_room);
}

if keyboard_check(ASHLEY_SCENE){
	teleport_npc(obj_ashley, school_main_classroom, CLASSROOM_TOP_LEFT_CORNER_SEAT_X + CLASSROOM_SEATS_SPACING_X+5,
	CLASSROOM_TOP_LEFT_CORNER_SEAT_Y + CLASSROOM_SEATS_SPACING_Y - 8, DOWN)
	teleport_player(CLASSROOM_TOP_LEFT_CORNER_SEAT_X + CLASSROOM_SEATS_SPACING_X-5, CLASSROOM_TOP_LEFT_CORNER_SEAT_Y + CLASSROOM_SEATS_SPACING_Y + 2, school_main_classroom, cutscene_sewing_club_setup_day_4_ashleys_route_1);
}

if keyboard_check(JAKE_N_DRAKE){
	game_camera_change_settings(obj_player, -1);
	if room == school_1F{
		obj_player.x = 728;
	}
	teleport_player(728, 122, school_1F, dialogue_go_back_to_nap);
}

//if keyboard_check(WEI_DRUMS_DEBUT){
//	teleport_npc(obj_mcronald, school_2F, 582, 125, LEFT);
//	teleport_player(470, 117, school_2F);
//	AddInstanceToActivate(inst_WEI_DRUM_DEBUT);
//	AddInstanceToDestroy(inst_60A96728);
//	global.day = 2
//	global.game_time = "8:00 pm";
//	global.night = true;
//}

if keyboard_check(SEWING_CLUB_TUESDAY_GRACE_ROUTE){
	global.sewing_club_second_day_debug = true;
	//if global.storylines.Grace.truth_or_dare_confession{
	//	if global.storylines.Grace.deny_rumor{
	//		teleport_player(215, 57, school_sewing_club, cutscene_if_rumor_deny);
	//	}
	//	else{
	//		teleport_player(215, 57, school_sewing_club, dialogue_if_rumor);
	//	}
	//}
	//else{
	//	teleport_player(215, 57, school_sewing_club);
	//}
	//instance_create_depth(0,0,0,cutscene_talk_to_girls);
	//global.day = 3
	global.game_time = "3:30 pm";
	teleport_npc(obj_wei, noone, 0,0,DOWN);
	instance_destroy(inst_GAME_START_CUTSCENE_TRIGGER);
	game_camera_change_settings(obj_player, -1);
	global.day = 3;
	global.storylines.Grace.truth_or_dare_confession = true;
	global.storylines.Grace.deny_rumor = false;
	if global.storylines.Grace.truth_or_dare_confession{
		teleport_npc(obj_brooklyn, school_sewing_club, 80, 112, UP);
				if global.storylines.Grace.deny_rumor{
					teleport_npc(obj_grace, school_sewing_club, 60, 55, LEFT);
					teleport_player(215, 57, school_sewing_club, cutscene_if_rumor_deny);
				}
				else{
					teleport_player(215, 57, school_sewing_club, cutscene_sewing_club_setup_day_3_rumor_escalate);
				}
			}
			else{
				teleport_player(215, 57, school_sewing_club, cutscene_sewing_club_setup_day_3_no_rumor);
			}
			QuestCompleted(global.quest_list.sewing_club_quest);
			global.game_time = "3:30 pm";
			
				teleport_npc(obj_mei, school_sewing_club, 165, 40, DOWN);
	
				
				obj_npc_manager.npcs[ASHLEY].initial_animation = spr_ashley_writing;
				teleport_npc(obj_ashley, school_sewing_club, 85+53, 140, DOWN);
				//teleport_player(215, 57, school_sewing_club, cutscene_sewing_club_setup);
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

if keyboard_check(SEWING_CLUB_TUESDAY_BROOKLYN_ROUTE){
	global.sewing_club_second_day_debug = true;
	global.game_time = "3:30 pm";
	teleport_npc(obj_wei, noone, 0,0,DOWN);
	AddInstanceToDestroy(inst_1D43132F);
	instance_destroy(inst_GAME_START_CUTSCENE_TRIGGER);
	game_camera_change_settings(obj_player, -1);
	global.day = 3;
	global.storylines.Grace.truth_or_dare_confession = true;
	global.storylines.Grace.deny_rumor = true;
	if global.storylines.Grace.truth_or_dare_confession{
		teleport_npc(obj_brooklyn, school_sewing_club, 80, 112, UP);
				if global.storylines.Grace.deny_rumor{
					teleport_npc(obj_grace, school_sewing_club, 60, 55, LEFT);
					teleport_player(215, 57, school_sewing_club, cutscene_if_rumor_deny);
				}
				else{
					teleport_player(215, 57, school_sewing_club, cutscene_sewing_club_setup_day_3_rumor_escalate);
				}
			}
			else{
				teleport_player(215, 57, school_sewing_club, cutscene_sewing_club_setup_day_3_no_rumor);
			}
			QuestCompleted(global.quest_list.sewing_club_quest);
			global.game_time = "3:30 pm";
			
				teleport_npc(obj_mei, school_sewing_club, 165, 40, DOWN);
	
				
				obj_npc_manager.npcs[ASHLEY].initial_animation = spr_ashley_writing;
				teleport_npc(obj_ashley, school_sewing_club, 85+53, 140, DOWN);
				//teleport_player(215, 57, school_sewing_club, cutscene_sewing_club_setup);
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

if keyboard_check(SEWING_CLUB_WEDNESDAY_ASHLEY_ROUTE){
	global.game_time = "3:30 pm";
	teleport_npc(obj_wei, noone, 0,0,DOWN);
	instance_destroy(inst_GAME_START_CUTSCENE_TRIGGER);
	game_camera_change_settings(obj_player, -1);
	global.day = 4;
	global.storylines.Grace.truth_or_dare_confession = false;
	global.storylines.Grace.deny_rumor = false;
	if global.storylines.Grace.truth_or_dare_confession{
		teleport_npc(obj_brooklyn, school_sewing_club, 80, 112, UP);
				if global.storylines.Grace.deny_rumor{
					teleport_npc(obj_grace, school_sewing_club, 60, 55, LEFT);
					teleport_player(215, 57, school_sewing_club, cutscene_if_rumor_deny);
				}
				else{
					teleport_player(215, 57, school_sewing_club, cutscene_sewing_club_setup_day_3_rumor_escalate);
				}
			}
			else{
				teleport_player(215, 57, school_sewing_club, cutscene_sewing_club_setup_day_4_ashleys_route);
			}
			QuestCompleted(global.quest_list.sewing_club_quest);
			
				teleport_npc(obj_mei, school_sewing_club, 165, 40, DOWN);
				
				obj_npc_manager.npcs[ASHLEY].initial_animation = spr_ashley_writing;
				teleport_npc(obj_ashley, school_sewing_club, 85+53, 140, DOWN);

}

//if keyboard_check(BAND_FIRST_PRACTICE){
//	global.day = 3;
//	AddInstanceToDestroy(inst_1D032C1A);
//	AddInstanceToActivate(inst_210D4C1);
//	game_camera_change_settings(obj_player,-1);
//	obj_npc_manager.npcs[0].initial_animation = spr_wei_rapping_1;
//	obj_npc_manager.npcs[5].initial_animation = spr_mcronald_keyboard_1;
//	obj_npc_manager.npcs[12].initial_animation = spr_frenchie_guitar_1;
//	teleport_npc(obj_frenchie, school_2F, 375, 135, DOWN);
//	teleport_npc(obj_mcronald, school_2F, 450, 150, DOWN);
//	teleport_npc(obj_wei, school_2F, 350, 185, DOWN);
//	teleport_npc(obj_job, school_2F, 320, 120, DOWN);
//	//teleport_player(410, 110, school_2F, dialogue_band_first_practice);
//	teleport_player(410, 110, school_2F);
//}

if keyboard_check(GRACE_MISSING){
	teleport_npc(obj_mei, school_graces_room, 120, 118, DOWN);
	teleport_player(175, 129, school_graces_room, cutscene_footprints);
}
//if (keyboard_check(WEDNESDAY_SEWING_CLUB)) {
//	global.game_time = "3:30 pm";
//	teleport_npc(obj_wei, noone, 0,0,DOWN);
//	instance_destroy(inst_GAME_START_CUTSCENE_TRIGGER);
//	game_camera_change_settings(obj_player, -1);
//	global.day = 4;
//	global.storylines.Grace.truth_or_dare_confession = false;
//	global.storylines.Grace.deny_rumor = false;
//	if global.storylines.Grace.truth_or_dare_confession{
//		teleport_npc(obj_brooklyn, school_sewing_club, 80, 112, UP);
//				if global.storylines.Grace.deny_rumor{
//					teleport_npc(obj_grace, school_sewing_club, 60, 55, LEFT);
//					teleport_player(215, 57, school_sewing_club, cutscene_if_rumor_deny);
//				}
//				else{
//					teleport_player(215, 57, school_sewing_club, cutscene_sewing_club_setup_day_3_rumor_escalate);
//				}
//			}
//			else{
//				teleport_player(215, 57, school_sewing_club, cutscene_sewing_club_setup_day_4_ashleys_route);
//			}
//			QuestCompleted(global.quest_list.sewing_club_quest);
			
//				teleport_npc(obj_mei, school_sewing_club, 165, 40, DOWN);
	
				
//				obj_npc_manager.npcs[ASHLEY].initial_animation = spr_ashley_writing;
//				teleport_npc(obj_ashley, school_sewing_club, 85+53, 140, DOWN);
//}
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
	//obj_npc_manager.npcs[WEI].initial_animation = spr_wei_eating;
	//obj_npc_manager.npcs[MCRONALD].initial_animation = spr_mcronald_eating;
	//obj_npc_manager.npcs[FRENCHIE].initial_animation = spr_frenchie_eating;
	
	
	teleport_npc(obj_frenchie, school_1F, 910, 155, RIGHT);
	teleport_npc(obj_mcronald, school_1F, 945, 135, DOWN);
	teleport_npc(obj_wei, school_1F, 1000, 135, DOWN);
	teleport_player(980, 170, school_1F, cutscene_band_first_lunch);
	instance_activate_object(INST_LUNCH_TABLE);
}

//if keyboard_check(GAMBINOS_ROOM){
//	global.day = 2
//	instance_activate_object(inst_WELCOME_TABLE);
//	game_camera_change_settings(obj_player,-1);
//	teleport_npc(obj_wei, noone, 0, 0, DOWN);
//	teleport_npc(obj_jake, school_gambinos_room, 100, 165, UP);
//	teleport_npc(obj_drake, school_gambinos_room, 170, 165, UP);
//	teleport_npc(obj_gambino, school_gambinos_room, 135, 95, DOWN);
//	teleport_player(135, 140, school_gambinos_room, dialogue_meeting_gambino);
//	AddInstanceToDestroy(inst_1D43132F);
	
	
//}

if keyboard_check(MONDAY_SEWING_CLUB){
	//instance_activate_object(inst_WELCOME_TABLE);
	global.day = 2;
	global.game_time = "3:30 pm";
	teleport_npc(obj_wei, noone, 0,0,DOWN);
	instance_destroy(inst_GAME_START_CUTSCENE_TRIGGER);
	game_camera_change_settings(obj_player, -1);
	teleport_npc(obj_grace, school_sewing_club, 60, 55, LEFT);
	//teleport_npc(obj_mei, school_sewing_club, 165, 40, DOWN);
	teleport_npc(obj_brooklyn, school_sewing_club, 80, 112, UP);
	//obj_npc_manager.npcs[ASHLEY].initial_animation = spr_ashley_writing;
	teleport_npc(obj_ashley, school_sewing_club, 85+63, 140, DOWN);
	teleport_player(215, 57, school_sewing_club, cutscene_sewing_club_setup_day_2);
}