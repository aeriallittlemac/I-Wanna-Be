event_inherited();
audio_play_sound(classroom, 1, true);
scr_text("Greetings, my little crayon eaters.", spr_mrchen_icon, 0);
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
			scr_text("No, don't actually answer that, I honestly don’t really give a damn.", spr_mrchen_icon, 0);
			scr_text("First class in and I already wanna kill myself...", spr_mrchen_icon, 0);
			scr_text("Thankfully, we don't have much of an agenda today.", spr_mrchen_icon, 0);
			scr_text("Math class, whoopie-freaking-doo.", spr_mrchen_icon, 0);
			scr_text("Let’s get this over with, shall we?", spr_mrchen_icon, 0);
			scr_text("Wait, Mr. Chen!", spr_grace_fake_smile, 1);
			scr_text("What about welcoming the new kid?", spr_grace_fake_smile, 1);
			scr_text("Nah, I don’t care about no new kid.", spr_mrchen_icon, 0);
			scr_text("Matter of fact, I could give less of a damn about who attends this class.", spr_mrchen_icon, 0);
			scr_text("You idiots can go do whatever you want.", spr_mrchen_icon, 0);
			scr_text("Just don't go jerking each other off in the male’s bathroom, the odor is enough as it is.", spr_mrchen_icon, 0);
			scr_text("It reeks of puke and disappointment.", spr_mrchen_icon, 0);
			scr_text("Ew!", spr_grace_icon, 1);
			scr_text("My bad, guys.", spr_drake_icon, 0);
			scr_text("Dude, you gotta chillax on the booze.", spr_mcronald_icon, 1);
			scr_text("*Fake coughs + clear throat", spr_mrchen_icon, 0);
			scr_text("Anyways. You kids are retarded, which means that we are already well behind schedule.", spr_mrchen_icon, 0);
			scr_text("President’s words, not mine.", spr_mrchen_icon, 0);
			scr_text("What a prick.", spr_wei_angry, 1);
			scr_text("Is he wrong though?", spr_mcronald_icon, 0);
			scr_text("Speak for yourself, fool.", spr_brooklyn_icon, 1);
			scr_text("So, let’s start by reviewing the multiplication table, shall we?", spr_mrchen_icon, 0);
			scr_text("Wait, this is a high school, right?");
		break;
		default:
		scr_text("Excuse me?");
	}
}