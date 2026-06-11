event_inherited();

var rep_bar = change_reputation(-25);
rep_bar.y_offset = -50;

obj_scribble.textbox_unnamed(
	"[sfx_heartbeat]You ask if anything [slant]bigger[/slant] happened yesterday."
);

obj_scribble.textbox(
	"[sfx_ashley_test_1]O-oh yeah!",
	"Ashley", spr_ashley_portrait_default
);

obj_scribble.textbox(
	"[sfx_ashley_test_2]Sensei said I was going to be the c-captain of the t-team! L-like the heroic leader of this m-manga I read once-",
	"Ashley", spr_ashley_portrait_default
);
