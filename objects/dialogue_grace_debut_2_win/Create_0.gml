event_inherited();
//stripped down version of Grace's theme
audio_sound_set_track_position(graces_theme_drums, 4.3636);
set_QTE_bgm(graces_theme_drums);
audio_sound_gain(graces_theme_drums, 0.5, 0);
audio_sound_set_track_position(graces_theme_bass, 4.3636);
audio_play_sound(graces_theme_bass, 1, true);
audio_sound_gain(graces_theme_bass, 0.5, 0);

obj_scribble.textbox_unnamed(
	@"You ask her what her plan is, exactly.
	"
	);
	
obj_scribble.textbox(
	@"Well, uh...
	", 
	"Grace", spr_grace_portrait_default
);
obj_scribble.textbox(
	@"I'll tell everyone, duh!
	", 
	"Grace", spr_grace_portrait_cocky
);

obj_scribble.textbox_unnamed(
	@"[slant]Tell them what?[/slant]
	"
	);
	
	obj_scribble.textbox(
	@"[music_set_gain,graces_theme_bass,0,0]That, uh...That I- no-
	[/page]That [scale,1.5]YOU,[/] uh...
	", 
	"Grace", spr_grace_portrait_default
);