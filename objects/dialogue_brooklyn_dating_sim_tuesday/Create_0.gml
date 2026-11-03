event_inherited();
function im_begging_you() {
	obj_scribble.textbox_unnamed(@"[#c94242]You drop to your knees,
[/page]as if the very creation of the universe,
[/page]with its infinite beauty,
[/page]was realized and then subsequently [jitter]snatched-[/jitter]
[/page]-away from you in a fleeting second.
[/page]You also yell 'PLEASE' for an unbroken 10 seconds.
",
	,,obj_textbox_mock_pink, obj_bounds_mock_pink
	);
	
	obj_scribble.textbox(
	@"[#c94242]Your life is as valuable as a summer ant.
[/page][instance_create_object,cutscene_lose_life]You serve zero purpose.
[/page]What are you here for?
[/page]To worship me?
[/page][instance_create_object,cutscene_lose_life]Kill yourself.
	",
	"[#c94242]Brooklyn",spr_brooklyn_portrait_default,,,obj_textbox_mock_pink,obj_namebox_mock_pink,obj_bounds_mock_pink,obj_name_mock_pink
	);
	
	
}

function but_why() {
	 
	obj_scribble.textbox_unnamed(@"[#c94242]You sincerely ask why you're not allowed to talk to her.
	",
	,,obj_textbox_mock_pink, obj_bounds_mock_pink
	);
	
	obj_scribble.textbox(
	@"[#c94242]My Boyfriend, you know, the President?
[/page]He exists, and is actually enjoyable to be around.
[/page]Unlike the the likes of you.
	",
	"[#c94242]Brooklyn",spr_brooklyn_portrait_amused,,,obj_textbox_mock_pink,obj_namebox_mock_pink,obj_bounds_mock_pink,obj_name_mock_pink
	);
	
}

function pout() {
	obj_scribble.textbox_unnamed(
	@"[#c94242]You pout.
	[/page]That's it.
	",
	,,obj_textbox_mock_pink, obj_bounds_mock_pink
	);
	
	obj_scribble.textbox(
	@"[instance_create_object,cutscene_lose_life]That's disgusting.
[/page]I feel like throwing up in my mouth.
	",
	"[#c94242]Brooklyn",spr_brooklyn_portrait_default,,,obj_textbox_mock_pink,obj_namebox_mock_pink,obj_bounds_mock_pink,obj_name_mock_pink
	);
}


obj_scribble.textbox(
	@"[#c94242]I suppose,
[/page]that retention issues are bread and butter-
[/page]-for developmental disorders.
[/page]But I think even someone like you,
[/page]who probably sniffs glue for breakfast,
[/page][/slant]would remember when they're not wanted.[slant]
	",
	"[#c94242]Brooklyn",spr_brooklyn_portrait_default,,,obj_textbox_mock_pink,obj_namebox_mock_pink,obj_bounds_mock_pink,obj_name_mock_pink,,,[
		{text: "I'M BEGGING YOU", textbox: obj_choice_1_mock_2, bounds: obj_bounds_1_mock_2, cb: im_begging_you},
		{text: "BUT WHY?", textbox: obj_choice_2_mock_2, bounds: obj_bounds_2_mock_2, cb: but_why},
		{text: ":(", textbox: obj_choice_3_mock_2, bounds: obj_bounds_3_mock_2, cb: pout}
	]
);

