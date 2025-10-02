NewQuest(global.quest_list.back_to_your_room, QUEST_TEXT_FONT_SIZE, c_yellow, QUEST_TEXT_TIMER);
audio_sound_gain(conversation_with_gambino,0,1600);
audio_play_sound(school_night, 1, 1);
audio_sound_gain(school_night,0,0);
audio_sound_gain(school_night,1,3200);
global.game_time = "8:00 pm";
AddInstanceToActivate(inst_BOBBYS_ROOM_DRUM_KIT);
//room_instance_add(bobbys_room, 108, 133, obj _drum_kit);