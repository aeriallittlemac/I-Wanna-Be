event_inherited();
audio_stop_all();
set_QTE_bgm(frenchies_theme);
audio_sound_gain(frenchies_theme, 0.5, 0);
obj_scribble.textbox_converse(
		@"*Wei and Mei converse about Grace's disappearance.
		", 
	"Wei", [
		[spr_wei_portrait_default, obj_portrait_mock_left_1], 
		[spr_mei_portrait_default, obj_portrait_mock_right_1]
	]
	);