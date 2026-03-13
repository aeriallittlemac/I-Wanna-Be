right_character_silhouette = spr_mei_silhouette;
QTE = true;
target_score = 7;
win_cutscene = dialogue_mei_interact_if_rumor_deny_succeed;
lose_cutscene = dialogue_mei_interact_if_rumor_deny_fail;
tempo = 90;
arrows = array_create(0);
array_push(arrows, [1,0,1,0,1,1,0,1,0,1,0,0,1,1,0,1]);
event_inherited();
