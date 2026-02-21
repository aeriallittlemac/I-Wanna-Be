if global.day == 2 && global.game_time == "3:30 pm"{
	instance_create_depth(0, 0, 0, beatmap_mei_first_meeting);
}
else if global.day == 3 && global.game_time == "3:30 pm"{
	if global.storylines.Grace.deny_rumor{
		instance_create_depth(0, 0, 0, beatmap_mei_tuesday_sewing_club_rumor_escalated);
	}
}