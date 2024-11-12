event_inherited();
scr_text("You decide to...");
scr_option("Offer food", "offer");
scr_option("Walk away", "ignore");
function branches(branch){
	textbox_reset();
	switch(branch){
		
		case "offer":
			scr_text("No, it’s fine, I can, like...", spr_grace_icon, 0);
			scr_text("You insist on making a burger for her.");
			scr_text("If it's, like, alright with you...", spr_grace_icon, 0);
			scr_text("Check the fridge for ground beef.");
		break;
		case "ignore":
			scr_text("Come on, dude.")
			scr_text("Don't be a dick.")
			scr_option("Offer food", "offer");
			scr_option("Walk away", "ignore");
		break;

	}
}