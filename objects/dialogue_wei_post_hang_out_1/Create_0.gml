event_inherited();
audio_sound_gain(weis_theme, 0, 1000);

set_QTE_bgm(school_night);
audio_sound_gain(school_night, 0, 0);
audio_sound_gain(school_night, 0.8, 1000);
global.game_time = "8:00 pm"
global.night = true;
obj_scribble.textbox_unnamed(
	@"You're tired from all the crap this morning.
	[/page]And Wei's bible readings.
	[/page]You feel like sleeping."
);