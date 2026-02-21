event_inherited();
if global.day == 2 && global.game_time == "3:30 pm"{
	scr_text("*holds up the book to her face.", spr_ashley_icon, 0);
	scr_text("You notice that she’s reading the book upside down.");
}
else if global.day == 3 && global.game_time == "3:30 pm"{
	
	if global.storylines.Grace.truth_or_dare_confession{
	
		if !global.storylines.Grace.deny_rumor{
			scr_text("You notice Ashley has been writing...");

			scr_text("on a bunch of individual sheets of composition paper");
		}
		else{
			scr_text("...", spr_ashley_icon, 0);
			scr_text("I'm sorry for your loss.", spr_ashley_icon, 0);
		}
	
	}
	else{
		if !global.storylines.Sewing_Club.Day_Three.talked_to.brooklyn{
			scr_text("Oh, y-you’re still here.", spr_ashley_icon, 0);

			scr_text("You thank Ashley for clearing your name.");

			scr_text("*shrugs", spr_ashley_icon, 0);

			scr_text("You notice Ashley has been writing on a bunch of individual sheets of composition paper.");
		}
		else{
			scr_text("You notice Ashley has been writing on a bunch of individual sheets of composition paper.");
		}
		
	}
	global.storylines.Sewing_Club.Day_Three.talked_to.ashley = true;
}
else if global.day == 4 && global.game_time == "3:30 pm"{
	scr_text("Someone seems to not be here...")
	scr_text("You can still smell the faint fragrance of books...")
}