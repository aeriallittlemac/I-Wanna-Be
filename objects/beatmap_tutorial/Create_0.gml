target_score = 4;
win_cutscene = dialogue_tutorial_1;
lose_cutscene = dialogue_tutorial_again;
tempo = 90;
beatmap_kicks = array_create(0);
beatmap_snares = array_create(0);
song = song_tutorial;
kick_sound = sfx_heartbeat;
snare_sound = sfx_heart_monitor_beep;
array_push(beatmap_kicks, [1,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]);
array_push(beatmap_snares, [0,0,0,0,1,0,0,0,0,0,0,0,1,0,0,0]);
array_push(beatmap_kicks, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);
array_push(beatmap_snares, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);

event_inherited();

