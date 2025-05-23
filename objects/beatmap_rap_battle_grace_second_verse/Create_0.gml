target_score = 10;
win_cutscene = dialogue_brooklyns_v2_turn;
lose_cutscene = dialogue_brooklyns_v2_turn_mock_ver;
tempo = 90;
beatmap_kicks = array_create(0);
beatmap_snares = array_create(0);
song = battle_beat_grace_v2;
kick_sound = sfx_stomp;
array_push(beatmap_kicks, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);
array_push(beatmap_snares, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);
for (var i = 0; i < 6; i++){
	array_push(beatmap_kicks, [1,0,0,0,0,0,1,1,0,1,1,0,0,0,0,0]);
	array_push(beatmap_snares, [0,0,0,0,1,0,0,0,0,0,0,0,1,0,0,0]);
}
array_push(beatmap_kicks, [1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);
array_push(beatmap_snares, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);
array_push(beatmap_kicks, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);
array_push(beatmap_snares, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);
event_inherited();