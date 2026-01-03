event_inherited();
if global.storylines.Grace.truth_or_dare_confession{
	if !global.storylines.Grace.deny_rumor{
		scr_text("Hey, Bobby.", spr_mcronald_icon, 0);

		scr_text("Having fun? Ha ha.", spr_mcronald_icon, 0);

		scr_text("A word to the wise, yeah?", spr_mcronald_icon, 0);

		scr_text("Don’t get too close to the girls.", spr_mcronald_icon, 0);

		scr_text("I mean, you can talk to them...", spr_mcronald_icon, 0);

		scr_text("But get too close to them, and they might bite, yeah...?", spr_mcronald_icon, 0);

		scr_text("You don’t follow.");

		scr_text("I guess what I’m trying to say is...", spr_mcronald_icon, 0);

		scr_text("I’ve seen this before. And I know how this ends.", spr_mcronald_icon, 0);

		scr_text("...Sure.");
	}
}
else{
	scr_text("Hey, Bobby.", spr_mcronald_icon, 0);

	scr_text("Having fun? Ha ha.", spr_mcronald_icon, 0);

	scr_text("Listen. You seem to be enjoying yourself.", spr_mcronald_icon, 0);
	
	scr_text("Let me tell you something.", spr_mcronald_icon, 0);
	
	scr_text("I know you think that Grace is your friend, maybe even more.", spr_mcronald_icon, 0);
	
	scr_text("But either you’re lying, or you’re in deep.", spr_mcronald_icon, 0);
	
	scr_text("It’s the former, right? Tell me it’s the former.", spr_mcronald_icon, 0);
	
	scr_option("Triple Down", "triple-down");
	
	scr_option("Affirm", "affirm");
	function branches(branch){
		textbox_reset();
		switch(branch){
		
			case "triple-down":
				scr_text("I see.", spr_mcronald_icon, 0);
				scr_text("Sure, alright.", spr_mcronald_icon, 0);
				scr_text("Listen, I tried to play soft-ball- to help Frenchie, or whatever.", spr_mcronald_icon, 0);
				scr_text("But I would recommend you watch yourself while you're with Grace.", spr_mcronald_icon, 0);
				scr_text("You don’t follow.");
				scr_text("I see.", spr_mcronald_icon, 0);
				scr_text("I see.", spr_mcronald_icon, 0);
				
			
			break;
			case "affirm":
				scr_text("You politely explain that you don’t know her well enough.");
				scr_text("Boooooooo.", spr_mei_icon, 1);
				scr_text("W-what the hell is going on?", spr_grace_icon, 0);
				scr_text("You just got rejected lmao", spr_brooklyn_icon, 1);
				scr_text("I can't see clearly right now cuz I lost my contacts.", spr_grace_icon, 0);
				scr_text("Who's this guy? He's gotta be gay, right?", spr_grace_fake_smile, 0);
				scr_text("WWhy else would anyone in their right mind reject me?", spr_grace_fake_smile, 0);
			break;

		}
	}

}
