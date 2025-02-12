teleport_npc(obj_wei, school_2F, 100, obj_wei.y, RIGHT);
destroy_if_in_scene(inst_29E75538);
teleport_player(600,100,school_3F);
destroy_if_in_scene(inst_1D43132F);
instance_destroy(inst_60A96728);
instance_destroy(inst_325AA326);
teleport_npc(obj_grace, school_3F, 396, 119, DOWN);
global.game_time = "12:30 am"
global.night = true;
AddInstanceToActivate(inst_3D85AE7E);




