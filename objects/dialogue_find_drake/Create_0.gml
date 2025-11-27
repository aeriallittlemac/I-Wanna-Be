event_inherited();
if !global.storylines.Gambinos_Missions.Day_One.acquired_padlock{
	if obj_minimap.inv[0] == global.quest_list.find_drake{
		QuestCompleted(global.quest_list.find_drake);
		scr_text("*Puking up literal rainbows" ,spr_drake_icon, 0);
		scr_text("Dis guy...how..." ,spr_jake_icon, 1);
		scr_text("On the first day of work..." ,spr_jake_icon, 1);
		scr_text("*Notices you" ,spr_drake_icon, 0);
		scr_text("Oh, sarry, new keed..." ,spr_drake_icon, 0);
		scr_text("Yer here about le lox, right?" ,spr_drake_icon, 0);
		scr_text("Whazzat?" ,spr_jake_icon, 1);
		scr_text("Quest from bozz." ,spr_drake_icon, 0);
		scr_text("Oh okay." ,spr_jake_icon, 1);
		scr_text("*Throws you a key" ,spr_drake_icon, 0);
		scr_text("This should work for one of the lockers upstairs" ,spr_drake_icon, 0);
		scr_text("I forgot which one, just try every locker." ,spr_drake_icon, 0);
		scr_text("I'll wait for you here, just..." ,spr_drake_icon, 0);
		scr_text("Blaaaaaaargh" ,spr_drake_icon, 0);
		scr_text("F*ck, man!" ,spr_jake_icon, 1);
	}
	else{
		scr_text("*Puking up literal rainbows" ,spr_drake_icon, 0);
	}
}
else{
	if obj_minimap.inv[0] == global.quest_list.get_key_back_to_drake{
		QuestCompleted(global.quest_list.get_key_back_to_drake);
		scr_text("Oh, heeeeeey." ,spr_drake_icon, 0);
		scr_text("Got da lohk?" ,spr_drake_icon, 0);
		scr_text("Gud shtuff, man." ,spr_drake_icon, 0);
		scr_text("I'll see you around." ,spr_drake_icon, 0);
		scr_text("Boss says you get to keep the key. Good for you man!" ,spr_jake_icon, 0);
	}
	else{
		scr_text("Gud shtuff, man." ,spr_drake_icon, 0);
	}
}