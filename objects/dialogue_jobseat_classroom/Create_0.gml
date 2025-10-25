event_inherited();
if global.day == 2{
	if !global.storylines.Main_Classroom.Day_Two.papers_given.job{
	if global.storylines.Main_Classroom.Day_Two.papers_handed_out == 0{
		scr_text("Hm? Thanks, new kid.", spr_job_icon, 0);
	}
	else if global.storylines.Main_Classroom.Day_Two.papers_handed_out <= 2{
		scr_text("Thanks, I guess.", spr_job_icon, 0);
	}
	else if global.storylines.Main_Classroom.Day_Two.papers_handed_out <= 5{
		scr_text("Thanks.", spr_job_icon, 0);
		scr_text("*This guy sure is slow...", spr_job_icon, 0);
	}
	else{
		scr_text("Thanks, or something.", spr_job_icon, 0);
		scr_text("*How the hell did I get my sheets last when I'm sitting in the first row?", spr_job_icon, 0);
	}
	scr_text("*God I hate math...", spr_job_icon, 0);
	global.storylines.Main_Classroom.Day_Two.papers_given.job = true;
	global.storylines.Main_Classroom.Day_Two.papers_handed_out++;
	}
	else{
		scr_text("With this worksheet, I now have a cover for my handheld console...", spr_job_icon, 0);
		scr_text("Let's see how my lovely island is doing. Heheh.", spr_job_icon, 0);
	}
}
else{
	scr_text("Not day two.");
}
