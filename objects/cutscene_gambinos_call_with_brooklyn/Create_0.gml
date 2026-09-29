
game_camera_change_settings(obj_brooklyn, 2);
game_wait(1);
game_NewDialogue(dialogue_gambinos_call_with_brooklyn);
move_to_pos(1, 0, 1132, obj_player.y);
npc_move_to_pos(obj_brooklyn, 1, 0, obj_brooklyn.x - 200, obj_brooklyn.y);
instance_destroy(self);
