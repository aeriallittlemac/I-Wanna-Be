event_inherited();
rapper_sprite = spr_grace_right;
opponent_sprite = spr_brooklyn_left;
stutter_cutscene = dialogue_grace_v2_turn_mock_ver;
rappers_turn = false;
tempo = 90;
start_bar = 2;
max_misses = 3;

array_push(lyrics, ["","","Qui","et ","","bitch.","","I \n","im","plore ","you ","to ","stop ","","talk","ing"]);

array_push(lyrics, ["","","You're ","too ","re","tar","ded ","to \n","know ","how ","to ","pro","per","ly ","mock ","me"]);

array_push(lyrics, ["Name ","","","","ten ","","books, ","I \n","dare ","","you. ","","You'd ","have ","bet","ter"]);

array_push(lyrics, ["luck ","","get","ting ","ten ","","looks ","\n","from ","your ","friends ","on ","Face","","book ",""]);

instance_create_depth(0,0, OBJ_MAX_DEPTH, beatmap_rap_battle_brooklyn_first_verse);
