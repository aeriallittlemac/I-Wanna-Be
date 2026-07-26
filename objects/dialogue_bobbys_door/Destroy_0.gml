event_inherited();
if venture{
	if global.day == 2{
		teleport_player(650, 104, school_2F);
		teleport_npc(606, 104, school_2F, dialogue_wake_up_monday_outside);
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
