//buffers one extra bar

//array_push(beatmap_kicks, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);
//array_push(beatmap_snares, [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]);

var inst = instance_create_depth(0,0,OBJ_MAX_DEPTH, obj_rhythm_game_arrows);
inst.win_cutscene_object = win_cutscene;
inst.lose_cutscene_object = lose_cutscene;
inst.tempo = tempo;
inst.arrows = arrows;
inst.target_score = target_score;
inst.QTE = QTE;
if QTE == false{
inst.max_misses = max_misses;
}
else{
inst.right_character_silhouette = right_character_silhouette;
}
inst.calculate_start_time();
instance_destroy(self);

