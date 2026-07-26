event_inherited();
function to_talk() {
	obj_scribble.textbox_unnamed("[#c94242]You say that you wanted to talk to her.",
	,,obj_textbox_mock_pink, obj_bounds_mock_pink
	);
	
	obj_scribble.textbox(
	@"[#c94242]Why?
	[/page]What would we even talk about?
	",
	"Brooklyn",spr_brooklyn_portrait_default,,,obj_textbox_mock_pink,obj_namebox_mock_pink,obj_bounds_mock_pink,obj_name_mock_pink
	);
	
	
}

function be_friends() {
	 
	obj_scribble.textbox_unnamed("[#c94242]You say that you wanted to be friends with her.",
	,,obj_textbox_mock_pink, obj_bounds_mock_pink
	);
	
	obj_scribble.textbox(
	@"[#c94242]...
[/page]Friends?
[/page]I'm already friends with people that don't suck.
[/page]Besides, only creeps talk like that nowadays.
[/page][instance_create_object,cutscene_lose_life]You're not a creep, are you?
	",
	"Brooklyn",spr_brooklyn_portrait_amused,,,obj_textbox_mock_pink,obj_namebox_mock_pink,obj_bounds_mock_pink,obj_name_mock_pink
	);
	obj_scribble.textbox_unnamed("...",
	,,obj_textbox_mock_pink, obj_bounds_mock_pink
	);
	
}

function please_please_please() {
	obj_scribble.textbox_unnamed(
	@"[#c94242]You tell her that she is literally so hot.
	[/page]and that you don't know how you lived before you saw her,
	[/page]and that you're not even worth sniffing the carpet beneath her feet.
	",
	,,obj_textbox_mock_pink, obj_bounds_mock_pink
	);
	
	obj_scribble.textbox(
	@"[#c94242][instance_create_object,cutscene_lose_life]...
	",
	"Brooklyn",spr_brooklyn_portrait_default,,,obj_textbox_mock_pink,obj_namebox_mock_pink,obj_bounds_mock_pink,obj_name_mock_pink
	);
}


obj_scribble.textbox(
	"[#c94242]What do you want?",
	"Brooklyn",spr_brooklyn_portrait_default,,,obj_textbox_mock_pink,obj_namebox_mock_pink,obj_bounds_mock_pink,obj_name_mock_pink,,,[
		{text: "To talk", textbox: obj_choice_1_mock_2, bounds: obj_bounds_1_mock_2, cb: to_talk},
		{text: "Be friends", textbox: obj_choice_2_mock_2, bounds: obj_bounds_2_mock_2, cb: be_friends},
		{text: "#@!", textbox: obj_choice_3_mock_2, bounds: obj_bounds_3_mock_2, cb: please_please_please}
	]
);

