event_inherited();
instance_destroy(obj_dating_sim);
audio_stop_all();
audio_play_sound(sfx_cock_gun, 1, false);
obj_scribble.textbox(
	@"...
	[/page]Humoring you has been the biggest waste of my time.
	[/page]You bore me. You have no personality.
	[/page]I will never speak a another word to you.
	[/page]Ever. Again.
", 
	"Brooklyn", spr_brooklyn_portrait_default
);