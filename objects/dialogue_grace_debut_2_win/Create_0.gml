event_inherited();
set_QTE_bgm(important_decision_looping);
obj_scribble.textbox_unnamed(
	@"You tell her that no one will believe her...
	[/page]Because you've been secretly recording this conversation.
	[/page](You're only bluffing)
	"
	);
obj_scribble.textbox(
	@"What?
	[/page]You-
	", 
	"Grace", spr_grace_portrait_default
);

obj_scribble.textbox(
	@"[audio_stop_all][jitter]You bitch![/jitter]
	[/page][jitter]How could you?![/jitter]
	[/page][jitter]Delete the recordings, right nyah![/jitter]
	", 
	"Grace", spr_grace_portrait_crying
);

obj_scribble.textbox_unnamed(
	"You politely refuse."
	);
obj_scribble.textbox(
	@"Please, don't tell anyone about this please please please.
	[/page]I'll...I'll do whatever you ask me.
	[/page]I'll even take my clothes off if you promise to stay quiet about this!!!
	", 
	"Grace", spr_grace_portrait_crying
);
obj_scribble.textbox_unnamed(
	"You ask her to go back to sleep and leave you alone."
);
obj_scribble.textbox(
	@"...
	[/page]You promise you won't tell?
	", 
	"Grace", spr_grace_portrait_crying
);

obj_scribble.textbox_unnamed(
	"After consoling her for 30 minutes, you finally head back to your room..."
);
