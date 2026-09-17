event_inherited();
audio_stop_all();
audio_play_sound(scary_ambience, 1, true);
QuestCompleted(global.quest_list.midnight_snack);
global.game_time = "10:00 am";
global.night = false;
obj_scribble.black_filter = false;
obj_vfx.effects.horror.start();
obj_vfx.effects.white_noise.start();
obj_scribble.textbox(
	"You. Saw?", 
	"Grace", spr_grace_portrait_scary
);
obj_scribble.textbox_unnamed(
	"[slant]N-no?[/slant]"
);
obj_scribble.textbox(
	@"Oh.
	[/page]So you're not just an ugly creep, you're a lying little **** too?
	", 
	"???", spr_grace_portrait_scary
);
obj_scribble.textbox_unnamed(
	"I-"
);
obj_scribble.textbox(
	@"Shut up, nobody cares.
	[/page]Listen here.
	[/page]Do you even know who. I. am?
	", 
	"???", spr_grace_portrait_scary
);
//horror filter drops