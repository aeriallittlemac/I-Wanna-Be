event_inherited();
if global.storylines.Grace.truth_or_dare_confession{
	if !global.storylines.Grace.deny_rumor{
		scr_text("Hey, Bobby.", spr_mcronald_icon, 0);

	scr_text("Having fun? Ha ha.", spr_mcronald_icon, 0);

	scr_text("Listen. You seem to be enjoying yourself.", spr_mcronald_icon, 0);
	
	scr_text("Let me tell you something.", spr_mcronald_icon, 0);
	
	scr_text("I know you think that Grace is your friend, maybe even more.", spr_mcronald_icon, 0);
	
	scr_text("But either you’re lying, or you’re in deep.", spr_mcronald_icon, 0);
	
	scr_text("It’s the former, right? Tell me it’s the former.", spr_mcronald_icon, 0);
	
	scr_text("You");
	
	scr_option("Triple Down", "triple-down");
	
	scr_option("Affirm", "affirm");
	function branches(branch){
		textbox_reset();
		switch(branch){
		
			case "triple-down":
				scr_text("I see.", spr_mcronald_icon, 0);
				scr_text("That's really great, I'm happy for you Bobby!", spr_mcronald_icon, 0)
				scr_text("I genuinely am.", spr_mcronald_icon, 0);;
				scr_text("Well, hopefully that pans out well for you.", spr_mcronald_icon, 0);
				scr_text("You don’t follow.");
				scr_text("I’m wishing you well, Bobby Johns!", spr_mcronald_icon, 0);
				scr_text("All the best.", spr_mcronald_icon, 0);
				scr_text("You thanks him.");
				scr_text("All, shucks. Well, see you round the bend!", spr_mcronald_icon, 0);
				
			
			break;
			case "affirm":
				scr_text("Alright, good. I mean- you have to understand something.", spr_mcronald_icon, 0);

				scr_text("Don’t get too close to the girls.", spr_mcronald_icon, 0);

				scr_text("I mean, you can talk to them...", spr_mcronald_icon, 0);

				scr_text("But get too close to them, and they might bite, yeah...?", spr_mcronald_icon, 0);

				scr_text("You don’t follow.");

				scr_text("I guess what I’m trying to say is...", spr_mcronald_icon, 0);

				scr_text("I’ve seen this before. And I know how this ends.", spr_mcronald_icon, 0);

				scr_text("...Sure.");
			break;

		}
	}
		
	}
}
else{
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
