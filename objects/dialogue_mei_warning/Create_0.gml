event_inherited();
audio_stop_all();
set_QTE_bgm(frenchies_theme);
obj_mei.face = RIGHT;
obj_mei.sprite_index = obj_mei.sprite[RIGHT]
obj_scribble.textbox(
	@"[sfx_surprise_fx]*notices you
[/page]Hullo!
[/page]You're the new kid, aren't you?
[/page]It's so nice to meet you! My name is Mei.
[/page]What's yours?
", 
	"Mei", spr_mei_portrait_default
);