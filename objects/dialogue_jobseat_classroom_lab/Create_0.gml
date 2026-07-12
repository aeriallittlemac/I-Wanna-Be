event_inherited();
if global.day == 2{
	if !global.storylines.Main_Classroom.Day_Two.talked_to.job{
		obj_scribble.textbox(
			"*Nods at you.", 
			"Job", spr_job_down
		);
	}
	else{
		
	}
}
else if global.day == 3{
	
	if !global.storylines.Lab.Day_Three.talked_to.job{
		obj_scribble.textbox_converse(
		@"*Annoyed at Frenchie for giving Grace the copper coin", 
		"Job", [
			[spr_job_down, obj_portrait_mock_left_1], 
			[spr_frenchie_portrait_default, obj_portrait_mock_right_1]
		]
		);
		
		obj_scribble.textbox_converse(
		@"*Stutters.
		[/page]*Something about Grace being too dazzling for him to refuse
		", 
		"Frenchie", [
			[spr_job_down, obj_portrait_mock_left_1], 
			[spr_frenchie_portrait_default, obj_portrait_mock_right_1]
		]
		);
		
		obj_scribble.textbox(
			@"*He wishes Wei were here, he would take the coin back without a second thought,", 
			"Job", spr_job_down
		);
		
		obj_scribble.textbox_converse(
		@"*On the topic of Wei, McRonald decides to weigh in
		[/page]*He says that Wei is just as inconsiderate, as he is straightforward
		[/page]*He goes on a rant about Wei being an obnoxious bandmate
		", 
		"McRonald", [
			[spr_job_down, obj_portrait_mock_left_1], 
			[spr_mcronald_portrait_default, obj_portrait_mock_right_1]
		]
		);
		
		obj_scribble.textbox(
			@"*Job changes the topic back to the experiment
			[/page]He asks you to help him find another copper coin
			", 
			"Job", spr_job_down
		);
		
		obj_scribble.textbox_unnamed(
			@"A copper coin...
			[/page]Maybe someone might be able to give us a hint here...
			[/page]Press escape to check hints.
			", 
		);
	}
	else{
		obj_scribble.textbox_converse(
		@"*Annoyed at Frenchie for giving Grace the copper coin", 
		"Job", [
			[spr_job_down, obj_portrait_mock_left_1], 
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
