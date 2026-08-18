event_inherited();

function _day_4_truth_dare_n_deny() {
	obj_scribble.textbox(
		@"S-senpai!
[/page]I can't b-believe they disbanded the m-math team...
[/page]I-Isn't that unfair!?
[/page]N-now I'm out of the cash p-prize!
[/page]How else am I gonna fund my [slant]yao--[/slant]hobbies?",
		"Ashley", spr_ashley_portrait_default);
	obj_scribble.textbox(
		"I must convince Gambino Senpai to r-reinstate the team!",
		"Ashley", spr_ashley_portrait_default
	);
}

if global.day == 2{
	if !global.storylines.Sewing_Club.Day_Two.talked_to.ashley{
		obj_scribble.textbox(
		@"S-s-senpai?
		[/page]Is that you, my childhood friend from 8 years ago who moved away?
		",
		"Weeabo Girl", spr_ashley_portrait_default);
		
		obj_scribble.textbox_unnamed(@"None of that happened, you never moved in your life.
		[/page][slant]That girl is sick in the head.[/slant]
		[/page]Best to keep your distance so she doesn't drag you into her weird fanatasies.
		")
	}
	else{
		obj_scribble.textbox(
		@"S-s-senpai?
		[/page]Is that you, my childhood friend fom 8 years ago who moved away?
		",
		"???", spr_ashley_portrait_default);
		
		obj_scribble.textbox_unnamed(@"None of that happened, you never moved in your life.
		[/page][slant]That girl is a weeabo weirdo.[/slant]
		[/page]Best to keep your distance so she doesn't drag you into her weird fanatasies.
		")
	}
}
else if global.day == 3{
	if global.storylines.Sewing_Club.Day_Three.talked_to.brooklyn{
	obj_scribble.textbox(
		@"That was a fun lab, wasn't it s-senpai?
		[/page]Did you see what I made?
		",
		"Weeabo Girl", spr_ashley_portrait_default);
	}
	else{
	obj_scribble.textbox(
		@"*kinda feels sorry for you, but doesn't know what to say...
		[/page]Did you see what I made?
		",
		"Weeabo Girl", spr_ashley_portrait_default);
	}
}
else if global.day == 4{
	_day_4_truth_dare_n_deny();
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
//	"ashley", spr_ashley_portrait_default, sfx_grace_speech, true
//);

//obj_scribble.textbox_unnamed(
//	"[scale,2]Lorem ipsum dolor[npc_move,obj_wei,1,1,1420,100] sit amet[/], [/page][Font1]consectetur adipiscing elit[/], [/page][c_aqua]sed do eiusmod tempor incididunt ut labore et dolore magna aliqua[/c]. [/page][spr_ashley_portrait_default]Ut enim ad minim veniam[spr_brooklyn_portrait_default], quis nostrud exercitation ullamco laboris[spr_frenchie_portrait_default] nisi ut aliquip ex ea commodo consequat[spr_mei_portrait_default]. [/page][sfx_mission_accomplished][speed,2]Duis aute irure dolor in reprehenderit in voluptate velit esse cillum[/speed] [slant]dolore eu fugiat nulla pariatur[/slant]. [/page][wave]Excepteur sint[/wave] [shake]occaecat cupidatat[/shake] [wobble]non proident[/wobble], [pulse]sunt in[/pulse] [wheel]culpa qui[/wheel] [jitter]officia deserunt[/jitter] [blink]mollit anim[/blink] [rainbow]id est laborum.[/rainbow]", 
//	sfx_noisy_speech
//);
