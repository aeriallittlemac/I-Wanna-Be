test_start_walk = true;
teleport_npc(obj_wei, noone, 0,0,RIGHT);
instance_destroy(inst_29E75538);
game_camera_change_settings(obj_player, -1);
teleport_npc(obj_guy, school_1F,1585,161,LEFT);
			npc_move_to_pos(obj_guy, 2, 0, 722, obj_guy.y);
			npc_move_to_pos(obj_guy, 0, 1, obj_guy.x, 96);
			delayed_npc_tp(obj_guy, noone, 0,0);