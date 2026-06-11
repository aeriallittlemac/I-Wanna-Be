event_inherited();

var rep_bar = change_reputation(25);
rep_bar.y_offset = -50;

obj_scribble.textbox_unnamed(
	"[sfx_heartbeat]You ask her if she knows what happened yesterday."
);

obj_scribble.textbox(
	"[sfx_stop]*face turns pale[play_music,important_decision_looping]",
	"Ashley", spr_ashley_portrait_default
);

obj_scribble.textbox(
	"[sfx_ashley_test_1]Y-yes!",
	"Ashley", spr_ashley_portrait_default
);

obj_scribble.textbox(
	"[sfx_ashley_test_2]We needed to practice for the m-mathalon, so I asked Sensei for some practice problems!",
	"Ashley", spr_ashley_portrait_default
);
