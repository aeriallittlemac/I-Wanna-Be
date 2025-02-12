target_score = 3;
win_cutscene = dialogue_didnt_see_you_there_no;
lose_cutscene = dialogue_didnt_see_you_there_lol;
tempo = 80;
beatmap_kicks = array_create(0);
beatmap_snares = array_create(0);
unit = 14;
song = grace_heartbeat;
array_push(beatmap_kicks, [1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0]);
array_push(beatmap_snares, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);

event_inherited();

