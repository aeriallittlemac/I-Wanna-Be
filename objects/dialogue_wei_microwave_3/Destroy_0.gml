global.cutscene = true;
obj_player.sprite_index = obj_player.sprite[RIGHT];
obj_player.face = RIGHT;
game_filter_set_visible("black_screen");
game_wait(0.9);
game_play_sfx(sfx_microwave_door_open, false);
game_wait(0.9);
//game_teleport_player(454,110,school_3F);
game_filter_set_invisible("black_screen");
game_NewDialogue(dialogue_wei_microwave_4);
npc_animate(obj_wei, spr_wei_eating);
//obj_wei.sprite_index = obj_wei.sprite[LEFT]
//instance_create_depth(obj_wei.x - 25, obj_wei.y - 25, obj_wei.depth-1, obj_pork_bun);
instance_create_depth(obj_player.x - 7, obj_player.y - 14, obj_player.depth-1, obj_hot_pocket);