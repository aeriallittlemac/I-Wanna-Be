target_score = 10;
win_cutscene = obj_start_screen;
lose_cutscene = noone;
tempo = 120;
beatmap_kicks = array_create(0);
beatmap_snares = array_create(0);
song = tutorial_music;
kick_sound = sfx_stomp;
snare_sound = sfx_clap;
for(var j = 0; j<2; j++){
	for (var i = 0; i<3; i++){
		array_push(beatmap_kicks, [1,0,0,0,0,0,1,0,1,0,1,0,0,0,0,0]);
		array_push(beatmap_snares, [0,0,0,0,1,0,0,0,0,0,0,0,1,0,0,0]);
	}
	array_push(beatmap_kicks, [1,0,0,0,0,0,1,0,1,0,1,0,0,0,1,0]);
	array_push(beatmap_snares, [0,0,0,0,1,0,0,0,0,0,0,0,1,0,0,1]);
}

for(var j = 0; j<2; j++){
	for (var i = 0; i<3; i++){
		array_push(beatmap_kicks, [1,0,0,0,0,1,0,0,1,0,1,0,0,0,0,0]);
		array_push(beatmap_snares, [0,0,0,0,1,0,0,0,0,0,0,0,1,0,0,0]);
	}
	array_push(beatmap_kicks, [1,0,0,0,0,1,0,0,1,0,0,0,0,0,0,0]);
	array_push(beatmap_snares, [0,0,0,0,1,0,0,0,1,0,0,1,0,0,1,0]);
}
array_push(beatmap_kicks, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);
array_push(beatmap_kicks, [1,0,1,0,0,0,0,0,0,0,0,0,0,0,1,0]);
array_push(beatmap_snares, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);
array_push(beatmap_snares, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);

for(var j = 0; j<2; j++){
	for (var i = 0; i<3; i++){
		array_push(beatmap_kicks, [1,0,1,0,0,0,1,0,0,0,1,0,0,1,0,0]);
		array_push(beatmap_snares, [0,0,0,0,1,0,0,0,0,0,0,0,1,0,0,0]);
	}
	array_push(beatmap_kicks, [0,0,0,0,1,0,0,0,0,0,0,0,1,0,1,0]);
	array_push(kick_ending_rhythm, [1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]);
}
event_inherited();

