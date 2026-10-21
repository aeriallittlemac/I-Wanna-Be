event_inherited();
option = -1;
function truth() {
	obj_scribble.textbox_unnamed(
	@"You tell Gambino about the giant rat.
	")
	obj_scribble.textbox(
	@"...What?
	[/page]Are you playing me the fool, Bobby Johns?
	[/page]I will remind you of my position, and your insignificance in our system.
	[/page]Continue this, and there will be consequences.
	", "Gambino", spr_gambino_portrait_tired
	)
	
	obj_scribble.textbox_unnamed(
	@"You tell him that you’re being dead honest and dead serious.
	")
	//dialogue_gambino_copper_coin_3_truth.option = 2;
}

function lie() {
	obj_scribble.textbox_unnamed(
	@"You tell him that you saw nothing.
	")
	//dialogue_gambino_copper_coin_3_truth.option = 2;
}
	
obj_scribble.textbox(
	@"...Were you able to distinguish them any further?
	[/page]Voice, face-
	[/page]Anything?
	",
	"Gambino",spr_gambino_portrait_tired,,,,,,,,,[
		{text: "Opt in", textbox: obj_choice_1_mock_0, bounds: obj_bounds_1_mock_2, cb: truth},
		{text: "Pussy out", textbox: obj_choice_2_mock_0, bounds: obj_bounds_2_mock_2, cb: lie},
	]
);