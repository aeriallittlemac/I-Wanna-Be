event_inherited();
scr_text("Seriously, it's disgusting.", spr_mcronald_icon, 0);
scr_text("It smells like San Francisco.", spr_mcronald_icon, 0);
scr_text("You want to keep the fuck away from that poison, I tell you...", spr_mcronald_icon, 0);
scr_text("But I’m guessing you didn’t bring your own lunch, huh?", spr_mcronald_icon, 0);
scr_text("You nod your head.");
scr_text("Well, you’re in luck, my friend!", spr_mcronald_icon, 0);
scr_text("Because I, McRonald the Magician, got a sweet, deal for you.", spr_mcronald_icon, 0);
scr_text("If you can guess where the joker card is, I’ll give you my spare lunch.", spr_mcronald_icon, 0);
scr_text("Pick a card");
scr_option("1", "pick_card");
scr_option("2", "pick_card");
scr_option("3", "pick_card");
function branches(branch){
	textbox_reset();
	switch(branch){
		
		case "pick_card":
			scr_text("You pick the card and turn it over.");
			scr_text("It's an Ace of Spades.");
			scr_text("Too bad, ha ha!", spr_mcronald_icon, 0);
			scr_text("I'll give you one more chance tho.", spr_mcronald_icon, 0);
			scr_text("Try again?", spr_mcronald_icon, 0);
			scr_option("1", "pick_card_2");
			scr_option("2", "pick_card_2");
		break;
		case "pick_card_2":
			scr_text("You pick the card and turn it over.");
			scr_text("It's a K of Hearts.");
			scr_text("How come you miss twice, bro?", spr_mcronald_icon, 0);
			scr_text("Come on, get it right!", spr_mcronald_icon, 0);
			scr_option("1", "pick_card_3");
		break;
		case "pick_card_3":
			scr_text("You pick the card and turn it over.");
			scr_text("It's a 7 of Diamonds.");
			scr_text("Heheh boi.", spr_mcronald_icon, 0);
			scr_text("I never said the joker card was in my hands, did I?", spr_mcronald_icon, 0);
			scr_text("Now, where could it be?", spr_mcronald_icon, 0);
		break;

	}
}
function continuation(branch){
	switch(branch){
		default:
		scr_text("Excuse me?");
	}
}