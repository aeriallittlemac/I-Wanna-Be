event_inherited();
obj_scribble.textbox_unnamed(
	@"You get on the couch.
	"
)
if global.day == 4{
	obj_scribble.textbox_unnamed(
	@"Ooh, you can actually reach the painting if you stand on top of the couch.
	"
)
}
else{
obj_scribble.textbox_unnamed(
	@"Hmmmm.
	[/page]It's actually quite comfy.
	"
)

}