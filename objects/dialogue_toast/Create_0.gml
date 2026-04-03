event_inherited();

if !obj_toast.toast_taken{
	scr_text("Take a slice of toast?");
	scr_option("yes", "yes");
	scr_option("no", "no");

}
else
{
	scr_text("The rest of the slices don't really look edible.");
}

function branches(branch){
	textbox_reset();
	switch(branch){
		case "yes":
			scr_text("You find the least moldy slice...");
			scr_text("and stuff it into your pocket.");
			item_acquired(global.item_list.moldy_toast);
			obj_toast.toast_taken = true;
			global.storylines.Side_Quests.toast_obtained = true;
		break;

	    case "no":
			scr_text("You stare at the toast.");
			scr_text("You feel the mold staring back.");
	    break;
		default:
		scr_text("Excuse me?");

	}
}