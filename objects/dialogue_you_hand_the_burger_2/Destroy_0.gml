npc_move_to_pos(obj_grace, 1, 0, 89, obj_grace.y);
teleport_npc(obj_grace, noone, 0, 0, DOWN);
audio_sound_gain(date_with_grace, 0, 1600);
audio_sound_gain(school_night, 1, 3200);
NewQuest(global.quest_list.go_back_to_sleep, QUEST_TEXT_FONT_SIZE, c_yellow, QUEST_TEXT_TIMER);
