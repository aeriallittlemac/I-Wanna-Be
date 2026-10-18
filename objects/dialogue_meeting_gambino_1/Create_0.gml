event_inherited();


function understand_yes() {
	obj_scribble.textbox(
	@"Excellent.
	", "Gambino", spr_gambino_portrait_default
	)
}

function understand_no() {
	obj_scribble.textbox(
	@"...
	[/page]Just listen and nod along, I don't have time for this.
	", "Gambino", spr_gambino_portrait_tired
	);
	
}

function question_gambino() {
	obj_scribble.textbox(
	@"Maybe a story for another day.
	[/page]But I don't have time for this right now.
	", "Gambino", spr_gambino_portrait_tired
	);
	
}

obj_scribble.textbox(
	@"*clears throat
	[/page]Back to business.
	[/page]At the least, I assume you to be attentive, Bobby.
	[/page]Your classmates, the walls, the textbooks, all have one thing in common.
	[/page]They’re all [scale,1.2]atrocious[/].
	[/page][scale,1.2]Bottom of the barrel[/], as quality goes.
	[/page]This school, even.
	[/page]Ranked second to last in the entire state.
	[/page]Our lead? Against Huckleberry’s school for [scale,1.2]down syndrome kids[/].
	[/page]We win by a hair in mathematics.
	", "Gambino", spr_gambino_portrait_default
	);
obj_scribble.textbox_unnamed(
	@"Darn.
	")
	
obj_scribble.textbox(
	@"Our presidents, each of varying quality themselves...
	[/page][scale,1.2]Uphold the school. Protect it. Improve it.[/]
	[/page][slant]That is- save for last year’s mosca.[/slant]
	[/page]He brought the school to its lowest low.
	[/page]Now I am here, and I alone hold the responsibility of salvaging this cesso.
	[/page]Understand?
	",
	"Gambino",spr_gambino_portrait_default,,,,,,,,,[
		{text: "Yes.", textbox: obj_choice_1_mock_0, bounds: obj_bounds_1_mock_2, cb: understand_yes},
		{text: "What?", textbox: obj_choice_2_mock_0, bounds: obj_bounds_2_mock_2, cb: understand_no},
		{text: "Last year?", textbox: obj_choice_3_mock_0, bounds: obj_bounds_3_mock_2, cb: question_gambino}
	]
);