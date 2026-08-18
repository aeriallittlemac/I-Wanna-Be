event_inherited();
if venture{
	if global.day == 2{
		teleport_npc(obj_jake, school_2F, 606, 104, RIGHT);
		teleport_player(650, 104, school_2F, dialogue_wake_up_monday_outside);
	}
	else if global.day == 3{
		teleport_npc(obj_jake, school_2F, 606, 104, RIGHT);
		teleport_player(650, 104, school_2F, dialogue_wake_up_tuesday_outside);
		//NewQuest(global.quest_list.go_to_lab, QUEST_TEXT_FONT_SIZE, c_yellow, QUEST_TEXT_TIMER)
	}
	else if global.day == 4{
		teleport_npc(obj_jake, school_2F, 606, 104, RIGHT);
		teleport_player(650, 104, school_2F, dialogue_wake_up_wednesday_outside);
		//NewQuest(global.quest_list.first_class, QUEST_TEXT_FONT_SIZE, c_yellow, QUEST_TEXT_TIMER);
	}
	else if global.day == 5 && global.storylines.dead_bodies_checked{
		teleport_npc(obj_drake, school_2F, 595, 104, RIGHT);
		teleport_player(650, 104, school_2F, dialogue_wake_up_drake_outside);
	}
	else
	{
		//teleport_player(650, 104, school_2F);
		//teleport_npc(obj_jake, school_2F, 606, 104, RIGHT);
		//teleport_player(650, 104, school_2F, dialogue_wake_up_monday_outside);'
		teleport_player(650, 104, school_2F);
	}
}
else{
	obj_player.x = 73;
	obj_player.y = 124;
	INST_BOBBY_DOOR.triggered = false;
}
