QTE = false;
target_score = 4;
max_misses = 6;
win_cutscene = dialogue_mr_chen_shut_up;
lose_cutscene = dialogue_band_first_song_start_over;
tempo = 90;
arrows = array_create(0);
for(var i = 0; i<26; i++){
array_push(arrows, [1,0,0,0,1,0,0,0,1,0,1,0,1,0,0,0]);
}
event_inherited();