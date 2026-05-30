event_inherited();
frenchie_storms_in = false;
if global.day == 2 && global.game_time = "3:30 pm"{
	if !global.storylines.Sewing_Club.Day_Two.talked_to.grace{
		scr_text("*startled", spr_grace_portrait_default, 0);
		scr_text("You!", spr_grace_portrait_default, 0);
		scr_text("What-", spr_grace_portrait_default, 0);
		scr_text("*realizes that she doesn’t want to make a scene", spr_grace_portrait_default, 0);
		scr_text("*whisper voice", spr_grace_portrait_default, 0);
		scr_text("Hullo~", spr_grace_portrait_default, 0);
		scr_text("Are you fucking retarded?", spr_grace_portrait_default, 0);
		scr_text("Why the fuck are you here?", spr_grace_portrait_default, 0);
		scr_text("You tell her that you’re figuring that out yourself.");
		scr_text("Are you blind?", spr_grace_portrait_default, 0);
		scr_text("This is clearly a girls’ space, get out!", spr_grace_portrait_default, 0);
	}
	else{
		scr_text("Get out!", spr_grace_portrait_default, 0);
	}
}
else if global.day == 3 && global.game_time = "3:30 pm"{
	obj_player.face = LEFT;
	obj_player.sprite_index = obj_player.sprite[LEFT];
	obj_grace.face = RIGHT;
	obj_grace.sprite_index = obj_grace.sprite[RIGHT];
	
	if global.storylines.Grace.truth_or_dare_confession{
	
		if !global.storylines.Grace.deny_rumor{
			scr_text("I’m going to sue every last one of you...", spr_grace_portrait_default, 0);
			global.storylines.Sewing_Club.Day_Three.talked_to.grace = true;
		}
		else{
			scr_text("An empty seat...");
			scr_text("With a tint of a familiar (annoying) feminine smell...");
		}
	
	}
	else{
		scr_text("Mmmm, what’s up?", spr_grace_portrait_default, 0);
		debug_skip("sewing_club_second_day_debug", function() {
			scr_text("You hand her Frenchie’s letter.");
			scr_text("Oh, what? That’s crazy, haha!", spr_grace_portrait_default, 0);
			scr_text("Hey, look what I found!", spr_grace_portrait_default, 0);
			scr_text("Is that a love letter?", spr_mei_portrait_default, 0);
			scr_text("That’s hilarious.", spr_brooklyn_portrait_default, 1);
			scr_text("H-how so?", spr_ashley_portrait_default, 0);
			scr_text("Shut up and listen to this:", spr_grace_portrait_default, 0);
		
			scr_text("Dear Grace:...", spr_grace_portrait_default, 0);
		});
		
		global.storylines.Sewing_Club.Day_Three.talked_to.grace = true;
	}
}
else if global.day == 4 && global.game_time = "3:30 pm"{
	if global.storylines.Grace.truth_or_dare_confession{
		if !global.storylines.Grace.deny_rumor{
			scr_text("Yo!", spr_mei_portrait_default, 0);
		}
		else{
			scr_text("Yo!", spr_mei_portrait_default, 0);
		}
	}
	else{
		if !global.storylines.Sewing_Club.Day_Four.talked_to.grace{
			scr_text("That idiot’s dead...", spr_grace_portrait_default, 0);
			scr_text("Cremated on a random Tuesday.", spr_grace_portrait_default, 0);
			scr_text("That idiot’s dead...", spr_grace_portrait_default, 0);
			scr_text("It’s probably my fault, but it shouldn’t be that big of a deal either...", spr_grace_portrait_default, 0);
			scr_text("...right?", spr_grace_portrait_default, 0);
			scr_text("Come on, Mei. Say something.", spr_grace_portrait_default, 0);
			scr_text("...", spr_mei_portrait_default, 0);
			scr_text("I got a retard killed, and now my friend won’t talk to me.", spr_grace_portrait_default, 0);
			scr_text("Ha! Dunno if I should laugh or cry...", spr_grace_portrait_default, 0);
		}
		else{
			scr_text("Dunno if I should laugh or cry...", spr_grace_portrait_default, 0);
		}
	}
}
else{
	obj_grace.sprite_index = obj_grace.sprite[RIGHT];
	obj_grace.face = RIGHT;
	scr_text("Test dialogue", spr_grace_portrait_default, 0);
}
