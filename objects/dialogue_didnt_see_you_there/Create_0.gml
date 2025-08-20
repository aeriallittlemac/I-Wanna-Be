event_inherited();

QuestCompleted(global.quest_list.midnight_snack);
audio_sound_gain(school_night,0,0);
audio_play_sound(grace_debut_theme, 1, true);
global.bgm = grace_debut_theme;
scr_text("Hey...", spr_grace_demonic, 0);
scr_text("You didn’t see anything... ", spr_grace_demonic, 0);
scr_text("did you?", spr_grace_demonic, 0);