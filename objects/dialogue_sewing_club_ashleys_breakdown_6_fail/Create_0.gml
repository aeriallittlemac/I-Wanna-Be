event_inherited();

var rep_bar = change_reputation(-25);
rep_bar.y_offset = -50;

// Call later to avoid select key press propagation.
call_later(1, time_source_units_frames, function () {
	//if (qte_choice_idx == 0) {
	//	obj_scribble.textbox_unnamed(
	//		"You say " + qte_selected_text
	//	);
	//} else if (qte_choice_idx == 2) {
	//	obj_scribble.textbox_unnamed(
	//		"You ask " + qte_selected_text
	//	);
	//}
	
	obj_scribble.textbox_unnamed(
		qte_selected_text
	);

	obj_scribble.textbox(
		"I don't want to...",
		"Ashley", spr_ashley_portrait_default, sfx_noisy_speech
	);

	obj_scribble.textbox_unnamed(
		"We're getting nothing. Try again."
	);
});
