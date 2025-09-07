QTE = false;
target_score = 3;
win_cutscene = timed_dialogue_wei;
lose_cutscene = dialogue_band_first_song_start_over;
tempo = 100;
beatmap_kicks = array_create(0);
beatmap_snares = array_create(0);
kick_sound = sfx_stomp;
snare_sound = sfx_snare;
max_misses = 10;
for(var i = 0; i<2; i++){
array_push(beatmap_kicks, [1,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0]);
array_push(beatmap_snares, [0,0,0,0,1,0,0,0,0,0,0,0,1,0,0,0]);
array_push(beatmap_kicks, [1,0,0,0,0,0,0,0,1,0,1,0,0,0,0,1]);
array_push(beatmap_snares, [0,0,0,0,1,0,0,0,0,0,0,0,1,0,0,0]);
array_push(beatmap_kicks, [1,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0]);
array_push(beatmap_snares, [0,0,0,0,1,0,0,0,0,0,0,0,1,0,0,0]);
array_push(beatmap_kicks, [1,0,0,1,0,1,0,0,1,0,1,0,0,0,0,0]);
array_push(beatmap_snares, [0,0,0,0,1,0,0,0,0,0,0,0,1,0,0,1]);
}
//array_push(beatmap_kicks, [1,0,0,0,0,0,0,0,1,0,1,0,0,0,0,0]);
//array_push(beatmap_snares, [0,0,0,0,1,0,0,0,0,0,0,0,1,0,0,0]);
//array_push(beatmap_kicks, [1,0,0,1,0,1,0,0,1,0,1,0,0,0,0,0]);
//array_push(beatmap_snares, [0,0,0,0,1,0,0,0,0,0,0,0,1,0,0,1]);
event_inherited();