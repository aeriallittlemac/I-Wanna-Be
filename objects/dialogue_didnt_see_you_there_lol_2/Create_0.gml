event_inherited();
scr_text("What are you laughing at...?", spr_grace_default_mouth, 0);
scr_text("You’re the new kid, aren’t you?", spr_grace_default_mouth, 0);
scr_text("Don’t you know that I could make your life at school a living hell?", spr_grace_fake_smile, 0);
scr_text("A single whisper of a rumor. That’s all that it takes... ", spr_grace_gloat_1, 0);
scr_text("You");
scr_option("Apologize", "apologize");
scr_option("Double down", "double_down");
double_down = false;
function branches(branch){
	textbox_reset();
	switch(branch){
		
		case "apologize":
			scr_text("You apologize and say that you were just caught off guard.");
			scr_text("That you didn’t mean to offend her.");
			scr_text("*sigh", spr_grace_fake_smile, 0);
			scr_text("Another clown has come to the circus to play...", spr_grace_fake_smile, 0);
			scr_text("How PUTRID.", spr_grace_frown, 0);
			scr_text("Never do this again.", spr_grace_frown, 0);
	    break;

	    case "double_down":
		double_down = true;
			scr_text("You tell her that she should relax because you won’t tell a soul.");
			scr_text("*sighs", spr_grace_default_mouth, 0);
			scr_text("To be seen in such an undignified manner in public...what a blunder.", spr_grace_default_mouth, 0);
			scr_text("You joke that she looks absolutely adorable stuffing her face.");
	    break;
		default:
		scr_text("Excuse me?");

	}
}