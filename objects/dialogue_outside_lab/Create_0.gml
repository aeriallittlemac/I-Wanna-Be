event_inherited();
npc_move_to_pos(obj_wei, 1, 0, obj_wei.x+1, obj_wei.y);
obj_scribble.textbox(
	@"[sfx_surprise_fx]Well, if it ain't[vl_wei_default_1] Bobby Johns!
	[/page][vl_wei_default_2]Now don't you worry about the band today, cause I ain't showin' up.
	"
	,
	"Wei", spr_wei_portrait_default
);

obj_scribble.textbox(
	@"[vl_wei_default_1]Gotta hang up these son-of-a-bitch posters so I can knock Gambino's candy-ass,
	[/page][vl_wei_default_2]OFF his high horse at the election, as God intends me to do!
	"
	,
	"Wei", spr_wei_portrait_pumped_up
);
obj_scribble.textbox_unnamed("Uh huh.")

obj_scribble.textbox(
	@"[vl_wei_default_1]So, whaddya say Bobby Johns?
	[/page][vl_wei_default_2]You wanna be my VP?
	"
	,
	"Wei", spr_wei_portrait_pumped_up
);
obj_scribble.textbox_unnamed("You accept.")

obj_scribble.textbox(
	@"Awesome!
	[/page][vl_wei_default_1]Now put up these posters.
	"
	,
	"Wei", spr_wei_portrait_pumped_up
);
obj_scribble.textbox_unnamed("You take the posters.")