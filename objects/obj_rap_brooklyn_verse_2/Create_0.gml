event_inherited();
rapper_sprite = spr_grace_right;
opponent_sprite = spr_brooklyn_left;
stutter_cutscene = dialogue_grace_final_mock;
rappers_turn = false;
tempo = 90;
start_bar = 2;
max_misses = 3;

array_push(lyrics, ["","Al","ways ","the ","cute","","-sy","chick \n","","Al","ways ","the ","ba","","by","girl"]);

array_push(lyrics, ["","What ","hap","pens ","when ","the ","mask ","falls, \n","what ","hap","pens ","to ","","your ","world? ",""]);

array_push(lyrics, ["You ","cope ","a","lone, ","","run","ning ","your \n","mouth ","","be","cause ","you ","fear ","","that"]);

array_push(lyrics, ["All ","","the ","glit","ter's ","gon","na ","run\n","","run ","dry ","","and ","that ","they ","gon "]);

array_push(lyrics, ["stop ","","tak","ing ","the ","bait ","","and\n","you'll ","ne","ver ","e","ver ","catch ","a ","guy "]);

array_push(lyrics, ["No ","ma","ter ","how ","","hard ","","you\n"," ","try ","...","it ","don't ","","mat","ter."]);

instance_create_depth(0,0, OBJ_MAX_DEPTH, beatmap_rap_battle_brooklyn_second_verse);
