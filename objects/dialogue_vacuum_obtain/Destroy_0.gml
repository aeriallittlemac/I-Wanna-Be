item_acquired(global.item_list.vacuum);
QuestCompleted(global.quest_list.frenchie_ghost_pt_1);
AddInstanceToDestroy(inst_6AD53486)
destroy_if_in_scene(inst_6AD53486);
NewQuest(global.quest_list.frenchie_ghost_pt_2, QUEST_TEXT_FONT_SIZE, c_yellow, QUEST_TEXT_TIMER);
global.storylines.Lab.Day_Three.vacuum = true;