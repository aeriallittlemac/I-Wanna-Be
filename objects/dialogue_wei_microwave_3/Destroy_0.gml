global.cutscene = true;
obj_player.sprite_index = obj_player.sprite[LEFT];
obj_player.face = LEFT;
game_filter_set_visible("black_screen");
game_wait(0.9);
game_play_sfx(sfx_microwave_door_open, false);
game_wait(0.9);
game_teleport_player(454,110,school_3F);
game_filter_set_invisible("black_screen");
game_NewDialogue(dialogue_wei_microwave_4);
obj_wei.sprite_index = obj_wei.sprite[RIGHT]
instance_create_depth(obj_wei.x - 3, obj_wei.y - 7, obj_wei.depth-1, obj_pork_bun);
instance_create_depth(obj_player.x + 8, obj_player.y, obj_player.depth-1, obj_hot_pocket);
