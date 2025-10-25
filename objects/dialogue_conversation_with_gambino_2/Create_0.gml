event_inherited();
scr_text("*Clears throat", spr_gambino_icon, 0);
scr_text("Chiedo Susca. My apologies.", spr_gambino_icon, 0);
scr_text("I apologize for the outburst.", spr_gambino_icon, 0);
scr_text("Anyways, to fix this sorry place...", spr_gambino_icon, 0);
scr_text("I require your cooperation. Capiche?", spr_gambino_icon, 0);
scr_text("You nod your head.");
scr_text("Good. Now I need you to listen carefully.", spr_gambino_icon, 0);
scr_text("This is imperative to the success of our counsel.", spr_gambino_icon, 0);
scr_text("Do you understand?", spr_gambino_icon, 0);
scr_option("nod", "nod");
scr_option("shake head", "shake_head");
function branches(branch){
	textbox_reset();
	switch(branch){
		
		case "nod":
			scr_text("Good. As long as you understand how important this is.", spr_gambino_icon, 0);
	    break;

		case "shake_head":
			scr_text("I see.", spr_gambino_icon, 0);
			scr_text("Not everyone can see 5 steps   ahead. Just know this;", spr_gambino_icon, 0);
			scr_text("without what I am about to ask, the school would lose its only hope at survival.", spr_gambino_icon, 0);
			scr_text("What you do with information will determine our resolve, Bobby.", spr_gambino_icon, 0);
		break;
		
	}
}

