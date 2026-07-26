event_inherited();

if instance_exists(obj_frenchie_ghost){
	if global.storylines.Lab.Day_Three.vacuum{
		scr_text("You have a tool at your disposal to get rid of him.");
		scr_text("Use it.");
		scr_text("W-whatchu looking at?", spr_frenchie_down_stare, 0);
		scr_text("I'm gonna do it to you any time, n-now!", spr_frenchie_down_stare, 0);
	}
	else{
		scr_text("I-I'm gonna ejaculate all over your bed, Bobby Johns!", spr_frenchie_down_stare, 0);
		scr_text("There must be a way to deal with this incel.");
		scr_text("Perhaps there's a device...");
	}
	
}
else{
if global.day == 1{
	global.player_sleeping = true;
	if global.night{
		if obj_minimap.inv[0] == global.quest_list.go_back_to_sleep{
			QuestCompleted(global.quest_list.go_back_to_sleep);
			scr_text("After making a new acquaintance, you go to sleep...");
			obj_black_filter_bed.filter_mode = "fade_out";
			global.game_time = "10:00 am";
			audio_sound_gain(school_night, 0, 1600);
			global.day = 2;
			AddInstanceToActivate(inst_WELCOME_TABLE);
			AddInstanceToActivate(obj_bulletin_board_monday);
//			AddInstanceToActivate(inst_1DF12FEC);
		}
		else{
			scr_text("The night is still young...");
			global.player_sleeping = false;
		}
	}
	else{
		scr_text("You try the bed.");
		scr_text("A sense of drowsiness comes over your entire body.");
		scr_text("You think you'll take a little nap...");
		obj_black_filter_bed.filter_mode = "fade_out";
		global.game_time = "12:30 am";
		//global.night = true;
		audio_sound_gain(bobbys_room, 0, 3200);
	}
}
else if global.day == 2{
	if global.night{
		global.player_sleeping = true;
		scr_text("After joining a new band, you go to sleep...");
		obj_black_filter_bed.filter_mode = "fade_out";
		global.game_time = "10:00 am";
		global.day = 3;
	}
	else{
		scr_text("Really?");
		scr_text("You're sleeping, now?");
		scr_text("Get a grip.");
	}
}
else if global.night{
	global.player_sleeping = true;
	scr_text("Have a good rest, you've deserved it.");
	obj_black_filter_bed.filter_mode = "fade_out";
	global.game_time = "10:00 am";
	audio_sound_gain(school_night, 0, 1600);
	global.day++;
}
else {
	scr_text("You can only sleep at night.");
}
}