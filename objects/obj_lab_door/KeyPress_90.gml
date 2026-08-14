if player_facing_self&&!global.cutscene&&!global.in_dialogue{	
	if global.day == 3{
		if global.game_time == "10:00 am"{
			QuestCompleted(global.quest_list.go_to_lab);
			teleport_npc(obj_grace, school_lab, 198, 142, LEFT);
			teleport_npc(obj_frenchie, school_lab, 170, 97, LEFT);
			teleport_npc(obj_ashley, school_lab, 50, 52, DOWN);
			//teleport_npc(obj_mei, school_lab, 190, 60, LEFT);
			teleport_npc(obj_job, school_lab, 120, 85, RIGHT);
			teleport_npc(obj_mcronald, school_lab, 150, 50, DOWN);
			teleport_npc(obj_guy, school_lab, 225, 66, DOWN);
			teleport_npc(obj_drake, school_lab, 110, 145, UP);
			teleport_player(225, 100, school_lab, cutscene_brooklyn_tuesday_lab_setup);
		}
		else{
			teleport_player(100, 120, school_lab);
		}
	}
	else{
		teleport_player(100, 120, school_lab);
	}
}




