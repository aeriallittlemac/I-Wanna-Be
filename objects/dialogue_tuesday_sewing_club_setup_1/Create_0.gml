event_inherited();
audio_play_sound(sfx_slide_whistle, 1, false);
alarm[0] = 1;

obj_scribble.textbox(
	@"Byyyyye!
	",
	"McRonald", spr_mcronald_portrait_flex
);

obj_scribble.textbox_unnamed(
	@"Hm.
	[/page]Interesting, so that guy comes here sometimes as well...
	[/page]Anyways. Back to rizzing up Brooklyn.
	"
)

//obj_scribble.textbox_converse(
//	"Lorem ipsum .", 
//	"Frenchie", [
//		[spr_frenchie_portrait_shocked, obj_portrait_mock_left_1], 
//		[spr_brooklyn_portrait_disgusted, obj_portrait_mock_right_1]
//	]
//);

//obj_scribble.textbox_converse(
//	"opidatat non proident, sunt in est laborum.", 
//	"Mei", [
//		[spr_mei_portrait_default, obj_portrait_mock_left_1], 
//		[spr_frenchie_portrait_shocked, obj_portrait_mock_right_1]
//	]
//);



//obj_scribble.textbox_converse(
//	" culpa qui officia deserunt mollit anim id est laborum.", 
//	"McRonald", [
//		[spr_mei_portrait_default, obj_portrait_mock_left_1], 
//		[spr_frenchie_portrait_shocked, obj_portrait_mock_right_1], 
//		[spr_mcronald_portrait_default, obj_portrait_mock_0]
//	]
//);