//teleport_player(135, 120, school_1F_run_minigame);
obj_frenchie.sprite[RIGHT] = spr_frenchie_right_scalpel_chase;
npc_move_to_pos(obj_frenchie, 1, 0, obj_frenchie.x+1, obj_frenchie.y);
game_wait(1);
game_NewDialogue(dialogue_frenchies_murder_attempt_2);