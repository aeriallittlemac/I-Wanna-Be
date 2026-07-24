event_inherited();
obj_scribble.textbox(
	"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	"Brooklyn", spr_brooklyn_portrait_disgusted
);

obj_scribble.textbox_converse(
	"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	"Frenchie", [
		[spr_frenchie_portrait_shocked, obj_portrait_mock_left_1], 
		[spr_brooklyn_portrait_disgusted, obj_portrait_mock_right_1]
	]
);

obj_scribble.textbox_converse(
	"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	"Mei", [
		[spr_mei_portrait_default, obj_portrait_mock_left_1], 
		[spr_frenchie_portrait_shocked, obj_portrait_mock_right_1]
	]
);



obj_scribble.textbox_converse(
	"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
	"McRonald", [
		[spr_mei_portrait_default, obj_portrait_mock_left_1], 
		[spr_frenchie_portrait_shocked, obj_portrait_mock_right_1], 
		[spr_mcronald_portrait_default, obj_portrait_mock_0]
	]
);

obj_scribble.textbox_unnamed(@"[instance_create_object,cutscene_brooklyn_spotlight]And there she stood...
[/page]The most perfect female that your eyes had ever laid upon.
")