event_inherited();
teleport_npc(obj_ashley, school_lab, 50, 52, DOWN);
//teleport_npc(obj_mei, school_lab, 195, 50, LEFT);
teleport_npc(obj_brooklyn, school_lab, 120, 85, RIGHT);
teleport_npc(obj_wei, school_lab, 150, 50, DOWN);
teleport_npc(obj_guy, school_lab, 225, 66, DOWN);
obj_vfx.effects.romance.stop();
teleport_player(100, 120, school_lab, cutscene_brooklyn_thursday_lab_setup);