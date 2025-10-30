potato = false
event_inherited();
if !global.storylines.Lab.Day_Three.potato_battery.potato{
	scr_text("A sack of potatoes.");
	scr_text("There just happens to be one potato left.");
	scr_text("Take it?");
	scr_option("yes", "yes");
	scr_option("no", "no");

}
else
{
	scr_text("No more potatoes.");
}

function branches(branch){
	textbox_reset();
	switch(branch){
		case "yes":
			scr_text("You stuff the potato into your pocket.");
			potato = true
		break;

	    case "no":
			scr_text("You stare at the potato.");
			scr_text("It stares back.");
	    break;
		default:
		scr_text("Excuse me?");

	}
}