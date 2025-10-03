audio_stop_all();

var inst = instance_create_depth(0,0,OBJ_MAX_DEPTH, obj_rhythm_game);
inst.win_cutscene_object = win_cutscene;
inst.lose_cutscene_object = lose_cutscene;
inst.tempo = tempo;
inst.beatmap_kicks = beatmap_kicks;
inst.beatmap_snares = beatmap_snares;
inst.target_score = target_score;
inst.song = song;
inst.kick_sound = kick_sound;
inst.snare_sound = snare_sound;
kick_offset_x = inst.left_border;
kick_offset_y = 51;
if beatmap_kicks[0][0] == 1{
	instance_create_depth(16*inst.unit + kick_offset_x, global.rap_battle * 75 + kick_offset_y, depth-1, obj_rhythm_block_kick_ghost);
}
instance_destroy(self);