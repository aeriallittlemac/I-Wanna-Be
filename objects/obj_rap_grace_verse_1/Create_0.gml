event_inherited();
rapper_sprite = spr_grace_right;
opponent_sprite = spr_brooklyn_left;
tempo = 90;
start_bar = 2;
max_misses = 3;

stutter_cutscene = dialogue_brooklyns_turn_mock_ver;
array_push(lyrics, ["Oh ","Brook","","lyn, ","","ba","","by.\n","You're ","act","ing ","to","tal","ly ","cra",""]);

array_push(lyrics, ["-zy ","I'm ","just ","bring","ing ","the ","vibe ","\n","stop ","try","na ","mur","der ","the ","par","ty"]);

array_push(lyrics, ["","","Just ","let ","us ","girls ","","do \n","girl ","","things ","","you ","go ","a","way"]);

array_push(lyrics, ["","","Stick ","to ","your ","crap","py ","\nemo ","play","list ", "", "your ","","Ger","ald ","Way!"]);

instance_create_depth(0, 0, OBJ_MAX_DEPTH, beatmap_rap_battle_grace_first_verse);
