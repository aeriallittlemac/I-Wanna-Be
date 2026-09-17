event_inherited();
obj_scribble.mcronald_y_offset = 160;
obj_wei.sprite_index = obj_wei.sprite[UP];
obj_wei.face = UP;
audio_play_sound(sfx_slide_whistle, 1, false);
alarm[0] = 1;
set_QTE_bgm(mcronald_theme);
obj_scribble.textbox(
	@"You don't say.
[/page]Bunch of squealers, they are.
[/page]Especially that piece o' work, Grace.
[/page]Which begs the question:
	", 
	"Slickback Weirdo", spr_mcronald_portrait_default
);

obj_scribble.textbox(
	@"[slant]If something bleeds for three days and doesn't die, can it really be considered human?[/slant]
	", 
	"Slickback Weirdo", spr_mcronald_portrait_flex
);

obj_scribble.textbox_unnamed(
	@"...
	", 
);

obj_scribble.textbox(
	@"Oh yeah! Bobby, you've already met Job, but this is-
	", 
	"Wei", spr_wei_portrait_default
);

obj_scribble.textbox(
	@"-pLease, please. McRonald is capable of introducing himself.
	", 
	"McRonald", spr_mcronald_portrait_default
);