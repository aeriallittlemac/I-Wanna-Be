npc_move_to_pos(obj_frenchie, 0, 1, obj_frenchie.x, 145);
npc_move_to_pos(obj_frenchie, 1, 0, 108,  obj_frenchie.y);
teleport_npc(obj_frenchie, noone, 0, 0, DOWN);
game_wait(2.5);
game_NewDialogue(dialogue_lab_debut_1)
global.text_box_top = false;