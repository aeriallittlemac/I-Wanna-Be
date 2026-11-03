event_inherited();
obj_scribble.black_filter = false;
minimap_scale = room_get_viewport(room,0)[3]/RESOLUTION_W;
set_QTE_bgm(all_the_leaves_are_brown);
obj_scribble.textbox_unnamed(@"Thanks for playing our demo!
[/page]We promise we'll fix the bugs...probably...
[/page]Sincerely, Dragon Nuts Studio.
[/page]Press Z to start over.
",
	,,obj_textbox_mock_empty, obj_bounds_mock_empty
	);