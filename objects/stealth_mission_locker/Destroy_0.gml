instance_create_depth(1232, 120, OBJ_MAX_DEPTH, obj_map_pin)
teleport_npc(obj_grace, school_1F, 1170, 115, LEFT);
npc_speech_bubble(obj_grace, speech_grace_locker)
npc_move_to_pos(obj_grace, 1, 0, 1133, obj_grace.y);
npc_wait(obj_grace, 1);
npc_move_to_pos(obj_grace, 1, 0, 1233, obj_grace.y);
npc_move_to_pos(obj_grace, 1, 0, 1232, obj_grace.y);
npc_wait(obj_grace, 1);
instance_create_depth(0,0,0,stealth_mission_locker_grace);
game_NewDialogue(stealth_UI_objective);