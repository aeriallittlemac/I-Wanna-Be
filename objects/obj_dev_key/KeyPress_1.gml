//Shortcuts to scenes
#macro LAB_SCENE ord("U")
#macro GAMBINOS_ROOM ord("Y")

if keyboard_check(LAB_SCENE){
	show_debug_message("lab!");
	teleport_player(110, 90, school_lab);
	teleport_npc(obj_grace, school_lab, 100, 55, DOWN);
	obj_grace.entityActivateScript = NewDialogue;
	obj_grace.entityActivateArg = dialogue_grace_interact;
	teleport_npc(obj_frenchie, school_lab, 65, 90, RIGHT);
	teleport_npc(obj_brooklyn, school_lab, 170, 90, LEFT);
	teleport_npc(obj_mei, school_lab, 35, 45, DOWN);
	teleport_npc(obj_job, school_lab, 120, 70, LEFT);
	teleport_npc(obj_guy, school_lab, 120, 110, LEFT);
}

if keyboard_check(ord("K")){
	teleport_npc(obj_grace, school_1F, obj_player.x-10, obj_player.y, DOWN);
	obj_grace.entityActivateArg = dialogue_grace_interact;
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