target_score = 3;
win_cutscene = dialogue_sewing_club_debut_5_1;
lose_cutscene = dialogue_sewing_club_debut_5_2;
tempo = 80;
beatmap_kicks = array_create(0);
beatmap_snares = array_create(0);
song = song_grace_first_meeting;
kick_sound = sfx_heartbeat;
snare_sound = noone;
array_push(beatmap_kicks, [1,0,0,0,1,0,0,0,1,0,0,0,1,0,0,0]);
array_push(beatmap_snares, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);

event_inherited();