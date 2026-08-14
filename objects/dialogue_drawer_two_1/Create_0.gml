event_inherited();
instance_destroy(obj_grace_corpse_reveal)
obj_scribble.textbox(
	@"You find anything, Bobby?
	", 
	"Mei", spr_mei_portrait_default
);

obj_scribble.textbox(
	@"...
	[/page]Nah, not really.
	[/page][slant]I think she's gone missing.[/slant]
	", 
	"Bobby", spr_bobby_portrait_default
);
obj_scribble.textbox_unnamed(
@"[instance_create_object,obj_narrator_screen]Mei would go on to report Grace's disapparance to the school.
[/page]Gambino's men would search the entire school for her, but to no avail..."

)