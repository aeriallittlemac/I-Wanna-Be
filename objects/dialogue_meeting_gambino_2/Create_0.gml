event_inherited();


function identity() {
	obj_scribble.textbox_unnamed(
	@"You ask who you would even be looking out for, given you're new to the school.
	")
	obj_scribble.textbox(
	@"[vl_gambino_idioti_short]Think simple, fool.
	[/page]Features, description, voice-
	[/page][vl_gambino_Hm]Hell, ask their name, maybe they'll answer.
	", "Gambino", spr_gambino_portrait_tired
	)
}

function intent() {
	obj_scribble.textbox_unnamed(
	@"You ask what he means by intent.
	[/page][vl_gambino_Listen_close]Where are they looking?
	[/page]Are they doing anything specific?
	[/page][vl_gambino_idioti_short]Use your [scale,1.2]insight.[s/]
	")
	
}

function got_it() {
	obj_scribble.textbox(
	@"[vl_gambino_Good_]Good.
	", "Gambino", spr_gambino_portrait_tired
	);
	
}

obj_scribble.textbox(
	@"[vl_gambino_Listen_close]Anyways.
	[/page]What I require of you is something extremely important.
	[/page][vl_gambino_sigh]Despite my attempts to rebuild the school, there is some party that would rather see it crumble.
	[/page][vl_gambino_unfortunate]A rat has been crawling in my fucking air vents, spying on my administration's every move.
	", "Gambino", spr_gambino_portrait_tired
	);
	
obj_scribble.textbox(
	@"[vl_gambino_Now_long]That is where you come in.
	[/page]Your task is simple;
	[/page][vl_gambino_Listen_close]Utilize the air vents, find the rat, and report their identity and intent back to me. Capiche?
	",
	"Gambino",spr_gambino_portrait_tired,,,,,,,,,[
		{text: "Identity?", textbox: obj_choice_1_mock_0, bounds: obj_bounds_1_mock_2, cb: identity},
		{text: "Intent?", textbox: obj_choice_2_mock_0, bounds: obj_bounds_2_mock_2, cb: intent},
		{text: "Got it.", textbox: obj_choice_3_mock_0, bounds: obj_bounds_3_mock_2, cb: got_it}
	]
);