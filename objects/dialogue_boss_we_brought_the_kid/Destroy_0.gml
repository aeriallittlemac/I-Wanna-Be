game_wait(3);
npc_move_to_pos(obj_jake, 1, 0, 1400, obj_jake.y);
npc_move_to_pos(obj_jake, 0, 1, 0, obj_jake.y-1);
npc_play_sfx(obj_jake, sfx_bang_door);
game_NewDialogue(dialogue_you_hear_facepalm);