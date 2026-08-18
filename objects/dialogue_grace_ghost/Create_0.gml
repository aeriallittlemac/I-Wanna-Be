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
else if global.day == 4{
if !global.storylines.Grace_Ghost.wednesday{
obj_scribble.textbox(
@"...
", 
"Grace", spr_grace_portrait_wistful_ghost
);
obj_scribble.textbox_unnamed(
	@"*She looks like she wants to say something to you...
	[/page]But is unsure with how she should go about it.
	"
);
obj_scribble.textbox(
@"*clears throat
[/page]Hey, Bobby.
[/page]Y'know...
[/page]There hasn't been anything for me to do.
[/page]So, I've just been watching you guys...
", 
"Grace", spr_grace_portrait_wistful_ghost
);
obj_scribble.textbox_unnamed(
	@"Huh?
	"
);
obj_scribble.textbox(
@"I saw the thing with Brooklyn. Her rumors.
", 
"Grace", spr_grace_portrait_wistful_ghost
);
obj_scribble.textbox(
@"For how much of a bitch she was, she sure had it coming, haha...
", 
"Grace", spr_grace_portrait_cocky_ghost
);
obj_scribble.textbox(
@"But the way you treated her...
[/page]Despite how mean she was to you, you still decided to look out for her.
[/page]Even when nobody cared to do the same. I mean, for her...
[/page]You were even willing to sneak into that scary Gambino's office...
[/page]and comfort her when no one's around.
[/page]Why?
[/page]Why go so far to help that woman?
", 
"Grace", spr_grace_portrait_wistful_ghost
);
obj_scribble.textbox(
@"...
[/page]Who knows?
[/page]Maybe I got a crush on her.
", 
"Bobby", spr_bobby_portrait_default
);
obj_scribble.textbox(
@"...
[/page]Somehow I don't think you mean that.
", 
"Grace", spr_grace_portrait_frown_ghost
);

obj_scribble.textbox_unnamed(
	@"You feel like this is a good place the end the conversation.
	[/page]Go to sleep.
	"
);
}
else{
obj_scribble.textbox_unnamed(
	@"You feel like this is a good place the end the conversation.
	[/page]Go to sleep.
	"
);
}
}
else if global.day == 5{

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