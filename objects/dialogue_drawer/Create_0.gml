event_inherited();

if global.day >= 5{
	if !global.storylines.dead_bodies_checked{
	obj_scribble.textbox_unnamed("Just an ordinary drawer.");
	obj_scribble.textbox_unnamed("Nothing to see here-");
	}
	else
	{
		obj_scribble.textbox_unnamed("What the hell was that?");
	}
}
else{
	obj_scribble.textbox_unnamed("Just an ordinary drawer.");
	obj_scribble.textbox_unnamed("Nothing to see here...");
}