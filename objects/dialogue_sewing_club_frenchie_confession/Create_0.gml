event_inherited();
audio_stop_all();
obj_scribble.textbox(
	"[vl_frenchie_calm_1]Hello.",
	"Frenchie", spr_frenchie_portrait_twiddling_thumbs
);

obj_scribble.textbox(
	"[vl_mei_default_1]Do we have a new member? Awesome! Welc-",
	"Mei", spr_mei_portrait_default
);

obj_scribble.textbox(
	"[vl_frenchie_calm_1]Sorry, I'm not here to join the club.",
	"Frenchie", spr_frenchie_portrait_twiddling_thumbs
);

obj_scribble.textbox(
	"[vl_frenchie_calm_2]I'm here for something else.",
	"Frenchie", spr_frenchie_portrait_twiddling_thumbs
);
//pause dialogue and move Frenchie to Grace
obj_scribble.textbox(
	"[vl_frenchie_calm_1]Grace. I really like you.",
	"Frenchie", spr_frenchie_portrait_twiddling_thumbs
);

obj_scribble.textbox(
	"[vl_frenchie_calm_2]I want to get to know you better.",
	"Frenchie", spr_frenchie_portrait_twiddling_thumbs
);

obj_scribble.textbox(
	"[vl_frenchie_calm_1]Will you go on a date with me?",
	"Frenchie", spr_frenchie_portrait_twiddling_thumbs
);

obj_scribble.textbox(
	"[vl_grace_default_1]Nope!",
	"Grace", spr_grace_portrait_default
);

obj_scribble.textbox(
	"[vl_grace_default_2]Not a chance, you French fucker. I have a boyfriend!",
	"Grace", spr_grace_portrait_cocky
);

obj_scribble.textbox(
	"[vl_frenchie_calm_1]Alright. I'll go.",
	"Frenchie", spr_frenchie_portrait_twiddling_thumbs
);
//move frenchie to door
obj_scribble.textbox_unnamed(
	"[npc_teleport,obj_frenchie,school_1F,618,119,0] There he goes.");

obj_scribble.textbox(
	"[vl_grace_default_1]Wow, he took that a lot better than I thought he would.",
	"Grace", spr_grace_portrait_cocky
);
obj_scribble.textbox(
	"[vl_grace_default_2]I totally thought he would start crying, ha!",
	"Grace", spr_grace_portrait_cocky_2
);

obj_scribble.textbox_unnamed(
	"[sfx_dramatic_1][instance_create_object,obj_frenchie_shooting_scene]What was that?");
obj_scribble.textbox(
	"[vl_brooklyn_default_1]I suppose even primates learn self control at some point.",
	"Brooklyn", spr_brooklyn_portrait_amused
);
obj_scribble.textbox_unnamed(
	"[sfx_dramatic_2][instance_create_object,obj_frenchie_shooting_scene_2]Visions...of what is to come?");

obj_scribble.textbox_unnamed(
	@"This is not good. We must figure out a way to stop him.
	[/page]Perhaps there's something in this room...");