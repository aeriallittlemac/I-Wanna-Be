event_inherited();
if global.day >= 5{
	if !global.storylines.Brooklyns_quest.cash_obtained{
		obj_scribble.textbox_unnamed("Well, I mean...");
		obj_scribble.textbox_unnamed("Guess it's time to take the money...");
	}
	else{
		obj_scribble.textbox_unnamed("Nothing remains in the drawer.");
	}
}
else{
	obj_scribble.textbox_unnamed("You see a shoebox sitting in the drawer.");
	obj_scribble.textbox_unnamed("Upon closer look, it writes \"abortion funds\" on top of the box.");
	obj_scribble.textbox_unnamed("Despite your inner jew salivating, you decide to leave it alone.");
}