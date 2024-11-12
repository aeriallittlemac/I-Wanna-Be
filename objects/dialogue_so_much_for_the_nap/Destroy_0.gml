game_skip_c_sequence();
game_skip_npc_sequence(obj_jake);
game_skip_npc_sequence(obj_drake);
teleport_npc(obj_drake, school_B1, 790, obj_player.y, RIGHT);
teleport_npc(obj_jake, school_B1, 910 + 50, obj_player.y, RIGHT);
teleport_player(860, obj_player.y, school_B1, dialogue_were_here);