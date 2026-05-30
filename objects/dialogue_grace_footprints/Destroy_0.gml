npc_wait(obj_mei, 0.6);
obj_mei.sprite[RIGHT] = spr_mei_left_reversed;
npc_move_to_pos(obj_mei, 1, 0, 233, obj_mei.y);
game_wait(4);
game_NewDialogue(dialogue_grace_footprints_1);