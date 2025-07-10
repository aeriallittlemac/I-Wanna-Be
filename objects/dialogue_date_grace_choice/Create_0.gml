yes = false;
event_inherited();
scr_text("You answer");
scr_option("Yes", "yes");
scr_option("No", "no");
function branches(branch){
	textbox_reset();
	switch(branch){
		
		case "yes":
			yes = true;
			scr_text("There you go, Grace.", spr_brooklyn_icon, 0);
			scr_text("There’s the boyfriend you’ve been looking for.", spr_brooklyn_icon, 0);
			
		break;
		case "no":
			scr_text("You politely explain that you don’t know her well enough.");
			scr_text("The room erupts into boos.");
			scr_text("W-what the hell is going on?", spr_grace_icon, 0);
			scr_text("Why do I feel like I just got insulted??", spr_grace_icon, 0);
			
		break;

	}
}