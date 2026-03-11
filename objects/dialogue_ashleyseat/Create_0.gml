event_inherited();
if global.day == 2 && global.game_time == "3:30 pm"{
	scr_text("*holds up the book to her face.", spr_ashley_icon, 0);
	scr_text("You notice that she’s reading the book upside down.");
}
else if global.day == 3 && global.game_time == "3:30 pm"{
	
	if global.storylines.Grace.truth_or_dare_confession{
	
		if !global.storylines.Grace.deny_rumor{
			scr_text("You notice Ashley has been writing on a bunch of individual sheets of composition paper.");
			scr_text("Ask her about it?");
			scr_option("Yes", "yes");
			scr_option("No", "no");
			function branches(branch){
				textbox_reset();
				switch(branch){
					case "yes":
						scr_text("You tap on her shoulder, catching her by surprise.");
						scr_text("*Freaks out", spr_ashley_icon, 0);
						scr_text("*Blood rushing to her face", spr_ashley_icon, 0);
						scr_text("*Gasping for air", spr_ashley_icon, 0);
						scr_text("W-what is this tight feeling in my chest?", spr_ashley_icon, 0);
						scr_text("It is anxiety.");
						scr_text("A-are these...", spr_ashley_icon, 0);
						scr_text("S-symptoms of b-biological arousal? What are the o-odds?", spr_ashley_icon, 0);
						scr_text("After 6 million years of evolution, it seems that I still retain my primal instincts of r-reproduction!", spr_ashley_icon, 0);
						scr_text("Wut");
						scr_text("A-am I...in l-love?", spr_ashley_icon, 0);
						scr_text("Ignoring her nonsensical mumbling, you ask about the papers.");
						scr_text("P-papers? I see, you are referring to m-marriage papers, yes?", spr_ashley_icon, 0);
						scr_text("It’s quite early, y-yet I s-suppose it is optimal in terms of tax benefits...", spr_ashley_icon, 0);
						scr_text("U-um! Please allow me to ponder this over, I-I will give you a satisfactory answer before tomorrow, 12 pm!", spr_ashley_icon, 0);
						scr_text("You leave her to her own devices.");
					
				    break;

					case "no":
						scr_text("You walk away.");
					break;
		
					}
				}
		}
		else{
			scr_text("...", spr_ashley_icon, 0);
			scr_text("*She feels bad for you, but doesn't know what to say.", spr_ashley_icon, 0);
		}
	
	}
	else{
		
		scr_text("You notice Ashley has been writing on a bunch of individual sheets of composition paper.");
		scr_text("Ask her about it?");
		scr_option("Yes", "yes");
		scr_option("No", "no");
		function branches(branch){
			textbox_reset();
			switch(branch){
				case "yes":
					scr_text("You tap on her shoulder, catching her by surprise.");
					scr_text("*Skips a concerning length in the opposite direction.", spr_ashley_icon, 0);
					scr_text("W-w-what do y-y-y-you want from me? I’m...uh...just...doing some stuff...", spr_ashley_icon, 0);
					scr_text("I don’t...know how to continue this exchange.");
					scr_text("You leave her to her own devices.");
					
			    break;

				case "no":
					scr_text("You walk away.");
				break;
		
			}
		}
		
		
	}
	global.storylines.Sewing_Club.Day_Three.talked_to.ashley = true;
}
else if global.day == 4 && global.game_time == "3:30 pm"{
	scr_text("Someone seems to not be here...")
	scr_text("You can still smell the faint fragrance of books...")
}