target_score = 10;
win_cutscene = dialogue_you_nod_your_head;
lose_cutscene = dialogue_didnt_see_you_there_lol;
tempo = 120;
beatmap_kicks = array_create(0);
beatmap_snares = array_create(0);
song = song_grace_second_decision;
kick_sound = sfx_heartbeat;
snare_sound = sfx_heart_monitor_beep;
array_push(beatmap_kicks, [1,0,0,1,0,1,0,1,1,0,0,1,1,0,0,1]);
array_push(beatmap_snares, [0,0,1,0,0,0,1,0,0,1,1,0,0,1,1,0]);

event_inherited();

