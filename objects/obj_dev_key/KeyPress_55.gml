global.day = 2;
teleport_npc(obj_wei, noone, 0,0,DOWN);
instance_destroy(inst_29E75538);
teleport_npc(obj_mcronald, school_1F, 1035, 103, DOWN);
AddInstanceToActivate(inst_MCRONALD_DEBUT);
game_camera_change_settings(obj_player, -1)