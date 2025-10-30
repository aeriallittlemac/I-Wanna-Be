event_inherited();
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
	scr_text("You need one potato, a piece of copper, and a piece of zinc.", spr_guy_icon, 0);
	scr_text("Come back to me when you got the goods.", spr_guy_icon, 0);
	scr_text("Get on with it!", spr_guy_icon, 0);
}
else{
	if !global.storylines.Lab.Day_Three.potato_battery.potato && !global.storylines.Lab.Day_Three.potato_battery.zinc && !global.storylines.Lab.Day_Three.potato_battery.copper_coin{
		scr_text("You need one potato, a piece of copper, and a piece of zinc.", spr_guy_icon, 0);
		scr_text("Come back to me when you got the goods.", spr_guy_icon, 0);
		scr_text("Get on with it!", spr_guy_icon, 0);
	}
	else{
		scr_text("Okay, I see you have the materials.", spr_guy_icon, 0);
	}
}