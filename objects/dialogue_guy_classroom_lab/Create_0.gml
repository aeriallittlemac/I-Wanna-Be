event_inherited();
if global.day == 3{
	obj_scribble.textbox(
		@"Go knicks!
		", 
			"Guy", spr_guy_portrait_default
	);
}
else if global.day == 5{
	if !global.storylines.Lab.Day_Five.start_roam{
	if global.storylines.Lab.Day_Five.talked_to.brooklyn{
		if global.storylines.Lab.Day_Five.talked_to.guy{
			obj_scribble.textbox(
			@"The battle outside ragin'
			[/page]Will soon shake your windows
			[/page]And rattle your walls
			[/page]For the times they are a-changin'...
			", 
			"Guy", spr_guy_portrait_default
		);
		}
		else{
		obj_scribble.textbox(
		@"What's up, loverboy?
		", 
		"Guy", spr_guy_portrait_default
	);
		obj_scribble.textbox_unnamed(
		"You tell him that you need a gun."
		)
		obj_scribble.textbox(
			@"Oh, god.
			[/page]The subtlety of a truck, what are the writers doing?
			[/page]Fine...
			", 
			"Guy", spr_guy_portrait_default
		);
		obj_scribble.textbox(
			@"Save the explanation.
			[/page]This is Brooklyn's project, right?
			[/page]I'll get her a 3D printer, and she'll be able to search up the parts she needs...
			[/page]That's just for the firearm itself, though. You'll have to figure out what to do with the bullets...
			[/page]Best of luck!
			", 
			"Guy", spr_guy_portrait_wink
		);
		}
	}
	}
	else{
		obj_scribble.textbox_converse(
		@"*consulting Guy
		", 
		"Brooklyn", [
			[spr_brooklyn_portrait_default, obj_portrait_mock_left_1], 
			[spr_guy_portrait_default, obj_portrait_mock_right_1]
		]
		);
	}
}