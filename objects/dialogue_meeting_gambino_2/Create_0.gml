event_inherited();


function identity() {
	obj_scribble.textbox_unnamed(
	@"You ask who you would even be looking out for, given you’re new to the school.
	")
	obj_scribble.textbox(
	@"Think simple, fool.
	[/page]Features, description, voice-
	[/page]Hell, ask their name, maybe they’ll answer.
	", "Gambino", spr_gambino_portrait_default
	)
}

function intent() {
	obj_scribble.textbox_unnamed(
	@"You ask what he means by intent.
	[/page]Where are they looking?
	[/page]Are they doing anything specific?
	[/page]Use your [scale,1.2]insight.[s/]
	")
	obj_scribble.textbox(
	@"...
	[/page]Just listen and nod along, I don't have time for this.
	", "Gambino", spr_gambino_portrait_tired
	);
	
}

function got_it() {
	obj_scribble.textbox(
	@"Good.
	", "Gambino", spr_gambino_portrait_tired
	);
	
}

obj_scribble.textbox(
	@"Anyways.
	[/page]What I require of you is something extremely important.
	[/page]Despite my attempts to rebuild the school, there is some party that would rather see it crumble.
	[/page]A rat has been crawling in my fucking air vents, spying on my administration’s every move.
	", "Gambino", spr_gambino_portrait_tired
	);
	
obj_scribble.textbox(
	@"That is where you come in.
	[/page]Your task is simple;
	[/page]Utilize the air vents, find the rat, and report their identity and intent back to me. Capiche?
	",
	"Gambino",spr_gambino_portrait_default,,,,,,,,,[
		{text: "Identity?", textbox: obj_choice_1_mock_0, bounds: obj_bounds_1_mock_2, cb: identity},
		{text: "Intent?", textbox: obj_choice_2_mock_0, bounds: obj_bounds_2_mock_2, cb: intent},
		{text: "Got it.", textbox: obj_choice_3_mock_0, bounds: obj_bounds_3_mock_2, cb: got_it}
	]
);