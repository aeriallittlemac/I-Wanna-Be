event_inherited();

var rep_bar = change_reputation(-25);
rep_bar.y_offset = -50;

obj_scribble.textbox_unnamed(
	"[sfx_heartbeat]You ask if anything big happened yesterday."
);

obj_scribble.textbox(
	"[sfx_ashley_test_1]Y-yes!",
	"Ashley", spr_ashley_portrait_default
);

obj_scribble.textbox(
	"[sfx_ashley_test_2] The math team announcement. We're like one b-big t-team of warriors sent f-from another world to-",
	"Ashley", spr_ashley_portrait_default
);
