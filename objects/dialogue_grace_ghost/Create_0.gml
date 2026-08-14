event_inherited();
if global.night{
if global.day == 3{
if !global.storylines.Grace_Ghost.tuesday{
obj_scribble.textbox(
	@"Dude, seriously? What the fuck? Why would you kill me?
	", 
	"Grace", spr_grace_portrait_cocky_ghost
);
obj_scribble.textbox_unnamed(
	@"???
	"
);
obj_scribble.textbox(
	@"I'm kidding. Well, I did find out that I was dead when I woke up.
	[/page]I don't think it's you, but since I'm still kind of mad at you, I'm just gonna blame you.
	", 
	"Grace", spr_grace_portrait_cocky_ghost
);
obj_scribble.textbox_unnamed(
	@"She doesn't actually seem mad.
	"
);
obj_scribble.textbox(
	@"I wonder. Do people even know I'm dead?
	[/page]Am I going to go on a carton of milk?
	", 
	"Grace", spr_grace_portrait_cocky_ghost
);

obj_scribble.textbox_unnamed(
	@"You ask her how she's even still here.
	"
);
obj_scribble.textbox(
	@"...
	[/page]Who knows?
	[/page]I mean, I definitely don't feel like passing on.
	[/page]I still wanna eat more food, bully more retards, and-
	[/page]Oh my GOD, what about my streaks?
	[/page]This is all your fault, Bobby Johns!
	", 
	"Grace", spr_grace_portrait_cocky_ghost
);
}
obj_scribble.textbox_unnamed(
	@"You ignore her and go to sleep.
	"
);
}
else{
	obj_scribble.textbox_unnamed(
	@"Grace ghost dialogue
	"
);
}
}
else{
obj_scribble.textbox_unnamed(
	@"She seems to be asleep.
	"
);
}