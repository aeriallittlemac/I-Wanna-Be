QTE = false;
target_score = 4;
max_misses = 6;
win_cutscene = dialogue_band_first_practice_stop_1;
lose_cutscene = dialogue_band_first_practice_start_over_1;
tempo = 100;
arrows = array_create(0);
for(var i = 0; i<4; i++){
array_push(arrows, [1,0,0,0,1,0,0,0,1,0,1,0,1,0,0,0]);
}
event_inherited();