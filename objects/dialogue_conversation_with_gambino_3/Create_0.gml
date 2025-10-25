inquire = false;
event_inherited();
scr_text("I need you...", spr_gambino_icon, 0);
scr_text("To fetch a padlock from one of the lockers. Any will do.", spr_gambino_icon, 0);
scr_text("Talk to Drake, he should have something for you to assist in that.", spr_gambino_icon, 0);
scr_text("You’ll find him in the bathroom.", spr_gambino_icon, 0);
scr_text("You ponder for a second, then nod.");
scr_text("Great. That is all for today.", spr_gambino_icon, 0);
scr_text("Return the lock to Drake when you are finished.", spr_gambino_icon, 0);
scr_text("I’m sure the idiots can do the rest for you.", spr_gambino_icon, 0);
scr_text("I’ll have my men come get you when I need you again.", spr_gambino_icon, 0);
scr_text("In return for your time and trouble...", spr_gambino_icon, 0);
scr_text("I’ll have Jake drop an old toy in your room.", spr_gambino_icon, 0);
scr_text("It’s just something we found while cleaning the place up, consider it a gift.", spr_gambino_icon, 0);
scr_text("I’m sure you’ll find something to do  with it.", spr_gambino_icon, 0);
scr_text("You may leave now.", spr_gambino_icon, 0);
scr_text("You ask what the padlock is for.");
scr_text("And why would that be any of your business, verme?", spr_gambino_icon, 0);
scr_text("You may leave now.", spr_gambino_icon, 0);
scr_option("Inquire", "inquire");
scr_option("Back off", "back_off");
function branches(branch){
	textbox_reset();
	switch(branch){
		case "inquire":
		inquire = true;
			scr_text("Hmmm?", spr_gambino_icon, 0);
	    break;

		case "back_off":
			scr_text("Go. You are starting to upset me.", spr_gambino_icon, 0);
		break;
		
	}
}
