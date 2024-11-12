camera_set_view_target(view_camera[0], noone);
game_wait(2.5);
wait(0.8);
npc_wait(obj_drake, 0.9);

npc_move_to_pos(obj_jake, 1, 0, 0, obj_jake.y);
npc_move_to_pos(obj_drake, 1, 0, 0, obj_drake.y);
move_to_pos(0, 1, obj_player.x, obj_jake.y);
move_to_pos(1, 0, 0, obj_player.y);
game_NewDialogue(dialogue_so_much_for_the_nap);
