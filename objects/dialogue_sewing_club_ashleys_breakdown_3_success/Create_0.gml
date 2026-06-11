event_inherited();

var rep_bar = change_reputation(25);
rep_bar.y_offset = -50;

obj_scribble.textbox_unnamed(
	"[sfx_heartbeat]What happened after that."
);

obj_scribble.textbox(
	"[audio_stop_all][play_music,important_decision_looping][sfx_ashley_angry_test_1][camera_shake]STOP IT!",
	"Ashley", spr_ashley_portrait_default
);

obj_scribble.textbox(
	"[sfx_ashley_angry_test_2][jitter]Nothing happened! Just...Stop asking me! Please![/jitter]",
	"Ashley", spr_ashley_portrait_default
);

obj_scribble.textbox(
	"I don't want to...",
	"Ashley", spr_ashley_portrait_default
);
