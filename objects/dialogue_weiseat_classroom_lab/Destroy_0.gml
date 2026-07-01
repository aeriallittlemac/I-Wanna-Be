event_inherited();
obj_wei.x = obj_wei.last_x;
obj_wei.y = obj_wei.last_y;
obj_wei.face = obj_wei.last_face;
if global.day == 2&& !global.storylines.Main_Classroom.Day_Two.talked_to.wei{
	global.storylines.Main_Classroom.Day_Two.talked_to.wei = true;
}
else if global.day == 3&& !global.storylines.Main_Classroom.Day_Two.talked_to.wei{
	if global.storylines.Grace.truth_or_dare_confession{
	
		if !global.storylines.Grace.deny_rumor{
			
		}
		
	}
	else{
		
		
	}
}
else if global.day == 4&& !global.storylines.Main_Classroom.Day_Two.talked_to.wei{
	if global.storylines.Grace.truth_or_dare_confession{
		if !global.storylines.Grace.deny_rumor{
		
		}
		else{
			global.storylines.Main_Classroom.Day_Four.talked_to.wei = true;
		}
	}
	else{
		global.storylines.Main_Classroom.Day_Four.talked_to.wei = true;
	}

}