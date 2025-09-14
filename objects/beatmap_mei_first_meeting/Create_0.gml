QTE = true;
target_score = 7;
win_cutscene = dialogue_mei_debut;
lose_cutscene = dialogue_game_over_hard_on_0;
tempo = 90;
beatmap_kicks = array_create(0);
beatmap_snares = array_create(0);
kick_sound = sfx_heartbeat;
snare_sound = sfx_heart_monitor_beep;
array_push(beatmap_kicks, [1,0,0,0,1,1,0,0,1,0,0,0,1,1,0,0]);
array_push(beatmap_snares, [0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,0]);

event_inherited();