event_inherited();
game_wait(1)
teleport_npc(obj_frenchie, school_1F, 730, 120, RIGHT);
npc_move_to_pos(obj_frenchie, 1, 0, 780, obj_frenchie.y);
game_NewDialogue(dialogue_mei_graces_investigation_aftermath_1);
