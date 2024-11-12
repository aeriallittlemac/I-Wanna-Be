event_inherited();
scr_text("Seriously, it's disgusting.", spr_mcronald_icon, 0);
scr_text("It smells like San Francisco.", spr_mcronald_icon, 0);
scr_text("You want to keep the fuck away from that poison, I tell you...", spr_mcronald_icon, 0);
scr_text("But I’m guessing you didn’t bring your own lunch, huh?", spr_mcronald_icon, 0);
scr_text("You nod your head.");
scr_text("Well, you’re in luck, my friend!", spr_mcronald_icon, 0);
scr_text("Because I, McRonald the Magician, have a spare trick up my sleeve.", spr_mcronald_icon, 0);
scr_text("Here, draw a card from my hand.", spr_mcronald_icon, 0);
scr_text("Choose a card");
scr_option("1", "pick_card");
scr_option("2", "pick_card");
scr_option("3", "pick_card");
function branches(branch){
	textbox_reset();
	switch(branch){
		
		case "pick_card":
			scr_text("Great!", spr_mcronald_icon, 0);
			scr_text("Now, don’t tell me what card it is, and put it in your pocket!", spr_mcronald_icon, 0);
			scr_text("You reach your hand down your left pocket...");
			scr_text("...and you realize that you feel something inside that wasn’t previously there.")
			scr_text("It feels kind of hard...");
			scr_text("You pull it out.");
			scr_text("It is a hot pocket wrapped in plastic.");
			scr_text("Woah, a hot pocket in your pocket?", spr_mcronald_icon, 0);
			scr_text("What a miracle!", spr_mcronald_icon, 0);
			scr_text("Good for you, I guess you’re not starving today, hahaha!", spr_mcronald_icon, 0);
		break;

	}
}
function continuation(branch){
	switch(branch){
		case "dontcare":
			scr_text("No, don't actually answer that.", spr_mrchen_icon, 0);
			scr_text("You think I really give a damn?", spr_mrchen_icon, 0);
			scr_text("First class in and I already wanna kill myself...", spr_mrchen_icon, 0);
			scr_text("Thankfully, we don't have much of an agenda today.", spr_mrchen_icon, 0);
			scr_text("I mean, I heard there was a new kid, but what does that have to do with me?", spr_mrchen_icon, 0);
			scr_text("So I'm just going to sit this one out.", spr_mrchen_icon, 0);
			scr_text("After all, I'm not the main act of the story today...", spr_mrchen_icon, 0);
		break;
		default:
		scr_text("Excuse me?");
	}
}