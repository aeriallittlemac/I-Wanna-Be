event_inherited();
//audio_sound_set_track_position(graces_theme_drums, 4.3636);
set_QTE_bgm(graces_theme_drums);
audio_sound_gain(graces_theme_drums, 0.5, 0);
//audio_sound_set_track_position(graces_theme_drums, 4.3636);
audio_play_sound(graces_theme_bass, 1, true);
audio_sound_gain(graces_theme_bass, 0.5, 0);


obj_scribble.textbox(
	@"That you huff the Sewing Club's teddy bear when no one's looking! Yeah!
	", 
	"Grace", spr_grace_portrait_cocky
);
obj_scribble.textbox_unnamed(
	@"But-
	"
	);
obj_scribble.textbox(
	@"Little pervert junior, gonna cry?
	", 
	"Grace", spr_grace_portrait_cocky_2
);

obj_scribble.textbox_unnamed(
	@"I'm new here.
	[/page]I didn't even know there was a sewing club.
	"
	);
obj_scribble.textbox(
	@"[audio_stop_all]!!
	[/page]Wh- y- I-
	", 
	"Grace", spr_grace_portrait_default
);

obj_scribble.textbox(
	@"[scale,1.5]Asshole![/] They'll still believe it!
	[/page]I just... Remember this, r****d!
	[/page]If you [scale,1.5]EVER[/] say a [scale,1.5]WORD[/] about this, I will tell [scale,1.5]ALL![/]
	", 
	"Grace", spr_grace_portrait_crying
);

