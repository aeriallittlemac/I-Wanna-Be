event_inherited();

	
//round 2
function ask_about_club() {
	obj_scribble.textbox_unnamed("[#c94242]You ask what's with the sewing club.",
	,,obj_textbox_mock_pink, obj_bounds_mock_pink
	);
	
	obj_scribble.textbox(
	@"[#c94242]...
	[/page]It's a safe haven for us girls,
	[/page]undefiled from the filth of your hippie drum circle...
	[/page]...Do you not read the room?
	",
	"Brooklyn",spr_brooklyn_portrait_default,,,obj_textbox_mock_pink,obj_namebox_mock_pink,obj_bounds_mock_pink,obj_name_mock_pink
	);

}

function any_interests() {
	obj_scribble.textbox_unnamed("[#c94242]You ask her if she has any interests",
	,,obj_textbox_mock_pink, obj_bounds_mock_pink
	);
	
	obj_scribble.textbox(
	@"[#c94242]I read books.
	[/page]While listening to vintage vinyl records,
	[/page]And taking sips of an earthy mocha latte...
	[/page]...Not that an illiterate fag like you would understand.
	[/page][cutscene_lose_life]WBU? Preferably something that isn't with the lexicon of a fourth grader.
	",
	"Brooklyn",spr_brooklyn_portrait_proud,,,obj_textbox_mock_pink,obj_namebox_mock_pink,obj_bounds_mock_pink,obj_name_mock_pink
	);

}

function sniff() {
	obj_scribble.textbox_unnamed(@"[#c94242]You breathe in deeply,
	[/page]as if the musk of this woman was the first breath of a mountain breeze-
	[/page]after a twelve hour shift in the coal mines.
	",
	,,obj_textbox_mock_pink, obj_bounds_mock_pink
	);
	
	obj_scribble.textbox(
	@"[#c94242][cutscene_lose_life]...
	[/page]*awkward silence
	",
	"Brooklyn",spr_brooklyn_portrait_disgusted,,,obj_textbox_mock_pink,obj_namebox_mock_pink,obj_bounds_mock_pink,obj_name_mock_pink
	);

	
}

	obj_scribble.textbox(
	"[#c94242]You've got something that isn't a complete waste of time?",
	"Brooklyn",spr_brooklyn_portrait_default,,,obj_textbox_mock_pink,obj_namebox_mock_pink,obj_bounds_mock_pink,obj_name_mock_pink,,,[
		{text: "Ask abt club", textbox: obj_choice_1_mock_2, bounds: obj_bounds_1_mock_2, cb: ask_about_club},
		{text: "Any interests?", textbox: obj_choice_2_mock_2, bounds: obj_bounds_2_mock_2, cb: any_interests},
		{text: "*SNIFF*", textbox: obj_choice_3_mock_2, bounds: obj_bounds_3_mock_2, cb: sniff}
	]
	);