target_score = 7;
win_cutscene = dialogue_mei_debut;
lose_cutscene = dialogue_game_over_hard_on_0;
tempo = 95;
beatmap_kicks = array_create(0);
beatmap_snares = array_create(0);
song = song_mei_first_meeting;
kick_sound = sfx_stomp;
snare_sound = sfx_snare;
array_push(beatmap_kicks, [1,0,0,1,0,0,1,0,0,1,0,1,0,0,1,0]);
array_push(beatmap_snares, [0,0,0,0,1,0,0,0,0,0,0,0,1,0,0,0]);
array_push(beatmap_kicks, [1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);
array_push(beatmap_snares, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);

event_inherited();

