event_inherited();

//how does Brooklyn enrage Grace?

obj_scribble.textbox(
	@"Huh?
	[/page]What's going on?
	", 
	"Grace", spr_grace_portrait_default
);
obj_scribble.textbox(
	@"Oh, you're here again?
	", 
	"Grace", spr_grace_portrait_confused
);
obj_scribble.textbox_converse(
	@"Bobby was just telling me about...
	[/page]Your secret, Grace.
	", 
	"Brooklyn", [
		[spr_brooklyn_portrait_default, obj_portrait_mock_left_1], 
		[spr_grace_portrait_default, obj_portrait_mock_right_1]
	]
	);
obj_scribble.textbox_converse(
	@"!?
	", 
	"Grace", [
		[spr_brooklyn_portrait_default, obj_portrait_mock_left_1], 
		[spr_grace_portrait_default, obj_portrait_mock_right_1]
	]
	);
obj_scribble.textbox_converse(
	@"That side of yourself that you swore to never show...
	[/page]Who would've thought, of all people, Bobby would be your downfall?
	", 
	"Brooklyn", [
		[spr_brooklyn_portrait_default, obj_portrait_mock_left_1], 
		[spr_grace_portrait_default, obj_portrait_mock_right_1]
	]
	);
obj_scribble.textbox(
	@"...
	", 
	"Grace", spr_grace_portrait_angry
);
obj_scribble.textbox(
	@"That's okay.
	[/page]Guess, there's no other choice...
	", 
	"Grace", spr_grace_portrait_default
);

//obj_scribble.textbox(
//	@"Well, it's true that he's this amazing guy as you've described.
//[/page]And that's the problem.
//[/page]From where I stand, there aren't many worthy of standing by his side.
//[/page]He definitely knows that too.
//	", 
//	"Wei", spr_wei_portrait_pumped_up
//);
//obj_scribble.textbox(
//	@"What are you implying?", 
//	"Brooklyn", spr_brooklyn_portrait_default
//);
//obj_scribble.textbox(
//	@"Gambino's such a pragmatist,
//[/page]so he'll ask himself:
//[/page][slant]What do I get from Brooklyn, with all I have to give her?[/slant]
//[/page]And once he weighs the two...
//[/page]Who knows if he will decide to keep you?
//	", 
//	"Wei", spr_wei_portrait_pumped_up
//);

