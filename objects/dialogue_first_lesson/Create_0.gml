event_inherited();
audio_play_sound(classroom, 1, true);
scr_text("Greetings, little runts.", spr_mrchen_icon, 0);
scr_text("How was the break?", spr_mrchen_icon, 0);
scr_option("Great", "great");
scr_option("Terrible", "terrible");

function branches(branch){
	textbox_reset();
	switch(branch){
		
		case "great":
			continuation("dontcare");
	    break;

	    case "terrible":
			continuation("dontcare");
	    break;
		default:
		scr_text("Excuse me?");

	}
}
function continuation(branch){
	switch(branch){
		case "dontcare":
			scr_text("No, don't actually answer that.", spr_mrchen_icon, 0);
			scr_text("You think I really give a damn?", spr_mrchen_icon, 0);
			scr_text("First class in and I already wanna kill myself...", spr_mrchen_icon, 0);
			scr_text("Thankfully, we don't have much of an agenda today.", spr_mrchen_icon, 0);
			scr_text("I mean, I heard there was a new kid, but what does that have to do with me?", spr_mrchen_icon, 0);
			scr_text("So I'm just going to sit this one out.", spr_mrchen_icon, 0);
			scr_text("After all, I'm not the main act of the story today...", spr_mrchen_icon, 0);
		break;
		default:
		scr_text("Excuse me?");
	}
}