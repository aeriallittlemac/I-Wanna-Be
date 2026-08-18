event_inherited();
audio_stop_all();
set_QTE_bgm(morning);
obj_scribble.textbox_unnamed(
	"You say hello to Mr. Chen.");
obj_scribble.textbox(
	"Hello, Bobby.", 
	"Mr. Chen", spr_mr_chen_portrait_gun
);
if global.storylines.Brooklyns_quest.bullets_obtained{
	obj_scribble.textbox(
	@"It's been a long time since I've seen so much of these...
	[/page]Hello Benjamin.
	", 
	"Mr. Chen", spr_mr_chen_portrait_default
	);
}
else{
if global.storylines.Brooklyns_quest.cash_obtained{
	obj_scribble.textbox(
	"You got the cash?", 
	"Mr. Chen", spr_mr_chen_portrait_gun
	);
	obj_scribble.textbox_unnamed(
	"You fork over the money.");
	obj_scribble.textbox(
	@"Wow, I didn't actually think you'd deliver.
	[/page]Well done, you are now my favorite student.
	", 
	"Mr. Chen", spr_mr_chen_portrait_gun
	);
	
}
}