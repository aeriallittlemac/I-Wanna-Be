event_inherited();
minimap_scale = room_get_viewport(room,0)[3]/RESOLUTION_W;
set_QTE_bgm(morning);
obj_scribble.textbox_unnamed(
	@"Your first day at the boarding school.
	[/page]You hesitate whether or not you should go in...
	[/page]but you remember that somebody is supposed to come pick you up.
	"
);

obj_scribble.textbox(
	"You must be Bobby Johns. Come on in!", 
	"Wei", spr_wei_portrait_default
);