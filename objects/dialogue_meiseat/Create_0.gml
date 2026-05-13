event_inherited();
if global.day == 2 && global.game_time == "3:30 pm"{
	scr_text("*walks in", spr_mei_silhouette, 0);
	scr_text("Oh, hey!", spr_mei_silhouette, 0);
	scr_text("You’re the new kid, right?", spr_mei_silhouette, 0);
	scr_text("Glad to have you here! What’s your name?", spr_mei_silhouette, 0);
}
else if global.day == 3 && global.game_time == "3:30 pm"{
	obj_player.face = UP;
	obj_player.sprite_index = obj_player.sprite[UP];
	obj_mei.face = DOWN;
	obj_mei.sprite_index = obj_mei.sprite[DOWN];
	if global.storylines.Grace.truth_or_dare_confession{
		if !global.storylines.Sewing_Club.Day_Three.talked_to.mei{
			if global.storylines.Grace.deny_rumor{
				scr_text("Oh geez. Where do I begin?", spr_mei_silhouette, 0);
				scr_text("I know that you must feel like Grace is acting, like, super unfair.", spr_mei_silhouette, 0);
				scr_text("But you gotta understand, she’s super protective of her public image ever since middle school.", spr_mei_silhouette, 0);
				scr_text("I reckon that something traumatic has happened to her before, but she never opens up about it.", spr_mei_silhouette, 0);
				scr_text("Despite all of this...I think she has a good heart.", spr_mei_silhouette, 0);
				scr_text("Once all of this calms down, could you make up with her?", spr_mei_silhouette, 0);
				scr_text("You’ll say sorry, and maybe she’ll say sorry...", spr_mei_silhouette, 0);
			}
			else{
				scr_text("Hey, Bobby! What's going on?", spr_mei_silhouette, 0);
				scr_text("You tell her that things have been interesting lately.",);
				scr_text("What do you mean?", spr_mei_silhouette, 0);
				scr_text("You mention the AI leaks.",);
				scr_text("Geez, Grace is gonna freak for sure once she finds out...", spr_mei_silhouette, 0);
				scr_text("I doubt it.", spr_brooklyn_silhouette, 0);
				scr_text("Huh?", spr_mei_silhouette, 0);
				scr_text("She might pretend to crash out first.", spr_brooklyn_silhouette, 0);
				scr_text("But she's too much of an attention whore not to love this.", spr_brooklyn_silhouette, 0);
				scr_text("Basking in the glory of her own notoriety...", spr_brooklyn_silhouette, 0);
				scr_text("That’s the kind of degenerate she is.", spr_brooklyn_silhouette, 0);
				scr_text("Really?", spr_mei_silhouette, 0);
				scr_text("Yeah.", spr_brooklyn_silhouette, 0);
				scr_text("The only way I can see her ever getting mad about people talking about her...is if a boy rejected her.", spr_brooklyn_silhouette, 0);
				scr_text("Or if her eating habits came out.", spr_brooklyn_silhouette, 0);
				scr_text("She's quite insecure about those two things.", spr_brooklyn_silhouette, 0);
			}
		}
		else{
			scr_text("What is going on?", spr_mei_silhouette, 0);
		}
	
	}
	else{
		if !global.storylines.Sewing_Club.Day_Three.talked_to.mei{
			scr_text("Hey, bobby!", spr_mei_silhouette, 0);
			scr_text("You wave hi");
			scr_text("Um...thought I should mention this, but...", spr_mei_silhouette, 0);
			scr_text("Ashley hasn’t really been around boys that often.", spr_mei_silhouette, 0);
			scr_text("She doesn’t even talk to us too much.", spr_mei_silhouette, 0);
			scr_text("This club is just the least appealing to the boys, so she uses it as a sort of ‘safe space.’", spr_mei_silhouette, 0);
			scr_text("Do you ever need breathing room like that?", spr_mei_silhouette, 0);
			scr_text("Life can get rough for anyone.", spr_mei_silhouette, 0);
			scr_text("Not to that level, but sure.");
			
		}
		else{
			scr_text("I hope you two are getting along.", spr_mei_silhouette, 0);
		}
		
	}
	
}
else if global.day == 3 && global.game_time == "3:30 pm"{
	if global.storylines.Grace.truth_or_dare_confession{
	if !global.storylines.Grace.deny_rumor{
		scr_text("Yo!", spr_mei_silhouette, 0);
	}
	else{
		scr_text("Yo!", spr_mei_silhouette, 0);
	}
	}else{
		scr_text("Yo!", spr_mei_silhouette, 0);
	}
	
}
else{

	scr_text("Test dialogue!", spr_mei_silhouette, 0);
}