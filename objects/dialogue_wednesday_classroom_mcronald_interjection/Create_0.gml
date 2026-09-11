event_inherited();
set_QTE_bgm(mcronald_theme);
obj_scribble.textbox(
@"Hear, Mei! The horrible acts befallen unto Brooklyn...
", "McRonald", spr_mcronald_portrait_default
)
obj_scribble.textbox(
@"What's this?
", "Mei", spr_mei_portrait_shocked
)
obj_scribble.textbox(
@"...
", "Wei", spr_wei_portrait_default
)

obj_scribble.textbox(
@"McRonald doesn't want to think it true, Mei, but it can only be!
[/page]You see, president Gambino has been...
[/page]*whispers\nCheating on Brooklyn.*
", "McRonald", spr_mcronald_portrait_default
)
obj_scribble.textbox(
@"!?
", "Mei", spr_mei_portrait_shocked
)


function call_him_out() {
	obj_scribble.textbox_unnamed("You ask if you should be more concerned about Grace's disappearance.");
	
	obj_scribble.textbox(
	@"Really Bobbington DC? Don't you feel the air in the room?
	[/page]Isn't it easier to breathe? She's finnnne.
	[/page]I'm more interested about this unforeseen and brutish behavior...
	[/page]from our very own President!
	", "McRonald", spr_mcronald_portrait_default
	)
	
	
}

function show_surprise() {
	 
	obj_scribble.textbox_unnamed("You say that you're shocked to the core.");
	
	obj_scribble.textbox(
	@"McRonald knows!
	[/page]Appalling, such unforeseen and brutish behavior...
	[/page]from our very own President!
	", "McRonald", spr_mcronald_portrait_default
	);
	
}

function say_nothing() {
	
	obj_scribble.textbox_unnamed("You don't really give a reaction.");
	obj_scribble.textbox(
	@"Stone cold, Bobert!
	[/page]Not even the slightest reaction at this unforeseen and brutish behavior...
	[/page]from our very own President?
	", "McRonald", spr_mcronald_portrait_default
	);
}


obj_scribble.textbox(
	@"Could you believe this, Bobby?
	",
	"McRonald",spr_mcronald_portrait_default,,,,,,,,,[
		{text: "Call him out", textbox: obj_choice_1_mock_0, bounds: obj_bounds_1_mock_2, cb: call_him_out},
		{text: "Show surprise", textbox: obj_choice_2_mock_0, bounds: obj_bounds_2_mock_2, cb: show_surprise},
		{text: "Say nothing", textbox: obj_choice_3_mock_0, bounds: obj_bounds_3_mock_2, cb: say_nothing}
	]
);