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
			scr_text("Hey, Bobby.", spr_mei_icon, 0);
			scr_text("I think Grace sometimes says things she doesn't mean...", spr_mei_icon, 0);
			scr_text("She meant that, 100 percent.");
			scr_text("I mean, she's not really a bad person...", spr_mei_icon, 0);
			scr_text("She is.");
			scr_text("Anyways, I hope you can give her...", spr_mei_icon, 0);
			scr_text("...some grace...", spr_mei_icon, 0);
		}
		else{
			scr_text("Um...", spr_mei_icon, 0);
			scr_text("Are you ok?", spr_mei_icon, 0);
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