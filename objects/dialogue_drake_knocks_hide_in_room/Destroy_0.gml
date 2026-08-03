event_inherited();
game_wait(3);
npc_move_to_pos(obj_drake, 1, 0, obj_player.x-160, obj_drake.y);
teleport_npc(obj_drake, noone, 0, 0, DOWN);
game_NewDialogue(dialogue_wake_up_monday_outside_2);