event_inherited();
obj_brooklyn.x = obj_brooklyn.last_x;
obj_brooklyn.y = obj_brooklyn.last_y;
obj_brooklyn.face = obj_brooklyn.last_face;

if global.day == 2&& !global.storylines.Main_Classroom.Day_Two.talked_to.brooklyn{
	global.storylines.Main_Classroom.Day_Two.talked_to.brooklyn = true;
}
else if global.day == 3&& !global.storylines.Lab.Day_Three.talked_to.brooklyn{
	global.storylines.Lab.Day_Three.talked_to.brooklyn = true;
}
else if global.day == 4&& !global.storylines.Main_Classroom.Day_Two.talked_to.brooklyn{
	if global.storylines.Grace.truth_or_dare_confession{
		if !global.storylines.Grace.deny_rumor{
		
		}
		else{
			global.storylines.Main_Classroom.Day_Four.talked_to.brooklyn = true;
		}
	}
	else{
		global.storylines.Main_Classroom.Day_Four.talked_to.brooklyn = true;
	}

}
else if global.day == 5{
	if global.storylines.Lab.Day_Five.talked_to.brooklyn && global.storylines.Lab.Day_Five.talked_to.guy{
		audio_play_sound(sfx_pop, 1, false);
		obj_brooklyn.x = 225
		obj_brooklyn.y = 45
		obj_brooklyn.face = DOWN;
		obj_brooklyn.sprite_index = obj_brooklyn.sprite[DOWN]
		obj_guy.face = UP;
		obj_guy.sprite_index = obj_guy.sprite[UP]
		NewQuest(global.quest_list.go_fetch_bullets, QUEST_TEXT_FONT_SIZE, c_yellow, QUEST_TEXT_TIMER);
		
	}
	else{
		global.storylines.Lab.Day_Five.talked_to.brooklyn = true;
	}
}