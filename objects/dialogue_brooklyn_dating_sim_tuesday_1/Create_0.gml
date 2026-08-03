event_inherited();
chair_scenario = false;
function gambino() {
	obj_scribble.textbox_unnamed(@"[#c94242]You clarify if she's talking about Gambino.
",
	,,obj_textbox_mock_pink, obj_bounds_mock_pink
	);
	
	obj_scribble.textbox(
	@"[#c94242]Woah, you have object permanence!
[/page]I honestly didn't believe in you for a second there, Bobby.
",
	"Brooklyn",spr_brooklyn_portrait_default,,,obj_textbox_mock_pink,obj_namebox_mock_pink,obj_bounds_mock_pink,obj_name_mock_pink
	);
	
	
}

function weep() {
	 
	obj_scribble.textbox_unnamed(@"[#c94242]You immediately start crying profusely.
[/page]Like, rivers' worth of tears.
",
	,,obj_textbox_mock_pink, obj_bounds_mock_pink
	);
	
	obj_scribble.textbox(
	@"[#c94242]Are you actually crying?
[/page]Oh my god, that is genuinely pathetic, Bobby.
[/page][instance_create_object,cutscene_lose_life]Even for you.
	",
	"Brooklyn",spr_brooklyn_portrait_amused,,,obj_textbox_mock_pink,obj_namebox_mock_pink,obj_bounds_mock_pink,obj_name_mock_pink
	);
	
	obj_scribble.textbox_unnamed(@"[#c94242]The tears seem to not move her.
[/page]Perhaps it's time for a different option.
",
	,,obj_textbox_mock_pink, obj_bounds_mock_pink
	);
	
}

function chair() {
	obj_scribble.textbox_unnamed(
	@"[#c94242][instance_create_object,cutscene_lose_life][instance_create_object,cutscene_lose_life]*You clothesline Brooklyn with the chair behind you.
	",
	,,obj_textbox_mock_pink, obj_bounds_mock_pink
	);
}


obj_scribble.textbox(
	@"[#c94242]Unless you have something worthwhile,
[/page]and not just incoherent blabbering...
[/page]get lost.
	",
	"Brooklyn",spr_brooklyn_portrait_default,,,obj_textbox_mock_pink,obj_namebox_mock_pink,obj_bounds_mock_pink,obj_name_mock_pink,,,[
		{text: "Gambino?", textbox: obj_choice_1_mock_2, bounds: obj_bounds_1_mock_2, cb: gambino},
		{text: "Weep", textbox: obj_choice_2_mock_2, bounds: obj_bounds_2_mock_2, cb: weep},
		{text: "Chair", textbox: obj_choice_3_mock_2, bounds: obj_bounds_3_mock_2, cb: chair}
	]
);

