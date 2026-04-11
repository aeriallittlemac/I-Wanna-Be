event_inherited();
if global.day == 2 && global.game_time = "3:30 pm"{
scr_text("*looks up from her phone", spr_brooklyn_icon, 0);
scr_text("You’re the transfer, I presume?", spr_brooklyn_icon, 0);
scr_text("I suggest you go bother Mei.", spr_brooklyn_icon, 0);
scr_text("Black hair girl with two chinese-style buns, club president.", spr_brooklyn_icon, 0);
scr_text("I’m sure you’ll find her to be easier to deal with than me.", spr_brooklyn_icon, 0);
}
else if global.day == 3 && global.game_time == "3:30 pm"{
	obj_player.face = DOWN;
	obj_player.sprite_index = obj_player.sprite[DOWN];
	if global.storylines.Grace.truth_or_dare_confession{
		if !global.storylines.Sewing_Club.Day_Three.talked_to.brooklyn{
			if !global.storylines.Grace.deny_rumor{
				scr_text("Hmm?", spr_brooklyn_snicker, 0);
				scr_text("What do you want, Grace’s boyfriend?", spr_brooklyn_snicker, 0);
				scr_text("*snickers", spr_brooklyn_snicker_hand, 0);
			}
			else{
				scr_text("You’re in deep, buddy.", spr_brooklyn_icon, 0);
				scr_text("I don’t know what to tell you.", spr_brooklyn_icon, 0);
				scr_text("Grace’s parents are rich lawyers, you might actually end up in a juvenile cell.", spr_brooklyn_icon, 0);
				
			}
		}
		else{
			scr_text("I pity the fool...", spr_brooklyn_icon, 0);
		}
	
	}
	else{
		if !global.storylines.Sewing_Club.Day_Three.talked_to.brooklyn{
			scr_text("Oh, kid. What do you want?", spr_brooklyn_icon, 0);
			scr_text("Hand her the letter?");
				scr_option("Yes", "yes");
				scr_option("No", "no");
				function branches(branch){
					textbox_reset();
					switch(branch){
		
						case "yes":
							scr_text("Now what? I’m kinda busy, kid.", spr_brooklyn_icon, 0);
							scr_text("Just hand it here and scram.", spr_brooklyn_icon, 0);
			
						break;
						case "no":
							scr_text("And what are you looking at me for?", spr_brooklyn_icon, 0);
						break;
					}

					}
			
			global.storylines.Sewing_Club.Day_Three.letters_delievered.brooklyn = true;
			item_remove(global.item_list.mcronalds_envelope);
		}
		else{
			scr_text("What?", spr_brooklyn_icon, 0);
		}
		
	}
}
else if global.day == 4 && global.game_time == "3:30 pm"{
	if global.storylines.Sewing_Club.Day_Three.letters_delievered.brooklyn{
		scr_text("*sad", spr_brooklyn_icon, 0);
	}
	else{
		scr_text("*about Grace", spr_brooklyn_icon, 0);
	}
}
else{
	scr_text("Test dialogue", spr_brooklyn_glare, 0);
}