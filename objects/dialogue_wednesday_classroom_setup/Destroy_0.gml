event_inherited();
audio_stop_all();
npc_move_to_pos(obj_gambino, 1, 0, 216, obj_gambino.y);
npc_move_to_pos(obj_drake, 0,1, obj_drake.x, obj_drake.y + 15);
teleport_npc(obj_gambino, noone, 0, 0, DOWN);
game_wait(2.5);
game_NewDialogue(dialogue_wednesday_classroom_setup_1);