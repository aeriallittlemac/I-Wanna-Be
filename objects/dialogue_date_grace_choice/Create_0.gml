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
			scr_text("Hip hip hooray!", spr_mei_grin, 0);
			
		break;
		case "no":
			scr_text("You politely explain that you don’t know her well enough.");
			scr_text("Boooooooo.", spr_mei_icon, 1);
			scr_text("W-what the hell is going on?", spr_grace_icon, 0);
			scr_text("You just got rejected lmao", spr_brooklyn_icon, 1);
			scr_text("I can't see clearly right now cuz I lost my contacts.", spr_grace_icon, 0);
			scr_text("Who's this guy? He's gotta be gay, right?", spr_grace_icon, 0);
			scr_text("WWhy else would anyone in their right mind reject me?", spr_grace_icon, 0);
		break;

	}
}