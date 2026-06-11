event_inherited();

call_later(1, time_source_units_frames, function () {
	if (qte_choice_idx == -1) {
		var rep_bar = change_reputation(25);
		rep_bar.y_offset = -50;
	}

	obj_scribble.textbox_unnamed(
		"You have to."
	);

	obj_scribble.textbox(
		"No! I don't want to be involved in this. I didn't do anything!",
		"Ashley", spr_ashley_portrait_default
	);
});
