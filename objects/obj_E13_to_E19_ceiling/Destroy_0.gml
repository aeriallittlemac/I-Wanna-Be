game_camera_change_settings(obj_brooklyn,-1);
audio_stop_all();
teleport_npc(obj_drake, school_gambinos_room, 196, 110, DOWN);
teleport_npc(obj_brooklyn, school_gambinos_room, 135, 145, UP);
teleport_npc(obj_gambino, school_gambinos_room, 135, 95, DOWN);
room_goto(school_gambinos_room);
game_wait(1);
game_NewDialogue(dialogue_brooklyn_walks_in);