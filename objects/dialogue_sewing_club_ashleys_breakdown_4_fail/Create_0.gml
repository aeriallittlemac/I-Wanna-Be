event_inherited();

var rep_bar = change_reputation(-25);
rep_bar.y_offset = -50;

obj_scribble.textbox_unnamed(
	"[sfx_heartbeat]What did [c_grey]Frenchie[/c] do?"
);

obj_scribble.textbox(
	"...",
	"Ashley", spr_ashley_portrait_default, sfx_noisy_speech
);
