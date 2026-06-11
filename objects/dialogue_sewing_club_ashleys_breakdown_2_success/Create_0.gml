event_inherited();

var rep_bar = change_reputation(25);
rep_bar.y_offset = -50;

obj_scribble.textbox_unnamed(
	"[sfx_heartbeat]Not that. What else happened yesterday?"
);

obj_scribble.textbox(
	"[audio_stop_all][play_music,important_decision_looping][sfx_ashley_angry_test_1][jitter]NOTHING![/jitter][slant]There wasn't...[/slant]",
	"Ashley", spr_ashley_portrait_default
);

obj_scribble.textbox(
	"[sfx_ashley_test_2]O-oh yeah! Frenchie-kun, he tried to ask out Grace-chan!",
	"Ashley", spr_ashley_portrait_default
);

obj_scribble.textbox(
	"[sfx_ashley_test_3]It was like one of my Manga-desu!",
	"Ashley", spr_ashley_portrait_default
);
