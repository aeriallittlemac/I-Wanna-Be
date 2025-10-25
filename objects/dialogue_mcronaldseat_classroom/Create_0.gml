event_inherited();
if global.day == 2{
	if !global.storylines.Main_Classroom.Day_Two.papers_given.mcronald{
	if global.storylines.Main_Classroom.Day_Two.papers_handed_out == 0{
		scr_text("Hey-hey, thanks for the urgency, kid.", spr_mcronald_icon, 0);
		scr_text("I’ll pay you back later.", spr_mcronald_icon, 0);
	}
	else if global.storylines.Main_Classroom.Day_Two.papers_handed_out <= 2{
		scr_text("Alright, kid.", spr_mcronald_icon, 0);
		scr_text(" Make sure to keep up the pace.", spr_mcronald_icon, 0);
	}
	else if global.storylines.Main_Classroom.Day_Two.papers_handed_out <= 5{
		scr_text("Ok, thanks.", spr_mcronald_icon, 0);
		scr_text("But hurry it up next time.", spr_mcronald_icon, 0);
	}
	else{
		scr_text("What took you so long?", spr_mcronald_icon, 0);
		scr_text("Slow hands? I get it.", spr_mcronald_icon, 0);
		scr_text("Talk to me later, I’ll show you how it’s done.", spr_mcronald_icon, 0);
	}
	scr_text("*Now I'm just gonna copy off of some sucker...", spr_mcronald_icon, 0);
	global.storylines.Main_Classroom.Day_Two.papers_given.mcronald = true;
	global.storylines.Main_Classroom.Day_Two.papers_handed_out++;
	}
	else{
		scr_text("*Now I'm just gonna copy off of some sucker...", spr_mcronald_icon, 0);
	}
}
else{
	scr_text("Not day two.");
}
