event_inherited();
if global.day == 2{
obj_scribble.textbox(
	"[sfx_bang_door]Bobby, I really don't think this is a good idea...", 
	"Mei", spr_mei_portrait_uncomfortable
);
}
else if global.day == 3{
	
}
else if global.day == 4{	
	obj_scribble.textbox_converse(
		@"*whispers
		[/page]Hey, did you hear?
		[/page]I can't believe the president would do that!
		", 
	"Mei", [
		[spr_mcronald_portrait_default, obj_portrait_mock_left_1], 
		[spr_mei_portrait_default, obj_portrait_mock_right_1]
	]
	);
	
	obj_scribble.textbox_converse(
		@"Hear, hear!
		", 
	"McRonald", [
		[spr_mcronald_portrait_default, obj_portrait_mock_left_1], 
		[spr_mei_portrait_default, obj_portrait_mock_right_1]
	]
	);
	obj_scribble.textbox_converse(
		@"The fact that it happened with Ashley is what's so mind boggling!
		[/page]Poor Brooklyn, losing out to that weeabo...
		", 
	"Mei", [
		[spr_mcronald_portrait_default, obj_portrait_mock_left_1], 
		[spr_mei_portrait_default, obj_portrait_mock_right_1]
	]
	);
	

}
else{
	
	
}


//obj_scribble.textbox_unnamed("[sfx_open_door]I'm opening a door. It's now open. I can do anything I want!![sfx_school_bell] School just started. I better go. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.");

//obj_scribble.textbox(
//	"[sfx_bang_door]Hello, brotha. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", 
//	"Wei", spr_wei_portrait_default, sfx_wei_speech
//);

//obj_scribble.textbox(
//	scribble_markdown_format(@"# Markdown
//also works, but the font needs to natively have italics and bolds for full benefit."), 
//	"Wei", spr_wei_portrait_default, sfx_wei_speech, true
//);

//obj_scribble.textbox(
//	"Lorem[red_flash] ipsum dolor sit amet[in_dialogue_force_set,false][player_move,1,1,1610,100], consectetur adipiscing elit[red_flash], sed do eiusmod tempor incididunt ut [red_flash]labore et dolore magna aliqua. [camera_shake]Ut enim ad minim veniam, quis [red_flash]nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in [red_flash]reprehenderit in voluptate velit [camera_shake]esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non [red_flash]proident, sunt in culpa qui officia deserunt mollit anim id est [in_dialogue_force_set,true]laborum.", 
//	"mei", spr_mei_portrait_default, sfx_grace_speech, true
//);

//obj_scribble.textbox_unnamed(
//	"[scale,2]Lorem ipsum dolor[npc_move,obj_wei,1,1,1420,100] sit amet[/], [/page][Font1]consectetur adipiscing elit[/], [/page][c_aqua]sed do eiusmod tempor incididunt ut labore et dolore magna aliqua[/c]. [/page][spr_mei_portrait_default]Ut enim ad minim veniam[spr_mei_portrait_default], quis nostrud exercitation ullamco laboris[spr_frenchie_portrait_default] nisi ut aliquip ex ea commodo consequat[spr_mei_portrait_default]. [/page][sfx_mission_accomplished][speed,2]Duis aute irure dolor in reprehenderit in voluptate velit esse cillum[/speed] [slant]dolore eu fugiat nulla pariatur[/slant]. [/page][wave]Excepteur sint[/wave] [shake]occaecat cupidatat[/shake] [wobble]non proident[/wobble], [pulse]sunt in[/pulse] [wheel]culpa qui[/wheel] [jitter]officia deserunt[/jitter] [blink]mollit anim[/blink] [rainbow]id est laborum.[/rainbow]", 
//	sfx_noisy_speech
//);
