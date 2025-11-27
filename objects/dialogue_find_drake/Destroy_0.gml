if !global.storylines.Gambinos_Missions.Day_One.acquired_padlock{
	if obj_minimap.inv[0] == global.quest_list.find_drake{
		item_acquired(global.item_list.padlock_key);
		NewQuest(global.quest_list.get_padlock, QUEST_TEXT_FONT_SIZE, c_yellow, QUEST_TEXT_TIMER);
		instance_create_depth(0,0,0,stealth_mission_locker);
	}
}
else{
	if obj_minimap.inv[0] == global.quest_list.get_key_back_to_drake{
		item_remove(global.item_list.padlock);
		NewQuest(global.quest_list.back_to_your_room, QUEST_TEXT_FONT_SIZE, c_yellow, QUEST_TEXT_TIMER);
		instance_activate_object(inst_BOBBYS_ROOM_DRUM_KIT);
	}
}