event_inherited();
scr_text("Grace's handiwork.");
scr_text("Preserved forever via video game logic.");
scr_option("eat", "eat");
scr_option("discard", "discard");
scr_option("cancel", "cancel");

function branches(branch){
	textbox_reset();
	switch(branch){
		case "eat":
			scr_text("You just remembered that you're allergic to peanuts.");
	    break;
		case "discard":
			scr_text("You took the sandwich out of your pocket and threw it across the floor.");
			item_remove(global.item_list.PBnJ);
	    break;
		case "cancel":
			scr_text("You shove the sandwich deeper down your pocket.");
	    break;
		default:
		scr_text("Excuse me?");
	}
}


