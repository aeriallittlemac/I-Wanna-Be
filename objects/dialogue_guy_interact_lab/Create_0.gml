event_inherited();
potato_battery = false;
global.text_box_top = true;
if !global.storylines.Lab.Day_Three.talked_to.guy{
	scr_text("Well, well, well.", spr_guy_icon, 0);
	scr_text("What do we have here?", spr_guy_icon, 0);
	scr_text("It’s not everyday that I get to meet someone IRL.", spr_guy_icon, 0);
	scr_text("Now those damn redditors can’t complain about me not touching grass, ha ha!", spr_guy_icon, 0);
	scr_text("What is this guy talking about?");
	scr_text("Talking about touching grass,  sweetheart!", spr_guy_icon, 0);
	scr_text("I'm Guy, by the way.", spr_guy_icon, 0);
	scr_text("I instruct this lab so Gambino lets me live here and do my experiments for free.", spr_guy_icon, 0);
	scr_text("You’re Bobby, right?", spr_guy_icon, 0);
	scr_text("You nod your head.");
	scr_text("Indeed you do.", spr_guy_icon, 0);
	scr_text("Anyways, there's this simple potato battery experiment.", spr_guy_icon, 0);
	scr_text("Literally the only thing we’re gonna do today.", spr_guy_icon, 0);
	scr_text("You've got a lab buddy?", spr_guy_icon, 0);
	scr_option("Yes", "yes");
	scr_option("No", "no");
	function branches(branch){
		textbox_reset();
			switch(branch){
				case "yes":
				if !global.storylines.Lab.Day_Three.talked_to.job{
					scr_text("Yeah, right.", spr_guy_icon, 0);
					scr_text("Stop lying and just find a someone to group with, loser. Haha!", spr_guy_icon, 0);
					scr_text("Come to me after you do that.", spr_guy_icon, 0);
				}
				else{
					scr_text("Awesome, now here's a list of stuff you gotta go find with your partner.", spr_guy_icon, 0);
					scr_text("You need one potato, a piece of copper, and a piece of zinc.", spr_guy_icon, 0);
					scr_text("Come back to me when you got the goods.", spr_guy_icon, 0);
					scr_text("Get on with it!", spr_guy_icon, 0);
				}
				break;
				case "no":
				if !global.storylines.Lab.Day_Three.talked_to.job{
					scr_text("Okay.", spr_guy_icon, 0);
					scr_text("Find somebody to group with, then.", spr_guy_icon, 0);
					scr_text("Come to me after you do that.", spr_guy_icon, 0);
				}
				else{
					scr_text("Just go partner with Job, he won't get in your way.", spr_guy_icon, 0);
					scr_text("He ain't gonna do crap either though, ha ha.", spr_guy_icon, 0);
					scr_text("Anyways, here's a list of stuff you gotta go find with your partner.", spr_guy_icon, 0);
					scr_text("You need one potato, a piece of copper, and a piece of zinc.", spr_guy_icon, 0);
					scr_text("Come back to me when you got the goods.", spr_guy_icon, 0);
					scr_text("Get on with it!", spr_guy_icon, 0);
				}
				break;
				default:
					scr_text("Hmm?");

				}
			}

	
}
else{
	if !global.storylines.Lab.Day_Three.talked_to.job{
		scr_text("Go get find your partner, what are you doing?", spr_guy_icon, 0);
	}	
	else if !global.storylines.Lab.Day_Three.potato_battery.potato && !global.storylines.Lab.Day_Three.potato_battery.zinc && !global.storylines.Lab.Day_Three.potato_battery.copper_coin{
		scr_text("Okay.", spr_guy_icon, 0);
		scr_text("You and your buddy need one potato, a piece of copper, and a piece of zinc.", spr_guy_icon, 0);
		scr_text("Come back to me when you got the goods.", spr_guy_icon, 0);
		scr_text("Get on with it!", spr_guy_icon, 0);
	}
	else if global.storylines.Lab.Day_Three.potato_battery.potato && global.storylines.Lab.Day_Three.potato_battery.zinc && global.storylines.Lab.Day_Three.potato_battery.copper_coin{
		potato_battery = true;
		scr_text("Okay, I see you have the materials.", spr_guy_icon, 0);
		scr_text("Here, have this LED light with wires.", spr_guy_icon, 0);
		scr_text("Don't you google this, alright?", spr_guy_icon, 0);
	}
	else{
		scr_text("You and your buddy need one potato, a piece of copper, and a piece of zinc.", spr_guy_icon, 0);
	}
}