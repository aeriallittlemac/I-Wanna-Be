event_inherited();
redo = true;
scr_text("Horrified, Mei kicks you out of the sewing club. The girls will likely never talk to you again.");
scr_text("Would you like a redo?");
scr_option("Yes", "yes");
scr_option("No", "no");
function branches(branch){
	textbox_reset();
	switch(branch){
		
		case "yes":
			scr_text("Very well...");
	    break;

	    case "no":
			redo = false;
			scr_text("That's the spirit!");
			scr_text("Fuck them regrets!");
	    break;
		default:
		scr_text("Excuse me?");

	}
}
