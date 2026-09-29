game_camera_change_settings(obj_mcronald, 2);
game_wait(1);
game_NewDialogue(dialogue_tuesday_mei_and_mcronald);
move_to_pos(1, 0, 861, obj_player.y);
instance_destroy(self);
