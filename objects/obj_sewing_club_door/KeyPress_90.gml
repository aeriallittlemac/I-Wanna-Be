if player_facing_self&&!global.cutscene&&!global.in_dialogue{	
	//obj_grace.entityActivateScript = NewDialogue;
	//obj_brooklyn.entityActivateScript = NewDialogue;
	//obj_mei.entityActivateScript = NewDialogue;
	//obj_ashley.entityActivateScript = NewDialogue;
	if global.day == 2{
		//if global.game_time == "1:00 pm"{
		//	QuestCompleted(global.quest_list.sewing_club_quest);
		//	global.game_time = "3:30 pm";
		//	game_camera_change_settings(obj_player, -1);
		//	global.day = 2;
		//	//teleport_npc(obj_mrchen, school_main_classroom, 61, 43, RIGHT);
		//	teleport_npc(obj_wei, school_main_classroom, 120, 78, DOWN);
		//	teleport_npc(obj_job, school_main_classroom, 69, 79, UP);
		//	teleport_npc(obj_mcronald, school_main_classroom, 130, 112, RIGHT);
		//	//teleport_npc(obj_grace, school_main_classroom, 196, 121, LEFT);
		//	teleport_npc(obj_brooklyn, school_main_classroom, 196, 145, DOWN);
		//	teleport_npc(obj_ashley, school_main_classroom, 42, 143, UP);
		//	teleport_npc(obj_drake, school_main_classroom, 216, 45, DOWN);
		//	teleport_player(190, 77, school_main_classroom, cutscene_monday_classroom_setup)
				
		//}
	
	}
	else if global.day == 3{
		if global.game_time == "1:00 pm"{
			teleport_player(215, 57, school_sewing_club, cutscene_tuesday_sewing_club_setup);
			QuestCompleted(global.quest_list.sewing_club_quest);
			global.game_time = "3:30 pm";
			//teleport_npc(obj_grace, school_sewing_club, 60, 55, LEFT);
			teleport_npc(obj_mei, school_sewing_club, 165, 40, DOWN);
			teleport_npc(obj_brooklyn, school_sewing_club, 80, 112, UP);
			obj_npc_manager.npcs[ASHLEY].initial_animation = spr_ashley_writing;
			teleport_npc(obj_ashley, school_sewing_club, 85+43, 140, DOWN);
	
			//obj_ashley.entityActivateArg = dialogue_ashleyseat;
			//obj_mei.entityActivateArg = dialogue_meiseat;
			//obj_brooklyn.entityActivateArg = dialogue_brooklynseat;
			//obj_grace.entityActivateArg = dialogue_graceseat;
				
		}
	}
	else if global.day == 4{
		if global.game_time == "1:00 pm"{
			QuestCompleted(global.quest_list.sewing_club_quest);
			global.game_time = "3:30 pm";
			var sewing_club_r1 = [obj_ashley, obj_grace];
			if global.storylines.Grace.truth_or_dare_confession && global.storylines.Grace.deny_rumor{
				sewing_club_r1 = [obj_ashley, noone];
			}
			for(var i = 0; i < array_length(sewing_club_r1); i++){
					teleport_npc(sewing_club_r1[i], school_sewing_club, 85+i*43, 68, DOWN);
				}

		
			var sewing_club_r2 = [obj_brooklyn, obj_mei]; 
			for(var i = 0; i < array_length(sewing_club_r2); i++){
					teleport_npc(sewing_club_r2[i], school_sewing_club, 85+i*43, 111, UP);
				}
				teleport_player(215, 57, school_sewing_club);
	
			//obj_ashley.entityActivateArg = dialogue_ashleyseat;
			//obj_mei.entityActivateArg = dialogue_meiseat;
			//obj_brooklyn.entityActivateArg = dialogue_brooklynseat;
			//obj_grace.entityActivateArg = dialogue_graceseat;
				
		}
	}
	
	
}




