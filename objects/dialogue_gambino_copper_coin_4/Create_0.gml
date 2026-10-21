event_inherited();
option = -1;
function truth() {
	obj_scribble.textbox_unnamed(
	@"You tell Gambino about the shadowy figure in the vents.
	")
	obj_scribble.textbox(
	@"It is as I feared.
	[/page]...Were you able to distinguish them any further?
	[/page]Voice, face-
	[/page]Anything?
	", "Gambino", spr_gambino_portrait_tired
	)
	dialogue_gambino_copper_coin_3.option = 1;
	
}

function lie() {
	obj_scribble.textbox_unnamed(
	@"You tell him that you saw nothing.
	")
	obj_scribble.textbox(
	@"...
	[/page]...I see.
	[/page]What compels you to tell such a lie, Bobby Johns?
	[/page]I can see the fear in your eyes. The clamming of your hands.
	[/page]Do you wish death, Bobby?
	", "Gambino", spr_gambino_portrait_tired
	);
	dialogue_gambino_copper_coin_3.option = 2;
}

function mama() {
	obj_scribble.textbox(
	@"Good.
	", "Gambino", spr_gambino_portrait_tired
	);
	dialogue_gambino_copper_coin_3.option = 3;
}

	
obj_scribble.textbox(
	@"Bobby. The last part of your assignment is due.
	[/page]What did you see during your surveillance?
	",
	"Gambino",spr_gambino_portrait_tired,,,,,,,,,[
		{text: "Tell the truth", textbox: obj_choice_1_mock_0, bounds: obj_bounds_1_mock_2, cb: truth},
		{text: "Lie to his ass", textbox: obj_choice_2_mock_0, bounds: obj_bounds_2_mock_2, cb: lie},
		{text: "On my Mamas", textbox: obj_choice_3_mock_0, bounds: obj_bounds_3_mock_2, cb: mama}
	]
);