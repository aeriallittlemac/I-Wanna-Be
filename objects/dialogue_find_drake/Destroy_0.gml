if !global.storylines.Gambinos_Missions.Day_One.acquired_padlock{
	if !found_drake{
		item_acquired(global.item_list.padlock_key);
		NewQuest(global.quest_list.get_padlock, QUEST_TEXT_FONT_SIZE, c_yellow, QUEST_TEXT_TIMER);
		instance_create_depth(0,0,0,stealth_mission_locker);
		found_drake = true;
	}
}
else{
	if global.storylines.Gambinos_Missions.Day_One.acquired_padlock{
		item_remove(global.item_list.padlock);
		QuestCompleted(global.quest_list.get_padlock);
		NewQuest(global.quest_list.back_to_your_room, QUEST_TEXT_FONT_SIZE, c_yellow, QUEST_TEXT_TIMER);
		AddInstanceToActivate(inst_BOBBYS_ROOM_DRUM_KIT);
		AddInstanceToActivate(inst_WEI_DRUM_DEBUT);
		teleport_npc(obj_wei, school_2F, 582, 125, LEFT);
	}
}