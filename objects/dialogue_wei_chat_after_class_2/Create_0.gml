event_inherited();
instance_create_depth(0,0,0,obj_mei_lighting)
NewQuest(global.quest_list.sewing_club_quest, QUEST_TEXT_FONT_SIZE, c_yellow, QUEST_TEXT_TIMER);
audio_sound_gain(weis_theme, 0, 1000);
audio_play_sound(uncomfortable_ambience, 1, true);
audio_sound_gain(uncomfortable_ambience, 0, 0);
audio_sound_gain(uncomfortable_ambience, 0.25, 1000);
obj_scribble.textbox_unnamed(
	@"[slant]It's been hours, but...
	[/page]I haven't even talked to a single girl yet.
	[/page]I feel nauseous...
	[/page][scale,1.2]Need to talk to fine shyt. now...[scale,1.2][/slant]
	"
);