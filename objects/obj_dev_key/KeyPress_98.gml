//obj_npc_manager.npcs[1].initial_animation = spr_grace_chew_silhouette_loop;
obj_npc_manager.npcs[1].initial_animation = spr_grace_chew_loop;
teleport_npc(obj_grace, school_3F, 396, 119, DOWN);
game_teleport_player(0,0,school_3F);
instance_destroy(inst_3D85AE7E);
game_teleport_player(454,110,school_3F);
global.game_time = "12:30 am"
global.night = true;



