event_inherited();
obj_drake.x = obj_drake.last_x;
obj_drake.y = obj_drake.last_y;
obj_drake.face = obj_drake.last_face;

if global.day == 2&& !global.storylines.Main_Classroom.Day_Two.talked_to.drake{
	global.storylines.Main_Classroom.Day_Two.talked_to.drake = true;
}
else if global.day == 3&& !global.storylines.Main_Classroom.Day_Two.talked_to.drake{
	if global.storylines.Grace.truth_or_dare_confession{
	
		if !global.storylines.Grace.deny_rumor{
			
		}
		
	}
	else{
		
		
	}
}
else if global.day == 4&& !global.storylines.Main_Classroom.Day_Two.talked_to.drake{
	if global.storylines.Grace.truth_or_dare_confession{
		if !global.storylines.Grace.deny_rumor{
		
		}
		else{
			global.storylines.Main_Classroom.Day_Four.talked_to.drake = true;
		}
	}
	else{
		global.storylines.Main_Classroom.Day_Four.talked_to.drake = true;
	}

}