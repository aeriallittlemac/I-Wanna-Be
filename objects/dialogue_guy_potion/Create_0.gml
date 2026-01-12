event_inherited();
scr_text("Bobby! How are you doin’?", spr_guy_icon, 0);
take = false;
scr_text("Listen, let me tell you something.", spr_guy_icon, 0);
scr_text("I have this super powerful potion here.", spr_guy_icon, 0);
scr_text("It’s too strong for me, but I think you’ll know how to use it!", spr_guy_icon, 0);
scr_text("...what you being a completely blank slate that I’m incapable of reading the moral intentions of", spr_guy_icon, 0);
scr_text("What do you say?", spr_guy_icon, 0);
scr_option("Take", "take");
scr_option("Refuse", "refuse");

function branches(branch){
	textbox_reset();
	switch(branch){
		case "take":
		take = true;
			scr_text("Alright!", spr_guy_icon, 0);
			scr_text("Now that you have it, want to know what it does?", spr_guy_icon, 0);
			scr_text("It’s a love potion. One of my finest works!", spr_guy_icon, 0);
			scr_text("Took me a month to perfect. Just drinking a drop will make someone head over heels!", spr_guy_icon, 0);
			scr_text("...For like 20 minutes, tops.", spr_guy_icon, 0);
			scr_text("But no worries. You’ll use it properly, right?", spr_guy_icon, 0);
			scr_text("Remember, the dose is a drop.", spr_guy_icon, 0);
		break;

	    case "refuse":
			scr_text("Well, I guess that makes sense. I didn’t even say what it does.", spr_guy_icon, 0);
			scr_text("Just come back to this point in time exactly when you regret my offer.", spr_guy_icon, 0);
	    break;
		default:
		scr_text("Excuse me?");

	}
}