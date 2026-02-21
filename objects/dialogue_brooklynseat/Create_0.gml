event_inherited();
if global.day == 2 && global.game_time = "3:30 pm"{
scr_text("*looks up from her phone", spr_brooklyn_icon, 0);
scr_text("You’re the transfer, I presume?", spr_brooklyn_icon, 0);
scr_text("I suggest you go bother Mei.", spr_brooklyn_icon, 0);
scr_text("Black hair girl with two chinese-style buns, club president.", spr_brooklyn_icon, 0);
scr_text("I’m sure you’ll find her to be easier to deal with than me.", spr_brooklyn_icon, 0);
}
else if global.day == 3 && global.game_time == "3:30 pm"{
	if global.storylines.Grace.truth_or_dare_confession{
		if !global.storylines.Sewing_Club.Day_Three.talked_to.brooklyn{
			if !global.storylines.Grace.deny_rumor{
				scr_text("Hmm?", spr_grace_icon, 0);
				scr_text("What do you want, Grace’s boyfriend?", spr_grace_icon, 0);
				scr_text("*snickers", spr_grace_icon, 0);
			}
			else{
				scr_text("You’re cooked, buddy.", spr_brooklyn_icon, 0);
				scr_text("I don’t know what to tell you.", spr_brooklyn_icon, 0);
				scr_text("Grace’s parents are rich lawyers, you might actually end up in a juvenile cell.", spr_brooklyn_icon, 0);
				scr_text("Hm? A wax-sealed envelope in this day and age...");
				scr_text("interesting.", spr_brooklyn_icon, 0);
				scr_text("You don’t strike me as such an old fashioned guy.", spr_brooklyn_icon, 0);
				scr_text("I assume you’re just the messenger boy?", spr_brooklyn_icon, 0);
				scr_text("You nod your head.");
				scr_text("Well, I thank you for your service.", spr_brooklyn_icon, 0);
				scr_text("And your sacrifice for our amusement.", spr_brooklyn_icon, 0);
				scr_text("But hey, sometimes little jokes turn into criminal records, you know.", spr_brooklyn_icon, 0);
				scr_text("It happens.", spr_brooklyn_icon, 0);
				scr_text("Holy sh*t, this girl is evil.");
			}
		}
		else{
			scr_text("I pity the fool...", spr_brooklyn_icon, 0);
		}
	
	}
	else{
		if !global.storylines.Sewing_Club.Day_Three.talked_to.brooklyn{
			scr_text("Oh, kid. What do you want?", spr_brooklyn_icon, 0);
			scr_text("You hand her McRonald’s letter")
			scr_text("Now what? I’m kinda busy, kid.", spr_brooklyn_icon, 0);
			scr_text("Just hand it here and scram.", spr_brooklyn_icon, 0);
			global.storylines.Sewing_Club.Day_Three.letters_delievered.brooklyn = true;
			item_remove(global.item_list.mcronalds_envelope);
		}
		else{
			scr_text("What?", spr_brooklyn_icon, 0);
		}
		
	}
	global.storylines.Sewing_Club.Day_Three.talked_to.brooklyn = true;
}
else if global.day == 4 && global.game_time == "3:30 pm"{
	if global.storylines.Sewing_Club.Day_Three.letters_delievered.brooklyn{
		scr_text("*sad", spr_brooklyn_icon, 0);
	}
	else{
		scr_text("*about Grace", spr_brooklyn_icon, 0);
	}
	global.storylines.Sewing_Club.Day_Four.talked_to.brooklyn = true;
}