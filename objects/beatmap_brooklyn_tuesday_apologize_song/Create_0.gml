right_character_silhouette = spr_brooklyn_portrait_default;
QTE = true;
target_score = 7;
win_cutscene = noone;
lose_cutscene = noone;
tempo = 80;
arrows = array_create(0);
//for(var i=0; i<4; i++){
//array_push(arrows, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);
//}

array_push(arrows, [0,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0]);
array_push(arrows, [0,0,1,0,1,0,1,0,0,0,1,0,0,0,1,0]);
array_push(arrows, [0,0,1,0,1,0,1,0,1,0,1,0,0,0,1,0]);
array_push(arrows, [0,0,1,0,1,0,1,0,0,0,1,0,0,0,1,0]);

array_push(arrows, [0,0,1,0,1,0,1,0,1,0,1,0,1,0,1,0]);
array_push(arrows, [0,0,1,0,1,0,1,0,0,0,1,0,0,0,1,0]);
array_push(arrows, [0,0,1,0,1,0,1,0,1,0,1,0,0,0,1,0]);
array_push(arrows, [0,0,1,0,1,0,1,0,0,0,0,0,0,0,0,0]);

array_push(arrows, [1,0,0,0,0,0,0,0,0,0,1,0,0,0,1,0]);
array_push(arrows, [0,0,1,0,1,0,0,0,0,0,0,0,1,0,1,0]);
array_push(arrows, [1,0,1,0,1,0,1,0,0,0,1,0,1,0,1,0]);
array_push(arrows, [0,0,1,0,1,0,1,0,1,0,1,0,0,0,0,0]);

array_push(arrows, [1,0,0,0,0,0,0,0,0,0,1,0,0,0,1,0]);
array_push(arrows, [0,0,1,0,1,0,0,0,0,0,0,0,1,0,1,0]);
array_push(arrows, [1,0,1,0,1,0,1,0,0,0,1,0,0,0,1,0]);
event_inherited();
