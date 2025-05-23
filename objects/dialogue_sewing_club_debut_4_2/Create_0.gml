event_inherited();
scr_text("You look at Grace in confusion, as you can’t figure out why she would ask for your name.");
scr_text("Wow, he’s dumbfounded by how ugly you are!", spr_brooklyn_icon, 1);
scr_text("...", spr_grace_fake_smile, 0);
scr_option("apologize", "apologize");
scr_option("explain", "explain");
function branches(branch){
	textbox_reset();
	switch(branch){
		
		case "apologize":
			scr_text("You apologize for being rude and slow.");
			scr_text("You also introduce yourself.");
			scr_text("Everybody welcomes you.");
			scr_text("Except for Brooklyn.");
	    break;

	    case "explain":
			scr_text("You explain that you already met with Grace yesterday.");
			scr_text("Oh, h-hey! I just recognized you.", spr_grace_fake_smile, 0);
			scr_text("Bobby, right? It was uh, dark, yesterday, soooooo...", spr_grace_fake_smile, 0);
			scr_text("I didn't recognize your face!", spr_grace_fake_smile, 0);
			scr_text("Dark?", spr_brooklyn_icon, 1);
			scr_text("To think a daintly litle girl like you would be hanging outside your dorm at night...", spr_brooklyn_icon, 1);
			scr_text("What were you doing, Grace?", spr_brooklyn_icon, 1);
			scr_text("Something you didn't want us to know about?", spr_brooklyn_icon, 1);
			scr_text("I, ummmmm...", spr_grace_fake_smile, 0);
			scr_text("Anyways, moving on...", spr_brooklyn_icon, 1);
		break;
		
		default:
		scr_text("Excuse me?");

	}
}