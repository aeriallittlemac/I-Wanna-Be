event_inherited();
if (global.day == 2 && global.storylines.Main_Classroom.Day_Two.chen_obtained_papers) {
	if (global.storylines.Main_Classroom.Day_Two.papers_given.brooklyn) {
		scr_text("*That kid has got to be the most npc-looking person I have ever seen.", spr_brooklyn_portrait_default, 0);
		exit;
	}
	var papers_handed_out = global.storylines.Main_Classroom.Day_Two.papers_handed_out;
	if (papers_handed_out == 0) {
		scr_text("Ugh, thanks, I guess.", spr_brooklyn_portrait_default, 0);
	} else if (papers_handed_out <= 2) {
		scr_text("Like, thanks, or whatever.", spr_brooklyn_portrait_default, 0);
	} else if (papers_handed_out <= 5) {
		scr_text("Thanks, normie.", spr_brooklyn_portrait_default, 0);
	} else{
		scr_text("Took you long enough.", spr_brooklyn_portrait_default, 0);
	}
	scr_text("*That kid has got to be the most npc-looking person I have ever seen.", spr_brooklyn_portrait_default, 0);
	global.storylines.Main_Classroom.Day_Two.papers_given.brooklyn = true;
	global.storylines.Main_Classroom.Day_Two.papers_handed_out++;
} else{
	scr_text("Go to Mr. Chen.");
}
