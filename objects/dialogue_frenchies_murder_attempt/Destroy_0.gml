global.game_time = "8:00";
global.night = true;
teleport_npc(obj_frenchie, school_1F, obj_player.x - 140, obj_player.y, RIGHT);
obj_frenchie.sprite[RIGHT] = spr_frenchie_right_scalpel_chase;
game_wait(0.5);
game_NewDialogue(dialogue_frenchies_murder_attempt_1)