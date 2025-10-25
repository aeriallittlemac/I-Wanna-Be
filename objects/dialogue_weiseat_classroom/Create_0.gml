event_inherited();
if global.day == 2{
	if !global.storylines.Main_Classroom.Day_Two.papers_given.wei{
	if global.storylines.Main_Classroom.Day_Two.papers_handed_out == 0{
		scr_text("Hey thanks!", spr_wei_icon, 0);
		scr_text("That’s my guy right there.", spr_wei_icon, 0);
	}
	else if global.storylines.Main_Classroom.Day_Two.papers_handed_out <= 2{
		scr_text("Alright, thanks Bobby!", spr_wei_icon, 0);
	}
	else if global.storylines.Main_Classroom.Day_Two.papers_handed_out <= 5{
		scr_text("Hey, thanks dude.", spr_wei_icon, 0);
	}
	else{
		scr_text("Yeah! Save the best for last, right?", spr_wei_icon, 0);
	}
	scr_text("*Now, let's take a look at this mahthemetics...", spr_wei_icon, 0);
	global.storylines.Main_Classroom.Day_Two.papers_given.wei = true;
	global.storylines.Main_Classroom.Day_Two.papers_handed_out++;
	}
	else{
		scr_text("*Now, let's take a look at this mahthemetics...", spr_wei_icon, 0);
	}
}
else{
	scr_text("Not day two.");
}
