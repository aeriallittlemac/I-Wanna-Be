if player_facing_self&&!global.cutscene&&!global.in_dialogue{	
	if global.day == 2{
		if global.game_time == "10:00 am"{
			teleport_player(110, 90, school_lab);
			teleport_player(100, 120, school_lab, dialogue_lab_debut);
			teleport_npc(obj_grace, school_lab, 185, 115, UP);
			teleport_npc(obj_frenchie, school_lab, 174, 123, RIGHT);
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
	}
}




