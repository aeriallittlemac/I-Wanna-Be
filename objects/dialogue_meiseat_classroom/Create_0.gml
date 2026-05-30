event_inherited();
if (global.day == 2 && global.storylines.Main_Classroom.Day_Two.chen_obtained_papers) {
	if (global.storylines.Main_Classroom.Day_Two.papers_given.mei) {
		scr_text("*That k-drama I watched yesterday was awesome...", spr_mei_portrait_default, 0);
		exit;
	}
	var papers_handed_out = global.storylines.Main_Classroom.Day_Two.papers_handed_out;
	if (papers_handed_out == 0) {
		scr_text("Thanks, new kid!", spr_mei_portrait_default, 0);
	} else if (papers_handed_out <= 2) {
		scr_text("Thanks a bunch!", spr_mei_portrait_default, 0);
	} else if (papers_handed_out <= 5) {
		scr_text("Appreciate it, new kid!", spr_mei_portrait_default, 0);
	} else{
		scr_text("Don’t worry, new kid. I don’t mind waiting.", spr_mei_portrait_default, 0);
	}
	scr_text("*That k-drama I watched yesterday was awesome...", spr_mei_portrait_default, 0);
	global.storylines.Main_Classroom.Day_Two.papers_given.mei = true;
	global.storylines.Main_Classroom.Day_Two.papers_handed_out++;
} else{
	scr_text("Go to Mr. Chen.");
}
