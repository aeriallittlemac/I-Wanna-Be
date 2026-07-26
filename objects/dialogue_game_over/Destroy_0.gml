event_inherited();
audio_play_sound(sfx_rewind, 1, false);
instance_create_depth(0,0,0,obj_gif_screen);
game_NewCutscene(obj_game_over_screen.respawn_cutscene);
game_wait(3);
