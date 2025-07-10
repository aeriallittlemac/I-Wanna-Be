event_inherited();
scr_text("Oh hey Grace!", spr_mei_icon, 0);
scr_text("I lost my contacts, I’ve looked everywhere but I can’t find them.", spr_grace_icon, 1);
scr_text("Bobby, I dare you to help Grace find her contact glasses!", spr_mei_grin, 0);
scr_text("Three cheers for free child labor.", spr_brooklyn_icon, 0);

function branches(branch){
	textbox_reset();
	switch(branch){
		
		case "truth":
	    break;

	    case "dare":
			scr_text("Hmmm...what to do?", spr_mei_grin, 0);
			truth = false;
	    break;
		default:
		scr_text("Excuse me?");

	}
}