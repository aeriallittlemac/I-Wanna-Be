event_inherited();
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
			AddInstanceToActivate(inst_62024E88);
//			AddInstanceToActivate(inst_1DF12FEC);
		}
		else{
			scr_text("The night is still young...");
			global.player_sleeping = false;
		}
	}
	else{
		instance_destroy(inst_60A96728);
		instance_destroy(inst_325AA326);
		scr_text("You try the bed.");
		scr_text("A sense of drowsiness comes over your entire body.");
		scr_text("You think you'll take a little nap...");
		obj_black_filter_bed.filter_mode = "fade_out";
		global.game_time = "12:30 am";
		//global.night = true;
		audio_sound_gain(bobbys_room, 0, 3200);
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