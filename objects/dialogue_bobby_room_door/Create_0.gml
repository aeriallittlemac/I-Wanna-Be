event_inherited();

if (global.day <=1){
	obj_scribble.textbox_unnamed(@"The door seems to be locked...
	[/page]I guess school hasn't started yet...
	");
}
else{
	obj_scribble.textbox_unnamed(@"There's no class in session.
	[/page]But through the window, you see Mr. Chen sitting at a desk in the corner.
	[/page]He seems to be writing something...wait, does this guy not have an office to his name?
	");
	if(global.day >= 3){
	
	obj_scribble.textbox(
		@"Gambino can barely afford to pay him, haha!
		[/page]What makes you think that he'd be able to give him an office?
		", 
			"Guy", spr_guy_portrait_default
	);
	obj_scribble.textbox_unnamed(@"Diabolical.
	");
	}
}