instance_destroy(adjust_camera);
game_camera_change_settings(obj_grace, 2);
teleport_npc(obj_wei, noone, 0, 0, DOWN);
teleport_npc(obj_mcronald, noone, 0, 0, RIGHT);

teleport_npc(obj_wei, school_1F, obj_grace.x - 100, obj_grace.y, RIGHT);
npc_move_to_pos(obj_wei, 1, 0, obj_grace.x - 50, obj_grace.y);

teleport_npc(obj_mcronald, school_1F, obj_grace.x - 180, obj_grace.y, RIGHT);
npc_move_to_pos(obj_mcronald, 1, 0, obj_grace.x - 90, obj_grace.y);

teleport_npc(obj_frenchie, school_1F, obj_grace.x - 180, obj_grace.y - 25, DOWN);
game_wait(2);
game_camera_change_settings(obj_mcronald, 1);
game_filter_set_visible("spotlight_background");
game_wait(3);

//game_create_instance_depth(obj_frenchie.x, 0, TEXTBOX_DEPTH+1, obj_spotlight_centered);
game_NewDialogue(timed_dialogue_frenchie_suicide_monologue);