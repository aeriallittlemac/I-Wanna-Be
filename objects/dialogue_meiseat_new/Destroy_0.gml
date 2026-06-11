event_inherited();

if global.day ==  2&& !global.storylines.Sewing_Club.Day_Two.talked_to.mei{
	global.storylines.Sewing_Club.Day_Two.talked_to.mei = true;
}
else if global.day == 3{
	if global.storylines.Grace.truth_or_dare_confession{
	
		if !global.storylines.Grace.deny_rumor{
			
		}
		
	}
	else{
		
		
	}
}
else if global.day == 4{
	global.storylines.Sewing_Club.Day_Four.talked_to.mei = true;
	if global.storylines.Grace.truth_or_dare_confession{
		
	}
	else{
		
	}

}