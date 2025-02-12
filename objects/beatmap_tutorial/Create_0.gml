target_score = 10;
win_cutscene = cutscene_tutorial_2
lose_cutscene = cutscene_tutorial_2
tempo = 90;
beatmap_kicks = array_create(0);
beatmap_snares = array_create(0);
unit = 14;
song = tutorial_music;
for (var i=0; i<4; i++){
	array_push(beatmap_kicks, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);
}
for (var i=0; i<12; i++){
	array_push(beatmap_kicks, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);
}
array_push(beatmap_kicks, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);
array_push(beatmap_kicks, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);

for (var i=0; i<8; i++){
	array_push(beatmap_snares, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);
}
for (var i=0; i<8; i++){
	array_push(beatmap_snares, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);
}


array_push(beatmap_snares, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);
array_push(beatmap_snares, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);

event_inherited();

