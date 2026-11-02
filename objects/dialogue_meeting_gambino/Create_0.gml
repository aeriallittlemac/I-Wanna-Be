event_inherited();
set_QTE_bgm(all_the_leaves_are_brown);
audio_sound_gain(all_the_leaves_are_brown, 0.2, 0);

function accept_cigarette() {
	
	obj_scribble.textbox(
	@"[vl_gambino_Good_]Alright.
	[/page][vl_gambino_Hm_confused]..hm...
	", "Gambino", spr_gambino_portrait_tired
	)
	
	obj_scribble.textbox_unnamed(
	@"Gambino sloppily rummages through the items on the table.
	"
	)
	
	obj_scribble.textbox(
	@"[vl_gambino_No_]no...
	[/page]...
	[/page][vl_gambino_unfortunate]It would seem I have used them all. My apologies.
	", "Gambino", spr_gambino_portrait_tired
	)
	
	
}

function reject_cigarette() {
	 
	
	obj_scribble.textbox(
	@"Well then.
	[/page][vl_gambino_sigh]Better man than me.
	", "Gambino", spr_gambino_portrait_tired
	);
	
}

obj_scribble.textbox(
	@"[vl_gambino_Hm]Welcome, Bobby.
	[/page]You have already heard of my position.
	[/page][vl_gambino_Now_long]But in case you forget, I am Gambino.
	[/page]President of this school.
	", "Gambino", spr_gambino_portrait_tired
	);
obj_scribble.textbox(
	@"...
	[/page][vl_gambino_sigh]...Could I offer you a cigarette?
	",
	"Gambino",spr_gambino_portrait_tired,,,,,,,,,[
		{text: "Yay!", textbox: obj_choice_1_mock_0, bounds: obj_bounds_1_mock_2, cb: accept_cigarette},
		{text: "I'm good", textbox: obj_choice_2_mock_0, bounds: obj_bounds_2_mock_2, cb: reject_cigarette}
		//,{text: "Say nothing", textbox: obj_choice_3_mock_0, bounds: obj_bounds_3_mock_2, cb: say_nothing}
	]
);