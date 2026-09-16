event_inherited();
npc_animate(obj_grace, obj_grace.sprite[RIGHT])
obj_grace.sprite_index = obj_grace.sprite[RIGHT];
obj_grace.face = RIGHT;
obj_scribble.textbox(
	@"You know what that means?
	[/page]Whatever I say, is whatever happened.
	", 
	"Grace", spr_grace_portrait_default
);
obj_scribble.textbox(
	@"So you are gonna forget everything you just saw,
	[/page]Or I'll make sure everyone in this school thinks...
	[/page][instance_create_object,obj_horror_effect_start][audio_stop_all][sfx_crowd_gasp]you're just a [scale,1.5]worthless. disgusting. pervert[/].
	", 
	"Grace", spr_grace_portrait_default
);
