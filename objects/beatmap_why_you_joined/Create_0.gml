target_score = 10;
win_cutscene = dialogue_help_grace_find_contacts_flirt;
lose_cutscene = dialogue_help_grace_find_contacts_fumble;
tempo = 100;
beatmap_kicks = array_create(0);
beatmap_snares = array_create(0);
song = song_why_you_joined;
kick_sound = sfx_stomp;
snare_sound = sfx_snare;
array_push(beatmap_kicks, [1,0,1,1,0,0,0,1,1,0,0,1,0,0,0,1]);
array_push(beatmap_snares, [0,0,0,0,1,0,1,0,0,1,0,0,1,1,0,0]);
array_push(beatmap_kicks, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);
array_push(beatmap_snares, [1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);

event_inherited();

