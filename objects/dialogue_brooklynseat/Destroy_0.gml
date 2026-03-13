if global.day == 3 && global.game_time = "3:30 pm"{
	if(!global.storylines.Grace.truth_or_dare_confession){
		instance_create_depth(0, 0, 0, beatmap_brooklyn_tuesday_sewing_club_no_rumor);
	}
	else if (beatmap){
		instance_create_depth(0, 0, 0, beatmap_brooklyn_tuesday_sewing_club_rumor_deny);
	}
}