target_score = 3;
tempo = 90;
beatmap_kicks = array_create(0);
beatmap_snares = array_create(0);
kick_sound = sfx_stomp;
snare_sound = sfx_snare;
array_push(beatmap_kicks, [1,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0]);
array_push(beatmap_snares, [0,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0]);
array_push(beatmap_kicks, [1,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0]);
array_push(beatmap_snares, [0,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0]);
array_push(beatmap_kicks, [1,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0]);
array_push(beatmap_snares, [0,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0]);
array_push(beatmap_kicks, [1,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0]);
array_push(beatmap_snares, [0,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0]);
array_push(beatmap_kicks, [1,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0]);
array_push(beatmap_snares, [0,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0]);
array_push(beatmap_kicks, [1,0,0,0,1,1,0,0,0,0,0,0,0,0,0,0]);
array_push(beatmap_snares, [0,0,1,0,0,0,1,0,0,0,0,0,0,0,0,0]);
array_push(beatmap_kicks, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);
array_push(beatmap_snares, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);

var inst = instance_create_depth(0,0,OBJ_MAX_DEPTH, obj_rhythm_game_new);
inst.tempo = tempo;
inst.beatmap_kicks = beatmap_kicks;
inst.beatmap_snares = beatmap_snares;
inst.target_score = target_score;
inst.kick_sound = kick_sound;
inst.snare_sound = snare_sound;

if beatmap_kicks[0][0] == 1{
	instance_create_depth(16*14 + inst.kick_offset_x, global.rap_battle * 75 + inst.kick_offset_y, depth-1, obj_rhythm_block_kick_ghost);
}
instance_destroy(self);

