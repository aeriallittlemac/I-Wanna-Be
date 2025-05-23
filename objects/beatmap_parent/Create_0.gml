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
if beatmap_kicks[0][0] == 1{
	instance_create_depth(16*14, global.rap_battle * 75, depth-1, obj_rhythm_block_kick_ghost);
}
instance_destroy(self);