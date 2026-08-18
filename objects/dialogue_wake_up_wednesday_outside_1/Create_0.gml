event_inherited();
set_QTE_bgm(important_decision_looping);
audio_sound_gain(important_decision_looping, 0.5, 0);
obj_scribble.textbox(
	@"You see, I'm not really asking. Boss is boss.
	[/page]We can do this the easy way, or we can do this the hard way.
	[/page]The choice is yours, motherf*cker.
	",
	"Jake", spr_jake_portrait_default
);

obj_scribble.textbox_unnamed(
@"[instance_create_object,obj_narrator_screen]...
"
);