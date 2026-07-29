event_inherited();
obj_scribble.textbox(
	@"!?
	[/page]Why is this guy here...?
	", 
	"Grace", spr_grace_portrait_angry_cute
);

obj_scribble.textbox_converse(
	@"W-wow, is a boy gonna join our club?
	[/page]This just like that harem manga I read...!
	", 
	"???", [
		[spr_grace_portrait_angry_cute, obj_portrait_mock_left_1], 
		[spr_ashley_portrait_default, obj_portrait_mock_right_1]
	]
);

obj_scribble.textbox_converse(
	@"Harem!? WIth this guy!?
	[/page]What the fuck are you talking about?
", 
	"Grace", [
		[spr_grace_portrait_angry, obj_portrait_mock_left_1], 
		[spr_ashley_portrait_default, obj_portrait_mock_right_1]
	]
);


obj_scribble.textbox_converse(
	@"*clears throat
	[/page]This is Bobby, he just transfered here and he told me that he wanted to check the club out.
	[/page]Please don't bully him...too much.
	", 
	"Mei", [
		[spr_grace_portrait_angry, obj_portrait_mock_left_1], 
		[spr_ashley_portrait_default, obj_portrait_mock_right_1], 
		[spr_mei_portrait_default, obj_portrait_mock_0]
	]
);

obj_scribble.textbox_unnamed(@"[audio_stop_all][instance_create_object,cutscene_brooklyn_spotlight]And there she stood...
[/page]The most perfect female that your eyes had ever laid upon.",
	,,obj_textbox_mock_empty, obj_bounds_mock_empty
	);