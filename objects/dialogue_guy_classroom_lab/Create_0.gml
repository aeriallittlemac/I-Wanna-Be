event_inherited();
if global.day == 3{
	obj_scribble.textbox(
@"Hm?
[/page]Well well, what do we have here?
[/page]It's not everyday that I get to meet someone IRL.
[/page]Now those damn redditors can't complain about me not touching grass, ha ha!
", 
	"Masked Man", spr_guy_portrait_default
);
	obj_scribble.textbox_unnamed(
	"What's this guy talking about?"
	)
	obj_scribble.textbox(
		@"Talking about touching grass, I just told you.
		[/page]I'm Guy, by the way.
		", 
		"Masked Man", spr_guy_portrait_default
	);
}
else if global.day == 5{
	
	if global.storylines.Lab.Day_Five.talked_to.brooklyn{
		if global.storylines.Lab.Day_Five.talked_to.guy{
			obj_scribble.textbox(
			@"The battle outside ragin'
			[/page]Will soon shake your windows
			[/page]And rattle your walls
			[/page]For the times they are a-changin'...
			", 
			"Masked Man", spr_guy_portrait_default
		);
		}
		else{
		obj_scribble.textbox(
		@"What's up, loverboy?
		", 
		"Masked Man", spr_guy_portrait_default
	);
		obj_scribble.textbox_unnamed(
		"You tell him that you need a gun."
		)
		obj_scribble.textbox(
			@"Oh, god.
			[/page]The subtlety of a truck, what are the writers doing?
			[/page]Fine...
			", 
			"Masked Man", spr_guy_portrait_default
		);
		obj_scribble.textbox(
			@"Save the explanation.
			[/page]This is Brooklyn's project, right?
			[/page]I'll get her a 3D printer, and she'll be able to search up the parts she needs...
			[/page]That's just for the firearm itself, though. You'll have to figure out what to do with the bullets...
			[/page]Best of luck!
			", 
			"Masked Man", spr_guy_portrait_wink
		);
		}
	}

}