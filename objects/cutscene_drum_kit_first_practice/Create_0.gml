//QuestCompleted(global.quest_list.back_to_your_room);
//if audio_is_playing(bobbys_room){
//	audio_sound_gain(bobbys_room,0,0)
//}


if global.storylines.Band.First_practice.run == 1{
	audio_sound_set_track_position(song_band_first_song_bass_1, 0);
	audio_play_sound(song_band_first_song_bass_1, 1, false)	
}
else if global.storylines.Band.First_practice.run == 2{
	audio_sound_set_track_position(song_band_first_song_bass_1, 0);
	audio_play_sound(song_band_first_song_bass_2, 1, false)
}
else if global.storylines.Band.First_practice.run == 3{
	audio_sound_set_track_position(song_band_first_song_bass_1, 0);
	audio_play_sound(song_band_first_song_bass_3, 1, false)
}
audio_sound_set_track_position(song_band_first_song, 0);
set_QTE_bgm(song_band_first_song);
alarm[0] = 0.1*room_speed;