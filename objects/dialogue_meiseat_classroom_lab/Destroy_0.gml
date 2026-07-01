event_inherited();
obj_mei.x = obj_mei.last_x;
obj_mei.y = obj_mei.last_y;
obj_mei.face = obj_mei.last_face;

if global.day == 2&& !global.storylines.Main_Classroom.Day_Two.talked_to.mei{
	global.storylines.Main_Classroom.Day_Two.talked_to.mei = true;
}
else if global.day == 3&& !global.storylines.Main_Classroom.Day_Two.talked_to.mei{
	if global.storylines.Grace.truth_or_dare_confession{
	
		if !global.storylines.Grace.deny_rumor{
			
		}
		
	}
	else{
		
		
	}
}
else if global.day == 4&& !global.storylines.Main_Classroom.Day_Two.talked_to.mei{
	if global.storylines.Grace.truth_or_dare_confession{
		if !global.storylines.Grace.deny_rumor{
		
		}
		else{
			global.storylines.Main_Classroom.Day_Four.talked_to.mei = true;
		}
	}
	else{
		global.storylines.Main_Classroom.Day_Four.talked_to.mei = true;
	}

}