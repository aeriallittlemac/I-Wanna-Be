QTE = true;
target_score = 10;
win_cutscene = dialogue_help_grace_find_contacts_flirt;
lose_cutscene = dialogue_help_grace_find_contacts_fumble;
tempo = 90;
beatmap_kicks = array_create(0);
beatmap_snares = array_create(0);
kick_sound = sfx_heartbeat;
snare_sound = sfx_heart_monitor_beep;

array_push(beatmap_kicks, [1,0,1,1,0,0,0,1,1,0,0,1,0,0,0,1]);
array_push(beatmap_snares, [0,0,0,0,1,0,1,0,0,1,0,0,1,1,0,0]);

event_inherited();

