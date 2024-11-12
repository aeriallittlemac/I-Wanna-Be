event_inherited();
scr_text("I'll take that as a yes, hehe.", spr_grace_icon, 0);
scr_text("Here, I made some sandwiches.", spr_grace_icon, 0);
scr_text("Want one?", spr_grace_icon,0);
scr_option("Yes", "sandwich-y");
scr_option("No", "sandwich-n");

function branches(branch){
	textbox_reset();
	switch(branch){
		
		case "sandwich-y":
			continuation("sandwich-y");
	    break;

	    case "sandwich-n":
			scr_text("She seems taken aback by your answer.");
			scr_text("Really? Why?", spr_grace_icon, 0);
			scr_text("You told her that you didn’t want to take something that she was going to eat.");
			scr_text("Don’t worry! I like, made spares! Can’t finish them all anyways...", spr_grace_icon, 0);
			continuation("sandwich-y");
	    break;
		default:
		scr_text("Excuse me?");

	}
}
	
function continuation(branch){
	switch(branch){
		case "sandwich-y":
			scr_text("You thank her for the meal.");
			scr_text("S-so formal! It’s just a sandwich!", spr_grace_icon, 0);
			scr_text("You wolf down the sandwich.");
			scr_text("It was a PB & J, which you thoroughly enjoyed.");
		break;
		scr_text("Excuse me?");
	}

}