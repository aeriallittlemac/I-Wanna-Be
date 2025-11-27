event_inherited();
opt = 0;
scr_text("There's a number of drawers in the cabinet.");
scr_text("What do you wanna take?")

scr_option("zinc chip", "zinc");
scr_option("salt", "salt");
scr_option("cancel", "cancel");
function branches(branch){
	textbox_reset();
	switch(branch){
		case "zinc":
			opt = 1;
			scr_text("You stuff the chip into your pocket.");
		break;

	    case "salt":
			opt = 2;
			scr_text("You scoop a bit of it into your pocket.");
			
	    break;
		case "cancel":
			opt = 3;
			scr_text("You close the drawer.");
			
	    break;
		default:
		scr_text("Excuse me?");

	}
}