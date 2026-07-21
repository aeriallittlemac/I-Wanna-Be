event_inherited();
npc_move_to_pos(obj_frenchie, 1, 0, obj_player.x-160, obj_player.y);
teleport_npc(obj_frenchie, noone, 0, 0, DOWN);
game_camera_change_settings(obj_player, 3)
game_wait(2);
game_camera_change_settings(obj_player, -1);
audio_sound_gain(frenchies_theme, 0, 0);
set_QTE_bgm(noone);