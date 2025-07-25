target_score = 3;
win_cutscene = dialogue_date_grace_choice;
lose_cutscene = dialogue_game_over_hard_on_1;
tempo = 100;
beatmap_kicks = array_create(0);
beatmap_snares = array_create(0);
song = song_date_grace_truth;
kick_sound = sfx_stomp;
snare_sound = sfx_snare;
array_push(beatmap_kicks, [1,0,1,0,0,1,0,0,1,0,0,0,0,0,0,0]);
array_push(beatmap_snares, [0,0,0,0,1,0,0,0,0,1,0,0,0,0,0,0]);

event_inherited();

