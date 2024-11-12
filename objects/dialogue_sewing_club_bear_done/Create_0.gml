event_inherited();
scr_text("You show everyone your work.");
scr_text("That's not bad at all.", spr_mei_icon, 0);
scr_text("Yeah! The design is soooo cute!", spr_grace_icon, 0);
scr_text("You feel bad now, Brooklyn?", spr_grace_icon, 0);
scr_text("Yeah...", spr_brooklyn_icon, 1);
scr_text("Sorry, Bobby. I have to come clean.", spr_brooklyn_icon, 1);
scr_text("The \"sewing\" part of the club is pretty much a hoax.", spr_brooklyn_icon, 1);
scr_text("We mostly just yap around here.", spr_brooklyn_icon, 1);
scr_text("Sorry about testing you and stuff, I didn’t realize you were so serious about sewing.", spr_brooklyn_icon, 1);
scr_text("Well, that’s not entirely true.",spr_mei_icon,0);
scr_text("Grace does sew here every now and then, and she’s pretty much Arachne incarnate!.",spr_mei_icon,0);
scr_text("You could learn a lot from her.",spr_mei_icon,0);
scr_text("You’re taking it too far...", spr_grace_icon,0);
scr_text("Would you like to gift the bear?");
scr_option("Yes", "y");
scr_option("No", "n");
function branches(branch){
	textbox_reset();
	switch(branch){
		
		case "y":
			scr_text("Who would you like to give the bear to?");
			scr_option("Grace","grace");
			scr_option("Mei","mei");
			scr_option("Ashley","ashley");
			scr_option("Brooklyn","brooklyn");
	    break;

	    case "n":
			scr_text("You keep the bear to yourself, knowing that it will serve you well one day.");
	    break;
		case "grace":
			scr_text("You hand Grace the bear you just made.");
			scr_text("Woah, this is really neat - wait, are you giving this to me? Why???",spr_grace_icon,0);
			scr_text("You tell her that you think it reminds you of her.");
			scr_text("W-what is that supposed to mean? Um, I’m very happy though! Thank you!",spr_grace_icon,0);
	    break;
		case "mei":
			scr_text("You hand Mei the bear you just made.");
			scr_text("Oh, wow. I’m honored, but it's such a shame you’re not keeping it for yourself.",spr_mei_icon,0);
			scr_text("You tell her that you think it suits her better.");
			scr_text("Alright then, thanks for the gift!",spr_mei_icon,0);
			scr_text("You notice Grace seething in jealousy, but you decide to ignore her.");
	    break;
		case "ashley":
			scr_text("You hand Ashley the bear you just made.");
			scr_text("She freezes up, not knowing how to reply.");
			scr_text("You put the bear in her hands.");
			scr_text("Her face blushes ever so slightly.");
			scr_text("You notice Grace seething in jealousy, but you decide to ignore her.");
		break;
		case "brooklyn":
			scr_text("You hand Brooklyn the bear you just made.");
			scr_text("Just so you know, I have a boyfriend. But, if you insist... I will take it.");
			scr_text("D-don’t get the wrong idea! I just thought it would be rude to turn down a gift!");
			scr_text("You notice Grace seething in jealousy, but you decide to ignore her.");
		break;
		default:
		scr_text("Excuse me?");

	}
}
