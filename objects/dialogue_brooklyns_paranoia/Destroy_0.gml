event_inherited();
audio_stop_all();
set_QTE_bgm(qte_bgm)
audio_sound_gain(qte_bgm, 0.4, 0);
NewQuest(global.quest_list.gambino_investigation, QUEST_TEXT_FONT_SIZE, c_yellow, QUEST_TEXT_TIMER)
global.storylines.Main_Classroom.Day_Four.talked_to.brooklyn = true;