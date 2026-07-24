event_inherited();

if instance_exists(inst_60A96728){
	instance_destroy(inst_60A96728)
}

if global.day == 1{
	global.player_sleeping = true;
	if global.night{
		if obj_minimap.inv[0] == global.quest_list.go_back_to_sleep{
			QuestCompleted(global.quest_list.go_back_to_sleep);
			obj_scribble.textbox_unnamed(
				@"After making a new acquaintance, you go to sleep...
				"
			);
			obj_black_filter_bed.filter_mode = "fade_out";
			global.game_time = "10:00 am";
			audio_sound_gain(school_night, 0, 1600);
			global.day = 2;
			AddInstanceToActivate(inst_WELCOME_TABLE);
			AddInstanceToActivate(obj_bulletin_board_monday);
//			AddInstanceToActivate(inst_1DF12FEC);
		}
		else{
			obj_scribble.textbox_unnamed(
				@"The night is still young...
				"
			);
			global.player_sleeping = false;
		}
	}
	else{
		instance_destroy(inst_60A96728);
		instance_destroy(inst_325AA326);
		obj_scribble.textbox_unnamed(
				@"You try the bed.
				[/page]A sense of drowsiness comes over your entire body.
				[/page]You think you'll take a little nap...
				"
			);
			
		obj_black_filter_bed.filter_mode = "fade_out";
		global.game_time = "12:30 am";
		teleport_npc(obj_grace, school_3F, 396, 109, DOWN);
		AddInstanceToActivate(inst_3D85AE7E);
		AddInstanceToActivate(inst_10061687);
		audio_sound_gain(bobbys_room, 0, 3200);
	}
}
else if global.day == 2{
	if global.night{
		global.player_sleeping = true;
			obj_scribble.textbox_unnamed(
				@"Monday sleep message...
				"
			);
		obj_black_filter_bed.filter_mode = "fade_out";
		global.game_time = "10:00 am";
		global.day = 3;
	}
	else{
		obj_scribble.textbox_unnamed(
				@"Really?
				[/page]You're sleeping, now?
				[/page]Get a grip.
				"
			);
	}
}
else if global.night{
	global.player_sleeping = true;
	obj_scribble.textbox_unnamed(
		@"Generic sleep message...
		"
	);
	obj_black_filter_bed.filter_mode = "fade_out";
	global.game_time = "10:00 am";
	audio_sound_gain(school_night, 0, 1600);
	global.day++;
}
else {
	scr_text("You can only sleep at night.");
}
