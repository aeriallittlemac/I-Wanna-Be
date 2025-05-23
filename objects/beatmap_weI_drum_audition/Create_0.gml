target_score = 80;
song_timer = 0;
win_cutscene = dialogue_wei_microwave_5;
lose_cutscene = dialogue_wei_microwave_5_lose;
tempo = 110;
beatmap_kicks = array_create(0);
beatmap_snares = array_create(0);
kick_main_rhythm = [1,0,1,0,0,0,1,0,0,0,1,0,0,1,0,0];
snare_main_rhythm = [0,0,0,0,1,0,0,0,0,0,0,0,1,0,0,0];
kick_main_fill = [1,0,1,0,0,0,0,0,1,0,0,0,0,0,0,0];
snare_main_fill = [0,0,0,0,1,0,0,0,0,0,0,0,1,0,1,0];
kick_ending_rhythm = [1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0];
snare_ending_rhythm = snare_main_rhythm;
song = hip_hop_sample;
kick_sound = sfx_stomp;
//intro
array_push(beatmap_kicks, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);
array_push(beatmap_kicks, [1,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0]);
array_push(beatmap_snares, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);
array_push(beatmap_snares, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);

//main (verse)
for (var j=0; j<2; j++){
	for (var i = 0; i < 3; i++){
		array_push(beatmap_kicks, kick_main_rhythm);
		array_push(beatmap_snares, snare_main_rhythm);
	}
	array_push(beatmap_kicks, kick_main_fill);
	array_push(beatmap_snares, snare_main_fill);
}

//bridge(intro)

array_push(beatmap_kicks, [1,0,1,0,1,0,0,0,0,0,0,0,1,0,1,0]);
array_push(beatmap_kicks, [1,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0]);
array_push(beatmap_snares, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);
array_push(beatmap_snares, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);

//ending (chorus)
for (var i = 0; i < 6; i++){
	array_push(beatmap_kicks, kick_ending_rhythm);
	array_push(beatmap_snares, snare_ending_rhythm);
}
array_push(beatmap_kicks, [1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]);
array_push(beatmap_snares, [0,0,0,0,1,0,0,0,0,0,0,0,1,0,1,0]);
array_push(beatmap_kicks, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);
array_push(beatmap_snares, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);
array_push(beatmap_kicks, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);
array_push(beatmap_snares, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);
event_inherited();

