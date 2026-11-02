event_inherited();
teleport_npc(obj_mei, school_1F, 800, 107, LEFT);
teleport_npc(obj_mcronald, school_1F, 690, 107, RIGHT);
instance_create_depth(0,0,0,mei_n_mcronald);
instance_activate_object(INST_MEI_AND_MCRONALD);
