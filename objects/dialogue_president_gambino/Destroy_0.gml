game_NewCharacterIntro(obj_gambino);
game_filter_set_visible("black_screen");
teleport_npc(obj_gambino, noone, 173, 42, DOWN);
game_wait(0.2);
game_filter_set_invisible("black_screen");
game_NewDialogue(dialogue_president_gambino_2);

