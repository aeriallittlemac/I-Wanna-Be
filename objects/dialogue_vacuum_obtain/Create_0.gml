
event_inherited();
scr_text("Vacuum cleaner.");
scr_text("Take it?");
scr_option("yes", "yes");
scr_option("no", "no");


function branches(branch){
	textbox_reset();
	switch(branch){
		case "yes":
			scr_text("You sneakily slip the vacuum into your pocket.");
		break;

	    case "no":
			scr_text("Good idea.");
			scr_text("You probably wouldn't want to carry that thing around?");
			scr_text("Probably doesn't even fit in your pocket.");
	    break;
		default:
		scr_text("Excuse me?");

	}
}