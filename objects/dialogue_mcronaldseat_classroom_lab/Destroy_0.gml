event_inherited();
obj_mcronald.x = obj_mcronald.last_x;
obj_mcronald.y = obj_mcronald.last_y;
obj_mcronald.face = obj_mcronald.last_face;

if global.day == 2&& !global.storylines.Main_Classroom.Day_Two.talked_to.mcronald{
	global.storylines.Main_Classroom.Day_Two.talked_to.mcronald = true;
}
else if global.day == 3&& !global.storylines.Main_Classroom.Day_Two.talked_to.mcronald{
	if global.storylines.Grace.truth_or_dare_confession{
	
		if !global.storylines.Grace.deny_rumor{
			
		}
		
	}
	else{
		
		
	}
}
else if global.day == 4&& !global.storylines.Main_Classroom.Day_Four.talked_to.mcronald{
	global.storylines.Main_Classroom.Day_Four.talked_to.mcronald = true;

}