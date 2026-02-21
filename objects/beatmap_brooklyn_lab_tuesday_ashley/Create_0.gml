right_character_silhouette = spr_brooklyn_silhouette;
QTE = true;
target_score = 10;
win_cutscene = dialogue_brooklyn_n_mei_interact_lab_success_ashley;
lose_cutscene = dialogue_brooklyn_n_mei_interact_lab_fail_ashley; 
tempo = 80;
arrows = array_create(0);
array_push(arrows, [1,0,0,0,1,0,0,1,1,0,0,0,1,0,0,0]);
array_push(arrows, [1,0,0,0,1,0,0,0,1,0,0,0,1,1,1,1]);
event_inherited();

