var inst = instance_create_depth(0,0,0, obj_rhythm_game);
inst.win_cutscene_object = win_cutscene;
inst.lose_cutscene_object = lose_cutscene;
inst.tempo = tempo;
inst.beatmap_kicks = beatmap_kicks;
inst.beatmap_snares = beatmap_snares;
inst.target_score = target_score;
inst.unit = unit;
inst.song = song;
if beatmap_kicks[0][0] == 1{
	instance_create_depth(16*unit, 0, depth-1, obj_rhythm_block_kick_ghost);
}
instance_destroy(self);