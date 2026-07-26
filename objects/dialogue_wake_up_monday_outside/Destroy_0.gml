event_inherited();
game_wait(2);
npc_move_to_pos(obj_jake, 2, 0, obj_player.x-160, obj_jake.y);
teleport_npc(obj_jake, noone);
game_NewDialogue(dialogue_wake_up_monday_outside_2);