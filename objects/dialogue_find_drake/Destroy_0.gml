item_acquired(global.item_list.padlock_key);
NewQuest(global.quest_list.get_padlock, QUEST_TEXT_FONT_SIZE, c_yellow, QUEST_TEXT_TIMER);
instance_create_depth(0,0,0,stealth_mission_locker);