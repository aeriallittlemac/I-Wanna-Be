target_score = 10;
win_cutscene = dialogue_grace_v2_turn;
lose_cutscene = dialogue_grace_v2_turn_mock_ver;
tempo = 90;
beatmap_kicks = array_create(0);
beatmap_snares = array_create(0);
song = sewing_club_rap_battle;
kick_sound = sfx_beatbox_kick;
snare_sound = sfx_beatbox_snare;
//for (var i=0; i < 4; i++){
	array_push(beatmap_kicks, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);
	array_push(beatmap_snares, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);
//}

array_push(beatmap_kicks, [1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);
array_push(beatmap_snares, [0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1]);

for (var i = 0; i < 3; i++){
	array_push(beatmap_kicks, [1,0,0,0,0,1,0,0,0,0,1,0,0,0,0,0]);
	array_push(beatmap_kicks, [1,0,0,0,0,1,0,0,0,0,1,0,1,0,1,0]);
	array_push(beatmap_snares, [0,0,0,0,1,0,0,0,0,0,0,0,1,0,0,0]);
	array_push(beatmap_snares, [0,0,0,0,1,0,0,0,0,0,0,0,1,0,0,0]);
}

for (var i = 0; i < 4; i++){
	array_push(beatmap_kicks, [1,0,0,0,0,0,1,1,0,1,1,0,0,0,0,0]);
	array_push(beatmap_snares, [0,0,0,0,1,0,0,0,0,0,0,0,1,0,0,0]);
}
for (var i = 0; i < 2; i++){
	array_push(beatmap_kicks, [1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0]);
	array_push(beatmap_snares, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);
}
array_push(beatmap_kicks, [1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);
array_push(beatmap_snares, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);

for (var i = 0; i < 2; i++){
	array_push(beatmap_kicks, [1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0]);
}
array_push(beatmap_snares, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);
array_push(beatmap_snares, [0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1]);

for (var i = 0; i < 3; i++){
	array_push(beatmap_kicks, [1,0,0,0,0,1,0,1,0,0,1,0,0,0,1,0]);
	array_push(beatmap_kicks, [1,0,0,0,0,1,0,1,0,1,1,0,1,0,1,0]);
	array_push(beatmap_snares, [0,0,0,0,1,0,0,0,0,0,0,0,1,0,0,0]);
	array_push(beatmap_snares, [0,0,0,0,1,0,0,0,0,0,0,0,0,1,1,1]);
}

for (var i = 0; i < 3; i++){
	array_push(beatmap_kicks, [1,0,0,1,0,0,1,1,0,1,1,1,0,1,1,1]);
	array_push(beatmap_snares, [0,0,0,0,1,1,0,0,0,0,0,0,1,0,0,0]);
	array_push(beatmap_kicks, [1,0,0,1,0,0,1,1,0,1,1,1,0,1,0,0]);
	array_push(beatmap_snares, [0,0,0,0,1,1,0,0,0,0,0,0,1,0,1,1]);
}

array_push(beatmap_kicks, [1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);
array_push(beatmap_snares, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);

for(var i = 0; i < 1; i++){
	array_push(beatmap_kicks, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);
	array_push(beatmap_snares, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);
}

event_inherited();