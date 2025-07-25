event_inherited();
truth = true;
scr_text("F-four.", spr_ashley_icon, 0);
scr_text("That was Grace’s number!", spr_mei_grin, 1);
scr_text("You’re going first, newbie.", spr_brooklyn_icon, 0);
scr_text("Truth or dare?", spr_brooklyn_icon,0);
scr_option("Truth", "truth");
scr_option("Dare", "dare");

function branches(branch){
	textbox_reset();
	switch(branch){
		
		case "truth":
			scr_text("Hehehe, what shall we ask?", spr_mei_grin, 0);
	    break;

	    case "dare":
			scr_text("Hmmm...what to do?", spr_mei_grin, 0);
			truth = false;
	    break;
		default:
		scr_text("Excuse me?");

	}
}