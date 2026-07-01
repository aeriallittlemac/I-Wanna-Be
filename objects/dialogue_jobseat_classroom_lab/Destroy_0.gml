event_inherited();
obj_job.x = obj_job.last_x;
obj_job.y = obj_job.last_y;
obj_job.face = obj_job.last_face;

if global.day == 2&& !global.storylines.Main_Classroom.Day_Two.talked_to.job{
	global.storylines.Main_Classroom.Day_Two.talked_to.job = true;
}
else if global.day == 3&& !global.storylines.Main_Classroom.Day_Two.talked_to.job{
	if global.storylines.Grace.truth_or_dare_confession{
	
		if !global.storylines.Grace.deny_rumor{
			
		}
		
	}
	else{
		
		
	}
}
else if global.day == 4&& !global.storylines.Main_Classroom.Day_Two.talked_to.job{
	if global.storylines.Grace.truth_or_dare_confession{
		if !global.storylines.Grace.deny_rumor{
		
		}
		else{
			global.storylines.Main_Classroom.Day_Four.talked_to.job = true;
		}
	}
	else{
		global.storylines.Main_Classroom.Day_Four.talked_to.job = true;
	}

}