event_inherited();
audio_sound_gain(weis_theme, 0, 1000);
set_QTE_bgm(frenchies_theme);
audio_sound_gain(frenchies_theme,0,0);
audio_sound_gain(frenchies_theme, 0.25, 2500);
game_wait(2);
wait(2.5);
move_to_pos(1, 0, obj_player.x-1, obj_player.y);
teleport_npc(obj_frenchie, school_2F, obj_player.x-150, obj_wei.y, RIGHT);
npc_wait(obj_frenchie, 2);
npc_move_to_pos(obj_frenchie, 1, 0, obj_player.x-115, obj_frenchie.y)
npc_move_to_pos(obj_wei, 1, 0, 100, obj_wei.y)
teleport_npc(obj_wei, noone, 100, obj_wei.y, DOWN);
instance_create_depth(0, 0, 0, player_n_frenchie);
game_camera_change_settings(player_n_frenchie, 3)
game_wait(2);
game_NewDialogue(dialogue_frenchies_introduction);