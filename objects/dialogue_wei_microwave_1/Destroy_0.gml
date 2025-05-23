instance_create_depth(0,0,0, player_n_wei);
obj_wei.sprite_index = obj_wei.sprite[UP]
game_camera_change_settings(player_n_wei, 1);
move_to_pos(0, 1, obj_player.x, 104);
move_to_pos(1, 0, 374, obj_player.y);
move_to_pos(0, 1, obj_player.x, 96);
npc_wait(obj_wei, 0.8);
npc_move_to_pos(obj_wei, 1, 0, obj_wei.x + 70, obj_wei.y);
npc_move_to_pos(obj_wei, 1, 0, obj_wei.x + 69, obj_wei.y);
//sounds of opening and closing the microwave
game_wait(3);
game_play_sfx(sfx_microwave_door_open, false);
game_wait(0.8);
game_play_sfx(sfx_microwave_door_close, false);
game_wait(0.5);
game_play_sfx(sfx_microwave_start, false);
game_wait(1.5);
game_play_sfx(sfx_microwave_operating, true);
game_wait(3);
game_NewDialogue(dialogue_wei_microwave_2);