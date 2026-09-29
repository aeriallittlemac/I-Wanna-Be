//teleport_npc(obj_jake, school_2F, 606, 104, RIGHT);
//teleport_player(650, 104, school_2F, dialogue_wake_up_wednesday_outside);
//global.day = 4;
//reverse_gambinos_lighting();

//teleport_player(1000, 104, school_B1);
//teleport_npc(obj_brooklyn, school_B1, 1050, 118, LEFT);
//give her a dialogue object that says that she's calling someone
//AddInstanceToActivate(INST_BROOKLYN_OUTSIDE_LAB_TUESDAY);

game_camera_change_settings(obj_player, -1);
obj_player.x = 1000;
//teleport_player(1000, 104, school_1F);
teleport_npc(obj_mei, school_1F, 1000, 118, DOWN);
teleport_npc(obj_mcronald, school_1F, 960, 118, DOWN);

AddInstanceToActivate(INST_MEI_AND_MCRONALD);