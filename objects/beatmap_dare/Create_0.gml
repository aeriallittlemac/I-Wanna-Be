right_character_silhouette = spr_grace_silhouette;
QTE = true;
target_score = 10;
win_cutscene = dialogue_grace_flirt;
lose_cutscene = dialogue_grace_fumble; 
tempo = 90;
arrows = array_create(0);
array_push(arrows, [1,0,1,1,1,0,1,1,1,0,1,0,1,1,0,1]);
event_inherited();

