choice = 0;
event_inherited();
scr_text("Alright, I got a fun one for the gang!", spr_mei_laugh_small, 0);
scr_text("Who do you think is the hottest girl in the room?", spr_mei_laugh_small, 0);
scr_text("That might be a crueler idea than the one I had.", spr_brooklyn_icon, 0);
scr_text("I'm impressed, Mei.", spr_brooklyn_icon, 0)
scr_text("Oh shucks! Now answer the question, or we'll tell everyone that you're a homo!", spr_mei_icon, 0);
scr_option("Mei", "mei");
scr_option("Brooklyn", "brooklyn");
scr_option("Grace", "grace");
scr_option("Ashley", "ashley");

function branches(branch){
	textbox_reset();
	switch(branch){
		case "mei":
			scr_text("Hehehe, how flattering!", spr_mei_grin, 0);
			scr_text("We're gonna be great friends!", spr_mei_grin, 0);
	    break;

	    case "brooklyn":
			scr_text("See, Grace?", spr_brooklyn_icon, 0);
			scr_text("Even this NPC-looking boy thinks you ain't shit.", spr_brooklyn_icon, 0);
			scr_text("Well, it could be that he's just blind or retarded...", spr_grace_fake_smile, 1);
			scr_text("You just don't have any taste, Grace. That's why you're still single.", spr_brooklyn_icon, 0);
			scr_text("Yes, because I should aspire to be goth and sad just like you.", spr_grace_fake_smile, 1);
			scr_text("What did you say, normie girl?", spr_brooklyn_icon, 0);
			choice = 1;
	    break;
		case "grace":
			scr_text("OMG, that's basically a confession!", spr_mei_icon, 0);
			scr_text("Congratulations, Grace.", spr_brooklyn_icon, 0);
			scr_text("You don't have to bitch about not having a boyfriend every again!", spr_brooklyn_icon, 0);
			scr_text("Huh? What's going on?", spr_grace_icon, 0);
			choice = 2;
	    break;
		case "ashley":
			scr_text("??", spr_ashley_icon, 0);
			scr_text("Ah, he's into the glasses type huh.", spr_brooklyn_icon, 0);
			scr_text("What a bore.", spr_brooklyn_icon, 0);
			scr_text("Okay, let's get on with the next dice roll!", spr_mei_icon, 0);
			choice = 3;
	    break;
		default:
		scr_text("Excuse me?");

	}
}