event_inherited();
if global.day == 2{
	if !global.storylines.Main_Classroom.Day_Two.talked_to.job{
		obj_scribble.textbox(
			"*Nods at you.", 
			"Job", spr_job_portrait_default
		);
	}
	else{
		obj_scribble.textbox(
			"*Nods at you.", 
			"Job", spr_job_portrait_default
		);
	}
}
else if global.day == 3{
	
	if !global.storylines.Lab.Day_Three.talked_to.job{
		obj_scribble.textbox_converse(
	@"Ah I’m in me feelins again.
	[/page]Thinkin about the words that were spoken between me and me girl.
	[/page]Grace.
	[/page]She’s the one for me ay?
	[/page]Her words are like the froth on a guinness at me pub back in Yorkstumptry upon Frothhampton.
	", 
	"Frenchie", [
		[spr_job_portrait_default, obj_portrait_mock_left_1], 
		[spr_frenchie_portrait_default, obj_portrait_mock_right_1]
	]
	);
	
	obj_scribble.textbox_converse(
	@"Here we go...
	", 
	"Job", [
		[spr_job_portrait_default, obj_portrait_mock_left_1], 
		[spr_frenchie_portrait_default, obj_portrait_mock_right_1]
	]
	);
	
	obj_scribble.textbox_converse(
	@"She asked me for a coppah with a knife in her hands and a thumpin in her heart.
	[/page]Wouldn’t take no for an answer.
	", 
	"Frenchie", [
		[spr_job_portrait_default, obj_portrait_mock_left_1], 
		[spr_frenchie_portrait_default, obj_portrait_mock_right_1]
	]
	);
	
	obj_scribble.textbox_converse(
	@"She robbed you, retard. You're saying it like she proposed.
	", 
	"Job", [
		[spr_job_portrait_default, obj_portrait_mock_left_1], 
		[spr_frenchie_portrait_default, obj_portrait_mock_right_1]
	]
	);
	
	obj_scribble.textbox_converse(
	@"...She’n’t rob me. She gave me somethin in return innit.
	[/page][slant]First toime...
	[/page]A girl has evah tolked to me...
	", 
	"Frenchie", [
		[spr_job_portrait_default, obj_portrait_mock_left_1], 
		[spr_frenchie_portrait_default, obj_portrait_mock_right_1]
	]
	);
	
	obj_scribble.textbox_converse(
	@"Now how the hell are we supposed to do the experiment without the coin?
	[/page]I wish Wei was here.
	[/page]He would've taken the coin back without a second thought.
	", 
	"Job", [
		[spr_job_portrait_default, obj_portrait_mock_left_1], 
		[spr_frenchie_portrait_default, obj_portrait_mock_right_1]
	]
	);
	
	obj_scribble.textbox_converse(
	@"Yes, because Wei is so righteous and so courageous.
	[/page][slant]Surely it's not because that rufus has no consideration for others.[/slant]
	", 
	"McRonald", [
		[spr_job_portrait_default, obj_portrait_mock_left_1], 
		[spr_mcronald_portrait_irritated, obj_portrait_mock_right_1]
	]
	);
	obj_scribble.textbox_converse(
	@"McRonald, you got a problem with Wei?
	[/page]Don't tell me this is about the band stuff...
	", 
	"Frenchie", [
		[spr_mcronald_portrait_irritated, obj_portrait_mock_left_1], 
		[spr_frenchie_portrait_default, obj_portrait_mock_right_1]
	]
	);
	
	obj_scribble.textbox_converse(
	@"Of course not.
	[/page]It doesn't bother me at all when he calls me out on my playing- 
	", 
	"McRonald", [
		[spr_mcronald_portrait_irritated, obj_portrait_mock_left_1], 
		[spr_frenchie_portrait_default, obj_portrait_mock_right_1]
	]
	);
	obj_scribble.textbox(
	@"We'll talk about that later.
	[/page]Please focus on the task right now.
	[/page]We need another copper coin to actually do the experiment for today.
	[/page]Since that dumbass lost it.
	[/page]Bobby, could you help us find one?
	",
	"Job", spr_job_portrait_annoyed
	);
		
		obj_scribble.textbox_unnamed(
			@"A copper coin...
			[/page]Maybe someone might be able to give us a hint here...
			[/page]Press escape to check hints.
			" 
		);
	}
	else{
		obj_scribble.textbox_converse(
		@"*Annoyed at Frenchie for giving Grace the copper coin", 
		"Job", [
			[spr_job_portrait_default, obj_portrait_mock_left_1], 
			[spr_frenchie_portrait_default, obj_portrait_mock_right_1]
		]
		);
	}
}
else if global.day == 4{
	if global.storylines.Grace.truth_or_dare_confession{
		if !global.storylines.Grace.deny_rumor{
			
			obj_scribble.textbox(
			"...", 
			"job", spr_job_portrait_default);
			
			obj_scribble.textbox(
			"[vl_job_default_1]Why do you comply?", 
			"job", spr_job_portrait_default);
			
			obj_scribble.textbox_unnamed("[sfx_heartbeat]You ask what she means.");
			
			obj_scribble.textbox(
			"[vl_job_default_1]Why would you decide to build a relationship with that pink neanderthal??", 
			"job", spr_job_portrait_default);
		}
		else{
			
		}
	}
	else{
		//if !global.storylines.Main_Classroom.Day_Four.talked_to.job{
			
		//}
		//else{
			
		//}
	}
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
//	"job", spr_job_portrait_default, sfx_grace_speech, true
//);

//obj_scribble.textbox_unnamed(
//	"[scale,2]Lorem ipsum dolor[npc_move,obj_wei,1,1,1420,100] sit amet[/], [/page][Font1]consectetur adipiscing elit[/], [/page][c_aqua]sed do eiusmod tempor incididunt ut labore et dolore magna aliqua[/c]. [/page][spr_job_portrait_default]Ut enim ad minim veniam[spr_job_portrait_default], quis nostrud exercitation ullamco laboris[spr_frenchie_portrait_default] nisi ut aliquip ex ea commodo consequat[spr_mei_portrait_default]. [/page][sfx_mission_accomplished][speed,2]Duis aute irure dolor in reprehenderit in voluptate velit esse cillum[/speed] [slant]dolore eu fugiat nulla pariatur[/slant]. [/page][wave]Excepteur sint[/wave] [shake]occaecat cupidatat[/shake] [wobble]non proident[/wobble], [pulse]sunt in[/pulse] [wheel]culpa qui[/wheel] [jitter]officia deserunt[/jitter] [blink]mollit anim[/blink] [rainbow]id est laborum.[/rainbow]", 
//	sfx_noisy_speech
//);
