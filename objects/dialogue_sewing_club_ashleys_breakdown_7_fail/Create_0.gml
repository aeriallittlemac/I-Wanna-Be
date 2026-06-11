event_inherited();

var rep_bar = change_reputation(-25);
rep_bar.y_offset = -50;

call_later(1, time_source_units_frames, function () {
	obj_scribble.textbox_unnamed(
		qte_selected_text
	);

	obj_scribble.textbox(
		"Then why am I so...",
		"Ashley", spr_ashley_portrait_default
	);

	obj_scribble.textbox_unnamed(
		"We're getting nothing. Try again."
	);
});
