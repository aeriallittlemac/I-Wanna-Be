event_inherited();
obj_scribble.black_filter = false;
minimap_scale = room_get_viewport(room,0)[3]/RESOLUTION_W;
set_QTE_bgm(all_the_leaves_are_brown);
obj_scribble.textbox_unnamed(@"What is the meaning of life?
[/page][slant]What is there to live for?
[/page]What is there worth dying for?
[/page]Well, if you're playing this game, the answer should be obvious.
[/page]The purpose of life...[/slant]
[/page][audio_stop_all]Is to date digital high school girls.
",
	,,obj_textbox_mock_empty, obj_bounds_mock_empty
	);
//obj_scribble.textbox_unnamed(
//	@"It's your first day at the boarding school.
//	[/page]You hesitate whether or not you should go in...
//	[/page]but you remember that somebody is supposed to come pick you up.
//	"
//);

obj_scribble.textbox(
	"You must be Bobby Johns. Come on in!", 
	"Wei", spr_wei_portrait_default
);