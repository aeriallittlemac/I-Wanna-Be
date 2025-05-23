game_wait(4);
npc_move_to_pos(obj_jake, 0, 1, obj_jake.y, 200);
npc_move_to_pos(obj_drake, 0, 1, obj_drake.y, 200);
teleport_npc(obj_jake,noone, 0, 0, DOWN);
teleport_npc(obj_drake,noone, 0, 0, DOWN);
game_NewDialogue(dialogue_conversation_with_gambino);
