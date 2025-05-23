target_score = 10;
win_cutscene = start_screen;
lose_cutscene = noone;
tempo = 90;
beatmap_kicks = array_create(0);
beatmap_snares = array_create(0);
song = tutorial_music;
kick_sound = sfx_stomp;
snare_sound = sfx_clap;
for (var i=0; i<4; i++){
	array_push(beatmap_kicks, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);
}
for (var i=0; i<12; i++){
	array_push(beatmap_kicks, [1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0]);
}

for (var i=0; i<8; i++){
	array_push(beatmap_snares, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);
}
for (var i=0; i<8; i++){
	array_push(beatmap_snares, [0,0,0,0,1,0,0,0,0,0,0,0,1,0,0,0]);
}

for (var i=0; i<3; i++){
array_push(beatmap_kicks, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);
array_push(beatmap_snares, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);
}


event_inherited();

