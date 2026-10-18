event_inherited();


function accept_cigarette() {
	
	obj_scribble.textbox(
	@"Alright.
	[/page]..hm...
	", "Gambino", spr_gambino_portrait_default
	)
	
	obj_scribble.textbox_unnamed(
	@"Gambino sloppily rummages through the items on the table.
	"
	)
	
	obj_scribble.textbox(
	@"no...
	[/page]...
	[/page]It would seem I have used them all. My apologies.
	", "Gambino", spr_gambino_portrait_tired
	)
	
	
}

function reject_cigarette() {
	 
	
	obj_scribble.textbox(
	@"Well then.
	[/page]Better man than me.
	", "Gambino", spr_gambino_portrait_tired
	);
	
}

obj_scribble.textbox(
	@"Welcome, Bobby.
	[/page]You have already heard of my position.
	[/page]But in case you forget, I am Gambino.
	[/page]President of this school.
	", "Gambino", spr_gambino_portrait_default
	);
obj_scribble.textbox(
	@"...
	[/page]...Could I offer you a cigarette?
	",
	"Gambino",spr_gambino_portrait_tired,,,,,,,,,[
		{text: "Yay!", textbox: obj_choice_1_mock_0, bounds: obj_bounds_1_mock_2, cb: accept_cigarette},
		{text: "I'm good", textbox: obj_choice_2_mock_0, bounds: obj_bounds_2_mock_2, cb: reject_cigarette}
		//,{text: "Say nothing", textbox: obj_choice_3_mock_0, bounds: obj_bounds_3_mock_2, cb: say_nothing}
	]
);