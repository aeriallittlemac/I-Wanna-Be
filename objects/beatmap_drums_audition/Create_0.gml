QTE = false;
target_score = 4;
max_misses = 15;
win_cutscene = cutscene_drum_audition_end;
lose_cutscene = dialogue_drum_audition_start_over;
tempo = 100;
arrows = array_create(0);
for(var i = 0; i<8; i++){
array_push(arrows, [1,0,0,0,0,0,1,0,1,0,0,0,1,0,0,0]);
}
event_inherited();