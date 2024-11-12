if filter_mode == "fade_out"{
	
	global.cutscene = true;
	if image_alpha <1{
	image_alpha += filter_speed;
	}
	else{
	filter_mode = "still"
	}
}
if filter_mode == "still"{
	
	if timer < filter_timer{
		if  !global.in_dialogue{
		timer += 1/24;
		}
	}
	else{
		global.night = !global.night;
		if(global.night){
			show_debug_message("night BGM");
			audio_pause_all();
			audio_play_sound(school_night, 1, true);
			//audio_sound_gain(school_night, 1,  3200);
		}
		else{
			audio_pause_all();
			audio_play_sound(bobbys_room, 1, true);
			//audio_sound_gain(school_night, 1,  3200);
		}
		filter_mode = "fade_in";
	}
}
else if filter_mode == "fade_in"{
	if image_alpha >0{
	image_alpha -= filter_speed;
	}
	else{
	filter_mode = "transparent"
	global.cutscene = false;
	timer = 0;
	if(global.day == 1 && global.night){
		NewDialogue(dialogue_wake_up);
		}
	else{
		global.player_sleeping = false;
	}
	if !global.night{
		if global.day == 2{
			NewQuest(global.quest_list.first_class, QUEST_TEXT_FONT_SIZE, c_yellow, QUEST_TEXT_TIMER)	
		}
		else{
		array_push(obj_minimap.inv, global.quest_list.first_class);
		}
	}
	}
}
