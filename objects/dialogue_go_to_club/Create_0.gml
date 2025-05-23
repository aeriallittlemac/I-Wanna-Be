event_inherited();
scr_text("It's club time.");
scr_text("Which club would you like to go to?");
scr_option("Sewing", "sewing");
scr_option("Ping pong", "sewing");
scr_option("Computer", "sewing");
function branches(branch){
	textbox_reset();
	switch(branch){
		
		case "sewing":
			scr_text("You have chosen go to the sewing club.");
			scr_text("Is that correct?");
			scr_option("Yes", "yes");
			scr_option("No", "no");
	    break;

	    case "yes":
			scr_text("Excellent choice.");
			scr_text("It is the only story route we have the budget for, after all.");
			scr_text("Now, go make your debut.");
	    break;
		
		case "no":
			scr_text("Then, which club is it?");
			scr_option("Sewing", "sewing");
			scr_option("Ping pong", "sewing");
			scr_option("Computer", "sewing");
		break;
		default:
		scr_text("Excuse me?");

	}
}