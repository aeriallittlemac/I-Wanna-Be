event_inherited();
audio_stop_all();
npc_move_to_pos(obj_gambino, 1, 0, 216, obj_gambino.y);
teleport_npc(obj_gambino, noone, 0, 0, DOWN);
npc_wait(obj_wei,1);
npc_move_to_pos(obj_wei, 1, 0, 92, obj_wei.y);
npc_move_to_pos(obj_wei, 0, 1, obj_wei.x, 132);
npc_move_to_pos(obj_wei, 1, 0, 115, obj_wei.y);
game_wait(5);
game_NewDialogue(dialogue_wei_drags_table)