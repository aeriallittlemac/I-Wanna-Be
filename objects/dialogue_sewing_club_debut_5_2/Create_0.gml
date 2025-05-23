event_inherited();
scr_text("You chicken out and compliment both of the girls in a shallow manner, avoiding the questions.");
scr_text("...", spr_grace_demonic, 0);
scr_text("Eugh. Why did you think that saying that I have \“volumptuous thighs\” would we a good idea?", spr_brooklyn_annoyed_1, 1);
scr_text("You");
scr_option("apologize", "apologize");
scr_option("double down", "d_down");
function branches(branch){
	textbox_reset();
	switch(branch){
		
		case "apologize":
			scr_text("You apologize for being insensitive.");
			scr_text("You promise that you will keep the rude comments in check.");
			scr_text("Get out of the club. You are not welcome here.", spr_brooklyn_glare, 1);
	    break;

	    case "d_down":
			scr_text("You explain that it was too thicc to ignore.");
			scr_text("But you hope that thiccness doesn't get in the way of becoming friends with her.");
			scr_text("Wh-", spr_brooklyn_annoyed_1, 1);
			scr_text("*Sigh", spr_brooklyn_icon, 1);
			scr_text("*Honest to a fault, huh... ", spr_brooklyn_icon, 1);
			scr_text("You remind me of someone I used to know....", spr_brooklyn_icon, 1);
			scr_text("Whatever, just watch your mouth.", spr_brooklyn_icon, 1);
			scr_text("Or I'll sue for sexual harassment next time.", spr_brooklyn_icon, 1);
		break;
		
		default:
		scr_text("Excuse me?");

	}
}