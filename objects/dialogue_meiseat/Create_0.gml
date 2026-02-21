event_inherited();
if global.day == 2 && global.game_time == "3:30 pm"{
	scr_text("Oh, hey!", spr_mei_grin, 0);
	scr_text("You’re the new kid, right?", spr_mei_grin, 0);
	scr_text("Glad to have you here! Your name?", spr_mei_grin, 0);
	scr_text("Bobby, gotcha.", spr_mei_grin, 0);
	scr_text("Well, you came in at a pretty terrible time lol.", spr_mei_grin, 0);
	scr_text("The sewing materials I ordered aren’t here yet, so we’ve been just hanging out the past minute.", spr_mei_grin, 0);
	scr_text("Do you want to go to another club instead?", spr_mei_grin, 0);
	scr_text("I can walk you over!", spr_mei_grin, 0);
}
else if global.day == 3 && global.game_time == "3:30 pm"{
	if global.storylines.Grace.truth_or_dare_confession{
	
		if !global.storylines.Grace.deny_rumor{
			scr_text("Oh geez. Where do I begin?", spr_mei_icon, 0);
			scr_text("I know that you must feel like Grace is acting, like, super unfair.", spr_mei_icon, 0);
			scr_text("But you gotta understand, she’s super protective of her public image ever since middle school.", spr_mei_icon, 0);
			scr_text("I reckon that something traumatic has happened to her before, but she never opens up about it.", spr_mei_icon, 0);
			scr_text("Despite all of this...I think she has a good heart.", spr_mei_icon, 0);
			scr_text("Once all of this calms down, could you make up with her?", spr_mei_icon, 0);
			scr_text("You’ll say sorry, and maybe she’ll say sorry...", spr_mei_icon, 0);
		}
		else{
			scr_text("Hey new kid!", spr_mei_icon, 0);
			scr_text("I didn’t get the chance to talk to you in detail during lab...", spr_mei_icon, 0);
			scr_text("Hey new kid!", spr_mei_icon, 0);
			scr_text("But are you ok with all this?", spr_mei_icon, 0);
			scr_text("I’m worried that Brooklyn is taking it too far with the joke...", spr_mei_icon, 0);
			scr_text("You ask her why she didn’t try to stop her then.");
			scr_text("I-i...", spr_mei_icon, 0);
			scr_text("You ask her why she didn’t try to stop her then.");
			scr_text("Just stop it. You’re in this with me, Mei.", spr_brooklyn_snicker_hand, 0);
			scr_text("The newbie can handle a bit of teasing, he’s a big boy.", spr_brooklyn_snicker_hand, 0);
			scr_text("Ain’t I right?", spr_brooklyn_snicker_hand, 0);
		}
	
	}
	else{
		if !global.storylines.Sewing_Club.Day_Three.talked_to.mei{
			scr_text("Hey new kid!", spr_mei_icon, 0);
			scr_text("You’ve met Wei, right?", spr_mei_icon, 0);
			scr_text("You nod.");
			scr_text("Great! I hope you two are getting along.", spr_mei_icon, 0);
			
		}
		else{
			scr_text("I hope you two are getting along.", spr_mei_icon, 0);
		}
		
	}
	global.storylines.Sewing_Club.Day_Three.talked_to.mei = true;
}
else if global.day == 3 && global.game_time == "3:30 pm"{
	if global.storylines.Grace.truth_or_dare_confession{
	if !global.storylines.Grace.deny_rumor{
		scr_text("Yo!", spr_mei_icon, 0);
	}
	else{
		scr_text("Yo!", spr_mei_icon, 0);
	}
	}else{
		scr_text("Yo!", spr_mei_icon, 0);
	}
	
}