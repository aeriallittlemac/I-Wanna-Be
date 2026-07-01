event_inherited();
obj_brooklyn.x = obj_brooklyn.last_x;
obj_brooklyn.y = obj_brooklyn.last_y;
obj_brooklyn.face = obj_brooklyn.last_face;

if global.day == 2&& !global.storylines.Main_Classroom.Day_Two.talked_to.brooklyn{
	global.storylines.Main_Classroom.Day_Two.talked_to.brooklyn = true;
}
else if global.day == 3&& !global.storylines.Main_Classroom.Day_Two.talked_to.brooklyn{
	if global.storylines.Grace.truth_or_dare_confession{
	
		if !global.storylines.Grace.deny_rumor{
			
		}
		
	}
	else{
		
		
	}
}
else if global.day == 4&& !global.storylines.Main_Classroom.Day_Two.talked_to.brooklyn{
	if global.storylines.Grace.truth_or_dare_confession{
		if !global.storylines.Grace.deny_rumor{
		
		}
		else{
			global.storylines.Main_Classroom.Day_Four.talked_to.brooklyn = true;
		}
	}
	else{
		global.storylines.Main_Classroom.Day_Four.talked_to.brooklyn = true;
	}

}