event_inherited();
envelopes = false;
if global.storylines.Grace.truth_or_dare_confession{
	scr_text("Alright, spill the tea man.", spr_mcronald_icon, 1);
	scr_text("What’s going on between you and Grace, buddy?", spr_mcronald_icon, 1);
	scr_text("You ask him to be more specific.");
	scr_text("I mean, I heard from the girls that you guys were dating, no?", spr_mcronald_icon, 1);
	scr_text("What’s going on between you and Grace, buddy?", spr_mcronald_icon, 1);
	scr_text("Ya serious? That’s my f*cking guy, haha!", spr_wei_icon, 0);
	scr_text("W-what?", spr_frenchie_icon, 1);
	
	scr_option("Deny", "deny");
	scr_option("Lie", "lie");
	
	function branches(branch){
		textbox_reset();
		switch(branch){
		
			case "deny":
				scr_text("You deny the allegations.");
				scr_text("S-so, what exactly is your relationship with her...?", spr_frenchie_icon, 1);
				scr_text("Are you two friends, or-", spr_frenchie_icon, 1);
				scr_text("Why do you care so much, man?", spr_wei_icon, 0);
				scr_text("What, is this conversation not Christian enough for you, Wei?", spr_mcronald_icon, 1);
				scr_text("Nah, it just bores me.",  spr_wei_icon, 0);
				scr_text("Tell them that you barely know her, and you just go to the same club as her.");
				scr_text("*sigh of relief", spr_frenchie_icon, 1);
				scr_text("Ok, gotcha.", spr_frenchie_icon, 1);
				scr_text("Um...", spr_frenchie_icon, 1);
				scr_text("If you go to the same club as her, could you give her this?,", spr_frenchie_icon, 1);
				envelopes = true;
				
			break;

		    case "lie":
				scr_text("You tell them that you already slept with her.");
				scr_text("Jesus Christ man, it’s your third day here!", spr_wei_icon, 1);
				scr_text("Chill out, you’re gonna catch something man!", spr_wei_icon, 1);
				scr_text("Guys, relax. He’s definitely capping.", spr_mcronald_icon, 1);
				scr_text("There's no way she let you hit, first day. Right, Bobby?", spr_mcronald_icon, 1);
				scr_text("*Awkward silence");
				scr_text("Right?", spr_mcronald_icon, 1);
				
		    break;
			default:
			

		}
	}
}
else{
	scr_text("So, Bobby.", spr_mcronald_icon, 1);
	scr_text("I did’t really see ya around all that much yesterday.", spr_mcronald_icon, 1);
	scr_text("How ya doing?", spr_mcronald_icon, 1);
	scr_text("You tell him that the school has been kind to me.");
	scr_text("That's awesome, haha.", spr_wei_icon, 0);
	scr_text("What club do ya go to, Bobby?", spr_mcronald_icon, 1);
	scr_text("You tell McRonald about your club.");
	scr_text("Woah, the sewing club?", spr_mcronald_icon, 1);
	scr_text("I see what you’re doing, haha!", spr_mcronald_icon, 1);
	scr_text("I don’t get it.", spr_wei_icon, 0);
	scr_text("What’s wrong with wantin' to learn how to sew?", spr_wei_icon, 0);
	scr_text("Right. That’s why.", spr_mcronald_icon, 1);
	scr_text("Is this a homophobic thing?", spr_wei_icon, 0);
	scr_text("If so I guess I'm on your side, McRonald.", spr_wei_icon, 0);
	scr_text("Bobby, drop out of the sewing club. For God's kingdom!", spr_wei_icon, 0);
	scr_text("Uh, no. That's not what I meant.", spr_mcronald_icon, 1);
	scr_text("Grace is in sewing, r-right?", spr_frenchie_icon, 1);
	scr_text("Have you t-talked to her?", spr_frenchie_icon, 1);
	scr_text("Why do you care?", spr_wei_icon, 0);
	scr_text("If so... could y-you give her this..?", spr_frenchie_icon, 1);
	envelopes = true;
}