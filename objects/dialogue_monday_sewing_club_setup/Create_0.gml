event_inherited();
obj_scribble.textbox(
	"Lorem ipsum dolor si", 
	"Brooklyn", spr_brooklyn_portrait_disgusted
);

obj_scribble.textbox_converse(
	"Lorem ipsum .", 
	"Frenchie", [
		[spr_frenchie_portrait_shocked, obj_portrait_mock_left_1], 
		[spr_brooklyn_portrait_disgusted, obj_portrait_mock_right_1]
	]
);

obj_scribble.textbox_converse(
	"opidatat non proident, sunt in est laborum.", 
	"Mei", [
		[spr_mei_portrait_default, obj_portrait_mock_left_1], 
		[spr_frenchie_portrait_shocked, obj_portrait_mock_right_1]
	]
);



obj_scribble.textbox_converse(
	" culpa qui officia deserunt mollit anim id est laborum.", 
	"McRonald", [
		[spr_mei_portrait_default, obj_portrait_mock_left_1], 
		[spr_frenchie_portrait_shocked, obj_portrait_mock_right_1], 
		[spr_mcronald_portrait_default, obj_portrait_mock_0]
	]
);

obj_scribble.textbox_unnamed(@"[audio_stop_all][instance_create_object,cutscene_brooklyn_spotlight]And there she stood...
[/page]The most perfect female that your eyes had ever laid upon.",
	,,obj_textbox_mock_empty, obj_bounds_mock_empty
	);