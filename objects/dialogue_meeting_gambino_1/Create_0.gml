event_inherited();


function understand_yes() {
	obj_scribble.textbox(
	@"[vl_gambino_Good_]Excellent.
	", "Gambino", spr_gambino_portrait_tired
	)
}

function understand_no() {
	obj_scribble.textbox(
	@"...
	[/page][vl_gambino_sigh]Just listen and nod along, I don't have time for this.
	", "Gambino", spr_gambino_portrait_tired
	);
	
}

function question_gambino() {
	obj_scribble.textbox(
	@"Maybe a story for another day.
	[/page][vl_gambino_No_]But I don't have time for this right now.
	", "Gambino", spr_gambino_portrait_tired
	);
	
}

obj_scribble.textbox(
	@"[vl_gambino_Listen_close]Back to business.
	[/page]At the least, I assume you to be attentive, Bobby.
	[/page]Your classmates, the walls, the textbooks, all have one thing in common.
	[/page][vl_gambino_unfortunate]They're all [scale,1.2]atrocious[/].
	[/page][vl_gambino_idioti_short][scale,1.2]Bottom of the barrel[/], as quality goes.
	[/page]This school, even.
	[/page][vl_gambino_Hm]Ranked second to last in the entire state.
	[/page][vl_gambino_sigh]Our lead? Against Huckleberry's school for [scale,1.2]down syndrome kids[/].
	[/page][vl_gambino_Hm]We win by a hair in mathematics.
	", "Gambino", spr_gambino_portrait_tired
	);
obj_scribble.textbox_unnamed(
	@"Darn.
	")
	
obj_scribble.textbox(
	@"[vl_gambino_Now_long]Our presidents, each of varying quality themselves...
	[/page][scale,1.2]Uphold the school. Protect it. Improve it.[/]
	[/page][vl_gambino_sigh][slant]That is- save for the previous mosca.[/slant]
	[/page][vl_gambino_idioti_short]He brought the school to its lowest low.
	[/page]Now I am here, and I alone hold the responsibility of salvaging this cesso.
	[/page][vl_gambino_Hm_confused]Understand?
	",
	"Gambino",spr_gambino_portrait_tired,,,,,,,,,[
		{text: "Yes.", textbox: obj_choice_1_mock_0, bounds: obj_bounds_1_mock_2, cb: understand_yes},
		{text: "What?", textbox: obj_choice_2_mock_0, bounds: obj_bounds_2_mock_2, cb: understand_no},
		{text: "Last year?", textbox: obj_choice_3_mock_0, bounds: obj_bounds_3_mock_2, cb: question_gambino}
	]
);