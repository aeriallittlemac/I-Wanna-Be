event_inherited();
instance_create_depth(0,0,0,obj_mei_lighting)
NewQuest(global.quest_list.sewing_club_quest, QUEST_TEXT_FONT_SIZE, c_yellow, QUEST_TEXT_TIMER);
audio_play_sound(uncomfortable_ambience, 1, true);
audio_sound_gain(uncomfortable_ambience, 0, 0);
audio_sound_gain(uncomfortable_ambience, 0.25, 1000);
obj_scribble.textbox_unnamed(
	@"[slant]Why do I feel naucesous again, all of a sudden?
	[/page]Was it from crawling around in the vents?
	[/page]Or was it from making that stupid potato battery...
	[/page]while listening to that stupid Frenchie simp?
	[/page][scale,1.2]Guess it's time for me to go to club... [scale,1.2][/slant]
	"
);