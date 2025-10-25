event_inherited();
if global.day == 2{
	if !global.storylines.Main_Classroom.Day_Two.papers_given.drake{
	if global.storylines.Main_Classroom.Day_Two.papers_handed_out == 0{
		scr_text("Huh? Oh, 'ey. Thanks.", spr_drake_icon, 0);
	}
	else if global.storylines.Main_Classroom.Day_Two.papers_handed_out <= 2{
		scr_text("Hm? Heey, thanks, new kid.", spr_drake_icon, 0);
	}
	else if global.storylines.Main_Classroom.Day_Two.papers_handed_out <= 5{
		scr_text("Hu’? Oh, thanks a lot.", spr_drake_icon, 0);
	}
	else{
		scr_text("*Hic* Oh, hey. Thanks", spr_drake_icon, 0);
	}
	scr_text("*Dammit, I'm so wasted right now...", spr_drake_icon, 0);
	scr_text("*Guess I'll just wing it...", spr_drake_icon, 0);
	global.storylines.Main_Classroom.Day_Two.papers_given.drake = true;
	global.storylines.Main_Classroom.Day_Two.papers_handed_out++;
	}
	else{
		scr_text("*Dammit, I'm so wasted right now...", spr_drake_icon, 0);
		scr_text("*Guess I'll just wing it...", spr_drake_icon, 0);
	}
}
else{
	scr_text("Not day two.");
}
