if global.day == 2&& global.game_time = "3:30 pm" && !global.storylines.Sewing_Club.Day_Two.talked_to.ashley{
	game_NewCharacterIntro(obj_ashley);
	global.storylines.Sewing_Club.Day_Two.talked_to.ashley = true;
	
}
if global.day == 3 && global.game_time == "3:30 pm"{
	
	if global.storylines.Grace.truth_or_dare_confession{
	
		if !global.storylines.Grace.deny_rumor{
			//Any further interaction moves back and forth between her new position and where she was previously. Very obviously avoiding you.
		}
	}
	else{
		//Any further interaction moves back and forth between her new position and where she was previously. Very obviously avoiding you.
	}
}
audio_sound_gain(sewing_club_ashley, 0, 2000);
audio_sound_gain(global.bgm, original_bgm_gain, 2000);