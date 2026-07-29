event_inherited();
if venture{
	if global.day == 2{
		teleport_npc(obj_jake, school_2F, 606, 104, RIGHT);
		teleport_player(650, 104, school_2F, dialogue_wake_up_monday_outside);
	}
	else if global.day == 3{
		teleport_player(650, 104, school_2F);
		NewQuest(global.quest_list.go_to_lab, QUEST_TEXT_FONT_SIZE, c_yellow, QUEST_TEXT_TIMER)
	}
	else{
		teleport_player(650, 104, school_2F);
	}
}
else{
	obj_player.x = 73;
	obj_player.y = 124;
	INST_BOBBY_DOOR.triggered = false;
}
