event_inherited();

if global.day == 2&& global.game_time = "3:30 pm" && !global.storylines.Sewing_Club.Day_Two.talked_to.ashley{
	global.storylines.Sewing_Club.Day_Two.talked_to.ashley = true;
}
else if global.day == 3 && global.game_time = "3:30 pm"{
	if global.storylines.Grace.truth_or_dare_confession{
	
		if !global.storylines.Grace.deny_rumor{
			
		}
		
	}
	else{
		
		
	}
}
else if global.day == 4 && global.game_time = "3:30 pm"{
	global.storylines.Sewing_Club.Day_Four.talked_to.ashley = true;
	cutscene_sewing_club_setup_day_4_brooklyns_route.brooklyn_walks_in();
}