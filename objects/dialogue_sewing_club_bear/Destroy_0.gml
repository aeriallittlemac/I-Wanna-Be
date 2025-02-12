audio_stop_sound(sewing_club);
global.cutscene = true;
obj_player.sprite_index = obj_player.sprite[UP];
obj_player.face = UP;
instance_destroy(obj_sewing_kit);
game_filter_set_visible("black_screen");
instance_create_depth(obj_bear.x, obj_bear.y, TEXTBOX_DEPTH, obj_slice)
game_wait(1.8);
game_teleport_player(171,111,school_sewing_club);
instance_destroy(inst_189BF680);
game_filter_set_invisible("black_screen");
game_NewDialogue(dialogue_sewing_club_bear_done);
game_play_sfx(sewing_club, true);
