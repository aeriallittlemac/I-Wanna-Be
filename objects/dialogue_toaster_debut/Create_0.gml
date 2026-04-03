event_inherited();
moldy_shit = false;

if !obj_toaster.debut{
scr_text("Why the hell do the hell do the girls get a kitchen, man!", spr_jake_icon, 1);
scr_text("Gives them a sense of belonging, I 'suppose", spr_wei_icon, 0);
scr_text("Cuz you know, women belong in the-", spr_wei_icon, 0);
scr_text("We ain't got sh*t over here!", spr_jake_icon, 1);
scr_text("Which is why I stole one of their toasters.", spr_jake_icon, 1);
scr_text("Pretty neat, huh?", spr_jake_icon, 1);
scr_text("You got any toast?", spr_wei_icon, 0);
scr_text("...", spr_jake_icon, 1);
AddInstanceToActivate(inst_TOAST);
}
else{
	if !global.storylines.Side_Quests.toast_obtained{
		scr_text("I could go for some toast right now.", spr_wei_icon, 0);
		show_debug_message("toast not obtained")
	}
	else{
		if !obj_toaster.side_quest_finished{
			scr_text("Holy sh*t is that-", spr_wei_icon, 0);
			scr_text("Let's f*cking goooooo!", spr_wei_icon, 0);
			scr_text("I will never forget ya so long as I live...", spr_wei_icon, 0);
			moldy_shit = true
		}
		else{
			scr_text("Let's f*cking goooooo!", spr_wei_icon, 0);
		}
	}
	
}