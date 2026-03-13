event_inherited();
if global.storylines.Mechanics_Introduced.vacuum_debut{
	scr_text("Hmmm...");
	scr_text("Feels like this could come in handy.");
	scr_text("There really aren't open outlets around this place.");
}
else{
	scr_text("Use potato battery?");
	function branches(branch){
	textbox_reset();
	switch(branch){
		case "yes":
			scr_text("You stuff the battery inside the vacuum cleaner.");
			 global.storylines.Mechanics_Introduced.battery_in_vacuum = true;
		break;

	    case "no":
			scr_text("What the hell are you holding onto to?");
			scr_text("Well, hoarders will be hoarders.");
	    break;
		default:
		scr_text("Excuse me?");

	}
}
	
}


