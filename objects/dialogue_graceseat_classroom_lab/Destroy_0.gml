event_inherited();
obj_grace.x = obj_grace.last_x;
obj_grace.y = obj_grace.last_y;
obj_grace.face = obj_grace.last_face;

if global.day == 2&& !global.storylines.Main_Classroom.Day_Two.talked_to.grace{
	global.storylines.Main_Classroom.Day_Two.talked_to.grace = true;
}
else if global.day == 3&& !global.storylines.Lab.Day_Three.talked_to.grace{
	global.storylines.Lab.Day_Three.talked_to.grace = true;
}
else if global.day == 4&& !global.storylines.Main_Classroom.Day_Two.talked_to.grace{
	if global.storylines.Grace.truth_or_dare_confession{
		if !global.storylines.Grace.deny_rumor{
		
		}
		else{
			global.storylines.Main_Classroom.Day_Four.talked_to.grace = true;
		}
	}
	else{
		global.storylines.Main_Classroom.Day_Four.talked_to.grace = true;
	}

}