event_inherited();
audio_stop_all();
set_QTE_bgm(five_four_theme_inverted);
audio_sound_gain(five_four_theme_inverted, 0.3, 0);
obj_scribble.textbox(
	@"Nah, one of the doofuses lost a coin.
	"
	, 
	"Guy", spr_guy_portrait_default
);
obj_scribble.textbox(
	@"...
	[/page]...Right.
	[/page]...You. Out.
	"
	, 
	"Gambino", spr_gambino_portrait_default
);