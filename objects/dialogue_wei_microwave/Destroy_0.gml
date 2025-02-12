obj_wei.sprite_index = obj_wei.sprite[UP]
move_to_pos(0, 1, obj_player.x, 104);
move_to_pos(1, 0, 374, obj_player.y);
move_to_pos(0, 1, obj_player.x, 96);
//sounds of opening and closing the microwave
game_wait(2);
game_play_sfx(sfx_microwave_door_open, false);
game_wait(0.8);
game_play_sfx(sfx_microwave_door_close, false);
game_wait(0.5);
game_play_sfx(sfx_microwave_start, false);
game_wait(1.5);
game_play_sfx(sfx_microwave_operating, true);
game_NewDialogue(dialogue_wei_microwave_2);
