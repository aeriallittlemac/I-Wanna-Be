//QuestCompleted(global.quest_list.back_to_your_room);
if audio_is_playing(bobbys_room){
	audio_sound_gain(bobbys_room,0,0)
}

set_QTE_bgm(song_band_first_song_drums);
alarm[0] = 0.1*room_speed;