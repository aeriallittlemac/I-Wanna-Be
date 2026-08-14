event_inherited();
audio_sound_gain(school_night, 0, 1000);
set_QTE_bgm(gambinos_goons_theme);
audio_sound_gain(gambinos_goons_theme, 0, 0);
audio_sound_gain(gambinos_goons_theme, 1, 1000);
//not really his debut, he wakes you up earlier
QuestCompleted(global.quest_list.go_take_a_nap)
obj_scribble.textbox(
	@"Yo, newbie.
	", 
	"Jake", spr_jake_portrait_default
);