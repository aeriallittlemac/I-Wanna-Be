event_inherited();
scr_text("A lovely microwave snack. Or as one might call it...");
scr_text("A mee-crow-wah-veh snack.");
scr_option("eat", "eat");
scr_option("cancel", "cancel");

function branches(branch){
	textbox_reset();
	switch(branch){
		case "eat":
			scr_text("You're supposed to microwave this, bro.");
			scr_text("Are you ok?");
	    break;
		case "cancel":
			scr_text("You shove the rubber package deeper into your pocket.");
	    break;
		default:
		scr_text("Excuse me?");
	}
}


