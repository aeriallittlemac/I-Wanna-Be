event_inherited();
if (global.day == 2 && global.storylines.Main_Classroom.Day_Two.chen_obtained_papers) {
	if (global.storylines.Main_Classroom.Day_Two.papers_given.grace) {
		scr_text("*What is his problem?", spr_grace_icon, 0);
		scr_text("*This kid...", spr_grace_icon, 0);
		exit;
	}
	var papers_handed_out = global.storylines.Main_Classroom.Day_Two.papers_handed_out;
	if (papers_handed_out == 0) {
		scr_text("Thanks, Bobby.", spr_grace_fake_smile, 0);
		scr_text("But hey, don’t get any ideas!", spr_grace_fake_smile, 0);
	} else if (papers_handed_out <= 2) {
		scr_text("Well, thanks I guess, newbie.", spr_grace_fake_smile, 0);
	} else if (papers_handed_out <= 5) {
		scr_text("Thanks, newbie.", spr_grace_fake_smile, 0);
	} else{
		scr_text("Hey, what the hell was that? Why am I last?", spr_grace_fake_smile, 0);
		scr_text("You’ll regret this, Bobby Johns.", spr_grace_fake_smile, 0);
	}
	scr_text("*What is his problem?", spr_grace_icon, 0);
	scr_text("*This kid...", spr_grace_icon, 0);
	global.storylines.Main_Classroom.Day_Two.papers_given.grace = true;
	global.storylines.Main_Classroom.Day_Two.papers_handed_out++;
}
else{
	scr_text("Go to Mr. Chen.");
}
