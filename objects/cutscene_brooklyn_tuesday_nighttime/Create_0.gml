global.night = true;
set_QTE_bgm(school_night);
audio_sound_gain(school_night, 0.8, 0);
NewQuest(global.quest_list.go_back_to_sleep, QUEST_TEXT_FONT_SIZE, c_yellow, QUEST_TEXT_TIMER)
AddInstanceToActivate(obj_grace_ghost); 
instance_destroy(self);