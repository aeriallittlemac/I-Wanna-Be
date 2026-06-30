event_inherited();

if global.day == 2&& !global.storylines.Main_Classroom.Day_Two.talked_to.ashley{
	global.storylines.Main_Classroom.Day_Two.talked_to.ashley = true;
}
else if global.day == 3&& !global.storylines.Main_Classroom.Day_Two.talked_to.ashley{
	if global.storylines.Grace.truth_or_dare_confession{
	
		if !global.storylines.Grace.deny_rumor{
			
		}
		
	}
	else{
		
		
	}
}
else if global.day == 4&& !global.storylines.Main_Classroom.Day_Two.talked_to.ashley{
	if global.storylines.Grace.truth_or_dare_confession{
		if !global.storylines.Grace.deny_rumor{
		
		}
		else{
			global.storylines.Main_Classroom.Day_Four.talked_to.ashley = true;
		}
	}
	else{
		global.storylines.Main_Classroom.Day_Four.talked_to.ashley = true;
	}

}