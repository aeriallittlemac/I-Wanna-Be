event_inherited();
frenchie_storms_in = false;
if global.day == 2 && global.game_time = "3:30 pm"{
	if inst_GRACESEAT.seat_empty{
		scr_text("An empty seat...");
		scr_text("With a tint of a familiar feminine smell...");
	}
	else{
		scr_text("*Whispers", spr_ashley_icon, 0);
		scr_text("W-Why is a boy playing with us?.", spr_ashley_icon, 0);
	}
}
else if global.day == 3 && global.game_time = "3:30 pm"{
	if global.storylines.Grace.truth_or_dare_confession{
	
		if !global.storylines.Grace.deny_rumor{
			scr_text("Hmmm.", spr_grace_icon, 0);
			scr_text("No, I’m not mad at you...", spr_grace_icon, 0);
			scr_text("I’m just thinking that I have terrible friends.", spr_grace_icon, 0);
			scr_text("But thinking about it...", spr_grace_icon, 0);
			scr_text("You might be the least terrible I got here.", spr_grace_icon, 0);
			global.storylines.Sewing_Club.Day_Three.talked_to.grace = true;
		}
		else{
			scr_text("An empty seat...");
			scr_text("With a tint of a familiar (annoying) feminine smell...");
		}
	
	}
	else{
		scr_text("Mmmm, what’s up?", spr_grace_fake_smile, 0);
		scr_text("You hand her Frenchie’s letter.");
		scr_text("Oh, what? That’s crazy, haha!", spr_grace_fake_smile, 0);
		scr_text("Hey, look what I found!", spr_grace_fake_smile, 0);
		scr_text("Is that a love letter?", spr_mei_icon, 0);
		scr_text("That’s hilarious.", spr_brooklyn_icon, 1);
		scr_text("H-how so?", spr_ashley_icon, 0);
		scr_text("Shut up and listen to this:", spr_grace_fake_smile, 0);
		
		scr_text("Dear Grace:...", spr_grace_icon, 0);
		
		global.storylines.Sewing_Club.Day_Three.talked_to.grace = true;
	}
}
else if global.day == 4 && global.game_time = "3:30 pm"{
	//if global.storylines.Grace.truth_or_dare_confession{
	//	if (!global.storylines.Grace.deny_rumor){
	//		frenchie_storms_in = true;
	//		scr_text("asdkasdasd", spr_grace_fake_smile, 0);
	//	}
	//	else{
	//		scr_text("An empty seat...");
	//		scr_text("With a tint of a familiar (bloody?) feminine smell...");
	//	}
	//}
	if global.storylines.Grace.truth_or_dare_confession{
		if !global.storylines.Grace.deny_rumor{
			scr_text("Yo!", spr_mei_icon, 0);
		}
		else{
			scr_text("Yo!", spr_mei_icon, 0);
		}
	}
	else{
		scr_text("Yo!", spr_mei_icon, 0);
	}
}
