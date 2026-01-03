if global.storylines.Grace.truth_or_dare_confession{
	if envelopes{
		npc_move_to_pos(obj_frenchie, 1, 0, obj_player.x, 0);
		npc_dialogue(obj_frenchie, )
		//make frenchie walk over to player
	}
	else{
		global.hottest_rumor = "Grace and the new kid fucked!"
		teleport_player(626,115, school_1F);
	}
}
else{
	//make frenchie walk over to player
}