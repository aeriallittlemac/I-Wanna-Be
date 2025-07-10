target_score = 3;
win_cutscene = dialogue_mei_debut;
lose_cutscene = dialogue_game_over_hard_on_1;
tempo = 70;
beatmap_kicks = array_create(0);
beatmap_snares = array_create(0);
song = grace_heartbeat;
kick_sound = sfx_heartbeat;
snare_sound = noone;
array_push(beatmap_kicks, [1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0]);
array_push(beatmap_snares, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);

event_inherited();

