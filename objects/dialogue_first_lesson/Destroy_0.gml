global.cutscene = true;
game_filter_set_visible("black_screen");
teleport_npc(obj_gambino, school_main_classroom, 173, 42, DOWN)
game_wait(0.7);
game_filter_set_invisible("black_screen");
game_wait(0.5);
game_NewDialogue(dialogue_president_gambino);