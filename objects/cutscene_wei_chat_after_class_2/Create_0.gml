NewQuest(global.quest_list.sewing_club_quest, QUEST_TEXT_FONT_SIZE, c_yellow, QUEST_TEXT_TIMER);
audio_sound_gain(weis_theme, 0, 1000);
set_QTE_bgm(morning)
audio_sound_gain(morning, 0, 0);
audio_sound_gain(morning, 0.25, 1000);
instance_destroy(self);