event_inherited();
if global.day == 2 && global.game_time = "3:30 pm"{
	if inst_GRACESEAT.seat_empty{
		scr_text("An empty seat...");
		scr_text("With a tint of a familiar feminine smell...");
	}
	else{
		inst_GRACESEAT.entityActivateArg = -1;	
		scr_text("*What?", spr_grace_icon,0);
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
		scr_text("How so?", spr_ashley_icon, 0);
		scr_text("Shut up and listen to this:", spr_grace_fake_smile, 0);
		scr_text("Dear Grace:...", spr_grace_icon, 0);
		scr_text("*Most horrendous poem known to man.", spr_grace_icon, 0);
		scr_text("...");
		scr_text("*facepalm", spr_brooklyn_icon, 0 );
		scr_text("What's so funny? I think it’s sweet!", spr_mei_icon, 0);
		scr_text("Really kid? That’s embarrassing.", spr_brooklyn_icon, 0);
		scr_text("I’m not sure, I don’t think that’s Bobby’s work.", spr_ashley_icon, 0);
		scr_text("What do you mean?", spr_grace_fake_smile, 0);
		scr_text("Since when have you heard the new kid say \'chuffed\'?", spr_ashley_icon, 0);
		scr_text("You're right, I don't think the new kid can even read, much less write this fancy euro nonsense", spr_brooklyn_icon, 0);
		scr_text("Woah, hold on a minute.", spr_grace_fake_smile, 0);
		scr_text("You're not telling me this letter is from that fucking f****t frenchie boy, right?", spr_grace_fake_smile, 0);
		scr_text("Ha! My god, that is just brilliant!", spr_brooklyn_icon, 1);
		scr_text("Has my reputation fallen so low, that even a euro like him thinks he got a chance?", spr_grace_fake_smile, 0);
		scr_text("I'm going to put this letter on blast, f*ck that guy!", spr_grace_fake_smile, 0);
		scr_text("takes a picture with her phone", spr_grace_fake_smile, 0);
		scr_text("Grace, don't be so mean, ha ha!", spr_mei_grin, 1);
		global.hottest_rumor = "Pictures of Frenchie's love letter to Grace is being passed around!"
		global.storylines.Sewing_Club.Day_Three.talked_to.grace = true;
	}
}
