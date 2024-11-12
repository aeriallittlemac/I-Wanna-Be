event_inherited();
scr_text("*swallows", spr_grace_icon, 0);
scr_text("OMG, this is like so good!", spr_grace_icon, 0);
scr_text("Like, what in the world did you put in this?", spr_grace_icon, 0);
scr_text("Is there any way I can repay you?", spr_grace_icon, 0);
scr_text("No! I mean, I don’t think that, like, counts...", spr_grace_icon, 0);
scr_text("You remind her that she just gave you her PB&J.");
scr_text("There must be something else I can do!", spr_grace_icon, 0);
scr_text("You tell her you want to learn more about");
scr_option("this school", "school_info");
scr_option("herself", "grace_info");
function branches(branch){
	textbox_reset();
	switch(branch){
		
		case "school_info":
			
			scr_text("Yeah, that’s fair.", spr_grace_icon, 0);
			
			scr_text("This is a very weird school, after all...", spr_grace_icon, 0);
			
			scr_text("We barely got over like, a dozen people here.", spr_grace_icon, 0);
			
			scr_text("There’s a lot of stuff that they’ll tell you about tomorrow...", spr_grace_icon, 0);
			
			scr_text("All I can say is, it’s a very small place, so friends are like, super important.", spr_grace_icon, 0);
			
			scr_text("So like, join clubs and talk to people, ok?", spr_grace_icon, 0);
			
			scr_text("I can totally help you with that part—— um, as thanks for the burger, of course...", spr_grace_icon, 0);
			
			
	    break;

		case "grace_info":
			scr_text("Huh? Wait, why?");
			
			scr_option("Friendship", "friendship");
			
			scr_option("Interest", "interest");
		break;
		
		case "friendship":
			scr_text("You tell her that you wanna be friends.");
			scr_text("Great! I-I wanna be friends too!", spr_grace_icon, 0);
			continuation("ask_away");
		break;
		case "interest":
			scr_text("You tell her that you're just interested.");
			scr_text("W-what the hell is that supposed to mean?", spr_grace_icon, 0);
			scr_text("Well, I guess a deal is a deal...", spr_grace_icon);
			continuation("ask_away");
		break;
		case "food":
			scr_text("You ask her what her favorite food is.");
			scr_text("Mmmm...burgers, probably?", spr_grace_icon, 0);
			scr_text("But only like, recently...", spr_grace_icon, 0);
			scr_text("W-well, what’s your favorite food, Bobby?", spr_grace_icon, 0);
			scr_text("You tell her that you like burgers too.");
			scr_text("Especially the ones with grilled cheese and lots of onions.");
			scr_text("Oh! I get what you mean!", spr_grace_icon, 0);
			scr_text("I sometimes put some onions in my grilled cheese too.", spr_grace_icon, 0);
			scr_text("It really gives it that extra sweetness!", spr_grace_icon, 0);
			scr_text("You joyfully discuss the intricacies of food with her for quite a while.");
			continuation("conversation_end");
		break;
		case "hobby":
			scr_text("You ask her what her favorite hobby is.");
			scr_text("Oh, I like to go shopping, listen to music, and...Oh, sewing!", spr_grace_icon, 0);
			scr_text("I was part of the sewing club last year.", spr_grace_icon, 0);
			scr_text("If you have any interest in that, like, check us out.", spr_grace_icon, 0);
			scr_text("If you don’t mind, I can, like, totally teach you the ropes!", spr_grace_icon, 0);
			scr_text("You tell her that you will definitely check it out.");
			scr_text("Woah, really? I didn’t think you were a sewing type of guy, that’s so cool!", spr_grace_icon, 0);
			scr_text("She then proceeds to ramble on about the techniques, the materials, and the stuff she’s been working on.");
			continuation("conversation_end");
		break;
	}
	
	
}

function continuation(branch){
	switch(branch){
		case "ask_away":
			scr_text("What do you wanna, like, ask?");
			scr_option("food", "food");
			scr_option("hobby", "hobby");
		break;
		case "conversation_end":
			scr_text("*realizes that sleep is a thing", spr_grace_icon, 0);
			scr_text("Oh, hey!", spr_grace_icon, 0);
			scr_text("It’s getting, like, late, isn’t it?", spr_grace_icon, 0);
			scr_text("I’m going to bed. See you tomorrow!", spr_grace_icon, 0);
		
		break;
		default:
		scr_text("Excuse me?");
	}
}