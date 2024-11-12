teleport_npc(obj_grace, school_3F, 396, 119, DOWN);
game_teleport_player(0,0,school_3F);
instance_destroy(inst_3D85AE7E);
game_teleport_player(454,110,school_3F);
game_NewDialogue(dialogue_you_hand_the_burger);
global.game_time = "12:30 am"
global.night = true;



