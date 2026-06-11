event_inherited();

var rep_bar = change_reputation(25);
rep_bar.y_offset = -50;

obj_scribble.textbox_unnamed(
	"[sfx_heartbeat]What did Frenchie do."
);

obj_scribble.textbox(
	"[audio_stop_all][play_music,important_decision_looping]No...",
	"Ashley", spr_ashley_portrait_default
);

obj_scribble.textbox_unnamed(
	"[sfx_heartbeat]What did he do."
);

obj_scribble.textbox(
	"[sfx_ashley_angry_test_1]He [shake]killed[/shake] himself! Are you happy?!",
	"Ashley", spr_ashley_portrait_default
);

obj_scribble.textbox(
	"[sfx_ashley_angry_test_2]Why are you making me think about this?!",
	"Ashley", spr_ashley_portrait_default
);

obj_scribble.textbox(
	"...",
	"Ashley", spr_ashley_portrait_default
);
