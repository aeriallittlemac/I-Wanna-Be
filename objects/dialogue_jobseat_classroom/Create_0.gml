event_inherited();
if global.day == 2{
	if global.storylines.Main_Classroom.Day_Two.papers_given.job{
	if global.storylines.Main_Classroom.Day_Two.papers_handed_out == 0{
		scr_text("Hm? Thanks, new kid.");
	}
	else if global.storylines.Main_Classroom.Day_Two.papers_handed_out <= 2{
		scr_text("Thanks, I guess.");
	}
	else if global.storylines.Main_Classroom.Day_Two.papers_handed_out <= 4{
		scr_text("Thanks.");
		scr_text("*This guy sure is slow...");
	}
	else{
		scr_text("Thanks, or something.");
		scr_text("*How the hell did I get my sheets last when I'm sitting in the first row?");
	}
	scr_text("*God I hate math...");
	global.storylines.Main_Classroom.Day_Two.papers_given.job = true;
	global.storylines.Main_Classroom.Day_Two.papers_handed_out++;
	}
	else{
		scr_text("With this worksheet, I now have a cover for my handheld console...");
		scr_text("Let's see how my lovely island is doing. Heheh.");
	}
}
else{
	scr_text("Not day two.");
}
